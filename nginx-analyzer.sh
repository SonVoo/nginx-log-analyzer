
#!/bin/bash

# Kiểm tra xem người dùng đã truyền vào file log chưa
if [ -z "$1" ]; then
    echo "Vui lòng nhập đường dẫn file log! Ví dụ: ./nginx-analyzer nginx.log"
    exit 1
fi

LOG_FILE="$1"

echo "=== TOP 5 IP ADDRESSES ==="
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5
echo ""

echo "=== TOP 5 REQUESTED PATHS ==="
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5
echo ""

echo "=== TOP 5 STATUS CODES ==="
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5
echo ""

echo "=== TOP 5 USER AGENTS ==="
awk -F'"' '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5

