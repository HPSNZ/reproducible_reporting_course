# Reproducible reporting course - Week 06 --------------------------------------

# This script provides some base code to help you get started with Activity 2:
# Making modifications to a plot of data from the SQL view "report.vw_p2p_age".

# As always, it's good practice to regularly clear your workspace and restart R.
# In RStudio, do this from the "Session" menu in the top navigation bar.

# Load libraries ---------------------------------------------------------------

library(ggplot2)
library(RODBC)

# Import data ------------------------------------------------------------------

# Establish ODBC connection
con <- odbcConnect(
  "HPSNZ_Datamart",
  uid = Sys.getenv("datamart_user"),
  pwd = Sys.getenv("datamart_pwd"))

# Read data into R
source_data <- sqlQuery(
  con,
  "SELECT * FROM [CME_HPSNZ].[report].[vw_p2p_age]")

# Close the ODBC connection
odbcClose(con)

# Build the plot ---------------------------------------------------------------

# The code below produces a plot using data imported from the SQL view,
# "report.vw_p2p_age". The plot output will be the same as shown on slide 62
# of the Week 6 learning materials.
p <- ggplot(
  data = source_data,
  aes(x = age, y = p2p_intake,
      colour = p2p_intake))
p <- p + geom_boxplot(
  outlier.shape = NA)
p <- p + geom_jitter(
  height = 0.25,
  alpha = 0.5)
p <- p + scale_y_discrete(
  labels = p2p_intake_labels)
p <- p + theme_bw()
p <- p + theme(legend.position = "none")

# Display the plot -------------------------------------------------------------

# The code above has assigned {ggplot2} information to an object called p.
# To view the plot, we call the object p:
p