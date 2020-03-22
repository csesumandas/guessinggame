all: guessinggame.sh readme.md
	

readme.md: guessinggame.sh
	touch readme.md
	echo "Title: Guessing Game" >> readme.md
	date >> readme.md
	echo -n "Number of lines: " >> readme.md
	less guessinggame.sh | wc -l >> readme.md

clean:
	rm readme.md
