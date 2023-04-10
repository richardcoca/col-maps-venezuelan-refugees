####Number of Venezuelans migrating to Colombia through the years and the migration status composition###

library(ggplot2)

# Create a data frame with the number of Venezuelans each year and the corresponding years
venezuelans <- c(23573, 31471, 53747, 403702, 1174743, 1771237, 1729537, 1842390, 2477588)
years <- c(2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022)
df <- data.frame(years, venezuelans)
#This data is from the Colombian Migration Ministry of External Relations

# Create the plot
ggplot(df, aes(x=years, y=venezuelans)) +
  geom_line() +
  labs(title="Historical evolution of Venezuelan migration to Colombia", x="Years", y="Number of Venezuelans") +
  scale_y_continuous(labels = scales::comma) +
  theme_minimal()

library(ggplot2)

# Create a data frame with the immigration status information
total <- 2477588
regular <- 333806
temporary <- 1231675
authorized <- 617069
irregular <- 295038
immigration_status <- c("Regular", "Temporary Protection", "Authorized", "Irregular")
count <- c(regular, temporary, authorized, irregular)
ef <- data.frame(immigration_status, count)

# Create the pie chart
ggplot(ef, aes(x="", y=count, fill=immigration_status)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  labs(title="Breakdown of Immigration Status of Total Venezuelans in Colombia", fill="Immigration Status") +
  scale_fill_brewer(palette="Pastel2") +
  theme_void() +
  theme(legend.position="bottom")

