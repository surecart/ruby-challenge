# Ruby Challenge / Analyzing Shakespeare

Hey there! Congrats on making it this far on the hiring journey. We are looking for great Ruby developers, and we hope that you're one of them! Please complete this ruby challenge so we can get a better feel for your development style and abilities.

## Exercise Intro

Write a command-line program that prints the number of lines spoken by each character in the Shakespeare play Macbeth.

## Instructions

To start, you'll want to clone and run the setup script for the repo

    git clone git@github.com:surecart/ruby-challenge.git
    cd analyzing-shakespeare
    bin/setup

Sample usage/output (using made-up numbers):

    $ ruby macbeth_analyzer.rb
      543 Macbeth
      345 Banquo
      220 Duncan
      (etc.)

You can find an XML-encoded version of Macbeth here: http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml. Your program should download and parse this file at runtime.

Your solution must be tested, preferably via TDD. Running your tests _should not_ download the play from the ibiblio.org server.

Note: some lines are attributed to a speaker called "ALL". Your program should ignore these.

## Submiting Your Solution

Create a new branch titled `solution` and open a PR. If you'd like to add any comments regarding your solution you can do so in the PR. Send us a link to your PR so we can review and collaborate on it.

## Credit

You'll notice that this repository is forked from [https://github.com/thoughtbot-upcase-exercises/analyzing-shakespeare](https://github.com/thoughtbot-upcase-exercises/analyzing-shakespeare). All credit goes to [thoughtbot](http://thoughtbot.com) for this excercise. 

NOTE: You can browse the main repository for a featured solution if you need some help. Please do not just copy this solution. We are looking for your own original work.
