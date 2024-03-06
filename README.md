SQL ENGINEERING

Data Modeling Analysis: (ERD Deagram.png)
___________________________________________________________

    The Entity Relationship Diagram (ERD) provides a visual representation of the database schema, outlining the relationships between different entities. In this case, the ERD includes entities such as Employee, Department, Salary, Title, EmployeeDepartment, and Manager. Each entity has attributes that define its properties, and the relationships between entities are depicted through lines connecting them. This ERD serves as a blueprint for designing the database tables and establishing their relationships.


Data Engineering Analysis: (Table_creation_Query.sql)
____________________________________________________________

    The data engineering phase involves creating the necessary database tables based on the provided schema and importing data from CSV files into these tables. Each table is designed to store specific types of information, such as employee details, department information, salary records, job titles, employee department assignments, and managerial relationships.

    The tables are created with appropriate data types for each column, ensuring efficient storage and retrieval of data. Primary keys are designated to uniquely identify each record within a table, and foreign keys establish relationships between tables, enabling referential integrity. Constraints such as NOT NULL are applied where necessary to enforce data integrity rules.


Data Analysis: (EmpQueryAnalysisOutput.sql)
__________________________________________________________

    The data analysis tasks involve querying the database to extract meaningful insights and answer specific questions about the data. Various SQL queries are formulated to retrieve information such as employee details, hire dates, manager information, department assignments, and frequency counts of employee last names.

    These queries provide valuable insights into the workforce, including employee demographics, hiring trends, departmental structures, managerial hierarchies, and common last names among employees. By analyzing the data stored in the database, organizations can make informed decisions, identify patterns, and optimize their operations effectively.


