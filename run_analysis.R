library("tidyverse")

# define file paths for the inputs
test_data_file      <- "./data/UCI_HAR_Dataset/test/X_test.txt"
test_labels_file    <- "./data/UCI_HAR_Dataset/test/y_test.txt"
test_subject_file   <- "./data/UCI_HAR_Dataset/test/subject_test.txt"

train_data_file     <- "./data/UCI_HAR_Dataset/train/X_train.txt"
train_labels_file   <- "./data/UCI_HAR_Dataset/train/y_train.txt"
train_subject_file  <- "./data/UCI_HAR_Dataset/train/subject_train.txt"

feature_names_file  <- "./data/UCI_HAR_Dataset/features.txt"
label_names_file    <- "./data/UCI_HAR_Dataset/activity_labels.txt"

# load functions from separate file
source("course_project_functions.R")

# read data and labels (use own read_data function for data)
test_data     <- read_data(test_data_file, feature_names_file)
test_labels   <- read_delim(test_labels_file, delim = " ", col_names = FALSE)
test_subject  <- read_delim(test_subject_file, delim = " ", col_names = FALSE)

train_data    <- read_data(train_data_file, feature_names_file)
train_labels  <- read_delim(train_labels_file, delim = " ", col_names = FALSE)
train_subject <- read_delim(train_subject_file, delim = " ", col_names = FALSE)

label_names   <- read_delim(label_names_file, delim = " ", col_names = FALSE)

# merge test and train data into one dataframe
data      <- rbind(test_data, train_data)
subjects  <- rbind(test_subject, train_subject) %>% rename(subject = X1)
labels    <- rbind(test_labels, train_labels) 

# select only means and standard deviations
names_logical <- grepl("mean", colnames(data)) | grepl("std", colnames(data))
data <- data[names_logical]

# merge data, subjects and labels
df <- cbind(data, labels)
df <- cbind(df, subjects)
df <- merge(df, label_names, by.x = "X1", by.y = "X1", )

# rename activity column in data frame and drop activity label
df <- df  %>% rename(activity = X2)  %>%  select(-1) 

# export full_data.csv
write.csv(df, file = "full_data.csv")

# build summarize_data frame by further transforming df
grouped_df <- df %>%  group_by(subject, activity) %>% 
  summarise(across(everything(), list(mean = mean)))

write.csv(grouped_df, file = "summarized_data.csv")
