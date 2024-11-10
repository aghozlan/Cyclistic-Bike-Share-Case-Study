# Cyclistic Bike-Share Case Study

Project Overview
This case study is a comprehensive analysis of Cyclistic's bike-share usage, exploring differences in usage patterns between casual riders and annual members. The project’s objective is to provide actionable insights that support Cyclistic's marketing strategy, focusing on strategies to convert casual riders into annual members.

Business Task
The primary goal of this analysis is to address the following question:

How do usage patterns differ between casual riders and annual members? By analyzing these differences, we aim to offer insights that can inform targeted marketing efforts, tailored offerings, and improve Cyclistic’s user retention strategies.

Data Description
The dataset used in this analysis includes ride information for Cyclistic’s bike-share system, containing:

Ride IDs, ride start and end times, rideable types (electric or classic bikes), start and end station names, user types (casual or member), and calculated metrics such as ride length and hour of day. The data considered the merging of the last 12 data frames each represents the daily recordings of one of the most recent 12 months.
The data was preprocessed to handle missing values, filter out anomalies, and create additional features for detailed analysis.

Key Findings

Popular Start Times:

Casual riders frequently start rides in the evenings (peak hours between 8-10 PM), whereas members predominantly start rides during early morning hours, aligning with commuter patterns.

Day of the Week:

Casual riders show higher activity on weekends, while members maintain consistent usage throughout the week, peaking on weekdays.
Ride Length:

Casual riders tend to have longer rides on average, with a median duration nearly double that of members.

Station Popularity:

Specific stations located near popular attractions and waterfronts (e.g., Streeter Dr & Grand Ave) are preferred by casual riders, while members favor central and commuter-friendly locations.


Methodology
Data Cleaning: Addressed missing values, adjusted date-time formats, and created calculated columns like ride length, day of the week, and start hour.

Exploratory Analysis: Generated visualizations to reveal patterns in ride length, hourly trends, and day-by-day usage, segmented by rider type.
Statistical Summary: Analyzed key statistical metrics including average and median ride lengths, frequency of rides per station, and peak usage times.

Visualizations
The analysis includes several visualizations that illustrate:

Ride Length Distribution by User Type
Ride Start Times by Hour
Weekly Usage Patterns by Day of the Week Each plot reveals insights into the habits of casual vs. member riders, supporting recommendations for Cyclistic’s business strategy.

Recommendations
Based on the findings, the following strategies are recommended:

Targeted Marketing for Casual Riders: Encourage conversions by promoting benefits such as discounted annual memberships on weekends and during evening hours.
Enhanced Offerings at Popular Stations: Expand services or add promotional events at high-traffic stations to attract casual riders to memberships.
Incentivize Consistent Usage: Provide incentives like loyalty rewards for casual riders to ride during weekday commuter hours.
Project Files

HTML Report: Detailed analysis report with code, visualizations, and narrative (see [link to HTML file in repository]).
Scripts: R scripts used for data preprocessing, visualization, and analysis.
Data Summaries: Summary tables and data insights in .csv format.

Conclusion
This project not only highlights the usage patterns between casual and member riders but also provides actionable insights that can drive Cyclistic’s growth strategy. Future analyses may explore deeper segmentation or geographic patterns for a more personalized approach.

