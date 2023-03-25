import sys
sys.path.append('kanadventures/lib/server/app')

import psycopg2 as ps
from app import app
from flask import jsonify


@app.route('/kanas_json')
def get_kanas():
    remoteConnection = ps.connect(
        host='localhost',
        port=5432,
        database='flashcards',
        user="admin_kanadventures",
        password="123"
    )
    
    cursor = remoteConnection.cursor()
    query = 'SELECT * FROM public.kanas'
    cursor.execute(query=query)
    data = cursor.fetchall()
    
    cursor.close()
    remoteConnection.close()
    
    return jsonify(data)

if(__name__=='__main__'):
    print('Initializing get_kanas()')
    app.run(debug=True)
    get_kanas()
    print('Finished get_kanas()')

