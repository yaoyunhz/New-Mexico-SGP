## SGP Data Preparation

# school year 2018-2019

rm(list = ls())
AVT18 <- read.csv("RAW/All Valid Tests 2018V5.csv", 
                  header = TRUE, stringsAsFactors = FALSE)

# valid case
table(AVT18$InAccty) #all are valid
AVT18$VALID_CASE <- "VALID_CASE"

# remove science scores
table(AVT18$Subtest)
AVT18 <- AVT18[AVT18$Subtest != "SCI", ]

# content area
AVT18$CONTENT_AREA[AVT18$Subtest == "MATH"] <- "MATHEMATICS"
AVT18$CONTENT_AREA[AVT18$Subtest == "READ"] <- "READING"

# year
AVT18$YEAR <- "2017_2018"

# ID
AVT18$ID <- AVT18$StID

# last name
AVT18$LAST_NAME <- AVT18$Last

# first name
AVT18$FIRST_NAME <- AVT18$First

# grade
AVT18$GRADE <- AVT18$Grade

# scale score
AVT18$SCALE_SCORE <- AVT18$SS

# achievement level
table(AVT18$Testname)
AVT18$ACHIEVEMENT_LEVEL[AVT18$Testname == "ISTAT" & AVT18$PL == 3] <- "Proficient"
AVT18$ACHIEVEMENT_LEVEL[AVT18$Testname == "ISTAT" & AVT18$PL != 3] <- 
table(AVT18$PL[AVT18$Testname == "ISTAT"])
str(AVT18$PL)
table(sgpData_LONG$ACHIEVEMENT_LEVEL)


head(AVT18)
table(AVT18$Proficient)
table(AVT18$level)
table(AVT18$Level1)
AVT18$ACHIEVEMENT_LEVEL <- AVT18$Proficient
str(AVT18$ACHIEVEMENT_LEVEL)
str(sgpData_LONG$ACHIEVEMENT_LEVEL)

table(AVT18$Grade)
head(AVT18)
str(AVT18$Last)
str(sgpData_LONG)

table(AVT18$TestCode)
table(AVT18$Testname)
table(AVT18$Testlang)
    
