import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn import preprocessing
import joblib
from sqlalchemy import create_engine

# Connect to the MySQL database
database_username = 'smartcaradmin'
database_password = 'smartcaradmin'
database_ip = '216.48.187.57'
database_name = 'vidh'
database_connection = create_engine('mysql+mysqlconnector://{0}:{1}@{2}/{3}'.
                                               format(database_username, database_password,
                                                      database_ip, database_name))

# Load the data from the database
query = "SELECT * FROM wool_market_data"
df = pd.read_sql(query, con=database_connection)

# Handle categorical variables
df = pd.get_dummies(df, columns=['Quality', 'Type', 'Region'], drop_first=True)

# Prepare the features (X) and the target (y)
X = df.drop(['Date', 'Price'], axis=1)  # Adjusted column names
y = df['Price']

# Split the data into training and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
print(X_train.columns)


# Initialize the model
model = LinearRegression()

# Train the model
model.fit(X_train, y_train)

# Optionally: Evaluate the model with the test set
score = model.score(X_test, y_test)
print("Model Accuracy: ", score)

# Save the model to a file
joblib.dump(model, 'model.pkl')
