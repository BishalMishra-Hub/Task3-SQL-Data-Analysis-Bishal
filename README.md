# ✨ **SQL for Data Analysis**  
A complete SQL mini-project built for practising real-world data analysis skills — including table creation, joins, subqueries, views, indexing, and analytics.  
This project uses a clean Ecommerce dataset to simulate real business scenarios.

---

<div align="center">

## 📊 **Ecommerce Data Analysis using SQL**
### Customers • Orders • Products • Revenue • ARPU

</div>

---

# 📁 **Project Structure**
```
Task3-SQL-Data-Analysis/
│
├── task3.sql                # All SQL queries used in this task
├── sample_data.sql          # Optional: SQL script for inserting sample data
├── README.md                # Project documentation
│
├── dataset/                 # CSV dataset files
│   ├── customers.csv
│   ├── products.csv
│   ├── orders.csv
│   └── order_items.csv
│
└── screenshots/             # 23 screenshots of executed outputs
    ├── 01_create_customers_table.png
    ├── ...
    └── 23_create_indexes.png
```

---

# 🗂️ **Dataset Overview**

This project uses a **mini Ecommerce database** consisting of 4 connected tables.  
Each table represents a real-world business entity used in SQL analysis.

---

## 👤 **1. customers**
| Column | Description |
|--------|-------------|
| `customer_id` | Unique customer ID |
| `name` | Customer full name |
| `email` | Email address |
| `country` | Country of residence |

---

## 📦 **2. products**
| Column | Description |
|--------|-------------|
| `product_id` | Unique product ID |
| `product_name` | Name of the product |
| `category` | Product category |

---

## 🧾 **3. orders**
| Column | Description |
|--------|-------------|
| `order_id` | Unique order record |
| `customer_id` | Customer who placed the order |
| `order_date` | Order creation date |
| `total_amount` | Total order value |

---

## 🛍️ **4. order_items**
| Column | Description |
|--------|-------------|
| `item_id` | Line item ID |
| `order_id` | Linked order |
| `product_id` | Linked product |
| `quantity` | Units purchased |
| `price` | Price per unit |

---

# 🧪 **What This Project Covers**

### 🏗️ **Database Setup**
- Creating tables  
- Adding foreign keys  
- Inserting sample records  

### 🔍 **Data Exploration**
- Filtering with `WHERE`  
- Sorting with `ORDER BY`  
- Viewing entire tables  

### 🔗 **Joins**
- `INNER JOIN`  
- `LEFT JOIN`  
- `RIGHT JOIN`  

### 📊 **Analytical Queries**
- Total revenue  
- Revenue by country  
- ARPU (Average Revenue Per User)  
- Customers above average spend  
- Products never ordered  

### 🔐 **Advanced SQL**
- Subqueries  
- Creating VIEW (`revenue_summary`)  
- Creating indexes  

---

# 📸 **Screenshots**
All SQL queries were executed and captured.  
Screenshots are stored in the `screenshots/` folder and named in order:

```
01_create_customers_table.png → 23_create_indexes.png
```

Each screenshot shows:
- The SQL query  
- The resulting output table  

---

# ▶️ **How to Run the Project**

You can run this project on:

- PostgreSQL  
- OneCompiler (PostgreSQL mode)  
- DB Fiddle  
- pgAdmin  
- Any SQL engine with standard syntax  

### Steps:
1. Import the dataset files from `/dataset/`  
2. Run `task3.sql` from top to bottom  
3. Compare your outputs with the screenshots  

---

# 📝 **Conclusion**

This project demonstrates strong understanding of SQL fundamentals and practical data analysis skills.  
It includes **table creation**, **joins**, **analytics**, **views**, **indexes**, and **clean documentation**, making it a complete SQL mini-project.

---

<div align="center">

✨ *Created by Bishal Kumar Mishra — SQL • Data Analysis • Ecommerce Analytics* ✨  
⭐ If you found this helpful, feel free to star the repo!

</div>
