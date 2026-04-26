'''
Author: 袁满学 yuanmanxue@nnuo.com
Date: 2026-04-11 21:10:31
LastEditors: 袁满学 yuanmanxue@nnuo.com
LastEditTime: 2026-04-11 21:10:40
FilePath: /毕业论文/thesis_skills/update_load_all.py
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
'''
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Thesis Skills 自动同步脚本
每次更新 skills/ 文件夹后，运行此脚本即可自动更新 load-all.md
"""

import os
from pathlib import Path

# 配置路径
SKILLS_DIR = Path("skills")
LOAD_ALL_FILE = Path("load-all.md")

def read_file(path):
    with open(path, "r", encoding="utf-8") as f:
        return f.read()

def write_file(path, content):
    with open(path, "w", encoding="utf-8") as f:
        f.write(content)

def main():
    if not SKILLS_DIR.exists():
        print("❌ 错误：skills/ 文件夹不存在")
        return

    if not LOAD_ALL_FILE.exists():
        print("❌ 错误：load-all.md 不存在")
        return

    template = read_file(LOAD_ALL_FILE)
    updated = template

    print("🔄 开始同步 skills/ 中的文件到 load-all.md...")

    for skill_file in sorted(SKILLS_DIR.glob("*.md")):
        skill_name = skill_file.stem
        content = read_file(skill_file)

        # 替换占位符 (skill-name 完整内容)
        placeholder = f"（{skill_name} 完整内容）"
        if placeholder in updated:
            updated = updated.replace(placeholder, content)
            print(f"✅ 已同步 {skill_name}.md")
        else:
            print(f"⚠️  未找到占位符 {placeholder}，跳过")

    write_file(LOAD_ALL_FILE, updated)
    print("\n🎉 同步完成！load-all.md 已更新")
    print("你可以直接 git commit & push")

if __name__ == "__main__":
    main()
    