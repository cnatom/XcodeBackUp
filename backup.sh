#!/bin/bash

# 备份目录
BACKUP_DIR="./XcodeBackup"

# 创建备份目录
mkdir -p "$BACKUP_DIR/KeyBindings"
mkdir -p "$BACKUP_DIR/CodeSnippets"
mkdir -p "$BACKUP_DIR/FontAndColorThemes"

# 备份 Key Bindings
if [ -d "$HOME/Library/Developer/Xcode/UserData/KeyBindings" ]; then
    cp -R "$HOME/Library/Developer/Xcode/UserData/KeyBindings/"* "$BACKUP_DIR/KeyBindings/"
    echo "Key Bindings 已备份到 $BACKUP_DIR/KeyBindings/"
else
    echo "Key Bindings 目录不存在。"
fi

# 备份 Code Snippets
if [ -d "$HOME/Library/Developer/Xcode/UserData/CodeSnippets" ]; then
    cp -R "$HOME/Library/Developer/Xcode/UserData/CodeSnippets/"* "$BACKUP_DIR/CodeSnippets/"
    echo "Code Snippets 已备份到 $BACKUP_DIR/CodeSnippets/"
else
    echo "Code Snippets 目录不存在。"
fi

# 备份 Font and Color Themes
if [ -d "$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes" ]; then
    cp -R "$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes/"* "$BACKUP_DIR/FontAndColorThemes/"
    echo "Font and Color Themes 已备份到 $BACKUP_DIR/FontAndColorThemes/"
else
    echo "Font and Color Themes 目录不存在。"
fi

echo "所有 Xcode 设置已备份到 $BACKUP_DIR。"
