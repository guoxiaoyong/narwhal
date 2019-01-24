all : rikaze.wav doraemon.wav boji.wav

%.ly : %.jp
	python jianpu-ly.py < $^ > $@

%.wav : %.midi
	timidity -Ow -o $@ $^

%.pdf %.midi: %.ly
	lilypond $^
