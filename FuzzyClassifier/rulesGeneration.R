print(getwd())
setwd("~/adm")
print(getwd())
data1 <- read.csv("outputGADISC5.csv")
print(data1)
hist(data1$hazardous)
create_train_test <- function(data, size = 0.8, train = TRUE) {
  n_row = nrow(data)
  total_row = size * n_row
  train_sample <- 1: total_row
  if (train == TRUE) {
    return (data[train_sample, ])
  } else {
    return (data[-train_sample, ])
  }
}
data_train <- create_train_test(data1, 0.8, train = TRUE)
data_test <- create_train_test(data1, 0.8, train = FALSE)
dim(data_train)
dim(data_test)
prop.table(table(data_train$hazardous))
prop.table(table(data_test$hazardous))
library(rpart)
library("rpart.plot")
fit <- rpart(hazardous~., data = data_train, method = 'class')
rpart.plot(fit, extra = 7)
predict_unseen <-predict(fit, data_test, type = 'class')
table_mat <- table(data_test$hazardous, predict_unseen)
table_mat
accuracy_Test <- sum(diag(table_mat)) / sum(table_mat)
print(paste('Accuracy for test', accuracy_Test))
rpart.rules(fit)

library(rpart.plot)
prp(fit)
