 ## Books data set ############
library(arules)
library(arulesViz) 
Books <- read.csv(file.choose())
View(Books)
class(Books)
summary(Books)

rules <- apriori(as.matrix(Books),parameter = list(support=0.02,confidence=0.5))
inspect(rules)
inspect(sort(rules,by='lift'))

plot(rules,method = "scatterplot")
plot(rules,method = "grouped")
plot(rules,method = "graph")

rules1 <- apriori(as.matrix(Books),parameter = list(support=0.08,confidence=0.7))
inspect(rules1)
inspect(sort(rules1,by='lift'))

plot(rules1,method = "scatterplot")
plot(rules1,method = "grouped")
plot(rules1,method = "graph")

########################################################################################################

### Groceries data set ###############
groceries <- read.csv(file.choose())
summary(groceries)
View(groceries)
class(groceries)
grules <- apriori(groceries,parameter = list(support=0.05,confidence=0.5))
inspect(grules)
inspect(sort(grules,by='lift'))

plot(grules,method = 'scatterplot')
plot(grules,method = 'grouped')
plot(grules,method = 'graph')

grules1 <- apriori(groceries,parameter = list(support=0.02,confidence=0.5))
inspect(grules1)
inspect(sort(grules1,by='lift'))

#higher the lift ratio better the rules.

#######################################################################################################

## my movies data set##########

movies <- read.csv(file.choose())
View(movies)
class(movies)
summary(movies)
movies <- movies[,6:15]
mrules <- apriori(as.matrix(movies),parameter = list(support=0.02,confidence=0.5,minlen=2))
inspect(mrules)                  
inspect(sort(mrules,by='lift'))

plot(mrules,method = 'scatterplot')
plot(mrules,method = 'grouped')
plot(mrules,method = 'graph')



##################################################################################################