# idea
A challenge presented by the (Masar) platform ti ......

# the dataset

# data analysis process: اتآكد من الخطوات اكثر

formulas اكتب كل الفنكشن اللي كتبتها


1- cleanning
- Check whether there are nulls values
- dublicates
- Length : to check if all IDs are 8 digits -
  - 1- LEN()
  - 2- conditional formatting 
- make sure every uni match the rejon
  - =IF(D2 = VLOOKUP(D2, $H$2:$I$18, 1, FALSE),"TRUE", "FALSE")
  - IF
  - VLOOKUP
  - CONDITIONAL FORMATTING
  - KEY TABLE
-All grades less than 100
 
2- Analysis 

- success or fail (if )=IF(F2<70,"راسب", "ناجح")
- VLOOKUP to give the grade by search by id because we may have million record or row
  - table + Vlookup =VLOOKUP(J10,A1:G200,6,FALSE)
- Average of grades =AVERAGE(F:F)
- Students who succeeded COUNTIF(F:F,">70")
- Students who failed COUNTIF(F:F,"<70")
- Pivot table
  - Student gender for each university
  - Average grade for each university
  - Average grade for each gender at each university
    
  
