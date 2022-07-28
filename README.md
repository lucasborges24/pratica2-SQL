# SQL Exercises - Aggregate Functions and GROUP BY

This project's aim is solve five exercises using aggregate functions and GROUP BY from a given database in postgres.

The solutions are in `practice.sql` file.

## EXERCISES

### Question 1

Using one `query`, get the number of current experiences, that is, with "endDate" other than `NULL`.

- The answer should come in the following format:
```
|---currentExperiences---|
		 80
		....  
```
---

### Question 2

Using one `query`, get the number of `educations` per user, including the user id.

- The answer should come in the following format:
```
|---id---|---educations---|
   110	         2
   178	         1
   62	         1
   128	         1
   ...          ...          
```
**NOTE**: the id column refers to the user id

---

### Question 3

Using one `query`,  get the number of `testimonials` that the user with id 435 has made, including his name.

- The answer should come in the following format:
```
|---writer---|---testimonailCount---|
    Jesus               3
     ...               ...            
```

---

### Question 4

Using one `query`, get the highest salary of the active jobs (`active = true`) and the name of the positions (`roles`) of these jobs sorted ascending

- The answer should come in the following format:
```
|---maximumSalary---|-------------role--------------|
		107981	          Junior Software Engineer
		153208	          Front-end developer
		165869	          Senior Software Engineer
		183405	          Software Engineer
		201025	          Data Analyst
		215640	          QA Analyst
		230539	          Back-end developer
		246764	          Scrum Master
         ...                     ...         
```

---
### Question 5 (bonus)

Using one `query`,  get the 3 `courses` and `schools` with the most students (`educations`) that are in progress (`status='ongoing'` ) or have finished (`status='finished'`).

- The answer should come in the following format:
```|-----------------school-----------------|-----course------|----studentsCount----|------role-------|
         Universidad de Los Andes	           Linguistics	           7	              ongoing
    Universitas Slamet Riyadi Surakarta  	   Psychology     	       6	              finished
       American International College	       Philosophy	             4	              ongoing       
```



