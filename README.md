# Pewlett-Hackard-Analysis

## Overview 

This is an analysis of the demographics of the Pewlett-Hackard Company staff. The company leadership needs to find out which employees are about to retire, so that the company is both ready for their retirement, and also can fill in these positions accordingly. The leadership also want to find out which employees are eligible for the mentorship program. 

## Resources

- [x] Source code in SQL can be found [here](https://github.com/TamaraGR/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql.sql). 
- [x] Data sources (and the outcomes as well) can be found [here](https://github.com/TamaraGR/Pewlett-Hackard-Analysis/tree/main/Data).
- [x] Software: Postresgl, pgAdmin. 

## Results 

Prior to starting our analysis we used quickdatabasediagrams.com to visualize the relationship between different csv files:

![Diagram](https://github.com/TamaraGR/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)

Then, to find the number of employees approaching retirement, we used the following code 
![code](https://github.com/TamaraGR/Pewlett-Hackard-Analysis/blob/main/image1.jpg)


and created a new table: [retirement_titles.csv](https://github.com/TamaraGR/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv), and got 133,766 rows (because numerous employees changed titles over the years, so they appear more than once in the table). On the bright side, this table allowes us to see each retirement-approaching employee's career path at the company. It would be useful to fid out why certain employees got promoted multiple times, while others weren't. 

Next we want to find out where the employees approaching retirement work currently (which position, which department. We do so with the following code and find out taht 90,398 employees are approaching retirement: 

![code](https://github.com/TamaraGR/Pewlett-Hackard-Analysis/blob/main/image2.jpg)

Then we want to find the titles and numbers by each title of those approaching retirement, we do so with the following code:

![code](https://github.com/TamaraGR/Pewlett-Hackard-Analysis/blob/main/image3.jpg)

And we get the following results: 

![titles](https://github.com/TamaraGR/Pewlett-Hackard-Analysis/blob/main/titles.jpg)

In the end we are asked to find out who will be eligible for the mentorship program, and we do so with the following code: 
![code](https://github.com/TamaraGR/Pewlett-Hackard-Analysis/blob/main/image4.jpg)

And we found out that 1549 people are eligible (the output is [here](https://github.com/TamaraGR/Pewlett-Hackard-Analysis/blob/main/Data/mentorship.csv)).


