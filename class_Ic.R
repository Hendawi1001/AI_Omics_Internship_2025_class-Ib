cholesterol <- 230
if (cholesterol > 240) {
  print("High Cholesterol")
}

Systolic_bp <- 130
if (Systolic_bp < 120) {
  print("Blood Pressure is normal")
} else {
  print("Blood Pressure is high")
}

ds_or <- read.csv("patient_info.csv")
met_or <- read.csv("metadata.csv")

ds_co <- ds_or

col_pat <- met_or$column_name[met_or$data_type == "factor"]
col_pat <- col_pat[col_pat %in% names(ds_co)]

print(paste("Columns :", paste(col_pat, collapse = ", ")))
for (col_name in col_pat) {
  if (col_name %in% names(ds_co)) {
    ds_co[[col_name]] <- as.factor(ds_co[[col_name]])
  }
}
str(ds_or)
str(ds_co)

binary_cols <- c("smoker")
ds_co$smoker <- ifelse(ds_co$smoker == "Yes", 1, 0)
str(ds_co)
print(head(ds_co))
