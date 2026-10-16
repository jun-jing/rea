#!/bin/bash

# =============================================
# Claude Code 启动脚本 (macOS/Linux)
# 对应: deepseek-claude-code-V4flash.bat
# 使用 DeepSeek API (deepseek-v4-flash 模型)
# =============================================

# 获取脚本所在目录
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 切换到脚本目录
cd "$SCRIPT_DIR"
echo "Current directory: $(pwd)"

# 显示 Node.js 和 npm 版本
echo "=== Node.js and npm Versions ==="
node -v
npm -v

# 配置 DeepSeek API 环境变量
export ANTHROPIC_BASE_URL="https://api.deepseek.com/anthropic"
export ANTHROPIC_AUTH_TOKEN=""

# 模型映射：所有槽位统一使用 deepseek-v4-flash
export ANTHROPIC_MODEL="deepseek-v4-flash"
export ANTHROPIC_DEFAULT_OPUS_MODEL="deepseek-v4-flash"
export ANTHROPIC_DEFAULT_SONNET_MODEL="deepseek-v4-flash"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="deepseek-v4-flash"
export ANTHROPIC_SMALL_FAST_MODEL="deepseek-v4-flash"

# 子代理模型与推理强度
export CLAUDE_CODE_SUBAGENT_MODEL="deepseek-v4-flash"
export CLAUDE_CODE_EFFORT_LEVEL="max"

echo "=== Claude Config ==="
echo "ANTHROPIC_BASE_URL: $ANTHROPIC_BASE_URL"
echo "ANTHROPIC_AUTH_TOKEN: ${ANTHROPIC_AUTH_TOKEN:0:20}..."
echo "ANTHROPIC_MODEL: $ANTHROPIC_MODEL"

# 启动 Claude Code
echo ""
echo "Starting Claude Code..."
claude --dangerously-skip-permissions
