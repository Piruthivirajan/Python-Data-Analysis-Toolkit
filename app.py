from flask import Flask, request, jsonify
import joblib
from datetime import datetime

app = Flask(__name__)

# Load the pre-trained model
model = joblib.load('model.pkl')

@app.route('/predict', methods=['POST'])
def predict():
    try:
        data = request.json
        input_date = data.get('Date')
        quality = data.get('Quality', 'A')
        wool_type = data.get('Type', 'Merino')

        # Extract year from date if needed
        production_year = datetime.strptime(input_date, '%Y-%m-%d').year if input_date else datetime.now().year
        
        # If Weight is needed for prediction, you need to decide how to handle it, if it’s not provided in the input
        weight = 1  # you can change this to any default value or logic to calculate it

        # Construct the features list
        features = [weight, production_year]
        
        # One-hot encode 'Quality'
        qualities = ['B', 'C']
        features.extend([1 if quality == q else 0 for q in qualities])
        
        # One-hot encode 'Type'
        types = ['Deccani', 'Karakul', 'Merino', 'Pashmina']  # Add all types except the first one (dropped during training)
        features.extend([1 if wool_type == t else 0 for t in types])

        # Predict and return the price
        price = model.predict([features])
        return jsonify({'price': round(price[0], 2)})
        
    except Exception as e:
        return jsonify({'error': str(e)})

if __name__ == '__main__':
    app.run(debug=True, port=5000)
