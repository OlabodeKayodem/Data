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
CREATE TABLE campaign (
    campaign_id VARCHAR(10) PRIMARY KEY,
    client_id INT,
    numbers_contacts INT,
    contacts_duration INT,
    pdays INT,
    previous_campaign_contacts INT,
    previous_outcome BOOLEAN,
    campaign_outcome BOOLEAN,
    last_contact_date DATE
);
CREATE TABLE Economics (
    client_id INT,
    emp_var_rate DECIMAL(18, 2),
    cons_price_idx DECIMAL(18, 2),
    euribor_three_months DECIMAL(18, 2),
    number_employed DECIMAL(18, 2),
    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);




--**A BREIF EXPLANATION OF HOW THE CODES WORKS**

-- This statement creates a table named "Client" with the following columns:
CREATE TABLE Client (
    -- client_id: An integer column that serves as the primary key.
    client_id INT PRIMARY KEY,
    -- age: An integer column for storing the age of the client.
    age INT,
    -- job: A string column with a maximum length of 255 characters for storing the job of the client.
    job VARCHAR(255),
    -- marital: A string column with a maximum length of 255 characters for storing the marital status of the client.
    marital VARCHAR(255),
    -- education: A string column with a maximum length of 255 characters for storing the education level of the client.
    education VARCHAR(255),
    -- credit_default: A boolean column for indicating whether the client has credit default.
    credit_default BOOLEAN,
    -- housing: A boolean column for indicating whether the client has housing.
    housing BOOLEAN,
    -- loan: A boolean column for indicating whether the client has a loan.
    loan BOOLEAN
);

-- This statement creates a table named "campaign" with the following columns:
CREATE TABLE campaign (
    -- campaign_id: A string column with a maximum length of 10 characters that serves as the primary key.
    campaign_id VARCHAR(10) PRIMARY KEY,
    -- client_id: An integer column for storing the client ID associated with the campaign.
    client_id INT,
    -- numbers_contacts: An integer column for storing the number of contacts made during the campaign.
    numbers_contacts INT,
    -- contacts_duration: An integer column for storing the duration of the contacts made during the campaign.
    contacts_duration INT,
    -- pdays: An integer column for storing the number of days that passed by after the client was last contacted from a previous campaign.
    pdays INT,
    -- previous_campaign_contacts: An integer column for storing the number of contacts performed before this campaign and for this client.
    previous_campaign_contacts INT,
    -- previous_outcome: A boolean column for indicating the outcome of the previous marketing campaign for this client.
    previous_outcome BOOLEAN,
    -- campaign_outcome: A boolean column for indicating the outcome of the current marketing campaign for this client.
    campaign_outcome BOOLEAN,
    -- last_contact_date: A date column for storing the date of the last contact made during the campaign.
    last_contact_date DATE
);

-- This statement creates a table named "Economics" with the following columns:
CREATE TABLE Economics (
    -- client_id: An integer column for storing the client ID associated with economic data.
    client_id INT,
    -- emp_var_rate: A decimal column with a precision of 18 digits and 2 decimal places for storing the employment variation rate.
    emp_var_rate DECIMAL(18, 2),
    -- cons_price_idx: A decimal column with a precision of 18 digits and 2 decimal places for storing the consumer price index.
    cons_price_idx DECIMAL(18, 2),
    -- euribor_three_months: A decimal column with a precision of 18 digits and 2 decimal places for storing the Euribor 3 month rate.
    euribor_three_months DECIMAL(18, 2),
    -- number_employed: A decimal column with a precision of 18 digits and 2 decimal places for storing the number of employed people.
    number_employed DECIMAL(18, 2),
    -- A foreign key constraint is added to the client_id column, referencing the client_id column in the Client table to establish a relationship between the two tables.
    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);
