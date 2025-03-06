# Customer Churn Analysis

## 📌 Project Overview
Customer churn is a major concern for subscription-based businesses, directly impacting revenue and growth. The goal of this project is to analyze **customer churn patterns**, uncover insights that drive **retention strategies**, and suggest **actionable recommendations** to reduce churn.

This project applies **data analytics, SQL queries, and visualization techniques** to explore customer behavior and provide meaningful insights into why customers are leaving.

---

## 📂 Dataset Overview
The dataset contains **5,000 customer records** and includes the following information:

### **1️⃣ Customer Demographics**
- **Age**: Age of the customer.
- **Gender**: Male or Female.
- **Location**: Urban, Suburban, or Rural.

### **2️⃣ Subscription Details**
- **Subscription Type**: Basic, Standard, or Premium plan.
- **Monthly Charges**: The amount billed to the customer per month.
- **Tenure**: Number of months the customer has been subscribed.

### **3️⃣ Customer Behavior**
- **Support Calls**: The number of times the customer contacted customer support.
- **Total Data Usage**: Internet consumption in GB.
- **Payment Method**: Credit Card, Debit Card, PayPal, or Crypto.
- **Churn Status**: Whether the customer **left (Yes)** or **stayed (No)**.

---

## 🎯 Business Questions Explored
This analysis answers **key business questions** that help in improving customer retention:

1. **What is the overall churn rate?**
2. **Which subscription type has the highest churn rate?**
3. **Do certain payment methods lead to higher churn?**
4. **How does customer support interaction impact churn?**
5. **What are the characteristics of churned vs. retained customers?**

---

## 📊 Data Analysis & Visualizations

### **1️⃣ Overall Churn Distribution**
**Insight**: Around **50% of customers have churned**, indicating a major concern for customer retention.

📈 **Visualization:** A bar chart showing the count of churned vs. retained customers.

---

### **2️⃣ Churn Rate by Subscription Type**
- **Basic Plan Users**: Churn at **~55%**, the highest among all plans.
- **Premium Plan Users**: Churn at **~35%**, indicating better customer satisfaction.

**Actionable Insight**: **Offer incentives to Basic Plan users to upgrade to Standard or Premium plans.**

📊 **Visualization:** A bar chart comparing churn rates across subscription types.

---

### **3️⃣ Churn Rate by Payment Method**
- **Credit Card Users**: Lowest churn rate (~40%).
- **PayPal & Crypto Users**: Higher churn rates (~60%).

**Actionable Insight**: **Offer discounts or cashback for stable payment methods like Credit Cards.**

📊 **Visualization:** A bar chart showing churn percentage by payment method.

---

### **4️⃣ Churn Rate by Customer Support Calls**
- Customers with **more than 4 support calls** have a **60%+ churn rate**.
- Higher customer complaints correlate with increased churn.

**Actionable Insight**: **Improve customer support response times and satisfaction.**

📊 **Visualization:** A line plot showing churn rate based on the number of customer support interactions.

---

## 🔍 SQL Queries for Business Insights

### **1️⃣ Churn Rate by Subscription Type**
```sql
SELECT Subscription_Type, 
       COUNT(*) AS total_customers, 
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
       (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS churn_rate
FROM customer_data
GROUP BY Subscription_Type;
```
**Insight**: Helps identify which subscription tiers have the highest churn.

---

### **2️⃣ Impact of Payment Method on Churn**
```sql
SELECT Payment_Method, 
       COUNT(*) AS total_customers, 
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
       (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS churn_rate
FROM customer_data
GROUP BY Payment_Method;
```
**Insight**: Helps analyze if certain payment methods correlate with higher churn rates.

---

### **3️⃣ Effect of Support Calls on Churn**
```sql
SELECT Support_Calls, 
       COUNT(*) AS total_customers, 
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
       (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS churn_rate
FROM customer_data
GROUP BY Support_Calls
ORDER BY Support_Calls;
```
**Insight**: Identifies how customer service complaints impact churn.

---

## 🏆 Business Recommendations

Based on the data analysis, we suggest the following strategies:

✔ **Upgrade Incentives**: Offer Basic Plan users a **discounted upgrade** to reduce churn.  
✔ **Better Customer Support**: Improve response times for customers who make multiple support calls.  
✔ **Payment Method Loyalty Program**: Encourage **Credit Card payments** with loyalty rewards.  
✔ **Proactive Retention Efforts**: Identify **high-risk customers** based on tenure and complaints.  

---

## ⚙️ Tools & Technologies Used
- **Python**: `pandas`, `numpy`, `matplotlib`, `seaborn`
- **SQL**: PostgreSQL / SQLite
- **Jupyter Notebook**: For exploratory data analysis
- **Git & GitHub**: Version control & portfolio showcase

---

## 📂 Project Structure
```
customer-churn-analysis/
│── data/  
│   ├── customer_churn_data.csv  
│── notebooks/  
│── sql_queries/  
│   ├── churn_analysis_queries.sql  
│── reports/  
│── README.md  
```

---

## 🚀 Next Steps
1. **Build a Predictive Model**: Use **Machine Learning** to forecast customer churn.
2. **Deploy a Churn Dashboard**: Create an **interactive Tableau / Power BI dashboard**.
3. **Optimize Retention Campaigns**: Implement **A/B testing** for customer retention strategies.

---

### 💡 Conclusion
This project provides an **end-to-end customer churn analysis**, offering insights to **reduce churn and increase retention rates**. By improving customer experience, payment options, and support systems, businesses can significantly enhance customer loyalty.

**🔗 Interested in more insights? Explore the SQL queries and visualizations in the project repository.**

---

### 📬 Contact
For questions, suggestions, or collaborations, feel free to **connect via GitHub!**
