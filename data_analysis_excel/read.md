# challenge idea
A challenge presented by the (Masar) platform ,(Masar) is a  volunteer initiative aimed at educating graduates and job seekers about job titles in the Saudi labor market and their requirements , The first challenge is how to use and analyzing data using Excel, aims to develop skills:
- exploring the most important Excel tools
- data cleaning
- data analysis
- data visualization


## the most important Excel tools that i used 
- Conditional formatting
- LEN() FUNCTION
- VLOOKUP() FUNCTION
- PIVOT TABLE
- IF() FUNCTION
- AVERAGE() FUNCTION
- COUNTIF()
- SUMIF()

## data analysis process:


1- data cleaning
- Check whether there are nulls values

1- select all cells
<img width="1512" alt="Screenshot 1445-06-03 at 2 34 00 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/7d2bbd48-08db-45fa-a4e5-0db585b3e8a1">

2- from find&select

<img width="1512" alt="Screenshot 1445-06-03 at 2 34 07 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/f916b405-a80c-4531-8716-a51a91abd8f8">

<img width="1512" alt="Screenshot 1445-06-03 at 2 34 15 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/6e9bafca-bc01-4161-a173-fe17ebb93204">

3- we can see that we have 2 nulls
<img width="1512" alt="Screenshot 1445-06-03 at 2 46 35 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/950cdfc3-ba30-4351-b775-f034593f6f62">


4- to fix it we have another sheet that have the (id , grade)

<img width="1512" alt="Screenshot 1445-06-03 at 2 35 41 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/3cb9cea6-f609-49f3-9558-160db76ac291">


5- the solution is to use VLOOKUP() function to search for the grade by the id from the other sheet , by using this formula 
 - =VLOOKUP(A2, Grade!$A$2: $B$200, 2, FALSE) we can use the "vlookupvalue" for all cells or we can just do it in the null cells

<img width="1512" alt="Screenshot 1445-06-03 at 2 37 49 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/8b244b73-c76b-4512-9a5b-baa04aa72885">

<img width="1512" alt="Screenshot 1445-06-03 at 2 40 21 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/549007da-683f-41ed-9a49-8184d92a6d61">



- Check whether there are dublicates values
1- select all cells
  <img width="1512" alt="Screenshot 1445-06-03 at 2 34 00 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/e36e6726-2197-4146-98f5-60a5dfba3a96">

2- Conditional formatting
<img width="1512" alt="Screenshot 1445-06-03 at 2 53 03 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/3491ac61-2dd9-4ed7-957e-87475f9468ee">

3- there is 1 dublicate so i check are the same values , if yes so i delete it
<img width="1512" alt="Screenshot 1445-06-03 at 2 56 09 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/2a8e2894-c4b8-47b5-93e8-9ada5355fdf9">

<img width="1512" alt="Screenshot 1445-06-03 at 2 56 45 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/3a8e35cf-ac2b-4c0e-a7e3-d07230eee6a9">


- check if all IDs are 4 digits 
  - 1- using LEN() function
 <img width="1512" alt="Screenshot 1445-06-03 at 4 34 21 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/20bcc8f9-4baf-4362-bff5-978c3b45bc98">

<img width="1512" alt="Screenshot 1445-06-03 at 4 34 30 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/e31dba48-ca43-4986-bb64-1f04d31a0621">

  - 2- Conditional formatting to check if there any value that isn't eqals to 4
 <img width="1512" alt="Screenshot 1445-06-03 at 4 34 41 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/77b55778-4cfa-461c-a27b-982d80e22ba9">

 
<img width="1512" alt="Screenshot 1445-06-03 at 4 34 51 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/2d70a318-1424-4d37-b2c4-573022808516">

 

- Ensure that each university corresponds to its region
 1- first i made i key table so i can use it with IF() and VLOOKUP() function
  - the key table comtains the university and region Columns
 

  2- i used VLOOKUP() function to return the university name , and i used the IF() function to determine if the university corresponds to its region , if yes then the formula returns TRUE else returns FALSE , the formula:
   - IF(D2 = VLOOKUP(D2, $H$2:$I$18, 1, FALSE),"TRUE", "FALSE")
 <img width="1512" alt="Screenshot 1445-06-03 at 5 41 31 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/922898f2-c8f3-479f-b3d9-6df3b6d9fed0">


  3- i then used the CONDITIONAL FORMATTING to highlight any FALSE valuse
  <img width="1512" alt="Screenshot 1445-06-03 at 5 41 57 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/29ce3800-c233-4b0e-bfff-88b7ca5e0ded">


- Ensure that all grades less than 100 by using CONDITIONAL FORMATTING
<img width="1512" alt="Screenshot 1445-06-03 at 11 34 19 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/93ca59ad-c584-40bd-8b92-4f6e7fe9cd36">



 2- Analysis and visualiz data

- Identify students who passed and students who failed success or fail by using IF() function
  - =IF(F2<70,"راسب", "ناجح")
 <img width="1512" alt="Screenshot 1445-06-03 at 11 37 43 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/9c8bd774-ce1e-4c18-9826-bbd827a82355">

  
- VLOOKUP to give the grade by search by id because we may have million record or row
  - table + Vlookup =VLOOKUP(J10,A1:G200,6,FALSE)
 

- Average of grades =AVERAGE(F:F)
- Students who succeeded COUNTIF(F:F,">70")
- Students who failed COUNTIF(F:F,"<70")
- Pivot table
  - Student gender for each university
  - Average grade for each university
  - Average grade for each gender at each university
    
  
