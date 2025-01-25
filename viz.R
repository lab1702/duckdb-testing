library(tidyverse)

d <- read_csv("res.csv")

d |>
  ggplot(aes(x = OS, y = ElapsedSeconds, fill = Computer)) +
  geom_col(position = "dodge")

d |>
  ggplot(aes(x = OS, y = CPUSeconds, fill = Computer)) +
  geom_col(position = "dodge")

d |>
  ggplot(aes(x = OS, y = AvgConcurrentThreads, fill = Computer)) +
  geom_col(position = "dodge")
