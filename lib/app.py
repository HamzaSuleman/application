import json;
from flask import Flask, jsonify
from numpy import True_;

app = Flask(__name__)

json_data = '{"name": "Krunal", "city": "Rajkot"}'


data = [
  {
    "userId": 1,
     "id": 1,
    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
  },
  {
    "userId": 1,
    "id": 2,
    "title": "qui est esse",
    "body": "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla"
  },]

@app.route('/api', methods=['GET'])
def hello_world():
    
    return json.dumps(data)#jsonify(data)#json.dumps({data:data}) #jsonify(data)


if __name__ == '__main__':
    app.run(debug=True)