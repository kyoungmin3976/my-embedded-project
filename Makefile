# 1. 크로스 컴파일러 설정 (임베디드 보드용)
CC = aarch64-linux-gnu-gcc
CFLAGS = -Wall -O2

# 2. 결과물 파일 이름 (원하는 대로 수정 가능)
TARGET = my_embedded_app

# 3. 컴파일할 소스 파일들
SRCS = driver.c application.c
OBJS = $(SRCS:.c=.o)

# 4. 빌드 규칙
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

# 5. 정리 규칙
clean:
	rm -f $(TARGET) $(OBJS)