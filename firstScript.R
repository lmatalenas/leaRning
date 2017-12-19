library('tidyverse')
library('googlesheets')

#Hello, world!

#GoogleSheet walkthrough

Data_sheet <- gs_title('MS Response')
data <- Data_sheet %>% gs_read('Sheet1')


#opening datasheet

file1 <- read_csv("C:/Users/home/Documents/RData/leaRning/leaRning/leaRning/RawData/001EW.csv")
file2 <- read_csv("C:/Users/home/Documents/RData/leaRning/leaRning/leaRning/RawData/002BY.csv")
file3 <- read_csv("C:/Users/home/Documents/RData/leaRning/leaRning/leaRning/RawData/003KS.csv")

file1 <- file1 %>% 
  mutate(ID = "001EW") #find a way to grab the filename.

file2 <- file2 %>% 
  mutate(ID = "002BY") #find a way to grab the filename.

file3 <- file3 %>% 
  mutate(ID = "003KS") #find a way to grab the filename.

View(file1)
View(file2)
View(file3)

file12 <- union(file1, file2)

View(file12)

file123 <- union(file12, file3)

View(file123)

meanRT <- file123 %>% 
  group_by(ID) %>% 
  summarize(meanRT=mean(RT))

ggplot(meanRT,aes(x=ID, y=meanRT, shape=ID, color=ID))+
  geom_point()+
  theme_minimal()
