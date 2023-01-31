### -------------------- Lab 3 --------------------
### This lab is designed to prepare you for PS3

## Create a vector of the number of points the Seahawks scored in the
## first (at least) 5 games
## Hint: google "Seahawks scores", or check the football database:
## http://www.footballdb.com/teams/nfl/seattle-seahawks/results
## here 'Final' displays scores
## Use an appropriate variable name for the scores
## 
## Hint: feel free to invent if you cannot figure this out
hawks_scores <- c(17, 7, 23, 48, 32)
hawks_scores

## Create a vector of the number of points the opponent
## scored against Seahawks in the first 5 games
## use an appropriate variable name
opp_scores <- c(16, 27, 27, 45, 39)
opp_scores

## Combine your two vectors into a dataframe
scores <- data.frame(sh_scores, other_scores)
scores

## Create a new column "diff" that is the difference in points
## (in favor of Hawks)
scores[["diff"]] <- sh_scores - opp_scores
scores


## Create a new column "won" which is TRUE if the Seahawks won,
## ie if Seahawks scored more than the opponent scored against them
scores[["won"]] <- scores$diff > 0 
scores

## Create a vector of the opponents name (such as "Denver Broncos")
opp_names <- c("Broncos", "49ers", "Falcons", "Lions", "Saints")
opp_names

## Add the vector of opponents into the data frame
scores[["opponents"]] <- opp_names
scores

## Compute the average score of Seahawks
cat("Seahawks average score: ", mean(scores$sh_scores), "\n")

## Compute how many games did Seahawks win
## (use the 'won' variable to compute it)
cat("Games the Seahawks won: ", sum(scores$won), "\n")

## What was the largest difference in scores (in favor of Seahawks)?
cat("Largest difference in score: ", max(scores$diff), "\n")

## How many different opponents did Seahawks have in these games?
## Hint: use `unique()` and `length()`
cat("Number of unique opponents: ", length(unique(scores$opponents)), "\n")

## Print the variable names in your data frame
names(scores)

## Write a loop over all variables in your data frame
## print the variable name inside the loop
for (var in names(scores)) {
  cat(var, "\n")
}

## Write a loop over all variables in your data frame
## print the variable name inside the loop,
## and true/false, depending if the variable is numeric
## check out 'is.numeric()'
cat("Check if variable is numeric: \n")
for (var in names(scores)) {
  cat(var, " - ", is.numeric(scores[[var]]), "\n")
}


## Write a loop over all variables in your data frame
## print the variable name inside the loop,
## and the average value of the variable
## if the variable is numeric
cat("Average value:  \n")
for (var in names(scores)) {
  if(is.numeric(scores[[var]])) {
    cat(var, ":", mean(scores[[var]]), "\n")
  }
}


##
## HR data
## You are working in HR for a large firm with 100 employees.
## You are analyzing their salaries.

## Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee
## 100")
## Hint: use 'paste()` or `str_c`


## Create a random vector of their 2021 salaries.
## Hint: you may use the runif function to create uniform random numbers,
## e.g. 'runif(100, 60, 120)' creates 100 random numbers between 60 and 120


## Create a random vector of 2022 salaries that are typically
## higher than the 2014 salaires (use runif again).
## For instance, if you create random numbers between 65 and 130, then 2022
## salaries tend to be larger than 2021 salaries.


## Create a data.frame 'salaries' by combining the vectors you just made


## Create a column 'raise' that stores the size of the
## raise between 2021 and 2022


## Retrieve values from your data frame to answer the following questions:
##
## What was the 2015 salary of employee 57


## Now round the answer down to two digits after comma
## check out 'round()' function


## How many employees got a raise?


## What was the value of the highest raise?
## Round the number to two digits!


## What was the name of the employee who recieved the highest raise?


## What was the average salary increase?
## Round the number!


## For people who did not get a raise, how much money did they lose?
## Round the number!
