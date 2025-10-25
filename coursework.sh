#!/bin/bash
# AIM 2526 学年 Linux 基础 课后考核脚本

# 说明：
# 该脚本用于自动化完成 AIM 2526 课后考核的各项任务。
# 请确保在运行此脚本前，已阅读 README.md 文件中的相关说明。
# 测试方法：
# 赋予脚本执行权限
# 在终端，确保你正处在 aim-linux-2526-coursework 文件夹下，然后运行命令：bash ./test.sh

# ============================================================================
# 重要提醒：
# 1. 本次作业只考察以下 Linux 命令的使用：
#    - cd（目录切换）
#    - mkdir（创建目录）
#    - touch（创建文件）
#    - rm（删除文件/目录，注意区分文件和文件夹）
#    - grep（文本搜索）
#    - cat（查看文件内容）
#
# 2. 所有生成的文件和目录都应该在 ./generated 目录下创建。
#
# 3. 完成作业后，请运行 bash ./test.sh 进行测试。
#    测试通过后，不要修改任何文件，直接 commit 并 push 到 GitHub。
#    如果 CI 检测到 hash.txt 不匹配，请重新运行 test.sh 并直接提交。
# ============================================================================
# 任务 1: 创建目录结构
cd generated
mkdir -p workspace/scripts workspace/data
cd ..

# 任务 2: 创建文件
touch generated/workspace/scripts/hello.sh generated/workspace/scripts/utils.sh

# 任务 3: 创建文件内容
cat > generated/workspace/scripts/hello.sh <<EOF
#!/bin/bash
echo "Hello, Linux!"
EOF

# 任务 4: 删除文件
rm generated/workspace/scripts/utils.sh

# 任务 5: 删除目录
rm -r generated/workspace/data

# 任务 6: 使用 cat 和 grep 创建和搜索文件
cat > generated/workspace/info.txt <<EOF
Linux is a powerful operating system.
Bash scripting is fun and useful.
Command line tools are essential for developers.
EOF

grep "Linux" generated/workspace/info.txt > generated/workspace/result.txt

