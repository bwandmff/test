# Makefile for Embedded Sensor Project

# 编译器和编译选项
CC = gcc
CFLAGS = -Wall -Wextra -g -pthread -std=c11

# 目标文件
TARGET = ctest
SRCS = main.c mqtt.c sensor.c alg.c
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)

# 头文件路径
INCLUDES = -Iinclude

# 默认目标
all: $(TARGET)

# 生成可执行文件
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)
	@echo "Build complete: $(TARGET)"

# 编译源文件 (自动生成依赖)
%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -MMD -MP -c $< -o $@

# 包含自动生成的依赖文件
-include $(DEPS)

# 运行程序
run: $(TARGET)
	./$(TARGET)

# 清理编译产物
clean:
	rm -f $(OBJS) $(DEPS) $(TARGET)
	@echo "Clean complete."

# 重新编译
rebuild: clean all

.PHONY: all clean run rebuild
