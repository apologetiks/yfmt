.PHONY: all build clean gen

all: gen build

build:
	yue -l .

gen:
	yue -l dump_header.yue && luajit dump_header.lua > type_ast.yue
	yue -l type_ast.yue

clean:
	find . -type f -name '*.lua' -delete

