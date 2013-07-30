library(sqldf)
t3c <- sqldf('SELECT "close_today", "open_today" FROM "t3c";', dbname = 'treasury_data.db')
print(cor(na.omit(t3c))[1,2])
rm(t3c)
