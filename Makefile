# Makefileʾ��

# �������ͱ���ѡ��
CC = gcc
CFLAGS = -Wall -g -pthread

# Ŀ���ļ���������ϵ
TARGET = ctest
SRCS = main.c mqtt.c sensor.c alg.c
OBJS = $(SRCS:.c=.o)

# ͷ�ļ�·��
INCLUDES = -Iinclude

# Ĭ��Ŀ�꣺�����ִ���ļ�
all: $(TARGET)

# ���ɿ�ִ���ļ�
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# ����ÿ�� .c Դ�ļ�Ϊ .o �ļ�
%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $<

# �������ɵ��ļ�
clean:
	rm -f $(OBJS) $(TARGET)