library(tidyverse)
library(ggplot2)
mydata<-ggplot2::mpg
mydata
head(mydata)
ggplot(data=mydata) + 
   geom_point(mapping=aes(x=displ,y=hwy))
##adding color class  now
ggplot(data=mydata) + 
  geom_point(mapping=aes(x=displ,y=hwy,color=class))
##adding color and shape to class  now
ggplot(data=mydata) + 
  geom_point(mapping=aes(x=displ,y=hwy,shape=class,color=class))

ggplot(data=mydata) + 
  geom_point(mapping=aes(x=displ,y=hwy),color="blue")


#Facets, seem to me like Trellis in Spotfire
#FAce_wrap work as a function, the first argument is a
#categorical variable.names()

ggplot(data=mydata) + 
  geom_point(mapping=aes(x=displ,y=hwy),color="blue") +
  facet_wrap(~class,nrow=2)

#Grid is to be used in two variables
ggplot(data=mydata) + 
  geom_point(mapping=aes(x=displ,y=hwy),color="blue") +
  facet_grid(~trans~year)

#what happens if you facet on a continuous variable
head(mydata)

ggplot(data=mydata) + 
  geom_point(mapping=aes(x=displ,y=hwy),color="blue") +
  facet_wrap(~hwy)

#Answer: it treats it like a categorical value, creating as many squares
#as values, so it will be too many squares


#Q:What does point do?
#answer: If you prefer to not facet in the rows or columns dimension
#use . instead of a vairiable name, e.g., + face_grid(. ~cyl)

ggplot(data=mydata) + 
  geom_point(mapping=aes(x=displ,y=hwy,color=year)) +
  facet_grid(. ~class)

ggplot(data=mydata) + 
  geom_point(mapping=aes(x=displ,y=hwy,color=year)) +
  facet_grid(class ~ . )


?facet_wrap

##page16-Geometrics Objects

ggplot(data = mydata) +
geom_point(mapping=aes(x=displ,y=hwy))

#Now using a different geom type, this time geom_smooth

ggplot(data = mydata) +
  geom_smooth(mapping=aes(x=displ,y=hwy))

#Drv stands for DriveTrain, linetype for each one (3 values)
ggplot(data = mydata) +
  geom_smooth(mapping=aes(x=displ,y=hwy, color=drv,linetype=drv))

#Adding color to each drv now
ggplot(data = mydata) +
  geom_smooth(mapping=aes(x=displ,y=hwy, linetype=drv))









