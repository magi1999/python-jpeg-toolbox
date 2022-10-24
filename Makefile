PYTHON_FLAGS=`python3-config --includes --libs --cflags`
CC=gcc
CFLAGS= -I include -std=c99
default:
	gcc -Wall -fPIC -shared -o jpeg_toolbox.so jpeg_toolbox_extension.c $(PYTHON_FLAGS) -L /usr/lib/x86_64-linux-gnu/ -ljpeg 
