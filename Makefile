TARGET = event.o manager.o main.o resource.o system.o


p2:			${TARGET}
			gcc -g -Wall -Wextra -pthread -o p2 ${TARGET} defs.h

main: main.c defs.h
	gcc -g -Wall -Wextra -pthread -c main.c

event: event.c defs.h
	gcc -g -Wall -Wextra -pthread -c event.c

hunter:	 manager.c defs.h
	gcc -g -Wall -Wextra -pthread -c manager.c

room: resource.c defs.h
	gcc -g -Wall -Wextra -pthread -c resource.c

utils: system.c defs.h
	gcc -g -Wall -Wextra -pthread -c system.c


clean:		
	rm -f ${TARGET} p2