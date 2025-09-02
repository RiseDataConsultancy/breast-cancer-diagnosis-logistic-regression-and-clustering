# 🩺 Breast Cancer Diagnosis & Gene Expression Clustering in R

## 📌 Project Overview
This project demonstrates **predictive modeling and unsupervised learning in healthcare analytics** using **R programming**. It includes:

- ✅ **Breast cancer diagnosis prediction** using **logistic regression** and **feature selection**
- ✅ **Quadratic Discriminant Analysis (QDA)** for secondary feature evaluation
- ✅ **Model performance comparison** with accuracy and kappa metrics
- ✅ **K-Means clustering** to identify subgroups within leukemia patients using **gene expression data**

---

## ✅ Core Objectives
✔ Develop a **logistic regression model** to classify breast cancer as benign or malignant  
✔ Perform **feature selection** using correlation analysis for improved accuracy  
✔ Apply **Quadratic Discriminant Analysis (QDA)** on selected features  
✔ Evaluate **model performance** on test data  
✔ Use **K-Means clustering** for disease subgroup discovery based on gene expression  

---


---

## 🛠 Tools & Technologies
- **Language:** R
- **Libraries:** caret, MASS, ggplot2, cluster, factoextra
- **Techniques:**  
  - Logistic Regression  
  - Quadratic Discriminant Analysis (QDA)  
  - Correlation Analysis  
  - K-Means Clustering  

---

## 🔍 Detailed Analysis

### **1. Breast Cancer Classification**
- **Dataset:** 32 features (ID, diagnosis, and 30 numerical attributes)
- **Workflow:**
  - Remove ID column, convert `diagnosis` to factor
  - Split dataset: **90% training**, **10% testing**
  - Train **logistic regression model** on all features
  - Perform **feature correlation analysis**
  - Select **secondary features** for a refined model
  - Compare **logistic regression** vs **QDA**

**Results:**
- Logistic Regression (All Features): **88% accuracy**, Kappa = 0.72  
- Logistic Regression (Secondary Features): **93% accuracy**, Kappa = 0.84  
- QDA: Classified **63% benign** and **37% malignant** correctly  

---

### **2. Gene Expression Clustering**
- **Dataset:** Expression levels of 1867 genes for 72 leukemia patients (ALL & AML)
- **Workflow:**
  - Normalize and scale gene expression data
  - Apply **K-Means clustering** (k = 4)
  - Visualize clusters with `fviz_cluster`

**Results:**
- **4 clusters** created: sizes = 344, 64, 121, 39  
- Cluster separation explained **45% of variance**  

---

## 📈 Key Insights
✔ Feature selection improved accuracy from **88% → 93%**  
✔ Logistic Regression outperformed QDA for this dataset  
✔ Clustering revealed **hidden structure** in gene expression data  

---

## 📸 Visualizations
- Correlation heatmap of features  
- Logistic regression coefficient plots  
- K-Means clustering visualization  

---
📢 Why This Project Matters

Healthcare analytics is critical for early disease detection and treatment optimization.
This project showcases:

Predictive modeling for cancer diagnosis

Feature engineering and correlation-driven model refinement

Clustering for genomic pattern discovery in leukemia

✅ Future Enhancements

✔ Add ROC curve and AUC score comparison
✔ Implement regularization (LASSO/Ridge) for feature selection
✔ Deploy an interactive Shiny dashboard for visualization
