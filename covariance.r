library(sqldf)
t3c <- sqldf('SELECT "close_today", "open_today" FROM "t3c";', dbname = 'treasury_data.db')
print(cov(na.omit(t3c))[1,2])
