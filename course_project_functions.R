
# preprocess_line takes a single line as input and removes double spaces
# then splits the line by space to get the columns and transforms columns
# to numeric;
# returns the input line as clean numeric vector
preprocess_line <- function(line) {
  line <- gsub("  ", " ", line)
  line <- str_split(line, " ")
  as.numeric(line[[1]])
}

# read feature (=column) names from file and return names as single vector 
get_col_names <- function(fnames.file) {
  df <- read_delim(fnames.file, delim = " ", col_names = FALSE)
  df[[2]]
}

# read data from file and create dataframe by reading single lines and
# transforming them into vectors using preprocess_lines();
# add feature names as column names using get_col_names()
read_data <- function(file, fnames.file) {
  # read lines
  lines <- readLines(file)
  # preprocess them using preprocess_line
  df <- preprocess_line(lines[1])
  
  for (i in 2:length(lines)) {
    df <- rbind(df, preprocess_line(lines[i]))
  }
  
  # transform in data frame
  df <- as.data.frame(df)
  df <- select(df, -1)
  
  # add feature names as column names
  col.names <- get_col_names(fnames.file)
  colnames(df) <- col.names
  row.names(df) <- NULL
  
  df
}