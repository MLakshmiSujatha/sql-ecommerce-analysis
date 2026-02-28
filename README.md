
# 🚀 SQL E-Commerce Order Performance Analysis

## 📌 Project Overview

This project simulates a real-world startup analytics scenario using **TheLook E-commerce dataset** on Google BigQuery.

The objective was to build a reusable SQL solution that helps an e-commerce startup monitor operational performance, specifically order volume and cancellation trends.

---

## 🎯 Business Problem

Early-stage startups must continuously track:

- Total number of customer orders  
- Order cancellation rates  
- Operational inefficiencies impacting revenue  

Manual reporting slows decision-making and increases the risk of inconsistent metrics.

---

## 💡 Solution Approach

To solve this, the project:

- Imported real transactional data into a cloud dataset  
- Built a reusable **stored procedure**  
- Automated KPI calculation using `COUNT()` and `COUNTIF()`  
- Enabled repeatable execution through a single procedure call  

---

## ✅ What Was Achieved

- ✔ Cloud-based analytics environment configured  
- ✔ Real e-commerce data analyzed at scale  
- ✔ Automated total and cancelled order metrics  
- ✔ Reduced manual reporting effort  
- ✔ Created reusable SQL logic for startup operations  

---

## 🛠 Tools & Technologies

- **Google BigQuery**
- **SQL**
- **Stored Procedures**
- Aggregation Functions
- Public E-commerce Dataset

---

## 📂 Project Files

- `order_summary_procedure.sql` – Contains the stored procedure logic

---

## 📈 Business Impact

This solution enables startup teams to:

- Monitor operational performance instantly  
- Detect potential revenue leakage  
- Make faster, data-driven decisions  
- Establish scalable cloud-based analytics workflows  

