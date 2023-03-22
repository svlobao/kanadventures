import psycopg2 as ps

conn = ps.connect(
    host='localhost',
    port=5432,
    database='flashcards',
    user='admin_kanadventures',
    password='Po846520'
)

cursor = conn.cursor() # cursor object to execute queries

query = 'SELECT * FROM public.kanas'
cursor.execute(query=query)

dataRows = cursor.fetchall()

for row in dataRows:
    print(row)

cursor.close()
conn.close()