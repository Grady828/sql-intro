Company Database"# CREATE TABLE "Employees"("FullName" TEXT NOT NULL, "Salary" INT, "JobPosition" TEXT, "PhoneExtension" INT, "IsPartTime" BOOLEAN);
Company Database=#  CREATE TABLE "Employees"("FullName" TEXT NOT NULL, "Salary" INT, "JobPosition" TEXT, "PhoneExtension" INT, "IsPartTime" BOOLEAN);
Company Database=# INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES('Major', 1, 'First Dog', 001, True);
INSERT 0 1
Company Database=# SELECT * FROM "Employees";
     FullName      | Salary |         JobPosition         | PhoneExtension | IsPartTime
-------------------+--------+-----------------------------+----------------+------------
 Joe Biden         | 130000 | President                   |            123 | f
 Kamala Harris     | 100000 | VicePresident               |            100 | f
 Janet Yellen      |  90000 | FedReserveChair             |            100 | f
 Merrick Garland   |  75000 | AttorneyGeneral             |             89 | f
 Gina Raimondo     |  85000 | CommerceSecretary           |             14 | f
 Miguel Cardona    | 980000 | EPA Head                    |             76 | f
 Michael Regan     |  82000 | Dept of Education Head      |             11 | f
 Deb Haaland       |  99000 | Dept of Interior Head       |            876 | f
 Pete Buttigieg    |  91000 | Dept of Transportation Head |            543 | f
 Jennifer Granholm |  91000 | Dept of Energy Head         |            981 | f
 Lloyd Austin      | 103000 | Dept of Defense Head        |            761 | f
 Tom Vilsack       | 101000 | Sec Of Agriculture          |            760 | f
 Major             |      1 | First Dog                   |              1 | t
(13 rows)
Company Database=# SELECT "FullName","PhoneExtension" FROM "Employees" WHERE "IsPartTime" = False;
     FullName      | PhoneExtension
-------------------+----------------
 Joe Biden         |            123
 Kamala Harris     |            100
 Janet Yellen      |            100
 Merrick Garland   |             89
 Gina Raimondo     |             14
 Miguel Cardona    |             76
 Michael Regan     |             11
 Deb Haaland       |            876
 Pete Buttigieg    |            543
 Jennifer Granholm |            981
 Lloyd Austin      |            761
 Tom Vilsack       |            760
(12 rows)
Company Database=# SELECT * FROM "Employees";
     FullName      | Salary |         JobPosition         | PhoneExtension | IsPartTime
-------------------+--------+-----------------------------+----------------+------------
 Joe Biden         | 130000 | President                   |            123 | f
 Kamala Harris     | 100000 | VicePresident               |            100 | f
 Janet Yellen      |  90000 | FedReserveChair             |            100 | f
 Merrick Garland   |  75000 | AttorneyGeneral             |             89 | f
 Gina Raimondo     |  85000 | CommerceSecretary           |             14 | f
 Miguel Cardona    | 980000 | EPA Head                    |             76 | f
 Michael Regan     |  82000 | Dept of Education Head      |             11 | f
 Deb Haaland       |  99000 | Dept of Interior Head       |            876 | f
 Pete Buttigieg    |  91000 | Dept of Transportation Head |            543 | f
 Jennifer Granholm |  91000 | Dept of Energy Head         |            981 | f
 Lloyd Austin      | 103000 | Dept of Defense Head        |            761 | f
 Tom Vilsack       | 101000 | Sec Of Agriculture          |            760 | f
 Major             |      1 | First Dog                   |              1 | t
 Lazy Larry        |    237 | Cook                        |            875 | t
(14 rows)
Company Database=# INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime") VALUES('Juice Newton', 450, 'Software Developer', 431, True);
INSERT 0 1
Company Database=# SELECT * FROM "Employees";
     FullName      | Salary |         JobPosition         | PhoneExtension | IsPartTime
-------------------+--------+-----------------------------+----------------+------------
 Joe Biden         | 130000 | President                   |            123 | f
 Kamala Harris     | 100000 | VicePresident               |            100 | f
 Janet Yellen      |  90000 | FedReserveChair             |            100 | f
 Merrick Garland   |  75000 | AttorneyGeneral             |             89 | f
 Gina Raimondo     |  85000 | CommerceSecretary           |             14 | f
 Miguel Cardona    | 980000 | EPA Head                    |             76 | f
 Michael Regan     |  82000 | Dept of Education Head      |             11 | f
 Deb Haaland       |  99000 | Dept of Interior Head       |            876 | f
 Pete Buttigieg    |  91000 | Dept of Transportation Head |            543 | f
 Jennifer Granholm |  91000 | Dept of Energy Head         |            981 | f
 Lloyd Austin      | 103000 | Dept of Defense Head        |            761 | f
 Tom Vilsack       | 101000 | Sec Of Agriculture          |            760 | f
 Major             |      1 | First Dog                   |              1 | t
 Lazy Larry        |    237 | Cook                        |            875 | t
 Juice Newton      |    450 | Software Developer          |            431 | t
 Company Database=# UPDATE "Employees"SET "Salary" = '500' Where "Salary" = '237'And "JobPosition" = 'Cook';
UPDATE 1
Company Database=# SELECT * FROM "Employees";
     FullName      | Salary |         JobPosition         | PhoneExtension | IsPartTime
-------------------+--------+-----------------------------+----------------+------------
 Joe Biden         | 130000 | President                   |            123 | f
 Kamala Harris     | 100000 | VicePresident               |            100 | f
 Janet Yellen      |  90000 | FedReserveChair             |            100 | f
 Merrick Garland   |  75000 | AttorneyGeneral             |             89 | f
 Gina Raimondo     |  85000 | CommerceSecretary           |             14 | f
 Miguel Cardona    | 980000 | EPA Head                    |             76 | f
 Michael Regan     |  82000 | Dept of Education Head      |             11 | f
 Deb Haaland       |  99000 | Dept of Interior Head       |            876 | f
 Pete Buttigieg    |  91000 | Dept of Transportation Head |            543 | f
 Jennifer Granholm |  91000 | Dept of Energy Head         |            981 | f
 Lloyd Austin      | 103000 | Dept of Defense Head        |            761 | f
 Tom Vilsack       | 101000 | Sec Of Agriculture          |            760 | f
 Major             |      1 | First Dog                   |              1 | t
 Juice Newton      |    450 | Software Developer          |            431 | t
 Lazy Larry        |    500 | Cook                        |            875 | t
Company Database=# DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';
DELETE 1
Company Database=# SELECT * FROM "Employees";
     FullName      | Salary |         JobPosition         | PhoneExtension | IsPartTime
-------------------+--------+-----------------------------+----------------+------------
 Joe Biden         | 130000 | President                   |            123 | f
 Kamala Harris     | 100000 | VicePresident               |            100 | f
 Janet Yellen      |  90000 | FedReserveChair             |            100 | f
 Merrick Garland   |  75000 | AttorneyGeneral             |             89 | f
 Gina Raimondo     |  85000 | CommerceSecretary           |             14 | f
 Miguel Cardona    | 980000 | EPA Head                    |             76 | f
 Michael Regan     |  82000 | Dept of Education Head      |             11 | f
 Deb Haaland       |  99000 | Dept of Interior Head       |            876 | f
 Pete Buttigieg    |  91000 | Dept of Transportation Head |            543 | f
 Jennifer Granholm |  91000 | Dept of Energy Head         |            981 | f
 Lloyd Austin      | 103000 | Dept of Defense Head        |            761 | f
 Tom Vilsack       | 101000 | Sec Of Agriculture          |            760 | f
 Major             |      1 | First Dog                   |              1 | t
 Juice Newton      |    450 | Software Developer          |            431 | t
(14 rows)
Company Database=# ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);
ALTER TABLE
Company Database=# SELECT * FROM "Employees";
     FullName      | Salary |         JobPosition         | PhoneExtension | IsPartTime | ParkingSpot
-------------------+--------+-----------------------------+----------------+------------+-------------
 Joe Biden         | 130000 | President                   |            123 | f          |
 Kamala Harris     | 100000 | VicePresident               |            100 | f          |
 Janet Yellen      |  90000 | FedReserveChair             |            100 | f          |
 Merrick Garland   |  75000 | AttorneyGeneral             |             89 | f          |
 Gina Raimondo     |  85000 | CommerceSecretary           |             14 | f          |
 Miguel Cardona    | 980000 | EPA Head                    |             76 | f          |
 Michael Regan     |  82000 | Dept of Education Head      |             11 | f          |
 Deb Haaland       |  99000 | Dept of Interior Head       |            876 | f          |
 Pete Buttigieg    |  91000 | Dept of Transportation Head |            543 | f          |
 Jennifer Granholm |  91000 | Dept of Energy Head         |            981 | f          |
 Lloyd Austin      | 103000 | Dept of Defense Head        |            761 | f          |
 Tom Vilsack       | 101000 | Sec Of Agriculture          |            760 | f          |
 Major             |      1 | First Dog                   |              1 | t          |
 Juice Newton      |    450 | Software Developer          |            431 | t          |
(14 rows)
Time: 0.004s
Company Database> CREATE TABLE "Departments" ("Id" SERIAL PRIMARY KEY, "DepartmentName" TEXT NOT NULL, "Building" TEXT);
CREATE TABLE
Time: 0.036s
Company Database> ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("Id");
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
ALTER TABLE
Time: 0.028s
Company Database> SELECT * FROM "Employees";
+-------------------+----------+-----------------------------+------------------+--------------+---------------+----------------+
| FullName          | Salary   | JobPosition                 | PhoneExtension   | IsPartTime   | ParkingSpot   | DepartmentId   |
|-------------------+----------+-----------------------------+------------------+--------------+---------------+----------------|
| Joe Biden         | 130000   | President                   | 123              | False        | <null>        | <null>         |
| Kamala Harris     | 100000   | VicePresident               | 100              | False        | <null>        | <null>         |
| Janet Yellen      | 90000    | FedReserveChair             | 100              | False        | <null>        | <null>         |
| Merrick Garland   | 75000    | AttorneyGeneral             | 89               | False        | <null>        | <null>         |
| Gina Raimondo     | 85000    | CommerceSecretary           | 14               | False        | <null>        | <null>         |
| Miguel Cardona    | 980000   | EPA Head                    | 76               | False        | <null>        | <null>         |
| Michael Regan     | 82000    | Dept of Education Head      | 11               | False        | <null>        | <null>         |
| Deb Haaland       | 99000    | Dept of Interior Head       | 876              | False        | <null>        | <null>         |
| Pete Buttigieg    | 91000    | Dept of Transportation Head | 543              | False        | <null>        | <null>         |
| Jennifer Granholm | 91000    | Dept of Energy Head         | 981              | False        | <null>        | <null>         |
| Lloyd Austin      | 103000   | Dept of Defense Head        | 761              | False        | <null>        | <null>         |
| Tom Vilsack       | 101000   | Sec Of Agriculture          | 760              | False        | <null>        | <null>         |
| Major             | 1        | First Dog                   | 1                | True         | <null>        | <null>         |
| Juice Newton      | 450      | Software Developer          | 431              | True         | <null>        | <null>         |
+-------------------+----------+-----------------------------+------------------+--------------+---------------+----------------+
SELECT 14
Time: 0.005s
Company Database> CREATE TABLE "Products" (
   "Id"             SERIAL PRIMARY KEY,
   "Price"          DECIMAL,
   "Name"  TEXT,
   "Description"  INT,
 "QuantityInStock" INTEGER);
CREATE TABLE
Time: 0.012s
Time: 0.006s
Company Database> SELECT * FROM "Products";
+------+---------+--------+---------------+-------------------+
| Id   | Price   | Name   | Description   | QuantityInStock   |
|------+---------+--------+---------------+-------------------|
+------+---------+--------+---------------+-------------------+
SELECT 0
Time: 0.006s

        ^

Time: 0.004s
Company Database> CREATE TABLE "Orders" (
   "Id"             SERIAL PRIMARY KEY,
   "OrderNumber"    TEXT,
   "DatePlaced"     DATE,
   "Email"  TEXT);
   Time: 0.008s
Company Database> SELECT * FROM "Orders";
+------+---------------+--------------+---------+
| Id   | OrderNumber   | DatePlaced   | Email   |
|------+---------------+--------------+---------|
+------+---------------+--------------+---------+
SELECT 0
Time: 0.006s

CREATE TABLE
Time: 0.012s