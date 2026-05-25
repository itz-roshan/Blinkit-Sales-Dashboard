<h1 align="center">
  <img src="https://img.shields.io/badge/blinkit-F9C418?style=for-the-badge&logoColor=black" alt="blinkit"/>
  <br/>
  Blinkit Grocery Sales — End-to-End Data Analysis
</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white"/>
  <img src="https://img.shields.io/badge/Pandas-150458?style=flat-square&logo=pandas&logoColor=white"/>
  <img src="https://img.shields.io/badge/MySQL-336791?style=flat-square&logo=mysql&logoColor=white"/>
  <img src="https://img.shields.io/badge/Power_BI-F2C811?style=flat-square&logo=powerbi&logoColor=black"/>
  <img src="https://img.shields.io/badge/Status-Complete-brightgreen?style=flat-square"/>
  <img src="https://img.shields.io/badge/Made_by-@roshan.code-F9C418?style=flat-square"/>
</p>

<p align="center">
  <b>Data Cleaning → SQL Insights → Power BI Dashboard</b><br/>
  A complete data analysis project on Blinkit's grocery sales dataset
</p>

---

## 📊 Dashboard Preview

![Blinkit Sales Dashboard](assets/dashboard.png)

> *Interactive Power BI dashboard showing sales by outlet type, item category, fat content, tier, and outlet establishment year.*

---

## 📌 About the Project

This project performs a **complete data analysis lifecycle** on Blinkit's grocery sales dataset:

- 🐼 **Pandas** — Raw data cleaning, null value handling, label standardization
- 🗄️ **SQL (MySQL)** — Business insights and aggregation queries
- 📊 **Power BI** — Interactive visual dashboard with filters

The dataset covers outlet types, item categories, fat content, tier-wise sales, establishment year trends, and customer ratings.

---

## ⚙️ Project Workflow

```
📦 Raw Data  →  🐼 Pandas Cleaning  →  🗄️ SQL Insights  →  📊 Power BI Dashboard
```

---

## 📈 Key Metrics from Dashboard

| Metric | Value |
|---|---|
| 💰 Total Sales | $1.20M |
| 📦 Total Items | 8,523 |
| 💵 Average Sale | $141 |
| ⭐ Average Rating | 3.9 / 5 |

---

## 🔍 Business Insights (via SQL)

| # | Question | Finding |
|---|---|---|
| 1 | 🏪 Top outlet by revenue | Supermarket Type 1 — **$787.55K** |
| 2 | 📍 Best performing tier | Tier 3 — **472.13K** sales |
| 3 | 🛍️ Most sold item category | Fruits & Snacks — **$0.18M each** |
| 4 | 📅 Peak outlet year | 2018 — **$205K** revenue |
| 5 | 🥗 Fat content split | Low Fat **$776K** vs Regular **$425K** |
| 6 | 👁️ Best item visibility score | Grocery Store — **0.10** |

---

## 🧹 Pandas Cleaning Steps

- ✅ Loaded raw CSV and inspected shape & datatypes
- ✅ Filled null values in `Item_Weight` (mean) and `Outlet_Size` (mode)
- ✅ Standardized `Item_Fat_Content` labels (`LF`, `low fat` → `Low Fat`, `reg` → `Regular`)
- ✅ Fixed incorrect datatypes (`Outlet_Establishment_Year` → int)
- ✅ Removed duplicate rows
- ✅ Reset index after cleaning

---

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| 🐍 Python | Core programming language |
| 🐼 Pandas | Data cleaning & transformation |
| 🗄️ MySQL | SQL queries & business insights |
| 📊 Power BI | Interactive dashboard |
| 📓 Jupyter Notebook | Analysis notebooks |
| 📉 Matplotlib | EDA visualizations |

---

## 📁 Project Structure

```
📦 blinkit-analysis/
├── 📂 data/
│   ├── blinkit_raw.csv           ← original dataset
│   └── blinkit_cleaned.csv       ← after Pandas cleaning
├── 📂 notebooks/
│   ├── 01_data_cleaning.ipynb    ← null handling, formatting
│   └── 02_eda_analysis.ipynb     ← exploratory analysis
├── 📂 sql/
│   └── insights_queries.sql      ← all business queries
├── 📂 assets/
│   └── dashboard.png             ← dashboard screenshot
├── 📂 dashboard/
│   └── blinkit_dashboard.pbix    ← Power BI file
├── README.md
└── requirements.txt
```

---

## 🚀 How to Run

**1. Clone the repository**
```bash
git clone https://github.com/itz-roshan/Blinkit-Sales-Dashboard.git
cd Blinkit-Sales-Dashboard
```

**2. Install dependencies**
```bash
pip install -r requirements.txt
```

**3. Run the cleaning notebook**
```bash
jupyter notebook notebooks/01_data_cleaning.ipynb
```

**4. Load SQL queries**
> Open `sql/insights_queries.sql` in MySQL Workbench or any SQL client

**5. Open Power BI Dashboard**
> Open `dashboard/blinkit_dashboard.pbix` in Power BI Desktop

---

## 🙋 Connect with Me

<p align="center">
  <a href="https://instagram.com/roshan.code">
    <img src="https://img.shields.io/badge/Instagram-@roshan.code-E4405F?style=for-the-badge&logo=instagram&logoColor=white"/>
  </a>
  &nbsp;
  <a href="https://linkedin.com/in/itz-roshan">
    <img src="https://img.shields.io/badge/LinkedIn-itz--roshan-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white"/>
  </a>
  &nbsp;
  <a href="https://github.com/itz-roshan">
    <img src="https://img.shields.io/badge/GitHub-itz--roshan-181717?style=for-the-badge&logo=github&logoColor=white"/>
  </a>
</p>

---

<p align="center">
  Dataset from <a href="https://www.kaggle.com/">Kaggle</a> &nbsp;•&nbsp;
  Made with ❤️ by <b>@roshan.code</b>
  <br/><br/>
  ⭐ <b>If this project helped you, please star the repo!</b>
</p>
