#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")

if [[ -z $USER_ID ]]
then
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")

  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."

  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")
else
  USER_RECORDS=$($PSQL "SELECT COUNT(*), MIN(guesses) FROM games WHERE user_id=$USER_ID")
  
  IFS="|" read GAMES_PLAYED BEST_GAME <<< $USER_RECORDS

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo -e "\nGuess the secret number between 1 and 1000:"

SECRET_NUMBER=$(($RANDOM % 1000 + 1))
GUESSES=0

while [[ $SECRET_NUMBER -ne GUESS_NUMBER ]]
do
  read GUESS_NUMBER
  GUESSES=$(($GUESSES + 1))

  if [[ ! $GUESS_NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  fi

  if [[ $GUESS_NUMBER -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  elif [[ $GUESS_NUMBER -lt $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
  fi
done

INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $GUESSES)")

echo "You guessed it in $GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
