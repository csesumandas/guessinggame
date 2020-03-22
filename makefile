all: guessinggame.sh readme.md
	

readme.md: guessinggame.sh
	touch readme.md
	echo "# Title: Guessing Game" >> readme.md
	echo "### Make: " >> readme.md
	date >> readme.md
	echo "### Number of lines: " >> readme.md
	wc -l guessinggame.sh | egrep -o [0-9]+ >> readme.md

clean:
	rm readme.md
