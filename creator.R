require(ggplot2)
creators <- read.csv("Creators.csv");

head(creators)

read.csv(creators, header = TRUE, sep = "Name, Sleep, Creative.Work, Day.Job, Food.Leisure, Exercise, Other, Total")

creators <- creators[Name(nrow(creators), 24), ]

ggplot(creators, aes(Creative.Work, Name)) + geom_point(aes(color = factor(Name))) + geom_line(aes(color = factor(Name)))

x=seq(Name)
y=1:24


head("The Daily Routine of Creators")