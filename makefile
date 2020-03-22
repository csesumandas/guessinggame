all: guessinggame.sh README.md
	

README.md: guessinggame.sh
	touch README.md
	echo "# Title: Guessing Game" >> README.md
	echo "### Make: " >> README.md
	date >> README.md
	echo "### Number of lines: " >> README.md
	wc -l guessinggame.sh | egrep -o [0-9]+ >> README.md

clean:
	rm README.md
