# Creating Functions
myplot <- function(ds,rows=1:10){
  Data <- ds[rows,,drop=F]
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset = 0.01, legend=Players[rows], col=c(1:4,6), pch=15:18, horiz=F)
}

myplot(Salary,5)

### Insights are good ###

# Salary
myplot(Salary)
myplot(Salary/Games)
myplot(Salary/FieldGoals)

# In-Game Metrics
myplot(MinutesPlayed)
myplot(Points)

# In-Game Metrics Normalized
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttempts/Games)
myplot(Points/Games)

# Interesting Obersvations
myplot(MinutesPlayed/Games)
myplot(Games)

# Time is valuable
myplot(FieldGoals/MinutesPlayed)

# PlayerStyle
myplot(Points/FieldGoals)
