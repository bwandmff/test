# Makefile示例

# 编译器和编译选项
CC = gcc
CFLAGS = -Wall -g -pthread

# 目标文件和依赖关系
TARGET = ctest
SRCS = main.c mqtt.c sensor.c alg.c
OBJS = $(SRCS:.c=.o)

# 头文件路径
INCLUDES = -Iinclude

# 默认目标：编译可执行文件
all: $(TARGET)

# 生成可执行文件
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# 编译每个 .c 源文件为 .o 文件
%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $<

# 清理生成的文件
clean:
	rm -f $(OBJS) $(TARGET)