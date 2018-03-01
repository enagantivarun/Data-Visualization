
#Data Vizulations of mtcars dataset using R, ggplot2 package 

install.packages("ggplot2")

library(ggplot2)


#cars miles per gallon based on number of cylinders engine is running 
ggplot(mtcars, aes(x=cyl, y=mpg))+
geom_point(aes(col=cyl))

qplot(cyl,mpg, data=mtcars, geom = "point", col=cyl)


#cars miles per gallon based in weights, shape, size and alpha 
ggplot(mtcars,aes(x=wt,y=mpg, col=am, fill=cyl)) +
  geom_point(shape=21, size =4, alpha=0.6)


#Displaying cars names based mileage vs horse power 
ggplot(mtcars, aes(x = hp, y = mpg, fill = cyl)) +
  geom_text(color="red", label=rownames(mtcars))


#Data Visulizations for Chicken Weights dataset 

ggplot(ChickWeight, aes(x = Time, y = weight)) +
  geom_line(aes(group = Chick))


ggplot(ChickWeight, aes(x = Time, y = weight, col=Diet)) +
  geom_line(aes(group = Chick))


ggplot(ChickWeight, aes(x = Time, y = weight, col=Diet)) +
  geom_line(aes(group = Chick),alpha=0.3)+
  geom_smooth(lwd=2, se=FALSE)


#Data Visulizations for Titanic dataset
position_jd=position_jitterdodge(0.5,0,0.6)

ggplot(Titanic_df, aes(x = Class, color = Sex)) +
  geom_bar(position = position_jd, size=3, alpha=0.5)+
  facet_grid(.~Survived)

#Data Visualization for F1 
ggplot(F1_Testing_2018, aes(x=Team, y=Laps, col=Driver, main='F1 2018 Day 4 Testing', size=Laps))+
  geom_point()+ggtitle("F1 2018 Testing Day 4")+
  labs(caption="@ Varun Enaganti")
