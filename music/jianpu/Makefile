rikaze.pdf: rikaze.txt
	python jianpu-ly.py < rikaze.txt > rikaze.ly
	lilypond rikaze.ly
	timidity -Ow -o rikaze.wav rikaze.midi
