#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# generate random number
SECRET_NUMBER=$(( (RANDOM % 1000) + 1 ))
#echo $SECRET_NUMBER

# ask user for username
echo "Enter your username:"
read USERNAME

# check if the user exists
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
if [[ -z $USER_ID ]]
then
  # user does not exist, insert into users and initialize games record
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  # get the new user_id
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  # initialize game record
  INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, games_played, best_game_score) VALUES($USER_ID, 0, 0);")
else
  # user exists, retrieve game info
  USERNAME_RESULT=$( echo $($PSQL "SELECT username FROM users WHERE username='$USERNAME'") | sed 's/ //g')
  GAMES_PLAYED=$( echo $($PSQL "SELECT games_played FROM games WHERE user_id=$USER_ID;") | sed 's/ //g')
  BEST_GAME_SCORE=$(echo $($PSQL "SELECT best_game_score FROM games WHERE user_id=$USER_ID;") | sed 's/ //g')
  
  echo "Welcome back, $USERNAME_RESULT! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME_SCORE guesses."
fi

GUESS_NUMBER() {
  local GUESS_COUNT=0

  while true
  do
    if [[ $1 ]]
    then
      echo "$1"
    fi
    #read nr from user
    read USER_GUESS_NR

    if [[ ! $USER_GUESS_NR =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
    else
      ((GUESS_COUNT++))

      if [[ $USER_GUESS_NR -lt $SECRET_NUMBER ]]
      then
        echo "It's higher than that, guess again:"
      elif [[ $USER_GUESS_NR -gt $SECRET_NUMBER ]]
      then
        echo "It's lower than that, guess again:"
      else
        echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
        #update games_played and best_game_score
        NEW_GAMES_PLAYED=$((GAMES_PLAYED + 1))
        if [[ $BEST_GAME_SCORE -eq 0 || $GUESS_COUNT -lt $BEST_GAME_SCORE ]]
        then
          UPDATE_GAME_RESULT=$($PSQL "UPDATE games SET games_played=$NEW_GAMES_PLAYED, best_game_score=$GUESS_COUNT WHERE user_id=$USER_ID;")
        else
          UPDATE_GAME_RESULT=$($PSQL "UPDATE games SET games_played=$NEW_GAMES_PLAYED WHERE user_id=$USER_ID;")
        fi
        break
      fi
    fi
  done
}

echo "Guess the secret number between 1 and 1000:"
GUESS_NUMBER
