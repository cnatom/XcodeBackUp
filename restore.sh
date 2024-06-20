#!/bin/bash

# 备份目录
BACKUP_DIR="./XcodeBackup"

# 还原 Key Bindings
if [ -d "$BACKUP_DIR/KeyBindings" ]; then
    mkdir -p "$HOME/Library/Developer/Xcode/UserData/KeyBindings"
    cp -R "$BACKUP_DIR/KeyBindings/"* "$HOME/Library/Developer/Xcode/UserData/KeyBindings/"
    echo "Key Bindings 已从 $BACKUP_DIR/KeyBindings/ 还原。"
else
    echo "备份的 Key Bindings 目录不存在。"
fi

# 还原 Code Snippets
if [ -d "$BACKUP_DIR/CodeSnippets" ]; then
    mkdir -p "$HOME/Library/Developer/Xcode/UserData/CodeSnippets"
    cp -R "$BACKUP_DIR/CodeSnippets/"* "$HOME/Library/Developer/Xcode/UserData/CodeSnippets/"
    echo "Code Snippets 已从 $BACKUP_DIR/CodeSnippets/ 还原。"
else
    echo "备份的 Code Snippets 目录不存在。"
fi

# 还原 Font and Color Themes
if [ -d "$BACKUP_DIR/FontAndColorThemes" ]; then
    mkdir -p "$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes"
    cp -R "$BACKUP_DIR/FontAndColorThemes/"* "$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes/"
    echo "Font and Color Themes 已从 $BACKUP_DIR/FontAndColorThemes/ 还原。"
else
    echo "备份的 Font and Color Themes 目录不存在。"
fi

echo "所有 Xcode 设置已还原。"
