#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
    then
      WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      if [[ -z $WIN_ID ]]
      then
        INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
        if [[ $INSERT_WINNER == "INSERT 0 1" ]]
          then
            echo INSERTED WINNER, $WINNER
        fi
        WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
        fi
      fi

  if [[ $OPPONENT != "opponent" ]]
    then
      OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      if [[ -z $OPP_ID ]]
      then
        INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
        if [[ $INSERT_OPPONENT == "INSERT 0 1" ]]
          then
            echo INSERTED OPPONENT, $OPPONENT
        fi
        OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
        fi
      fi

  if [[ -z $($PSQL "SELECT game_id FROM games WHERE (winner_id='$WIN_ID' AND opponent_id='$OPP_ID')") ]]
    then
      GAME_ID=$($PSQL "SELECT game_id FROM games WHERE (winner_id='$WIN_ID' AND opponent_id='$OPP_ID')")
      if [[ -z $GAME_ID ]]
      then
        INSERT_DATA=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES('$YEAR', '$ROUND', '$WIN_ID', '$OPP_ID', '$WINNER_GOALS', '$OPPONENT_GOALS')")
        if [[ $INSERT_DATA == "INSERT 0 1" ]]
          then
            echo INSERTED DATA, $YEAR, $ROUND, $WIN_ID, $OPP_ID, $WINNER_GOALS, $OPPONENT_GOALS
        fi
        
        fi
      fi
done


