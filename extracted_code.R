## --------------------------------------------------------------------------------------------------
# specifying the path of the folder on my pc
path <- "C:/Users/CLICK ONCE/OneDrive - Beirut Arab University/Documents/my_sheets/DataAnalytics/CaseStudyData/CSV"
#assigning a variable that represents a list that includes all files ending with
# .csv in the considered folder

csv_files <- list.files(path = path, pattern = "\\.csv$", full.names = TRUE)

# assigning a variable that contains all 12 data frames where each reresent one month

data_list <- lapply(csv_files, read.csv) 

# Every variabe has the format yearMonth like 2310 relates to octorber 2023 and here is the clear range of each data frame.

df_2310 <- data_list[[1]]
df_2311 <- data_list[[1]]
df_2312 <- data_list[[3]]
df_2401 <- data_list[[4]]
df_2402 <- data_list[[5]]
df_2403 <- data_list[[6]]
df_2404 <- data_list[[7]]
df_2405 <- data_list[[8]]
df_2406 <- data_list[[9]]
df_2407 <- data_list[[10]]
df_2408 <- data_list[[11]]
df_2409 <- data_list[[12]]


## --------------------------------------------------------------------------------------------------
# Check that all data frames have the same columns
all_columns <- lapply(data_list, colnames)
identical(all_columns[[1]], all_columns[[2]]) # Sample pair-wise check for consistency



## --------------------------------------------------------------------------------------------------
# Load required library
library(lubridate)

# Define the start and end of the 12-month period
end_date <- as.Date("2024-10-31")  # Assuming we’re in early November 2023
start_date <- end_date %m-% months(11)  # Go back exactly 11 months from October to get November of the previous year

# Loop through each data frame in the list and check the date range
for (i in seq_along(data_list)) {
  # Convert started_at to Date format if not already
  data_list[[i]]$started_at <- as.Date(data_list[[i]]$started_at)
  
  # Find the minimum and maximum dates in started_at
  min_date <- min(data_list[[i]]$started_at, na.rm = TRUE)
  max_date <- max(data_list[[i]]$started_at, na.rm = TRUE)
  
  print(paste("Minimum date:", min_date, "Maximum date:", max_date))
  
}



## --------------------------------------------------------------------------------------------------
# Check for missing values
missing_values <- sum(is.na(df_2408))
print(paste("Missing values:", missing_values))

# Check for duplicate rows
duplicates <- sum(duplicated(df_2408))
print(paste("Duplicate rows:", duplicates))



## --------------------------------------------------------------------------------------------------
# Check for missing values
missing_values <- sum(is.na(df_2409))
print(paste("Missing values:", missing_values))

# Check for duplicate rows
duplicates <- sum(duplicated(df_2409))
print(paste("Duplicate rows:", duplicates))

# Check for missing values
missing_values <- sum(is.na(df_2407))
print(paste("Missing values:", missing_values))

# Check for duplicate rows
duplicates <- sum(duplicated(df_2407))
print(paste("Duplicate rows:", duplicates))

# Check for missing values
missing_values <- sum(is.na(df_2406))
print(paste("Missing values:", missing_values))

# Check for duplicate rows
duplicates <- sum(duplicated(df_2406))
print(paste("Duplicate rows:", duplicates))

# Check for missing values
missing_values <- sum(is.na(df_2405))
print(paste("Missing values:", missing_values))

# Check for duplicate rows
duplicates <- sum(duplicated(df_2405))
print(paste("Duplicate rows:", duplicates))

# Check for missing values
missing_values <- sum(is.na(df_2404))
print(paste("Missing values:", missing_values))

# Check for duplicate rows
duplicates <- sum(duplicated(df_2404))
print(paste("Duplicate rows:", duplicates))

# Check for missing values
missing_values <- sum(is.na(df_2403))
print(paste("Missing values:", missing_values))

# Check for duplicate rows
duplicates <- sum(duplicated(df_2403))
print(paste("Duplicate rows:", duplicates))

# Check for missing values
missing_values <- sum(is.na(df_2402))
print(paste("Missing values:", missing_values))

# Check for duplicate rows
duplicates <- sum(duplicated(df_2402))
print(paste("Duplicate rows:", duplicates))

# Check for missing values
missing_values <- sum(is.na(df_2401))
print(paste("Missing values:", missing_values))

# Check for duplicate rows
duplicates <- sum(duplicated(df_2401))
print(paste("Duplicate rows:", duplicates))

# Check for missing values
missing_values <- sum(is.na(df_2312))
print(paste("Missing values:", missing_values))

# Check for duplicate rows
duplicates <- sum(duplicated(df_2312))
print(paste("Duplicate rows:", duplicates))

# Check for missing values
missing_values <- sum(is.na(df_2311))
print(paste("Missing values:", missing_values))

# Check for duplicate rows
duplicates <- sum(duplicated(df_2311))
print(paste("Duplicate rows:", duplicates))

# Check for missing values
missing_values <- sum(is.na(df_2310))
print(paste("Missing values:", missing_values))

# Check for duplicate rows
duplicates <- sum(duplicated(df_2310))
print(paste("Duplicate rows:", duplicates))



## --------------------------------------------------------------------------------------------------
# Check the number of missing values per column
colSums(is.na(df_2310))



## --------------------------------------------------------------------------------------------------
# Remove the 'end_lat' and 'end_lng' columns and assign the result to a new data frame
df_2310_clean <- df_2310[, !(names(df_2310) %in% c("end_lat", "end_lng"))]
df_2311_clean <- df_2311[, !(names(df_2311) %in% c("end_lat", "end_lng"))]
df_2312_clean <- df_2312[, !(names(df_2312) %in% c("end_lat", "end_lng"))]
df_2401_clean <- df_2401[, !(names(df_2401) %in% c("end_lat", "end_lng"))]
df_2402_clean <- df_2402[, !(names(df_2402) %in% c("end_lat", "end_lng"))]
df_2403_clean <- df_2403[, !(names(df_2403) %in% c("end_lat", "end_lng"))]
df_2404_clean <- df_2404[, !(names(df_2404) %in% c("end_lat", "end_lng"))]
df_2405_clean <- df_2405[, !(names(df_2405) %in% c("end_lat", "end_lng"))]
df_2406_clean <- df_2406[, !(names(df_2406) %in% c("end_lat", "end_lng"))]
df_2407_clean <- df_2407[, !(names(df_2407) %in% c("end_lat", "end_lng"))]
df_2408_clean <- df_2408[, !(names(df_2408) %in% c("end_lat", "end_lng"))]
df_2409_clean <- df_2409[, !(names(df_2409) %in% c("end_lat", "end_lng"))]



## --------------------------------------------------------------------------------------------------
str(df_2401_clean)


## --------------------------------------------------------------------------------------------------
# Convert started_at and ended_at columns in df_2310 to Date-Time format
df_2310_clean$started_at <- as.POSIXct(df_2310_clean$started_at, format="%Y-%m-%d %H:%M:%S")
df_2310_clean$ended_at <- as.POSIXct(df_2310_clean$ended_at, format="%Y-%m-%d %H:%M:%S")

# Confirm the changes by checking the structure of df_2310
str(df_2310_clean)

# Convert started_at and ended_at columns in df_2311_clean to Date-Time format
df_2311_clean$started_at <- as.POSIXct(df_2311_clean$started_at, format="%Y-%m-%d %H:%M:%S")
df_2311_clean$ended_at <- as.POSIXct(df_2311_clean$ended_at, format="%Y-%m-%d %H:%M:%S")

# Convert started_at and ended_at columns in df_2312_clean to Date-Time format
df_2312_clean$started_at <- as.POSIXct(df_2312_clean$started_at, format="%Y-%m-%d %H:%M:%S")
df_2312_clean$ended_at <- as.POSIXct(df_2312_clean$ended_at, format="%Y-%m-%d %H:%M:%S")

# Convert started_at and ended_at columns in df_2401_clean to Date-Time format
df_2401_clean$started_at <- as.POSIXct(df_2401_clean$started_at, format="%Y-%m-%d %H:%M:%S")
df_2401_clean$ended_at <- as.POSIXct(df_2401_clean$ended_at, format="%Y-%m-%d %H:%M:%S")

# Convert started_at and ended_at columns in df_2402_clean to Date-Time format
df_2402_clean$started_at <- as.POSIXct(df_2402_clean$started_at, format="%Y-%m-%d %H:%M:%S")
df_2402_clean$ended_at <- as.POSIXct(df_2402_clean$ended_at, format="%Y-%m-%d %H:%M:%S")

# Convert started_at and ended_at columns in df_2403_clean to Date-Time format
df_2403_clean$started_at <- as.POSIXct(df_2403_clean$started_at, format="%Y-%m-%d %H:%M:%S")
df_2403_clean$ended_at <- as.POSIXct(df_2403_clean$ended_at, format="%Y-%m-%d %H:%M:%S")

# Convert started_at and ended_at columns in df_2404_clean to Date-Time format
df_2404_clean$started_at <- as.POSIXct(df_2404_clean$started_at, format="%Y-%m-%d %H:%M:%S")
df_2404_clean$ended_at <- as.POSIXct(df_2404_clean$ended_at, format="%Y-%m-%d %H:%M:%S")

# Convert started_at and ended_at columns in df_2405_clean to Date-Time format
df_2405_clean$started_at <- as.POSIXct(df_2405_clean$started_at, format="%Y-%m-%d %H:%M:%S")
df_2405_clean$ended_at <- as.POSIXct(df_2405_clean$ended_at, format="%Y-%m-%d %H:%M:%S")

# Convert started_at and ended_at columns in df_2406_clean to Date-Time format
df_2406_clean$started_at <- as.POSIXct(df_2406_clean$started_at, format="%Y-%m-%d %H:%M:%S")
df_2406_clean$ended_at <- as.POSIXct(df_2406_clean$ended_at, format="%Y-%m-%d %H:%M:%S")

# Convert started_at and ended_at columns in df_2407_clean to Date-Time format
df_2407_clean$started_at <- as.POSIXct(df_2407_clean$started_at, format="%Y-%m-%d %H:%M:%S")
df_2407_clean$ended_at <- as.POSIXct(df_2407_clean$ended_at, format="%Y-%m-%d %H:%M:%S")

# Convert started_at and ended_at columns in df_2408_clean to Date-Time format
df_2408_clean$started_at <- as.POSIXct(df_2408_clean$started_at, format="%Y-%m-%d %H:%M:%S")
df_2408_clean$ended_at <- as.POSIXct(df_2408_clean$ended_at, format="%Y-%m-%d %H:%M:%S")

# Convert started_at and ended_at columns in df_2409_clean to Date-Time format
df_2409_clean$started_at <- as.POSIXct(df_2409_clean$started_at, format="%Y-%m-%d %H:%M:%S")
df_2409_clean$ended_at <- as.POSIXct(df_2409_clean$ended_at, format="%Y-%m-%d %H:%M:%S")




## --------------------------------------------------------------------------------------------------
# Calculate ride_length and day_of_week for df_2310_clean
df_2310_clean$ride_length <- format(difftime(df_2310_clean$ended_at, df_2310_clean$started_at, units = "secs"), format = "%H:%M:%S")
df_2310_clean$day_of_week <- as.numeric(format(df_2310_clean$started_at, "%u"))

# Calculate ride_length and day_of_week for df_2311_clean
df_2311_clean$ride_length <- format(difftime(df_2311_clean$ended_at, df_2311_clean$started_at, units = "secs"), format = "%H:%M:%S")
df_2311_clean$day_of_week <- as.numeric(format(df_2311_clean$started_at, "%u"))

# Calculate ride_length and day_of_week for df_2312_clean
df_2312_clean$ride_length <- format(difftime(df_2312_clean$ended_at, df_2312_clean$started_at, units = "secs"), format = "%H:%M:%S")
df_2312_clean$day_of_week <- as.numeric(format(df_2312_clean$started_at, "%u"))

# Calculate ride_length and day_of_week for df_2401_clean
df_2401_clean$ride_length <- format(difftime(df_2401_clean$ended_at, df_2401_clean$started_at, units = "secs"), format = "%H:%M:%S")
df_2401_clean$day_of_week <- as.numeric(format(df_2401_clean$started_at, "%u"))

# Calculate ride_length and day_of_week for df_2402_clean
df_2402_clean$ride_length <- format(difftime(df_2402_clean$ended_at, df_2402_clean$started_at, units = "secs"), format = "%H:%M:%S")
df_2402_clean$day_of_week <- as.numeric(format(df_2402_clean$started_at, "%u"))

# Calculate ride_length and day_of_week for df_2403_clean
df_2403_clean$ride_length <- format(difftime(df_2403_clean$ended_at, df_2403_clean$started_at, units = "secs"), format = "%H:%M:%S")
df_2403_clean$day_of_week <- as.numeric(format(df_2403_clean$started_at, "%u"))

# Calculate ride_length and day_of_week for df_2404_clean
df_2404_clean$ride_length <- format(difftime(df_2404_clean$ended_at, df_2404_clean$started_at, units = "secs"), format = "%H:%M:%S")
df_2404_clean$day_of_week <- as.numeric(format(df_2404_clean$started_at, "%u"))

# Calculate ride_length and day_of_week for df_2405_clean
df_2405_clean$ride_length <- format(difftime(df_2405_clean$ended_at, df_2405_clean$started_at, units = "secs"), format = "%H:%M:%S")
df_2405_clean$day_of_week <- as.numeric(format(df_2405_clean$started_at, "%u"))

# Calculate ride_length and day_of_week for df_2406_clean
df_2406_clean$ride_length <- format(difftime(df_2406_clean$ended_at, df_2406_clean$started_at, units = "secs"), format = "%H:%M:%S")
df_2406_clean$day_of_week <- as.numeric(format(df_2406_clean$started_at, "%u"))

# Calculate ride_length and day_of_week for df_2407_clean
df_2407_clean$ride_length <- format(difftime(df_2407_clean$ended_at, df_2407_clean$started_at, units = "secs"), format = "%H:%M:%S")
df_2407_clean$day_of_week <- as.numeric(format(df_2407_clean$started_at, "%u"))

# Calculate ride_length and day_of_week for df_2408_clean
df_2408_clean$ride_length <- format(difftime(df_2408_clean$ended_at, df_2408_clean$started_at, units = "secs"), format = "%H:%M:%S")
df_2408_clean$day_of_week <- as.numeric(format(df_2408_clean$started_at, "%u"))

# Calculate ride_length and day_of_week for df_2409_clean
df_2409_clean$ride_length <- format(difftime(df_2409_clean$ended_at, df_2409_clean$started_at, units = "secs"), format = "%H:%M:%S")
df_2409_clean$day_of_week <- as.numeric(format(df_2409_clean$started_at, "%u"))



## --------------------------------------------------------------------------------------------------
str(df_2409_clean)


## --------------------------------------------------------------------------------------------------
str(df_2310_clean)


## --------------------------------------------------------------------------------------------------
# Extract start time for df_2310_clean
df_2310_clean$start_time <- format(df_2310_clean$started_at, format = "%H:%M:%S")



## --------------------------------------------------------------------------------------------------
# Extract start time for df_2311_clean
df_2311_clean$start_time <- format(df_2311_clean$started_at, format = "%H:%M:%S")

# Extract start time for df_2312_clean
df_2312_clean$start_time <- format(df_2312_clean$started_at, format = "%H:%M:%S")

# Extract start time for df_2401_clean
df_2401_clean$start_time <- format(df_2401_clean$started_at, format = "%H:%M:%S")

# Extract start time for df_2402_clean
df_2402_clean$start_time <- format(df_2402_clean$started_at, format = "%H:%M:%S")

# Extract start time for df_2403_clean
df_2403_clean$start_time <- format(df_2403_clean$started_at, format = "%H:%M:%S")

# Extract start time for df_2404_clean
df_2404_clean$start_time <- format(df_2404_clean$started_at, format = "%H:%M:%S")

# Extract start time for df_2405_clean
df_2405_clean$start_time <- format(df_2405_clean$started_at, format = "%H:%M:%S")

# Extract start time for df_2406_clean
df_2406_clean$start_time <- format(df_2406_clean$started_at, format = "%H:%M:%S")

# Extract start time for df_2407_clean
df_2407_clean$start_time <- format(df_2407_clean$started_at, format = "%H:%M:%S")

# Extract start time for df_2408_clean
df_2408_clean$start_time <- format(df_2408_clean$started_at, format = "%H:%M:%S")

# Extract start time for df_2409_clean
df_2409_clean$start_time <- format(df_2409_clean$started_at, format = "%H:%M:%S")

# Checking one of the data frames

str(df_2409_clean)




## --------------------------------------------------------------------------------------------------
# Assuming each data frame follows the naming convention "df_2310_clean" to "df_2409_clean"

column_names <- names(df_2310_clean)  # Take column names from the first data frame as a reference
column_names


## --------------------------------------------------------------------------------------------------
# Ensure column names are consistent across all data frames
df_2310_clean <- setNames(df_2310_clean, column_names)
df_2311_clean <- setNames(df_2311_clean, column_names)
df_2312_clean <- setNames(df_2312_clean, column_names)
df_2401_clean <- setNames(df_2401_clean, column_names)
df_2402_clean <- setNames(df_2402_clean, column_names)
df_2403_clean <- setNames(df_2403_clean, column_names)
df_2404_clean <- setNames(df_2404_clean, column_names)
df_2405_clean <- setNames(df_2405_clean, column_names)
df_2406_clean <- setNames(df_2406_clean, column_names)
df_2407_clean <- setNames(df_2407_clean, column_names)
df_2408_clean <- setNames(df_2408_clean, column_names)
df_2409_clean <- setNames(df_2409_clean, column_names)



## --------------------------------------------------------------------------------------------------
# Combine all data frames into a single data frame
all_data <- do.call(rbind, list(df_2310_clean, df_2311_clean, df_2312_clean, df_2401_clean, 
                                df_2402_clean, df_2403_clean, df_2404_clean, df_2405_clean, 
                                df_2406_clean, df_2407_clean, df_2408_clean, df_2409_clean))



## --------------------------------------------------------------------------------------------------
str(all_data)



## --------------------------------------------------------------------------------------------------
# View the first few entries of ride_length and checking the type of the ride_length 
head(all_data$ride_length, 10)
typeof(all_data$ride_length)


## --------------------------------------------------------------------------------------------------
# Step 1: Convert 'ride_length' to numeric by removing quotes and non-numeric characters
all_data$ride_length <- as.numeric(gsub("[^0-9.]", "", all_data$ride_length))

# Step 2: Check for any NA values resulting from conversion
missing_values <- sum(is.na(all_data$ride_length))
cat("Number of NA values in ride_length after conversion:", missing_values, "\n")

library(dplyr)

# Step 3 : Remove rows with NA in 'ride_length' if they are few

all_data <- all_data %>% filter(!is.na(ride_length))

# Step 4: Confirm that 'ride_length' is now numeric

str(all_data$ride_length)



## --------------------------------------------------------------------------------------------------
# Load necessary library
library(dplyr)

# Numeric summary for all numerical variables
numeric_summary <- all_data %>%
  summarise_if(is.numeric, list(
    count = ~sum(!is.na(.)),
    mean = ~mean(., na.rm = TRUE),
    median = ~median(., na.rm = TRUE),
    sd = ~sd(., na.rm = TRUE),
    min = ~min(., na.rm = TRUE),
    max = ~max(., na.rm = TRUE)
  ))



## --------------------------------------------------------------------------------------------------
# Categorical summary for non-numeric variables
categorical_summary <- all_data %>%
  summarise_if(is.character, list(
    unique_values = ~n_distinct(.),
    most_common = ~names(sort(table(.), decreasing = TRUE))[1],
    freq_most_common = ~max(table(.))
  ))

# Display summaries
print("Numeric Summary:")
print(numeric_summary)

print("Categorical Summary:")
print(categorical_summary)


## --------------------------------------------------------------------------------------------------
# Count of rides by day of the week and user type
rides_by_day <- all_data %>%
  group_by(member_casual, day_of_week) %>%
  summarise(total_rides = n()) %>%
  arrange(member_casual, day_of_week)


## --------------------------------------------------------------------------------------------------
# Peak hours of usage by user type
rides_by_hour <- all_data %>%
  mutate(start_hour = as.numeric(format(started_at, "%H"))) %>%
  group_by(member_casual, start_hour) %>%
  summarise(total_rides = n()) %>%
  arrange(member_casual, start_hour)


## --------------------------------------------------------------------------------------------------

# Print summaries
print(rides_by_day)
print(rides_by_hour)


## --------------------------------------------------------------------------------------------------
# Ride length distribution by user type
ride_length_by_user <- all_data %>%
  group_by(member_casual) %>%
  summarise(
    avg_ride_length = mean(ride_length, na.rm = TRUE),
    median_ride_length = median(ride_length, na.rm = TRUE),
    sd_ride_length = sd(ride_length, na.rm = TRUE),
    total_rides = n()
  )
print(ride_length_by_user)



## --------------------------------------------------------------------------------------------------
# Most popular starting stations for each user type
popular_stations <- all_data %>%
  group_by(member_casual, start_station_name) %>%
  summarise(total_rides = n()) %>%
  arrange(desc(total_rides)) %>%
  top_n(5, wt = total_rides) # Top 5 for each user type

print(popular_stations)



## --------------------------------------------------------------------------------------------------
usage_summary <- all_data %>%
  group_by(member_casual) %>%
  summarise(
    avg_ride_length = mean(ride_length, na.rm = TRUE),
    median_ride_length = median(ride_length, na.rm = TRUE),
    most_common_day = names(which.max(table(day_of_week))),
    peak_start_time = names(which.max(table(start_time)))
  )
print(usage_summary)


## --------------------------------------------------------------------------------------------------
# finding the working directory path
getwd()



## --------------------------------------------------------------------------------------------------
# Export each summary individually to avoid column mismatch
write.csv(ride_length_by_user, "Ride_Length_By_User.csv", row.names = FALSE)
write.csv(rides_by_day, "Rides_By_Day.csv", row.names = FALSE)
write.csv(rides_by_hour, "Rides_By_Hour.csv", row.names = FALSE)
write.csv(popular_stations, "Popular_Stations.csv", row.names = FALSE)

print("Individual summary files have been exported successfully.")




## --------------------------------------------------------------------------------------------------
#checking the maximum value of the ride_length (minutes) variable in order to limit the x-axis value in the following viz!

max(all_data$ride_length)/60


## --------------------------------------------------------------------------------------------------
library(ggplot2)

ggplot(all_data, aes(x = ride_length, fill = member_casual)) +
  geom_histogram(binwidth = 5, alpha = 0.7, position = "identity") +
  labs(title = "Distribution of Ride Length by User Type",
       x = "Ride Length (minutes)",
       y = "Frequency") +
  scale_fill_manual(values = c("casual" = "orange", "member" = "blue")) +
  xlim(0, 3000) +  # Set x-axis limit to focus on rides up to 3000 minutes
  theme_minimal()




## --------------------------------------------------------------------------------------------------
str(all_data$day_of_week)

## --------------------------------------------------------------------------------------------------
ggplot(all_data, aes(x = day_of_week , fill = member_casual)) +
  geom_bar(position = "dodge") +
  labs(title = "Rides by Day of the Week",
       x = "Day of the Week",
       y = "Number of Rides") +
  scale_fill_manual(values = c("casual" = "orange", "member" = "blue")) +
  theme_minimal()



## --------------------------------------------------------------------------------------------------
# Check the data type of start_time
class(all_data$start_time) # This shows the data type

# Check the structure and format of start_time
str(all_data$start_time) # This shows detailed information about the format and type



## --------------------------------------------------------------------------------------------------
head(rides_by_hour)


## --------------------------------------------------------------------------------------------------
# Check unique values for start_hour and member_casual
print(unique(rides_by_hour$start_hour))
print(unique(rides_by_hour$member_casual))


## --------------------------------------------------------------------------------------------------
# Line Plot: Total number of rides per hour by user type (casual vs. member)
ggplot(rides_by_hour, aes(x = start_hour, y = total_rides, color = member_casual, group = member_casual)) +
  geom_line(size = 1) +  # Line plot
  labs(title = "Total Rides per Hour by User Type (Line Plot)",
       x = "Start Hour",
       y = "Total Number of Rides") +
  scale_color_manual(values = c("casual" = "orange", "member" = "blue")) +
  theme_minimal()




## --------------------------------------------------------------------------------------------------
# Bar Plot: Total number of rides per hour, split by user type (casual vs. member)
ggplot(rides_by_hour, aes(x = start_hour, y = total_rides, fill = member_casual)) +
  geom_bar(stat = "identity", position = "dodge") +  # Bar plot with dodged bars
  labs(title = "Total Rides per Hour by User Type",
       x = "Start Hour",
       y = "Total Number of Rides") +
  scale_fill_manual(values = c("casual" = "orange", "member" = "blue")) +
  theme_minimal()



## --------------------------------------------------------------------------------------------------
# Install and load RColorBrewer package (if not installed yet)
# install.packages("RColorBrewer")
library(RColorBrewer)

# Heatmap with RColorBrewer palette (Spectral)
ggplot(rides_by_hour, aes(x = start_hour, y = member_casual, fill = total_rides)) +
  geom_tile() +  # Heatmap
  labs(title = "Ride Intensity by Hour and User Type (RColorBrewer)",
       x = "Start Hour",
       y = "User Type") +
  scale_fill_gradientn(colors = rev(brewer.pal(9, "Spectral"))) +  # Using a predefined color palette
  theme_minimal()



## ----setup, include=FALSE--------------------------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

