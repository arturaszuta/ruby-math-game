## Planning Notes

Main Classes

## Turn
Game state logic for managing whose turn it is, starting with a coin flip to decide who starts first.
Data stored - Active Player
Methods - Change player


## Lives
Game state logic which records both player lives.
Data Stored - P1 & P2 lives.
Methods - deduct life

## Questions
Main class to store math questions.
Data Stored - Questions and answers
Every new Question instance will have a generated quesiton and correct answer

## Main logic
Main game logic will be handling everything from inputs to printing messages and checking whether the game is over

## Game Flow

We know who the active player is from the initial gameState setup

A string prints declaring whose turn it is
A question prints
Player inputs the answer
Correct or false is being dispalyed
Lives are being printed - the game is checking whether lives hit 0
If 0 - winner get's announced
Game over prints, goodbye prints


