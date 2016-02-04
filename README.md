# Today I Learned

A fun little bash script to keep track of factoids, observations, and ideas to share with the swarm. Intended for personal use.

## The Basic Idea


- You're reading online and you learn that 'tope' means to drink to excess, and that 'taupe'--the color--is named after the French word for mole. 
- You don't want to tweet this, or fbook it, or text it to twenty people, but you want to log it somewhere...
- You push it to TIL and go on your way. You can then look back later to see your fun facts.


## Functionality 

In a bash shell:
```(Bash)
$ til 'Tope' 'Tope means to drink to excess, taupe means mole en francais, which is where the color comes from.'
```

The script does:
```
echo "Create a factlet named 'tope' containing 'Tope means to drink to excess, taupe means mole en francais, which is where the color comes from.'
echo "Is this ok? Y/N"
if Y:
	get date from system
	create a subdirectory in your TIL directory for today's date
	add a markdown file named "tope.md" to today's directory
	that markdown file contains your quip
	git add tope.md
	git commit -m "added Tope"
	git push
else: 
	echo "OK; keep thinking!"
```

In this example, tope.md would be:
```(md)
# Today I learned about: Tope

Tope means to drink to excess, taupe means mole en francais, which is where the color comes from.

...and now, you've learned that too!
```

## Setting this up on your machine

A few little steps to get things start:

- create the directory for your factlets to live
- edit your config file to be the name of the directory you like
- make a git repo for things to live
- add to your path for maximum convenience

## Further work

Perhaps it would be nice to build a little viewer for these. I'm not yet sure how that would look/work. 

## Steal my code

Feel free to steal my code and run this on your own machine. But please tweet at me if so: @bebischof 

