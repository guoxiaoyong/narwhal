useful := $(wildcard *.jp) Makefile
target := $(patsubst %.jp,%.wav,$(useful))
rmfiles := $(filter-out $(useful),$(wildcard *))


all : $(target)

%.ly : %.jp
	python jianpu.py $^ > $@

%.wav : %.midi
	timidity -Ow -o $@ $^

%.pdf %.midi: %.ly
	lilypond $^
