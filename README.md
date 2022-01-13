# Pewlett-Hackard-Analysis

## Overview

The purpose of this analysis is to look into the data of current employees that are reaching retirement age for the company Pewlett-Hackard. I looked at multiple datasets, created an ERD to link relationships between tables, and imported the data into our PostgreSQL server. Using our SQL database, I manipulated data using JOIN statements between tables to gather the appropriate data for analysis. 
---

## Entity Relationship Diagram (ERD)
Here we can see the schema showing the relationship between tables
![](https://github.com/mooshak21/Pewlett-Hackard-Analysis/blob/main/Resources/EmployeeDB.png)
--- 

## Results
### Deliverable 1
- For this section, I found the list of employees and their unique titles and later saved it to a csv file. The goal for this for Pewlett-Hackard to see what employees need to be replaced soon. 

![](https://github.com/mooshak21/Pewlett-Hackard-Analysis/blob/main/Resources/unique_titles.png)

- We also wanted to create a table that counted the employees retiring by their title. This will show the recruitment team which employees we need most. Overall, the company show around 90K employees which will need to be addressed soon.

![](https://github.com/mooshak21/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles.png)

- An additional query I ran is to see the total employee count. There are a total of 240K employees so seeing that 90K are retiring soon is a big concern as that is a big percentage of our workfoce.

![](https://github.com/mooshak21/Pewlett-Hackard-Analysis/blob/main/Resources/total_employees.png)
---

### Deliverable 2
- Next, I wanted to see which employees would be able to participate in the mentorship program. 

![](https://github.com/mooshak21/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_eligibility.png)

- An additional table that I wanted to create was to see the count of eligible mentors. From the image below we can see that there aren't enough employees available to mentor some positions. The manager position, for example, has no one available for mentorship. 

![](https://github.com/mooshak21/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_count.png)
---

## Summary
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
> From our prior analysis that there are around 90K emplployees soon to retire while there are around 240K current employees. That makes up around 37% of employees soon to retire which is a huge portion

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
> Based on our prior analysis, only around 1500 people are available to mentor the next generation which will definitely not cover the statistic of aroun 90K employees retiring. A work-around will have to be put in place to resolve this issue. 