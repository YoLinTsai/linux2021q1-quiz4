CC = gcc
CFLAGS = -O1 -g -Wall -Werror 
OBJS = pi.o thread_pool.o

.PHONY: all pi clean

all: pi

pi:thread_pool.o pi.o
	$(CC) $(CFLAGS) -o $@ $^ -lpthread -lm
	./$@
	@$(RM) $@

clean:
	rm *.o