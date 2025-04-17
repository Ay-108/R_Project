# R_Projec
# Load the dataset
data("iris")
What it does: Loads the built-in dataset called iris into memory.

Details: The iris dataset is included in R by default and contains measurements of sepal length, sepal width, petal length, and petal width for 150 flowers across three species: setosa, versicolor, and virginica.

# Inspect the first few rows
head(iris)
What it does: Displays the first 6 rows of the iris dataset.

Details: Useful for getting a quick look at the structure of the dataset (like column names and data types).

hist(iris$Sepal.Length, 
     main = "Sepal Length Distribution", 
     xlab = "Sepal Length (cm)", 
     col = "lightblue", 
     border = "black")
What it does: Creates a histogram of sepal lengths.

Details:

iris$Sepal.Length: Selects the Sepal Length column.

main: Sets the title of the plot.

xlab: Sets the label of the x-axis.

col: Fills the bars with light blue color.

border: Sets the color of bar borders to black.

Purpose: To visualize the distribution of sepal lengths across all flowers.

boxplot(Sepal.Width ~ Species, 
        data = iris, 
        main = "Sepal Width by Species", 
        xlab = "Species", 
        ylab = "Sepal Width (cm)", 
        col = c("lightgreen", "lightblue", "lightpink"))
What it does: Creates boxplots of sepal width grouped by species.

Details:

Sepal.Width ~ Species: This is a formula interface. It says “plot Sepal Width for each Species”.

data = iris: Tells R to use the iris dataset.

main, xlab, ylab: Set the plot title and axis labels.

col: Gives different colors to each species.

Purpose: To compare the distribution of sepal width across species.


plot(iris$Sepal.Length, iris$Petal.Length, 
     main = "Sepal Length vs. Petal Length", 
     xlab = "Sepal Length (cm)", 
     ylab = "Petal Length (cm)", 
     col = iris$Species, 
     pch = 19)
What it does: Creates a scatter plot of Sepal Length vs Petal Length.

Details:

col = iris$Species: Colors points by species.

pch = 19: Uses solid circles for points.

Purpose: To explore the relationship between Sepal Length and Petal Length and see how it varies across species.

legend("topleft", legend = levels(iris$Species), 
       col = c("black", "red", "green"), pch = 19)
What it does: Adds a legend to the top-left corner of the scatter plot.

Details:

legend = levels(iris$Species): Automatically gets the species names.

col: Sets the colors used in the scatter plot.

pch = 19: Matches the point character used earlier.

Purpose: Helps the viewer identify which color represents which species.

pairs(iris[1:4], 
      main = "Iris Data Pair Plot", 
      col = iris$Species)
What it does: Creates a matrix of scatter plots for the first 4 columns of the iris dataset (sepal and petal length/width).

Details:

iris[1:4]: Selects only the numeric columns for plotting.

main: Title of the plot matrix.

col = iris$Species: Colors points based on species.

Purpose: To quickly visualize pairwise relationships among the 4 numeric features.
