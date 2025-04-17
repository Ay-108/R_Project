# Load the dataset
data("iris")

# View first few rows
head(iris)

# 1. Histogram of Sepal Length
hist(iris$Sepal.Length, 
     main = "Sepal Length Distribution", 
     xlab = "Sepal Length (cm)", 
     col = "lightblue", 
     border = "black")

# 2. Boxplot of Sepal Width by Species
boxplot(Sepal.Width ~ Species, 
        data = iris, 
        main = "Sepal Width by Species", 
        xlab = "Species", 
        ylab = "Sepal Width (cm)", 
        col = c("lightgreen", "lightblue", "lightpink"))

# 3. Scatter plot of Sepal Length vs Petal Length
plot(iris$Sepal.Length, iris$Petal.Length, 
     main = "Sepal Length vs. Petal Length", 
     xlab = "Sepal Length (cm)", 
     ylab = "Petal Length (cm)", 
     col = iris$Species, 
     pch = 19)

# Add legend
legend("topleft", legend = levels(iris$Species), 
       col = c("black", "red", "green"), pch = 19)

# 4. Pair plot for all numeric features
pairs(iris[1:4], 
      main = "Iris Data Pair Plot", 
      col = iris$Species)

