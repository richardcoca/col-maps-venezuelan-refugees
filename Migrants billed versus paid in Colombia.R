# Define the data
year <- c(2017, 2018, 2019)
paid <- c(2.9, 11.8, 17.6)
billed <- c(9.8, 51.9, 71.4)

# Create a data frame
df <- data.frame(Year = year, Paid = paid, Billed = billed)

# Create the plot
ggplot(df, aes(x = Year, y = Billed, fill = "Billed")) +
  geom_bar(stat = "identity", position = "dodge", width = 0.5, color = "black") +
  geom_bar(aes(y = Paid, fill = "Paid"), stat = "identity", position = "dodge", width = 0.5, color = "black") +
  scale_y_continuous(name = "MM USD") +
  scale_x_continuous(name = "Year", breaks = year) +
  ggtitle("Paid versus Billed Health Services Provided to Migrants in Colombia Public Hospitals") +
  theme_classic() +
  theme(legend.title = element_blank(),
        legend.position = "top",
        axis.title.y = element_text(size = 12),
        axis.title.x = element_text(size = 12),
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        plot.title = element_text(size = 14, face = "bold"))
