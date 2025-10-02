# Set working directory to the correct folder (Datos, not data)
setwd("/Users/angelluna/Documents/STEM_PROJECTS/R_Projects_2/MEPTD/data")

# Install and load required library for combining data frames
if (!require(dplyr, quietly = TRUE)) {
  install.packages("dplyr")
  library(dplyr)
}

# Read CSV files individually first
df_2019 <- read.csv("conjunto_de_datos_molec_2019_02.csv")
df_2020 <- read.csv("conjunto_de_datos_molec_2020_02.csv")
df_2021 <- read.csv("conjunto_de_datos_molec_2021_02.CSV")
df_2022 <- read.csv("conjunto_de_datos_molec_2022_02.CSV")
df_2023 <- read.csv("conjunto_de_datos_molec_2023_02.CSV")
df_2024 <- read.csv("conjunto_de_datos_molec_2024_02.csv")

# Combine data frames properly using rbind() or bind_rows()
df <- bind_rows(df_2019, df_2020, df_2021, df_2022, df_2023, df_2024)

# Display column names using cat() (preferred) or print()
cat("Column names:\n")
cat(colnames(df), "\n")

# Alternative: just use print() properly
# print(colnames(df))