```r
# This code checks the length of the logical vector before subsetting
# to avoid the silent truncation of extra elements.

df <- data.frame(a = 1:5, b = 6:10)
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE) # Too long

# Check the length of the logical vector
if (length(logical_vector) > nrow(df)) {
  warning("Logical vector is longer than the number of rows in the data frame. Truncating the logical vector.")
  logical_vector <- logical_vector[1:nrow(df)]
}

subset_df <- df[logical_vector, ]
```