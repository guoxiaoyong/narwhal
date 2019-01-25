all : rikaze.wav doraemon.wav boji.wav

%.ly : %.jp
	python jianpu.py < $^ > $@

%.wav : %.midi
	timidity -Ow -o $@ $^

%.pdf %.midi: %.ly
	lilypond $^
