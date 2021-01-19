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
