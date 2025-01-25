library(tidyverse)

d <- read_csv("res.csv")

p0 <- d |>
  ggplot(aes(x = OS, y = ElapsedSeconds, fill = Computer)) +
  geom_col(position = "dodge")

p1 <- d |>
  ggplot(aes(x = OS, y = CPUSeconds, fill = Computer)) +
  geom_col(position = "dodge")

p2 <- d |>
  ggplot(aes(x = OS, y = AvgConcurrentThreads, fill = Computer)) +
  geom_col(position = "dodge")


ggsave(filename = "elapsed.svg", plot = p0, width = 8, height = 4)
ggsave(filename = "cpu.svg", plot = p1, width = 8, height = 4)
ggsave(filename = "concurrent.svg", plot = p2, width = 8, height = 4)
