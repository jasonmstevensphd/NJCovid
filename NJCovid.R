# Daily Analysis of COVID-19 Cases in NJ

library(tidyverse)
library(readxl)
library(lubridate)

setwd("C:/DataScience/")

Data_1 <- read_xlsx("NJcovid.xlsx", sheet = "Sheet1") %>% select(Entry, Month, Day, `Day of Week`, `New Cases`,
                                                               `Union County New Cases`) %>%
  filter(!is.na(`New Cases`))

# This is where we clean up the old excel sheet

Data_1$Year <- 2020

Data_1$Date <- paste(Data_1$Year, Data_1$Month, Data_1$Day, sep = "-")

Data_1$Date_1 <- ymd(Data_1$Date)

Data_1 <- Data_1 %>% select(-Year, -Month, -Day, -`Day of Week`, -Date, -Entry) %>%
  rename(Date = Date_1)

### Add New Data

Data_1 <- Data_1 %>% add_row(
  Date = "2020-04-05",
  `New Cases` = 3482,
  `Union County New Cases` = 71
) %>%
  add_row(
    Date = "2020-04-06",
    `New Cases` = 3663,
    `Union County New Cases` = 469
    
  ) %>%
  add_row(
    Date = "2020-04-07",
    `New Cases` = 3361,
    `Union County New Cases` = 673
  ) %>%
  add_row(
    Date = "2020-04-08",
    `New Cases` = 3088,
    `Union County New Cases` = 473
  ) %>%
  add_row(
    Date = "2020-04-09",
    `New Cases` = 3748,
    `Union County New Cases` = 372
  ) %>%
  add_row(
    Date = "2020-04-10",
    `New Cases` = 3627,
    `Union County New Cases` = 372
  ) %>%
  add_row(
    Date = "2020-04-11",
    `New Cases` = 3599,
    `Union County New Cases` = 290
  )  %>%
  add_row(
    Date = "2020-04-12",
    `New Cases` = 3733,
    `Union County New Cases` = 605
  )  %>%
  add_row(
    Date = "2020-04-13",
    `New Cases` = 3219,
    `Union County New Cases` = 456
  )  %>%
  add_row(
    Date = "2020-04-14",
    `New Cases` = 4059,
    `Union County New Cases` = 629
  )  %>%
  add_row(
    Date = "2020-04-15",
    `New Cases` = 2625,
    `Union County New Cases` = 173
  )  %>%
  add_row(
    Date = "2020-04-16",
    `New Cases` = 4391,
    `Union County New Cases` = 466
  )  %>%
  add_row(
    Date = "2020-04-17",
    `New Cases` = 3250,
    `Union County New Cases` = 525
  )  %>%
  add_row(
    Date = "2020-04-18",
    `New Cases` = 3026,
    `Union County New Cases` = 530
  )  %>%
  add_row(
    Date = "2020-04-19",
    `New Cases` = 3915,
    `Union County New Cases` = 650
  )  %>%
  add_row(
    Date = "2020-04-20",
    `New Cases` = 3528,
    `Union County New Cases` = 363
  )  %>%
  add_row(
    Date = "2020-04-21",
    `New Cases` = 3643,
    `Union County New Cases` = 317
  )  %>%
  add_row(
    Date = "2020-04-22",
    `New Cases` = 3551,
    `Union County New Cases` = 195
  )  %>%
  add_row(
    Date = "2020-04-23",
    `New Cases` = 4247,
    `Union County New Cases` = 451
  )  %>%
  add_row(
    Date = "2020-04-24",
    `New Cases` = 3047,
    `Union County New Cases` = 273
  )  %>%
  add_row(
    Date = "2020-04-25",
    `New Cases` = 3457,
    `Union County New Cases` = 315
  )  %>%
  add_row(
    Date = "2020-04-26",
    `New Cases` = 3730,
    `Union County New Cases` = 330
  )  %>%
  add_row(
    Date = "2020-04-27",
    `New Cases` = 2146,
    `Union County New Cases` = 158
  )  %>%
  add_row(
    Date = "2020-04-28",
    `New Cases` = 2887,
    `Union County New Cases` = 177
  )  %>%
  add_row(
    Date = "2020-04-29",
    `New Cases` = 2481,
    `Union County New Cases` = 192
  )  %>%
  add_row(
    Date = "2020-04-30",
    `New Cases` = 2633,
    `Union County New Cases` = 198
  )  %>%
  add_row(
    Date = "2020-05-01",
    `New Cases` = 2651,
    `Union County New Cases` = 201
  )  %>%
  add_row(
    Date = "2020-05-02",
    `New Cases` = 2912,
    `Union County New Cases` = 217
  )  %>%
  add_row(
    Date = "2020-05-03",
    `New Cases` = 3144,
    `Union County New Cases` = 229
  )  %>%
  add_row(
    Date = "2020-05-04",
    `New Cases` = 1621,
    `Union County New Cases` = 132
  )  %>%
  add_row(
    Date = "2020-05-05",
    `New Cases` = 2494,
    `Union County New Cases` = 146
  )  %>%
  add_row(
    Date = "2020-05-06",
    `New Cases` = 1513,
    `Union County New Cases` = 101
  )  %>%
  add_row(
    Date = "2020-05-07",
    `New Cases` = 1827,
    `Union County New Cases` = 174
  )  %>%
  add_row(
    Date = "2020-05-08",
    `New Cases` = 1985,
    `Union County New Cases` = 136
  )  %>%
  add_row(
    Date = "2020-05-09",
    `New Cases` = 1759,
    `Union County New Cases` = 67
  )  %>%
  add_row(
    Date = "2020-05-10",
    `New Cases` = 1503,
    `Union County New Cases` = 73
  )  %>%
  add_row(
    Date = "2020-05-11",
    `New Cases` = 1453,
    `Union County New Cases` = 107
  )  %>%
  add_row(
    Date = "2020-05-12",
    `New Cases` = 898,
    `Union County New Cases` = 39
  )  %>%
  add_row(
    Date = "2020-05-13",
    `New Cases` = 1028,
    `Union County New Cases` = 103
  )  %>%
  add_row(
    Date = "2020-05-14",
    `New Cases` = 1216,
    `Union County New Cases` = 79
  )  %>%
  add_row(
    Date = "2020-05-15",
    `New Cases` = 1297,
    `Union County New Cases` = 107
  )  %>%
  add_row(
    Date = "2020-05-16",
    `New Cases` = 1239,
    `Union County New Cases` = (77)
  )  %>%
  add_row(
    Date = "2020-05-17",
    `New Cases` = 1272,
    `Union County New Cases` = (133)
  )  %>%
  add_row(
    Date = "2020-05-18",
    `New Cases` = 1735,
    `Union County New Cases` = (201)
  )   %>%
  add_row(
    Date = "2020-05-19",
    `New Cases` = 1055,
    `Union County New Cases` = (128)
  )   %>%
  add_row(
    Date = "2020-05-20",
    `New Cases` = 1670,
    `Union County New Cases` = (91) #15122-15031
  )   %>%
  add_row(
    Date = "2020-05-21",
    `New Cases` = 1304,
    `Union County New Cases` = (54) #15176--15122
  )   %>%
  add_row(
    Date = "2020-05-22",
    `New Cases` = 1394,
    `Union County New Cases` = (15) #15176-15191
  )


# Do some math

Data_1 <- Data_1 %>% mutate(`Log New Cases NJ` = log(`New Cases`),
                          `Log New Cases Union County NJ` = log(`Union County New Cases`))


Data_1$`NJ Five Day Moving Average` <- NA

for (i in seq_along (Data_1$`New Cases`)) {
  
  if (i > 5) {
    
    a <- Data_1$`New Cases`[i-4]
    b <- Data_1$`New Cases`[i-3]
    c <- Data_1$`New Cases`[i-2]
    d <- Data_1$`New Cases`[i-1]
    e <- Data_1$`New Cases`[i]
    
    x <- (a + b + c + d + e)/5
    
    Data_1$`NJ Five Day Moving Average`[i] <- x
    
  }
  
  else {
    
    Data_1$`NJ Five Day Moving Average`[i] <- NA
    
  }
  
}

Data_1$`Union County NJ Five Day Moving Average` <- NA

for (i in seq_along (Data_1$`Union County New Cases`)) {
  
  if (i > 5) {
    
    a <- Data_1$`Union County New Cases`[i-4]
    b <- Data_1$`Union County New Cases`[i-3]
    c <- Data_1$`Union County New Cases`[i-2]
    d <- Data_1$`Union County New Cases`[i-1]
    e <- Data_1$`Union County New Cases`[i]
    
    x <- (a + b + c + d + e)/5
    
    Data_1$`Union County NJ Five Day Moving Average`[i] <- x
    
  }
  
  else {
    
    Data_1$`Union County NJ Five Day Moving Average`[i] <- NA
    
  }
  
}

### Calculate Total Union County Cases

Data_1$Dummy <- Data_1$`Union County New Cases`
Data_1$Dummy[is.na(Data_1$Dummy)] <- 0

Data_1$`Total Union County Cases` <- cumsum(Data_1$Dummy)

Data_1$Dummy <- NULL


####### Plots


Data_1 <- Data_1 %>% mutate(`Log of NJ New Cases Five Day Moving Average` = log(`NJ Five Day Moving Average`),
                          `Log of Union County NJ New Cases Five Day Moving Average` = log(`Union County NJ Five Day Moving Average`))

Data_1$Day <- weekdays(as.Date(Data_1$Date))

### Plot of NJ New Cases

NJ_Plot_1 <- ggplot(Data_1, aes(x = Date, y = `New Cases`)) +
  geom_point(aes(color = Day))

NJ_Plot_1

### Plot of NJ New Cases Moving Average

NJ_Plot_2 <- ggplot(Data_1, aes(x = Date, y = `NJ Five Day Moving Average`)) +
  geom_point(aes(color = Day))

NJ_Plot_2

### Plot of log new cases

NJ_Plot_3 <- ggplot(Data_1, aes(x = Date, y = `Log New Cases NJ`)) +
  geom_point(aes(color = Day))

NJ_Plot_3


### Plot of log new cases 5 day moving average

NJ_Plot_4 <- ggplot(Data_1, aes(x = Date, y = `Log of NJ New Cases Five Day Moving Average`)) +
  geom_point(aes(color = Day))

NJ_Plot_4


### Plot of Union County NJ New Cases

NJ_Plot_5 <- ggplot(Data_1, aes(x = Date, y = `Union County New Cases`)) +
  geom_point(aes(color = Day))

NJ_Plot_5

### Plot of Union County NJ New Casese Moving Average

NJ_Plot_6 <- ggplot(Data_1, aes(x = Date, y = `Union County NJ Five Day Moving Average`)) +
  geom_point(aes(color = Day))

NJ_Plot_6

### Plot of log new cases Union County

NJ_Plot_7 <- ggplot(Data_1, aes(x = Date, y = `Log New Cases Union County NJ`)) +
  geom_point()

NJ_Plot_7

### Plot of log union county new cases 5 day moving average

Data_2 <- Data_1 %>% filter(!is.na(`Log of Union County NJ New Cases Five Day Moving Average`))

NJ_Plot_8 <- ggplot(Data_2, aes(x = Date, y = `Log of Union County NJ New Cases Five Day Moving Average`)) +
  geom_point(aes(
    size = `Total Union County Cases`,
    color = `Union County New Cases`,
    label = `Union County New Cases`)) +
  geom_text(aes(label = `Union County New Cases`), hjust = 1.5, vjust = -0.5) +
  ggtitle("Analysis of Union County NJ COVID-19 Cases")+
  labs(subtitle = "Data taken from @GovMurphy Daily Tweets")+
  xlab("Date") +
  ylab("Log of the Five Day Moving Average of Union County NJ New Cases")

NJ_Plot_8

Prediction_df <- Data_1 %>% slice((nrow(Data_1)-14):(nrow(Data_1))) 

Prediction_df$Entry <- 1:nrow(Prediction_df)

Model <- lm(`Union County NJ Five Day Moving Average` ~ Entry, data = Prediction_df)
Model_1 <- lm(`NJ Five Day Moving Average` ~ Entry, data = Prediction_df)

Predict_15day <- data.frame(16:30)
colnames(Predict_15day) <- "Entry"
Predict_15day$Prediction_UC <- predict(Model, Predict_15day)
Predict_15day$Prediction_NJ <- predict(Model_1, Predict_15day)
