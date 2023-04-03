#deaths due to malnutrition

year<-c(2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022)
death<-c(28,24,31,48,37,77,37,58,38,52,41,85)

malnutrition<-data.frame(year,death)



library(ggplot2)
library(dplyr)
library(hrbrthemes)


# Bar Plot
gg<- ggplot(data=malnutrition, aes(x=year, y=death)) +
  geom_bar(stat="identity")
geom_point()
gg+labs(y= "Deaths of children due to malnutrition", x = "Year")+labs(title= "Deaths due to malnutrition in La Guijara, 2011-2022")+scale_fill_brewer(palette="Blues")




###Trend line gg plot scatter plot with line###

# Libraries
library(ggplot2)
library(dplyr)
library(hrbrthemes)
library(scales)
# Load dataset


# Plot
gg<- ggplot(malnutrition, aes(x=year, y=death)) + 
  geom_point()
gg+labs(y= "Number of child deaths of children due to malnutrition", x = "Year")+labs(title= "Deaths due to malnutrition in La Guijara, 2011-2022")+geom_line()+geom_line()+geom_point()+ scale_x_continuous(breaks= pretty_breaks())