Snakes and Ladders Kata - Feature 1 Only
====

The challenge is to code the first feature from [Agile's Snakes and Ladders Kata](http://agilekatas.co.uk/katas/SnakesAndLadders-Kata):  

## _Feature 1 - Moving Your Token_

---

```
As a player
I want to be able to move my token
So that I can get closer to the goal
```

```
As a player
I want to move my token based on the roll of a die
So that there is an element of choice in the game
```

```
As a player
I want to be able to win the game
So that I can gloat to everyone around
```

## _Discussion_  

---

_How did you approach the problem?_
- I started by considering the functionality that is required for implementing Feature 1 (initializing game on position 1, dice roll method, move method, move restriction and win declaration)
- First code written was the test for the starting position

_How did you make key design decisions and what alternatives did you consider?_
- I spent some time trying to decide whether I needed a Game class or whether to keep the functionality within a single Player class (or similar) given that we only had to implement Feature 1 without the complexity of two players.

_How do you envision your solution evolving in the future?_
- blah blah



To Use
---

- Clone or fork this project `git clone https://github.com/Whatapalaver/snakes_ladders_ruby.git`
- Change into the directory `cd snakes_ladders_ruby`
- Install dependencies `bundle install`

To test:

- This command will run both the rspec tests and simplecov `bundle exec rspec`
- To view the coverage detail as a webpage run `open coverage/index.html`