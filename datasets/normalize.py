import pandas as pd
from sklearn.preprocessing import MinMaxScaler

# Load the data from the CSV file
df = pd.read_csv('input.csv')

# Create the scaler
scaler = MinMaxScaler()

# Transform the data using the scaler
arr_scaled = scaler.fit_transform(df)

df_scaled = pd.DataFrame(arr_scaled)

# Save the modified DataFrame
df_scaled.to_csv('gp_pos.csv', index=False, header=False)

