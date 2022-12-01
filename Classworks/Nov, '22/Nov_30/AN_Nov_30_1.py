#mysql_server_connection.py: Write a program in python to connect MYSQL server

import mysql.connector

#to connect mysql server from python code
conn = mysql.connector.connect(host = 'localhost', user = 'root', password = '')
curosr = conn.cursor()