all: title date lines

title:
	echo "Guessing Game Project" > readme.md

date:
	date >> readme.md

lines:
	echo "Lines of code:" >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
