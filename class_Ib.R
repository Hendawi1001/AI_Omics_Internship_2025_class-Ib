setwd("C:\\Users\\VICTUS\\OneDrive\\Documents\\AI_Omics_Internship_2025")
dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")
dir.create("plots")

ds <- read.csv("C:/Users/VICTUS/OneDrive/Documents/AI_Omics_Internship_2025/Module_I/patient_info.csv")
dim(ds)

str(ds)
summary(ds)

ds$patient_id <- as.factor(ds$patient_id)

ds$nw_smok <- ifelse(ds$smoker == "Yes", 1, 0)
ds$nw_smok <- as.factor(ds$nw_smok)

str(ds)

cln_ds <- file.path("clean_data", "patient_info_clean.csv")
write.csv(ds, cln_ds, row.names = FALSE)

