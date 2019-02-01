useful := $(wildcard *.ly) Makefile
target := $(patsubst %.ly,%.pdf,$(useful))
target_wav := $(patsubst %.ly,%.wav,$(useful))
rmfiles := $(filter-out $(useful),$(wildcard *))

all: $(target) $(target_wav) book.pdf

book.pdf: book.lytex
	lilypond-book --pdf --output ok $^
	cd ok && xelatex book.tex && mv book.pdf ../
	rm -rf ok

%.pdf %.midi: %.ly
	lilypond $^

%.wav: %.midi
	timidity -Ow -o $@ $^

clean:
	$(RM) $(rmfiles)

