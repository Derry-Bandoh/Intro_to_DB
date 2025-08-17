import mysql.connector 

# Connect only to MySQL server (not to a specific database)
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="QueuTic99@$!"
)

mycursor = mydb.cursor()

#db_name = "alx_book_store"
sql = "CREATE DATABASE IF NOT EXISTS alx_book_store"

mycursor.execute(sql)
print("Database 'alx_book_store' created successfully!")

mycursor.close()
mydb.close()
