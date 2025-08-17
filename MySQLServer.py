import mysql.connector 

# Connect only to MySQL server (not to a specific database)
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="QueuTic99@$!"
)

mycursor = mydb.cursor()

db_name = "alx_book_store"
sql = f"CREATE DATABASE IF NOT EXISTS {db_name}"

mycursor.execute(sql)
print(f"Database '{db_name}' created successfully!")

mycursor.close()
mydb.close()
