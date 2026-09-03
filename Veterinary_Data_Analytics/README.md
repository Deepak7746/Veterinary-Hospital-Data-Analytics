🐾 Veterinary Hospital Data Analytics Dashboard

📊 What This Project Is About

We're diving into 1,000 veterinary hospital patient records to understand what's really happening at the clinic—which animals come in most, what diseases we're treating, how much it costs, and whether patients actually recover.



🎯 What We're Trying to Figure Out

- What types of animals are walking through the door?
- What are the most common diseases we're treating?
- How much does treatment actually cost (and does it vary by disease)?
- Are we getting good outcomes? What's our recovery rate like?
- Is the workload consistent, or do we have busy/slow seasons?
- Which doctors are handling the most cases?
- Do certain locations see different patient types or disease

 🛠️ The Tech Stack

- **Excel** – for quick data checks and pivots
- **MySQL** – where the data actually lives
- **SQL** – to query and slice the data
- **Power BI** – to make it all look good and interactive
- **DAX** – for the math behind the scenes

---
📂 What's in the Dataset?

1,000 patient records with these fields:
- Patient_ID, Animal_Type, Breed, Age, Gender
- Visit_Date, Disease, Treatment, Doctor
- Treatment_Cost, Treatment_Days, Outcome, Follow_Up
- Location

---

📊 The Key Metrics We Care About

- How many total patients and cases?
- What's the total bill?
- Average cost per treatment?
- How many actually recovered?
- Recovery rate (%)
- How many days does treatment usually take?

-- 📈 What the Dashboard Shows

- Which animals visit most
- Disease breakdown
- Cost patterns across diseases
- Whether treatments work
- Which treatments are used most
- Monthly case volume ups and downs
- Filters to slice and dice by doctor, location, outcome, etc.

---

 💡 What We Actually Found

- Some animal types show up way more than others
- Certain diseases are repeating problems
- Treatment costs differ wildly depending on what you're treating
- Recovery rates tell us which doctors/treatments are winning
- Seasonal patterns might help with staffing and budget planning

---
 📁 How It's Organized

```
Veterinary_Data_Analytics/
├── data/
│   └── veterinary_data.csv
├── sql/
│   └── veterinary_queries.sql
├── powerbi/
│   └── veterinary_dashboard.pbix
├── images/
│   └── dashboard_screenshot.png
└── README.md
```

---

This is much better – sounds like an actual person explaining their project instead of a template! 🐕