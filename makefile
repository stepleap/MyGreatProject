all: readme.md

readme.md:
	touch readme.md
	echo "# My Great Project" > readme.md
	echo "This is the project for peer-graded assignment at Coursera course."
	echo -n "The date and time of running make: " >> readme.md
	date >> readme.md
	echo '\n' >> readme.md
	echo -n "guessinggame.sh contains " >> readme.md
	cat guessinggame.sh | wc -l | tr '\n' ' ' >> readme.md
	echo "lines." >> readme.md
clean:
	rm readme.md
