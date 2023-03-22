from flask import Flask, jsonify
import psycopg2 as ps
import json

app = Flask(__name__)

@app.route('/api/kanas', methods=['GET'])
def get_kanas():
    try:
        databaseConnection = ps.connect(
            host='localhost',
            port=5432,
            database='flashcards',
            user='admin_kanadventures',
            password='123'
        )
    
        cursor = databaseConnection.cursor()
        query = 'SELECT * FROM public.kanas'
        cursor.execute(query=query)
        dataRows = cursor.fetchall()
        data = []
    
        for row in dataRows:
            kana = {
                'id':row[0],
                'hiragana':row[1],
                'katakana':row[2],
                'class':row[3],
                'family':row[4],
                'romaji':row[5],
            }
        
            data.append(kana)
        
        cursor.close()
        databaseConnection.close()
    
        statusCode = 200
    
        return jsonify(data), statusCode
    
    except (ps.Error, Exception) as error:
        print(error)
        statusCode = 500
        return jsonify({'message': 'An error occurred while processing the request'}), statusCode


if(__name__ == '__main__'):
    app.run(debug=True)