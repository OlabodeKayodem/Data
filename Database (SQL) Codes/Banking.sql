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