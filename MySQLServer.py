# MySQLServer.py

import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL server (not to a specific database yet)
        mydb = mysql.connector.connect(
            host="localhost",
            user="root",
            passwd="QueuTic99@$!"
        )

        if mydb.is_connected():
            mycursor = mydb.cursor()
           
            
            # Create database if it does not exist
            sql = "CREATE DATABASE IF NOT EXISTS alx_book_store"
            mycursor.execute(sql)

            print("Database 'alx_book_store' created successfully!")

            # Close cursor and connection
            mycursor.close()
            mydb.close()

    except Error as e:
        print(f"Error while connecting to MySQL: {e}")

if __name__ == "__main__":
    create_database()
