# ✨ **SQL for Data Analysis**  
A complete SQL mini-project built to practise real-world data analysis skills using SQL.  
This project simulates an Ecommerce business and includes data modelling, joins, analytics, window functions, views, indexing, and insights.

---

<div align="center">

## 📊 **Ecommerce Data Analysis Using SQL**
### Customers • Orders • Products • Revenue • ARPU • Trends

</div>

---

# 📁 **Project Structure**
```
Task3-SQL-Data-Analysis/
│
├── task3.sql                # Main SQL queries
├── sample_data.sql          # SQL file containing INSERT statements
├── README.md                # Project documentation
│
├── dataset/
│   ├── customers.csv
│   ├── products.csv
│   ├── orders.csv
│   └── order_items.csv
│
└── screenshots/
    ├── 01_create_customers_table.png
    ├── ...
    ├── 23_create_indexes.png
    ├── 24_window_function_ranking.png
    └── 25_monthly_revenue_trend.png
```

---

# 🗂️ **Dataset Overview**
This project uses a clean **Ecommerce dataset** with 4 interconnected tables.

---

## 🧩 **Entity Relationship (ER) Diagram**

```
customers (1) ────< (∞) orders (1) ────< (∞) order_items >──── (1) products
```

---

## 👤 **1. customers**
| Column | Description |
|--------|-------------|
| `customer_id` | Unique ID |
| `name` | Customer name |
| `email` | Email address |
| `country` | Country |

---

## 📦 **2. products**
| Column | Description |
|--------|-------------|
| `product_id` | Unique product ID |
| `product_name` | Product name |
| `category` | Category |

---

## 🧾 **3. orders**
| Column | Description |
|--------|-------------|
| `order_id` | Order ID |
| `customer_id` | Linked customer |
| `order_date` | Purchase date |
| `total_amount` | Total order value |

---

## 🛍️ **4. order_items**
| Column | Description |
|--------|-------------|
| `item_id` | Item ID |
| `order_id` | Linked order |
| `product_id` | Linked product |
| `quantity` | Units |
| `price` | Price per unit |

---

# 🧪 **What This Project Covers**

### 🏗️ **Database Setup**
- Table creation  
- Data insertion  
- Primary & foreign keys  

### 🔍 **Data Exploration**
- SELECT queries  
- Filtering & sorting  
- Full-table views  

### 🔗 **Joins**
- `INNER JOIN`  
- `LEFT JOIN`  
- `RIGHT JOIN`  

### 📊 **Analytical SQL**
- Revenue by country  
- Orders above a threshold  
- Products never ordered  
- ARPU (Average Revenue Per User)  

### 🔍 **Advanced SQL**
- Subqueries  
- Views (`revenue_summary`)  
- Indexing  
- Window functions *(ranking customers by spending)*  
- Monthly revenue trends  

---

# ⚡ **Advanced Queries Added**

### ⭐ **24. Ranking Customers (Window Function)**  
```
SELECT 
    customer_id,
    SUM(total_amount) AS total_spent,
    RANK() OVER (ORDER BY SUM(total_amount) DESC) AS spend_rank
FROM orders
GROUP BY customer_id;
```

### ⭐ **25. Monthly Revenue Trend**
**For PostgreSQL:**
```
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(total_amount) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month;
```

**For SQLite:**
```
SELECT 
    strftime('%Y-%m', order_date) AS month,
    SUM(total_amount) AS monthly_revenue
FROM orders
GROUP BY strftime('%Y-%m', order_date)
ORDER BY month;
```

---

# 📸 **Screenshots**
All SQL outputs have been captured and stored in the `screenshots/` folder.

```
01_create_customers_table.png → 25_monthly_revenue_trend.png
```

Each screenshot shows:
- The SQL query  
- The full output table  
- Step-by-step proof of execution  

---

# ▶️ **How to Run This Project**

### **1. Setup the Database**
Use PostgreSQL, SQLite, DB Fiddle, OneCompiler, or any SQL environment.

### **2. Load the Tables**
Either:
- Run `sample_data.sql`  
or  
- Import CSV files from `/dataset/`  

### **3. Execute Analysis**
Run queries from `task3.sql` in order.

### **4. Compare Outputs**
Match your results with the screenshots provided.

---

# 🔍 **Key Insights Generated**

- India is the top revenue-generating country.  
- Customers are ranked by total spending using SQL window functions.  
- Monthly revenue trends reveal spending patterns over time.  
- Identified products that were never ordered.  
- ARPU indicates average contribution per customer.  

---

# 📝 **Conclusion**

This project demonstrates strong SQL capabilities including joins, analytics, subqueries, views, indexing, and window functions.  
It offers a complete end-to-end workflow of how data analysts work with structured datasets to extract insights.

---

<div align="center">

✨ *Created by **Bishal Kumar Mishra** — SQL • Data Analysis • Ecommerce Analytics* ✨  
⭐ If you liked this project, feel free to star the repo!

</div>
