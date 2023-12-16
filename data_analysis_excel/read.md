# challenge idea
A challenge presented by the (Masar) platform ,(Masar) is a  volunteer initiative aimed at educating graduates and job seekers about job titles in the Saudi labor market and their requirements , The first challenge is how to use and analyzing data using Excel, aims to develop skills:
- Exploring the most important Excel tools
- Data cleaning
- Data analysis
- Data visualization


## The most important Excel tools that i used 
- Conditional formatting
- LEN() FUNCTION
- VLOOKUP() FUNCTION
- PIVOT TABLE
- IF() FUNCTION
- AVERAGE() FUNCTION
- COUNTIF()
- SUMIF()

## Data analysis process:



### 1- Data cleaning


# - Check whether there are nulls values

 - Select all cells
<img width="1512" alt="Screenshot 1445-06-03 at 2 34 00 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/7d2bbd48-08db-45fa-a4e5-0db585b3e8a1">
 - From find&select

<img width="1512" alt="Screenshot 1445-06-03 at 2 34 07 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/f916b405-a80c-4531-8716-a51a91abd8f8">

<img width="1512" alt="Screenshot 1445-06-03 at 2 34 15 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/6e9bafca-bc01-4161-a173-fe17ebb93204">

 - We can see that we have 2 nulls
<img width="1512" alt="Screenshot 1445-06-03 at 2 46 35 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/950cdfc3-ba30-4351-b775-f034593f6f62">

 - To fix it we have another sheet that have the (id , grade)

<img width="1512" alt="Screenshot 1445-06-03 at 2 35 41 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/3cb9cea6-f609-49f3-9558-160db76ac291">


 - The solution is to use VLOOKUP() function to search for the grade by the id from the other sheet , by using this formula
   - =VLOOKUP(A2, Grade!$A$2: $B$200, 2, FALSE) we can use the "vlookupvalue" for all cells or we can just do it in the null cells

<img width="1512" alt="Screenshot 1445-06-03 at 2 37 49 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/8b244b73-c76b-4512-9a5b-baa04aa72885">

<img width="1512" alt="Screenshot 1445-06-03 at 2 40 21 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/549007da-683f-41ed-9a49-8184d92a6d61">






# - Check whether there are dublicates values

 - Select all cells
  <img width="1512" alt="Screenshot 1445-06-03 at 2 34 00 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/e36e6726-2197-4146-98f5-60a5dfba3a96">

 - Conditional formatting
<img width="1512" alt="Screenshot 1445-06-03 at 2 53 03 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/3491ac61-2dd9-4ed7-957e-87475f9468ee">

 - There is 1 dublicate so i check are the same values , if yes so i delete it
<img width="1512" alt="Screenshot 1445-06-03 at 2 56 09 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/2a8e2894-c4b8-47b5-93e8-9ada5355fdf9">

<img width="1512" alt="Screenshot 1445-06-03 at 2 56 45 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/3a8e35cf-ac2b-4c0e-a7e3-d07230eee6a9">





# - Check if all IDs are 4 digits 

 - Using LEN() function
 <img width="1512" alt="Screenshot 1445-06-03 at 4 34 21 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/20bcc8f9-4baf-4362-bff5-978c3b45bc98">

<img width="1512" alt="Screenshot 1445-06-03 at 4 34 30 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/e31dba48-ca43-4986-bb64-1f04d31a0621">

 - Conditional formatting to check if there any value that isn't eqals to 4
 <img width="1512" alt="Screenshot 1445-06-03 at 4 34 41 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/77b55778-4cfa-461c-a27b-982d80e22ba9">

 
<img width="1512" alt="Screenshot 1445-06-03 at 4 34 51 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/2d70a318-1424-4d37-b2c4-573022808516">




 

# - Ensure that each university corresponds to its region
 - First i made a key table so i can use it with IF() and VLOOKUP() function
 - The key table contains the university and region Columns
 - I used VLOOKUP() function to return the university name , and i used the IF() function to determine if the university corresponds to its  region , if yes then the formula returns TRUE else returns FALSE , the formula:
 - IF(D2 = VLOOKUP(D2, $H$2:$I$18, 1, FALSE),"TRUE", "FALSE")
 <img width="1512" alt="Screenshot 1445-06-03 at 5 41 31 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/922898f2-c8f3-479f-b3d9-6df3b6d9fed0">
 - I then used the CONDITIONAL FORMATTING to highlight any FALSE valuse
  <img width="1512" alt="Screenshot 1445-06-03 at 5 41 57 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/29ce3800-c233-4b0e-bfff-88b7ca5e0ded">






# - Ensure that all grades less than 100 by using CONDITIONAL FORMATTING
<img width="1512" alt="Screenshot 1445-06-03 at 11 34 19 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/93ca59ad-c584-40bd-8b92-4f6e7fe9cd36">




 ### 2- Analysis and visualiz data

# - Identify students who passed and students who failed success or fail by using IF() function
   - =IF(F2<70,"راسب", "ناجح")
 <img width="1512" alt="Screenshot 1445-06-03 at 11 37 43 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/9c8bd774-ce1e-4c18-9826-bbd827a82355">



  
# - Say we want to search about a student grade with Millions of rows , so i did a table that contains an Id which is the key that will be search with, and  VLOOKUP() function to give the grade by search with the Id 
   - VLOOKUP(J10,A1:G200,6,FALSE)
 <img width="1512" alt="Screenshot 1445-06-03 at 8 19 20 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/473bd441-38f9-4040-941c-dada26fd88ca">


 

# - Grade Average using AVERAGE() function
   -  =AVERAGE(F:F)
 <img width="1512" alt="Screenshot 1445-06-03 at 11 56 53 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/6cae5eaa-843f-4865-9b98-0c192b4c3468">


# - Count students who succeeded by using COUNTIF() function
   - COUNTIF(F:F,">70")
<img width="1512" alt="Screenshot 1445-06-03 at 11 58 32 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/c5315815-9387-449c-b535-fe90c2fe6d4d">


# - Count students who failed by using COUNTIF() function
   - COUNTIF(F:F,"<70")

<img width="1512" alt="Screenshot 1445-06-03 at 11 58 39 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/26e67c5f-9d8e-4616-a815-16fa81866668">



# - Pivot table

   - Student gender for each university
    <img width="1512" alt="Screenshot 1445-06-03 at 9 15 56 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/47d7249f-166c-4f04-b485-bb91469e1c84">

    

   - Average grade for each university
     <img width="1512" alt="Screenshot 1445-06-03 at 9 18 03 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/b6dec375-b46e-4bd9-90df-969a8f278726">



   - Average grade for each gender at each university
    <img width="1512" alt="Screenshot 1445-06-03 at 9 20 57 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/9a4b6ef7-40d0-491c-94ad-6b54a7d1d693">


  - Number of students who succeeded and failed students for each university
    
  <img width="1512" alt="Screenshot 1445-06-03 at 9 27 30 AM" src="https://github.com/shaden-2000/Challenges/assets/100734021/8b163f3a-7c94-47cc-9175-1be642ead90f">

