# Chelsea-FC-Database
SQL Database Management System was used to create Chelsea FC database from conceptual model, down to the physical model which is the database.

Conceptual Model Stage: This stage involved the creation of the various entities used in the database and the various attributes of each entity table. The primary keys of each entity table was assigned in order to use it as a link to other entities, making the database a relational database. The relationships between the various entities were made using the foreign keys to either make a one-to-one relationship, one-to-many relationship or many-to-many relationship. 
 
Logical Model Stage: Assigning of data types to the various attributes of each entity table was done at this stage of the database creation. The 'PlayerName' attribute was assigned a 'VARCHAR' datatype because it contains letters and might contain numbers, so the VARCHAR can accept letters and numbers written together without passing an error. Same goes for the 'DOB'(date of birth), a 'DATE' datatype was assigned to the DOB attribute in order for the SQL management system to interpret that attribute well like a date variable. Limits were assigned to the VARCHAR (50) and (10); these numbers signify that the amount of alphabets or alphanumeric data that can be entered in that colum is 50 or 10. Anything more than those numbers will give an error. So I made sure to specify the limit in order to reduce the size of my data, so it does not take much space.

ER Diagram Stage: draw.io was used to create an ER Diagram of all the entities and their correspondibg attributes, linking them with either one-to-one relationship, one-to-many relationship or many-to-many relationship. This ER Diagram is used for easy interpretation for the physical model.

Physical Model Stage: Various machine codes were used in the SQL database management system to create the Chelsea FC Database from the ER Diagram, bringing the data ti life
				
				

													THANK YOU