library(sqldf)
sqldf('SELECT "close_today", "open_today" FROM "t3c";', dbname = 'treasury_data.db')
