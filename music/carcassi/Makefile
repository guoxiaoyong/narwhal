useful := $(wildcard *.ly) Makefile
target := $(patsubst %.ly,%.pdf,$(useful))
target_wav := $(patsubst %.ly,%.wav,$(useful))
rmfiles := $(filter-out $(useful),$(wildcard *))

all: $(target) $(target_wav)

%.pdf: %.ly
	lilypond $^

%.wav: %.midi
	timidity -Ow -o $@ $^

clean:
	$(RM) $(rmfiles)

