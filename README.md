# WoolPricePredictor
This project utilizes a linear regression model to predict wool prices based on various features such as weight, quality, type, and production year. The project exposes a prediction endpoint via a Flask application, allowing users to make predictions by sending a POST request.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [API Documentation](#api-documentation)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Installation

### Prerequisites
- Python 3.7 or above
- Pip
- MySQL Database

### Steps
1. Clone the repository
   ```sh
   git clone https://github.com/Piruthivirajan/Python-Data-Analysis-Toolkit.git

pip install -r requirements.txt


curl --request POST \
  --url http://localhost:5000/predict \
  --header 'Content-Type: application/json' \
  --data '{
	"Date": "2023-01-01",
	"Quality": "A",
	"Type": "Merino"
}'
