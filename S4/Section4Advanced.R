### Basketball dataset fun ###

#-------------------------------------------
# Games matrix
Games
rownames(Games)
colnames(Games)
Games["LeBronJames","2012"]

# Field goal matrix
FieldGoals
FieldGoals/Games
round(FieldGoals/Games,1)

# Minutes played matrix
round(MinutesPlayed/Games,0)

#-------------------------------------------
# Visualization

?matplot
matplot(FieldGoals) # Not what we want

# Transpose
t(FieldGoals)

# Run matplot again
matplot(t(FieldGoals), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset = 0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz=F)
# This produces two separate objects
# Normalize by games
t(FieldGoals/Games)
matplot(t(FieldGoals/Games), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset = 0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz=F)

# Field goals by attemps, accuracy
matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset = 0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz=F)

#-------------------------------------------
# Subsetting

x <- c("a","b","c","d","e")
x

x[c(1,5)]
x[1]

Games
# top paid players
Games[1:3,6:10]
# Kobe and Dwyane
Games[c(1,10),]
# Using names
Games[,c("2008","2009")]
# Just Kobe
Games[1,]
is.matrix(Games[1,])
is.vector(Games[1,])

Games[1,] # Vector
Games[1,,drop=F] # Matrix

# Visualize Subsets
Data <- MinutesPlayed[1:3,]
matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset = 0.01, legend=Players[1:3], col=c(1:4,6), pch=15:18, horiz=F)
Data

Data <- MinutesPlayed[1,,drop=F]
matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset = 0.01, legend=Players[1], col=c(1:4,6), pch=15:18, horiz=F)
Data










