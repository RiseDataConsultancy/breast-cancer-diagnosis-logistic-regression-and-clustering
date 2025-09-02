# 🏥 Predictive Analytics for Early Breast Cancer Detection

## 📌 Business Problem
Early detection of breast cancer is critical to improving patient outcomes and reducing treatment costs. Traditional diagnostic processes can be time-consuming and subjective. **Healthcare organizations need predictive models that can assist clinicians in identifying high-risk cases with greater accuracy and efficiency**.

---

## ✅ Solution Approach
We developed a **predictive analytics solution** using **R programming** to classify breast cancer cases as **benign or malignant** based on patient biopsy data. The solution focused on:

✔ **Building and tuning a Logistic Regression model** for high accuracy.  
✔ Performing **feature engineering and selection** based on correlation analysis.  
✔ Comparing **full-feature vs. secondary-feature models** for optimal performance.  
✔ Evaluating performance using **confusion matrix, accuracy score, and kappa statistics**.  

Additionally, **Quadratic Discriminant Analysis (QDA)** was applied for comparison, and **K-Means clustering** was performed on gene expression data to identify disease subgroups for research purposes.

---

## 📈 Key Results
- **Logistic Regression (All Features)**: 88% accuracy, Kappa = 0.72  
- **Logistic Regression (Secondary Features)**: 93% accuracy, Kappa = 0.84  
- **QDA Performance**: Lower accuracy compared to Logistic Regression  
- **Gene Expression Clustering**: Created 4 clusters to identify potential leukemia subtypes  

---

## 💡 Business Impact
✔ Enables **medical researchers and clinicians** to make **data-driven decisions**.  
✔ Improves **diagnostic accuracy**, reducing misclassification risk.  
✔ Supports **personalized treatment planning** through predictive insights.  
✔ Provides a foundation for **advanced cancer research and genomic analysis**.  

---

## 🛠 Tools & Technologies
- **Language:** R
- **Libraries:** caret, MASS, ggplot2, cluster, factoextra
- **Techniques:** Logistic Regression, QDA, K-Means Clustering, Feature Selection

---

✅ Why This Project Matters
This project demonstrates the application of predictive modeling in healthcare to enhance diagnostic efficiency and accuracy, contributing to better patient care and cost reduction.

