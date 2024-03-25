# 📊 Data Analytics, Data Engineering and Data Science Project: Analyzing Personal Loan Marketing Campaign Data by Data Nexus

## Note:
Please open the [Python Code](Olabode%20Kayode%20Data%20Nexus%20Project/Python%20Code/Olabode%20Kayode%20DataNexusProject.ipynb) with **Visual Studio Code (VSCODE)**! 🔍 and make sure to download the [Reports Images](Olabode%20Kayode%20Data%20Nexus%20Project/Power%20BI%20reports) as well

## Introduction:
In the financial sector, personal loans play a crucial role as a revenue driver, especially with the prevailing interest rate of 10% for a two-year loan in the UK. In September 2022, UK consumers borrowed a staggering £1.5 billion, generating an estimated £300 million in interest for banks over the subsequent two years.

## Tasks:
Mogul Bank, a leading UK-based financial institution, has entrusted me, a seasoned data professional, with the responsibility of meticulously cleaning and efficiently storing the data acquired from a recent marketing campaign. This campaign was strategically designed to encourage customers to avail themselves of personal loans. Mogul stakeholders are eager to unearth invaluable insights from this marketing data. Furthermore, in anticipation of future campaigns, the bank seeks to establish a robust RDBMS database capable of seamlessly accommodating data from forthcoming initiatives. The envisioned schema entails three pivotal tables: Client, Campaign, and Economics. My final task is to craft SQL code that enables the bank to effortlessly create these tables and populate them with meticulously curated data sourced from CSV files. Given the bank's stringent security protocols, it is imperative to safeguard the SQL files by storing them as multiline string variables.

## Data and Tools:
I've been provided with a CSV file dubbed "bank_marketing.csv," which mandates my adept utilization of Python and pandas to execute data cleaning, reformatting, and partitioning tasks.

### **MY APPROACH**

**🔧 Step 1: Data Cleaning and Formatting:**
Utilize Python, pandas, and NumPy to meticulously clean, reformat, and partition the "bank_marketing.csv" file. Thoroughly identify and address missing values, duplicates, and any inconsistencies within the dataset. Segregate the data into distinct files based on the tables to be created (Client, Campaign, and Economics).

**🛠️ Step 2: Database Design:**
I used PostgreSQL and PgAdmin to design a comprehensive schema tailored for the RDBMS database, seamlessly accommodating data from the marketing campaign. Forge three indispensable tables: Client, Campaign, and Economics, ensuring the inclusion of appropriate columns and meticulous data typing.

**💻 Step 3: SQL Code Implementation:**
Crafted SQL code to facilitate the creation of the aforementioned tables and meticulously define their structure within the PostgreSQL database using PgAdmin. Articulate SQL code to facilitate the seamless population of the tables with immaculately cleaned and formatted data sourced from the CSV files.

**📊 Step 4: Power BI Analysis:**
Load the cleaned and formatted data into Power BI to leverage its analytical capabilities. Utilize Power BI to analyze the data and gain insights on the clients who responded True or False to the marketing campaign.

**📝 Step 5: Documentation and Reporting:**
Thoroughly document each step encompassing data cleaning, formatting, and storage processes. Furnish a comprehensive report delineating the intricate steps undertaken, pivotal decisions made, and any invaluable insights gleaned from the exhaustive data analysis.

## Challenges:
- **Renaming Columns:** I encountered issues with renaming some columns due to my unfamiliarity with chained assignment. Tip: Before attempting to rename columns, ensure you understand the underlying principles of chained assignment.
- **Connection Issues with MySQL:** My attempts to use MySQL were thwarted by my laptop's failure to connect to the server. Tip: Troubleshoot connection issues by checking network settings and firewall configurations.
- **Excel Database Connectivity:** I faced difficulties connecting to my database with Excel, leading me to resort to using Power BI. Tip: Consider using alternative tools like Power BI for database connectivity and analysis, as they may offer more robust features and easier integration.

## Lesson:
- **Understanding Chained Assignment:** I have gained awareness of how chained assignment works, which will enhance my ability to manipulate data effectively in future projects.
- **Basic Understanding of PostgreSQL:** Through this project, I've developed a fundamental understanding of how PostgreSQL works, laying the foundation for more advanced database management skills.

## Observations:
- **Standard Date Format:** Most databases, including PostgreSQL, prefer the YYYY-MM-DD format for dates. Tip: Adhering to this standard ensures consistency and compatibility across systems, avoiding potential issues with date manipulation and querying.

## Conclusion
Adhering to these steps ensures seamless data management, enabling informed decision-making and strategic initiatives. Leveraging Power BI enhances analytical capabilities for extracting actionable insights from the data.
