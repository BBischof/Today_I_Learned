# Today I Learned

A fun little bash script to keep track of factlets, observations, and ideas to share with the swarm. Intended for personal use.

## The Basic Idea


- You're reading online and you learn that "tope" means to drink to excess, and that "taupe"--the color--is named after the French word for mole. 
- You don't want to tweet this, or fbook it, or text it to twenty people, but you want to log it somewhere...
- You push it to TIL and go on your way. You can then look back later to see your fun factlets.


## Functionality 

In a bash shell:
```(Bash)
$ til "Tope" "Tope means to drink to excess, taupe means mole en francais, which is where the color comes from."
```

Notes: 
- I recommend double quotes because otherwise you'll get into trouble with apostrophes.
- A sneaky little free integration is that if you know markdown, you can slip that in. A great example of this is for links where the markdown is simple and it really powers-up your factlets.
- Don't forget you can go edit all the files manually and just push to git when you're ready. Clean up them typos!

The script does:
```
echo "Create a factlet named "tope" containing "Tope means to drink to excess, taupe means mole en francais, which is where the color comes from."
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

I want to add a few features in the way of flags:
- `-o` for "offline mode", essentially runs the script without pushing to git, saves for manual pushing later
- `-up` for "update", allows you to modify a previous factlet in case of things like typos(however you can just do this manually anyhow.)

Perhaps it would be nice to build a little viewer for these. Current idea is similar to [calendar view](http://bl.ocks.org/KathyZ/c2d4694c953419e0509b) with color being number of TIL submissions for that day, and mouseover shows their names, click is a redirect to the github directory. Will try to build this viz sometime soonishly.

It would be fun to have flags for twitter and facebook, but I dont know how to do that just yet.

A dream would be to somehow integrate with mobile. ^_^

## Steal my code

Feel free to steal my code and run this on your own machine. But please tweet at me if so: @bebischof 

Also feel welcome to submit suggestions or improvements.

Be well, keep learning. 

-B

