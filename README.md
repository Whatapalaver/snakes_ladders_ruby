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

### _How did you approach the problem?_

- I started by considering the functionality that is required for implementing Feature 1 (initializing game on position 1, dice roll method, move method, move restriction and win declaration)
- First code written was the test for the starting position
- I continued with the TDD approach of passing each iteration in the simplest manner followed by refactor
- In the end I dryed up the move method which had some duplication with a private method used to determine the move_type ie valid, win or bust

### _How did you make key design decisions and what alternatives did you consider?_

I spent some time trying to decide whether I needed a Game class or whether to keep the functionality within a single Player class (or similar) given that we only had to implement Feature 1 without the complexity of two players.

Strangely, I haven't actually built a CLI before. I've always tested in IRB only. Creating a runtime program required an actual play method which might have been better handled by a Game class.

I have struggled to test my CLI required play method as the test triggers runtime. I have left this unresolved....

### _How do you envision your solution evolving in the future?_

There are a number of additional features involved in the original kata. During refactoring I tried to keep my methods very small and defined so that the overall program would be tolerant of change.

In order to expand this program I think the next step would be to create a Game class where Players and a Board (another class) would be instantiated.

The Board could then be instantiated with a placement of snakes and ladders. This might have a default placement or could be randomised.

The Game class would control the next move indicator and would handle the declaration of winners etc.

To Use
---

- Clone or fork this project `git clone https://github.com/Whatapalaver/snakes_ladders_ruby.git`
- Change into the directory `cd snakes_ladders_ruby`
- Install dependencies `bundle install`
- You can start the Command Line Interface (CLI) with `ruby bin/main`

To test
---

- This command will run both the rspec tests and simplecov `bundle exec rspec`
- To view the coverage detail as a webpage run `open coverage/index.html`
