library(ggplot2)

# Create a data frame with the data
data <- data.frame(
  Year = c(2015, 2015, 2016, 2016, 2017, 2017, 2018, 2018, 2019, 2019),
  Service = c(rep(c("EMERGENCY ROOM", "ALL SERVICES"), 5)),
  Count = c(NA, 1475, NA, 4258, 24727, 34994, 131958, 185879, 259463, 352023)
)

# Create the ggplot object
ggplot(data, aes(x = factor(Year), y = Count, color = Service, group = Service)) +
  geom_line(size = 1) +
  geom_point(size = 3) +
  labs(title = "Number of foreigners that received healthcare in Colombia",
       x = "Year",
       y = "Number of foreigners") +
  scale_color_manual(values = c("blue", "red")) +
  theme_minimal() +
  theme(axis.title.y = element_text(size = 16),
        axis.text.y = element_text(size = 14),
        axis.title.x = element_text(size = 16),
        axis.text.x = element_text(size = 14)) +
  scale_y_continuous(labels = scales::comma, limits = c(0, NA))
