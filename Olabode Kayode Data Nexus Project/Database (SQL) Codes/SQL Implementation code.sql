# Define SQL code for creating tables
table_creation_sql = """
-- SQL code for creating tables
-- Create the Client table
CREATE TABLE Client (
     client_id INT PRIMARY KEY,
     age INT,
     job VARCHAR(255),
     marital VARCHAR(255),
     education VARCHAR(255),
     credit_default BOOLEAN,
     housing BOOLEAN,
     loan BOOLEAN
);

-- Create the Campaign table
CREATE TABLE Campaign (
    campaign_id VARCHAR(10) PRIMARY KEY,
    client_id INT,
    numbers_contacts INT,
    contacts_duration INT,
    pdays INT,
    previous_campaign_contacts INT,
    previous_outcome BOOLEAN,
    campaign_outcome BOOLEAN,
    last_contact_date DATE,
    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

-- Create the Economics table
CREATE TABLE Economics (
    client_id INT,
    emp_var_rate DECIMAL(18, 2),
    cons_price_idx DECIMAL(18, 2),
    euribor_three_months DECIMAL(18, 2),
    number_employed DECIMAL(18, 2),
    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);
"""

# Define SQL code for populating tables with data
tables_populating_sql = """
-- SQL code for populating tables with data
-- Populate the Client table with data from 'client_data.csv'
COPY Client FROM 'client_data.csv' DELIMITER ',' CSV HEADER;

-- Populate the Campaign table with data from 'campaign_data.csv'
COPY Campaign FROM 'campaign_data.csv' DELIMITER ',' CSV HEADER;

-- Populate the Economics table with data from 'economics_data.csv'
COPY Economics FROM 'economics_data.csv' DELIMITER ',' CSV HEADER;
"""

# Save SQL code as multiline string variables
sql_code = {
    'Table_Create_sql': table_creation_sql,
    'populate_tables_sql': tables_populating_sql
}

# Display the SQL code for the bank to use
sql_code['Table_Create_sql']
sql_code['populate_tables_sql']
