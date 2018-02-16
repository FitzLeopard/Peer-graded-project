README.md:
	echo "# Peer-graded Project---The gussinggame program" > README.md
	echo "### The date and time at which the **make** was run" >>README.md
	date -Iseconds >> README.md
	echo "### The number of the lines of code contained in the **guessinggame.sh**:" >> README.md
	cat guessinggame.sh | wc -w >> README.md
