
library(dplyr)
library("ggplot2")
library("corrplot")
library("gridExtra")
library("pROC")
library("MASS")
library("caTools")
library("caret")
data <- read.table("D:/R Programming/wdbc.data", fileEncoding = "UTF-8", sep = ",")
names(data) <- c('id_number', 'diagnosis', 'radius_mean', 
                 'texture_mean', 'perimeter_mean', 'area_mean', 
                 'smoothness_mean', 'compactness_mean', 
                 'concavity_mean','concave_points_mean', 
                 'symmetry_mean', 'fractal_dimension_mean',
                 'radius_se', 'texture_se', 'perimeter_se', 
                 'area_se', 'smoothness_se', 'compactness_se', 
                 'concavity_se', 'concave_points_se', 
                 'symmetry_se', 'fractal_dimension_se', 
                 'radius_worst', 'texture_worst', 
                 'perimeter_worst', 'area_worst', 
                 'smoothness_worst', 'compactness_worst', 
                 'concavity_worst', 'concave_points_worst', 
                 'symmetry_worst', 'fractal_dimension_worst')

# Remove the 'Id' column
df <- data[, -which(names(data) == "id_number")]
print(df)
## Reading cancer data
str(df)
df$diagnosis <- as.factor(df$diagnosis)
##summary of the dataset 
summary(df)

## We are going to get a training and a testing set to use when building some models:
library("MASS")
library("caTools")
library("caret")
set.seed(1234)
split = sample.split(df$diagnosis, SplitRatio = 0.90)
train_set = subset(df, split ==TRUE)
test_set = subset(df, split ==FALSE)
df_control <-trainControl(method="cv",
                          number = 5,
                          preProcOptions = list(thresh = 0.99), # threshold for pca preprocess
                          classProbs = TRUE,
                          summaryFunction = twoClassSummary)

model_logreg_df <- train(diagnosis ~ ., data = train_set, method = "glm", 
                         metric = "ROC", preProcess = c("scale", "center"), 
                         trControl = df_control)

prediction_logreg_df <- predict(model_logreg_df, test_set)
cm_logreg_df <- confusionMatrix(prediction_logreg_df, test_set$diagnosis, positive = "M")
cm_logreg_df


#Correlation
install.packages("corrplot")
library(corrplot)
corr_mat <- cor(df[,2:ncol(df)])
corrplot(corr_mat, order = "hclust", tl.cex = 1, addrect = 8)

#Select Secondary Features

df_Secondary <- filter(df[,1:15])

#Secondary Features Logistic Regression
set.seed(1234)
split = sample.split(df_Secondary$diagnosis, SplitRatio = 0.90)
train_set1 = subset(df_Secondary, split ==TRUE)
test_set1 = subset(df_Secondary, split ==FALSE)
df_control1 <-trainControl(method="cv",
                          number = 5,
                          preProcOptions = list(thresh = 0.99), # threshold for pca preprocess
                          classProbs = TRUE,
                          summaryFunction = twoClassSummary)

model_logreg_df_1 <- train(diagnosis ~ ., data = train_set1, method = "glm", 
                         metric = "ROC", preProcess = c("scale", "center"), 
                         trControl = df_control1)

prediction_logreg_df1 <- predict(model_logreg_df_1, test_set1)
cm_logreg_df1 <- confusionMatrix(prediction_logreg_df1, test_set1$diagnosis, positive = "M")
cm_logreg_df1

load("D:/Projects/R Programming/leukemia_dat.Rdata")
View(leukemia_dat)
# Omitting any NA values
df <- na.omit(leukemia_dat)

# Scaling dataset
df <- scale(df[,3:ncol(df)])

km <- kmeans(df, centers = 4, nstart = 25)

install.packages("factoextra")
library(factoextra)

fviz_cluster(km, data = df)


