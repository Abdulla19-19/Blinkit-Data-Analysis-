# Blinkit-Data-Analysis-
# Introduction
This report provides a comprehensive analysis of Blinkit’s grocery dataset, focusing on sales performance, customer satisfaction, and inventory distribution. Utilizing Python (pandas, matplotlib, seaborn), SQL, and Power BI, the project identifies key insights and optimization
Blinkit Grocery Data Analysis Report
# Objectives
The analysis addresses the following business requirements:

**Overall Objective**: Conduct a comprehensive analysis of Blinkit’s sales performance, customer satisfaction, and inventory distribution to identify key insights and opportunities for optimization using various KPIs and visualizations in Power BI.
# Chart Requirements:
**Total Sales by Fat Content**: Analyze the impact of fat content on total sales (Donut Chart).
Additional KPI Metrics: Assess how other KPIs (Average Sales, Number of Items, Average Rating) vary with fat content.


**Total Sales by Item Type**: Identify the performance of different item types in terms of total sales (Bar Chart).
Additional KPI Metrics: Assess how other KPIs (Average Sales, Number of Items, Average Rating) vary with fat content.


**Fat Content by Outlet for Total Sales**: Compare total sales across different outlets segmented by fat content (Stacked Column Chart).
Additional KPI Metrics: Assess how other KPIs (Average Sales, Number of Items, Average Rating) vary with fat content.


**Total Sales by Outlet Establishment**: Evaluate how the age or type of outlet establishment influences total sales (Line Chart).
Sales by Outlet Size: Analyze the correlation between outlet size and total sales (Donut/Pie Chart).
Sales by Outlet Location: Assess the geographic distribution of sales across different locations (Funnel Map).


# KPI Requirements:
**Total Sales**: The overall revenue generated from all items sold.
**Average Sales**: The average revenue per sale.
**Number of Items**: The total count of different items sold.
**Average Rating**: The average customer rating for items sold.


## Methodology
# Project Steps

**Requirement Gathering**: Defined business and chart requirements based on stakeholder needs.
**Data Walkthrough**: Explored the dataset (8523 records) to understand its structure and content.
**Data Connection**: Established connections to the Blinkit dataset for analysis.
**Data Cleaning/Quality Check**: Standardized 'Item Fat Content' (e.g., 'low fat', 'LF' to 'Low Fat'; 'reg' to 'Regular') to ensure data consistency.
**Data Modeling**: Structured the data to support detailed analysis and visualization.
**Data Processing**: Aggregated data to derive insights by fat content, item type, outlet details, and establishment year.
**DAX Calculations**: Computed key performance indicators within Power BI.
**Dashboard Layout and Charts Development**: Designed visualizations according to the specified chart types.
**Dashboard/Report Development**: Finalized interactive dashboards for stakeholder review.
**Insights Generation**: Extracted actionable recommendations from the analysis.

# Data Analysis

**KPI Calculation**: Determined Total Sales, Average Sales, Number of Items, and Average Rating to assess overall performance.
**Total Sales by Fat Content**: Examined how fat content influences sales volume and evaluated variations in additional KPIs.
**Total Sales by Item Type**: Assessed the performance of various item categories in terms of sales and analyzed trends in other KPIs.
**Fat Content by Outlet**: Compared sales performance across outlets segmented by fat content, including variations in additional KPIs.
**Total Sales by Outlet Establishment**: Investigated the impact of outlet age or type on sales trends over time.
**Sales by Outlet Size**: Explored the relationship between outlet size and its contribution to total sales.
**Sales by Outlet Location**: Analyzed the geographic spread of sales across different regions.

## Data Visualization

# Power BI Dashboards:
**Total Sales by Fat Content**: Donut Chart illustrating sales distribution with KPI overlays.
**Total Sales by Item Type**: Bar Chart highlighting top-performing items with additional KPIs.
**Fat Content by Outlet**: Stacked Column Chart comparing Low Fat and Regular sales across outlets.
**Total Sales by Outlet Establishment**: Line Chart depicting sales trends over years.
**Sales by Outlet Size**: Donut/Pie Chart with percentage labels showing sales contribution.
**Sales by Outlet Location**: Funnel Map visualizing geographic sales distribution.


*Python Visualization Example*: Created a pie chart to represent sales by fat content using matplotlib and seaborn.

 # Tools & Technologies

**Python**: pandas, matplotlib, seaborn for data processing and visualization.
**SQL**: Used for querying and aggregating data.
**Power BI**: Employed for interactive dashboards and DAX calculations.
**Excel**: Utilized for initial data validation and supplementary analysis.

# Key Findings

**Total Sales by Fat Content**: Low Fat products accounted for approximately 60% of total sales, accompanied by higher average ratings.
**Total Sales by Item Type**: Fruits and Vegetables led sales, with consistent average sales across categories.
**Fat Content by Outlet**: Tier 3 outlets exhibited higher Low Fat sales, reflecting urban health preferences.
**Total Sales by Outlet Establishment**: Outlets established before 2015 outperformed newer ones.
**Sales by Outlet Size**: Medium-sized outlets contributed around 50% of total sales.
**Sales by Outlet Location**: Tier 3 locations were the dominant geographic performers.

# Recommendations

**Inventory Optimization**: Boost stock of Low Fat products and Fruits/Vegetables, particularly in Tier 3 outlets.
**Outlet Expansion**: Focus on expanding medium-sized outlets in Tier 3 locations while maintaining pre-2015 establishments.
**Marketing Strategy**: Promote high-rated item types and outlets to enhance customer engagement.
**Operational Focus**: Adjust inventory allocation based on fat content and item type performance for efficiency.

# Conclusion
The Blinkit Grocery Data Analysis Project successfully achieved its objectives, delivering actionable insights through Python, SQL, and Power BI. The interactive dashboards and reports, support data-driven decisions to improve sales, customer satisfaction, and inventory management.
