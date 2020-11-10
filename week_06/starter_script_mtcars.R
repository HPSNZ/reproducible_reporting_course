# Reproducible reporting course - Week 06 --------------------------------------

# This script provides some base code to help you get started with Activity 1:
# Building a plot with {ggplot2} and the mtcars data set

# As always, it's good practice to regularly clear your workspace and restart R.
# In RStudio, do this from the "Session" menu in the top navigation bar.

# mtcars is a built-in data set that comes with installing R,
# so you don't need to explicitly import it into your R session.

# Load libraries ---------------------------------------------------------------

library(ggplot2)

# Build the plot ---------------------------------------------------------------

# When creating a {ggplot2} plot, the first function is always ggplot().
# Inside this function, complete the argument for "data" to specify the data
# source for your plot. Inside the nested aes() function, specify the variables
# that you want to plot on the x and y axes.
p <- ggplot(
  data = ,
  aes(x = , y = ))
# With your canvas defined, we need a "geom" layer to specify the type of plot
# you want to create. Complete the "geom_()" function with one of:
# geom_bar() = for bar plots
# geom_point() = for scatter plots
# geom_boxplot() = for box-and-whisker plots
p <- p + geom_()

# Display the plot -------------------------------------------------------------

# The code above has assigned {ggplot2} information to an object called p.
# To view the plot, we call the object p:
p