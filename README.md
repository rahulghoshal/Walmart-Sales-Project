# 🛒 Walmart Sales Analysis using Python, SQL & Power BI

## 📌 Project Overview

This project focuses on analyzing Walmart retail sales data using **PostgreSQL** and creating an interactive **Power BI Dashboard** to uncover valuable business insights.

The objective of this project is to explore sales performance, customer behavior, payment trends, product category analysis, branch performance, and operational patterns through SQL queries and data visualization.

The project combines **data analysis using SQL** with **business intelligence reporting using Power BI** to transform raw transaction data into meaningful insights.

---

# 🗂️ Dataset Information

The dataset contains Walmart sales transaction records with details such as:

| Column Name | Description |
|------------|-------------|
| Invoice ID | Unique transaction identifier |
| Branch | Walmart branch location |
| City | City where the branch is located |
| Category | Product category |
| Unit Price | Price per unit |
| Quantity | Number of items purchased |
| Date | Transaction date |
| Time | Transaction time |
| Payment Method | Payment mode used |
| Rating | Customer rating |
| Total Price | Total transaction value |
| Profit Margin | Profit percentage |

---

# 🛠️ Tools & Technologies Used

- **PostgreSQL** → Data querying and business analysis
- **Power BI** → Interactive dashboard creation
- **SQL Window Functions** → Ranking and comparison analysis
- **Data Visualization** → Business insights representation

---

# 🔍 Business Problems Solved Using SQL

## 1. Payment Method Analysis

**Question:**  
What are the different payment methods, and how many transactions and items were sold using each method?

**Analysis:**
- Counted transactions by payment method
- Calculated total quantity sold through each payment type

---

## 2. Category Performance by Branch

**Question:**  
Which product category received the highest average rating in each branch?

**Analysis:**
- Used `DENSE_RANK()` window function
- Identified top-rated categories branch-wise

---

## 3. Busiest Day Analysis

**Question:**  
What is the busiest day of the week for each branch?

**Analysis:**
- Extracted weekday from transaction date
- Ranked transaction volume by branch

---

## 4. Items Sold by Payment Method

**Question:**  
How many products were sold through each payment method?

**Analysis:**
- Compared product quantity distribution across payment methods

---

## 5. Category Rating Analysis

**Question:**  
What are the average, minimum, and maximum ratings for each category in every city?

**Analysis:**
- Evaluated customer satisfaction levels
- Compared category performance geographically

---

## 6. Profit Analysis

**Question:**  
Which categories generate the highest profit?

**Analysis:**

Calculated:

```
Total Profit = Total Price × Profit Margin
```

and ranked categories based on profitability.

---

## 7. Branch Payment Preference

**Question:**  
What is the most frequently used payment method in each branch?

**Analysis:**
- Identified customer payment preferences branch-wise

---

## 8. Shift-Based Transaction Analysis

**Question:**  
How many transactions occur during Morning, Afternoon, and Evening shifts?

**Analysis:**

Transaction time was categorized into:

- 🌅 Morning
- ☀️ Afternoon
- 🌙 Evening

to understand customer purchasing patterns.

---

# 📊 Power BI Dashboard

An interactive Power BI dashboard was created to visualize key business insights from the Walmart dataset.

The dashboard includes:

## 📈 Sales Overview

- Total Revenue
- Total Transactions
- Total Quantity Sold
- Average Customer Rating

---

## 🏷️ Category Performance

Visualizes:

- Revenue by category
- Profit contribution
- Best performing categories

---

## 💳 Payment Analysis

Shows:

- Most preferred payment methods
- Transaction distribution
- Quantity sold by payment type

---

## 🏢 Branch & City Analysis

Includes:

- Branch-wise revenue comparison
- City performance analysis
- Customer rating comparison

---

## ⏰ Time-Based Analysis

Displays:

- Sales by day
- Sales by shift
- Customer purchasing trends

---

# 📷 Dashboard Preview

(WALMART SALES DASHBOARD screenshot)


[Power BI Dashboard](dashboard.png)


---

# 📌 Key Insights

Some insights generated from the analysis:

- Identified the highest-performing product categories
- Found customer preferred payment methods
- Analyzed branch-wise sales patterns
- Determined busiest shopping periods
- Compared customer satisfaction across categories
- Calculated category profitability

---

# 🚀 Project Workflow

```
Raw Walmart Dataset
        ↓
Data Cleaning & Preparation
        ↓
SQL Business Analysis
        ↓
Insight Extraction
        ↓
Power BI Dashboard Development
        ↓
Business Decision Support
```

---

# 📂 Project Structure

```
Walmart-Sales-Analysis/
│
├── walmart_sales_analysis.sql
│
├── Dataset/
│   └── walmart.csv
│
├── PowerBI/
│   └── Walmart_Dashboard.pbix
│
├── Dashboard Screenshot/
│   └── dashboard.png
│
└── README.md
```

---

# 👨‍💻 Author

**Rahul Ghoshal**

- Data Science Enthusiast
- SQL | Python | Power BI | Machine Learning

GitHub:  
https://github.com/rahulghoshal

---

⭐ If you found this project useful, consider giving it a star!

