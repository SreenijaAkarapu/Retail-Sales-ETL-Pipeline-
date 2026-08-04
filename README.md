# Retail Sales ETL Pipeline

An end-to-end **ETL (Extract, Transform, Load)** project built using **Python, Pandas, SQLite, and SQL**. This project processes a retail sales dataset containing **51,290 records** by extracting raw CSV data, performing data profiling and cleaning, transforming inconsistent values, loading the cleaned data into a SQLite database, and generating business insights through SQL queries.

---

## Project Overview

This project demonstrates a complete ETL workflow commonly used in data engineering. It focuses on improving data quality through profiling, validation, and transformation before loading the processed data into a relational database for analysis.

During database design, data validation revealed that **customer names were not unique**, making them unsuitable as primary keys. To maintain data integrity, the relational schema was redesigned using appropriate identifiers and normalized tables.

---

## ETL Workflow

```text
Retail Sales CSV
        │
        ▼
Extract Data (Pandas)
        │
        ▼
Data Profiling
(Missing Values, Duplicates,
Data Types, Date Formats)
        │
        ▼
Data Cleaning & Transformation
(Standardization & Validation)
        │
        ▼
Relational Database Design
(Normalization)
        │
        ▼
Load into SQLite
        │
        ▼
SQL Analysis
        │
        ▼
Business Insights
```

---

## Features

- Processed **51,290 retail sales records** using Python and Pandas.
- Performed data profiling to identify:
  - Missing values
  - Duplicate records
  - Data type inconsistencies
  - Mixed date formats
- Cleaned and transformed data by:
  - Standardizing date formats
  - Converting numeric columns
  - Improving overall data quality
- Designed a normalized relational database schema.
- Validated entity relationships and resolved data modeling issues caused by non-unique customer names.
- Loaded transformed data into SQLite.
- Performed SQL analysis using:
  - JOIN
  - GROUP BY
  - HAVING
  - CASE
  - DISTINCT
  - Aggregate Functions

---

## Technologies Used

- Python
- Pandas
- SQLite
- SQL
- Jupyter Notebook (Kaggle)

---

## Dataset

This project uses the **Superstore Sales Dataset** published on Kaggle.

**Dataset Source:**  
https://www.kaggle.com/datasets/akarapusreenija/superstore-sales-dataset

The dataset contains retail sales transactions used for demonstrating ETL processes, relational database design, and SQL-based business analysis.

---

## Repository Structure

```
Retail-Sales-ETL-Pipeline/
│
├── SuperStoreOrders.csv
├── retail-sales-etl-pipeline.ipynb
├── analysis_queries.sql
├── requirements.txt
├── README.md
├── LICENSE
└── .gitignore
```

---

## SQL Analysis

The project includes SQL queries to analyze:

- Total Sales
- Total Profit
- Sales by Region
- Sales by Category
- Sales by Sub-Category
- Product Performance
- Customer Orders
- Business Insights

The SQL queries demonstrate the use of:

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- JOIN
- CASE
- DISTINCT
- Aggregate Functions

---

## Key Learning Outcomes

- Built a complete ETL pipeline from extraction to SQL analysis.
- Learned practical data profiling and validation techniques.
- Improved data quality through cleaning and transformation.
- Applied relational database design and normalization concepts.
- Loaded processed data into SQLite.
- Wrote analytical SQL queries to extract business insights.
- Understood the importance of validating assumptions before designing database relationships.

---

## How to Run

1. Clone the repository.

```bash
git clone https://github.com/<your-username>/Retail-Sales-ETL-Pipeline.git
```

2. Install the required packages.

```bash
pip install -r requirements.txt
```

3. Open the notebook.

```
retail-sales-etl-pipeline.ipynb
```

4. Run the notebook cells sequentially to execute the complete ETL pipeline and SQL analysis.

---

## Future Improvements

- Automate the ETL workflow using orchestration tools.
- Integrate PostgreSQL or MySQL instead of SQLite.
- Develop an interactive Power BI or Tableau dashboard.
- Add automated data validation tests.
- Schedule periodic data ingestion.

---

## Author

**Sreenija Akarapu**

GitHub: https://github.com/SreenijaAkarapu

---

## License

This project is licensed under the **MIT License**.
