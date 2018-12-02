useful := $(wildcard *.ly) Makefile
target := $(patsubst %.ly,%.pdf,$(useful))
rmfiles := $(filter-out $(useful),$(wildcard *))

all: $(target)

%.pdf: %.ly
	lilypond $^

