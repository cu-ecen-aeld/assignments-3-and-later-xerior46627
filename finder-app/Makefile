# compiler
# CC = aarch64-none-linux-gnu-gcc
CC = $(CROSS_COMPILE)gcc

# 編譯選項
# CFLAGS = -c
CFLAGS = -Wall -g -c  # 常見的編譯選項


# 目標檔案
OBJECTS = writer.o

# 最終可執行檔 (這裡假設您需要鏈接 `.o` 檔案生成可執行檔)
TARGET = writer

# 預設目標
all: $(TARGET)

# 編譯 .c 檔案為 .o 檔案
%.o: %.c
	$(CC) $(CFLAGS) $< -o $@

# 如果要生成最終的可執行檔
$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(TARGET)

# 清理目標檔案和可執行檔
clean:
	rm -f $(OBJECTS) $(TARGET)