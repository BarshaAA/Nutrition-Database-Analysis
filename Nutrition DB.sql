/*Create a Database*/
CREATE DATABASE NUTRITION;
USE NUTRITION;

/* Create a table */
CREATE  TABLE USER(
	UserID			Int			NOT NULL,
	FirstName		varchar(25)		NOT NULL,
	LastName		varchar(25)		NOT NULL,
	Sex			    varchar(1)		NULL,
	City			varchar(35)		NULL,
	State			varchar(2)		NULL,
    CONSTRAINT 		USER_PK 	PRIMARY KEY(UserID)
	);

/*Inserting rows*/

Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (299538, 'Elizabeth', 'Johnson', 'F', 'Dallas', 'TX');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (354423, 'Matthew', 'Alexander', 'M', 'Portland', 'OR');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (857412, 'Veronica', 'Hollingsworth', 'F', 'Sacramento', 'CA');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (458001, 'Sean', 'Kennedy', 'M', 'Phoenix', 'AZ');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (558912, 'Tyler', 'Brune', 'M', 'Jackson', 'MS');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (191245, 'Greg', 'Wilson', 'M', 'Detroit', 'MI');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (943229, 'Nancy', 'Flores', 'F', 'Chicago', 'IL');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (472346, 'Roger', 'Smith', 'M', 'Atlanta', 'GA');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (978234, 'Tim', 'Brown', 'M', 'Albany', 'NY');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (651266, 'Jessica', 'Gomez', 'F', 'Dover', 'DE');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (793857, 'Rhonda', 'Miller', 'F', 'Salem', 'OR');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (683723, 'Kristina', 'Jones', 'F', 'Miami', 'FL');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (869083, 'Daniel', 'Jones', 'M', 'Denver', 'CO');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (572354, 'Lindsey', 'Clark', 'F', 'Springfield', 'IL');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (389066, 'Mary', 'Wright', 'F', 'Austin', 'TX');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (674238, 'Joseph', 'Scott', 'M', 'Columbus', 'OH');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (189723, 'Melissa', 'Edwards', 'F', 'Madison', 'WI');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (289754, 'Lynn', 'Morales', 'F', 'Harrisburg', 'VA');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (349785, 'Rachel', 'Foster', 'F', 'Nashville', 'TN');
Insert into USER (UserID, FirstName, LastName, Sex, City, State) values (567892, 'Zach', 'Briggs', 'M', 'Keystone', 'CO');

/*SELECT statement retrieves records */
Select * from USER;

CREATE  TABLE HEALTH(
	UserID			Int			NOT NULL,
	Dietary_Restrictions VARCHAR(50) NULL,
	Illnesses VARCHAR(50) NULL,
	Height_in_inches INT 	NOT NULL,
	Weight_in_pounds INT	NOT NULL,
	Age INT NOT NULL,
    Goals VARCHAR(50) NULL,
    CONSTRAINT 		HEALTH_USER_FK 	FOREIGN KEY(UserID)
					references USER(UserID)
                    ON UPDATE NO ACTION
					ON DELETE NO ACTION			);

Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('299538', NULL, 'Heart Disease', 66, 160, 28,'Lose Weight');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('354423', NULL, NULL, 75, 200, 21, 'Maintain Weight');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('857412', NULL, NULL, 64, 130, 30, 'Eat Healthy');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('458001','Peanut Allergy',NULL,69,177,45,'Strengthening Muscles');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('558912', NULL, 'Asthma', 71, 179, 25, 'Endurance');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('943229', NULL, NULL, 56, 138, 50, 'Decrease Cholesterol');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('472346', 'Shellfish Allergy', NULL, 72, 159, 23,'Gain Weight');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('978234', NULL, 'Diabetes', 74, 223, 23,'Maintain Weight');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('651266', NULL, 'Asthma', 67, 193, 26, 'Lose Weight');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('793857','Lactose Intolerant',NULL,67,151,21, 'Endurance');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('683723', 'Vegan', NULL, 63, 132, 33, 'Maintain Weight');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('572354', NULL,'Crohns Disease',65,120,46,'Eat Healthier');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('389066', 'Vegetarian', NULL, 65, 177, 52, 'Endurance');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('674238', NULL, NULL, 70, 188, 31, 'Strengthening Muscles');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('189723', NULL,'High Blood Pressure',58,162,28, 'Maintain Illness');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('289754', 'Vegetarian', NULL, 62, 141, 29, 'Endurance');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('349785', 'Eggs', NULL, 60, 139, 22,'Decrease Cholesterol');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('567892', NULL, NULL, 73, 192, 25, 'Eat Healthy');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('191245', NULL, 'Diabetes', 77, 215, 34, 'Lose Weight');
Insert into HEALTH (UserID, Dietary_Restrictions, Illnesses, Height_in_inches, Weight_in_pounds, Age, Goals) values ('869083', NULL, NULL, 72, 171, 37, 'Maintain Weight');

select * from HEALTH;

CREATE  TABLE NUTRITION(
		FoodName		varchar(50)		NOT NULL,
		Serving_Size	VARCHAR(50) 	NULL,
        Calories		int		NULL,
        Fat_in_gm 		int 	NULL,
        Sugars_in_gm 	int 	NULL,
        Carbs_in_gm	 	int 	NULL,
        Protein_in_gm		int 	NULL,
CONSTRAINT 		NUTRITION_PK 	PRIMARY KEY(FoodName)
);

Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Broccoli', '1 cup', 14,0,1,3,2);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Almonds','1 cup', 214,19,2,7,8);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Apple',1,95,0,19,25,0);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Chicken','6 oz', 142,3,0,0,27);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Pasta','1 cup',149,1,9,31,5);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Ground Beef', '6 oz', 155,6,0,0,24);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Potato',1,145,0,3,34,3);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Wheat Bread','4 oz', 78,1,2,14,3);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('White Rice','1 cup',100,0,0,22,2);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Whole Milk','8 oz',149,8,12,12,8);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Baby Carrots','1 cup',40,0,5,9,1);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Strawberries','1 cup',23,0,4,6,0);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Salmon','6 oz',156,6,0,0,23);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Tofu','6 oz', 78,4,0,2,8);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Orange',1,62,0,12,15,1);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Black Beans','1 cup', 99,0,3,18,7);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Taco', 1, 310,11,3,34,19);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Green Beans', '1 cup', 180,1,3,32,12);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Bacon','4 oz', 180,3,0,0,3);
Insert into NUTRITION (FoodName, Serving_Size, Calories, Fat_in_gm, Sugars_in_gm, Carbs_in_gm, Protein_in_gm) values ('Asparagus','1 cup',13,0,1,3,1);

select * from NUTRITION;
     
CREATE  TABLE FOOD_DIARY(
		UserID			Int			NOT NULL,
		FoodName 		VARCHAR(50) NOT NULL,
		Servings 		INT 	    NULL,
		Date_Consumed   DATETIME, 
		WaterIntake_in_oz INT NOT NULL,
CONSTRAINT 		FOOD_DIARY_USER_FK 	FOREIGN KEY(UserID)
					references USER(UserID)
                    ON UPDATE NO ACTION
					ON DELETE NO ACTION,
CONSTRAINT 		FOOD_DIARY_NUTRITION_FK 	FOREIGN KEY(FoodName)
					references NUTRITION(FoodName)
                    ON UPDATE NO ACTION
					ON DELETE NO ACTION
);

Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('299538', 'Apple', 1, '2019-10-21 07:38:00', 16);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('354423', 'Chicken', 1, '2019-10-02 12:14:00', 12);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('857412', 'Whole Milk', 2, '2019-10-14 09:05:43', 22);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('458001', 'Black Beans', 1, '2019-10-29 15:22:21', 32);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('558912', 'Almonds', 2, '2019-10-06 08:45:54', 51);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('191245', 'Potato', 1, '2019-10-21 18:11:27', 55);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('943229', 'Strawberries', 3, '2019-10-30 08:02:17', 18);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('472346', 'Pasta', 2, '2019-10-17 17:56:37', 53);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('978234', 'Salmon', 2, '2019-10-31 11:36:08', 17);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('651266', 'Green Beans', 2, '2019-10-03 13:08:41', 18);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('793857', 'Orange', 1, '2019-10-05 06:20:11', 21);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('683723', 'Baby Carrots', 2, '2019-10-19 15:21:29', 24);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('869083', 'White Rice', 2, '2019-10-27 14:03:33', 63);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('572354', 'Chicken', 1, '2019-10-21 12:06:47', 26);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('389066', 'Pasta', 3, '2019-10-22 11:51:02', 30);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('674238', 'Almonds', 2, '2019-10-13 10:44:38', 19);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('189723', 'Ground Beef', 2, '2019-10-09 14:00:13', 14);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('289754', 'Wheat Bread', 1, '2019-10-01 08:53:55', 9);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('349785', 'Apple', 2, '2019-10-21 05:58:06', 22);
Insert into FOOD_DIARY (UserID, FoodName, Servings, Date_Consumed, WaterIntake_in_oz) values ('567892', 'Tofu', 2, '2019-10-19 13:09:22', 27);

SELECT * FROM FOOD_DIARY;

CREATE  TABLE FITNESS_DIARY(
		Exercise		Varchar(50) Not null,
        UserID			Int			NOT NULL,
		Date_Time_Exercised datetime NOT NULL,
		Weights_in_lbs 		INT 	    NULL,
		Sets   			INT 	    NULL,
        Reps 		INT 	    NULL,
		Duration_mins   			INT 	    NULL,
		Calories_Burned INT 		NOT NULL,
CONSTRAINT 		FITNESS_DIARY_PK 	PRIMARY KEY (Exercise),
CONSTRAINT 		FITNESS_DIARY_USER_FK 	FOREIGN KEY(UserID)
					references USER(UserID)
                    ON UPDATE NO ACTION
					ON DELETE NO ACTION
);

Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Push Ups','299538', '2019-10-21 06:04:51', 0, 3, 15, NULL, 107);   
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Plank','354423', '2019-10-02 15:24:10', 0, 4, NULL, 2, 265);   
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Jump Rope','857412', '2019-10-14 08:15:29', 0, NULL, NULL,30,300);   
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Bicep Curls','458001', '2019-10-29 17:42:17', 15, 3, 10,NULL,432);
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Tricep Curls','558912', '2019-10-06 06:55:42', 25, 4, 7,NULL,254);   
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Squats','191245', '2019-10-21 15:31:39', 0, 3, 12, NULL, 389);   
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Running','943229', '2019-10-30 07:12:20', 0, NULL, NULL, 60, 504);
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Walking','472346', '2019-10-17 07:18:46', 0, NULL, NULL, 45, 387);  
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Lunges','978234', '2019-10-31 08:56:30', 10, 4, 8, NULL, 356);
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Leg Press','651266', '2019-10-03 15:28:59', 120, 3, 12, NULL,474);
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Cycling','793857', '2019-10-05 06:49:12', 0, NULL, NULL, 25, 234);
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Bench Press','683723', '2019-10-19 15:21:33', 210, 3,15,NULL,451);
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Upright Row','869083', '2019-10-27 18:17:24', 30, 3, 10,NULL,432);
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Shoulder Press','389066', '2019-10-22 19:11:24', 30,3,8,NULL,634);
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Overhead Press','572354','2019-10-22 12:19:51', 25,3,10,NULL,497);
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Chin Ups','674238', '2019-10-13 08:34:26', 0, 4, 10, NULL, 125);
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Sit Ups','189723', '2019-10-09 16:07:37', 0, 3, 18, NULL, 345);
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Dips','289754', '2019-10-01 07:02:00', 0, 4, 16, NULL, 560);
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Deadlift','349785', '2019-10-21 06:20:08', 110, 3, 4, NULL, 601);
Insert into FITNESS_DIARY (Exercise, UserID, Date_Time_Exercised, Weights_in_lbs, Sets, Reps, Duration_mins, Calories_Burned) values ('Swimming','567892', '2019-10-19 17:26:44', 0, NULL, NULL, 35,355);

Select * from FITNESS_DIARY;

/*--------------Queries-------------------------------*/

/*1. Display the information from USER table and sorts the data alphabetically by ‘FirstName’.*/

Select * from USER
ORDER BY FirstName;

/*2. Count the number of people between 20 and 30 beginning with the youngest.*/
/*Aggregate Function*/

Select Count(UserID), Ages, Goals
from HEALTH
WHERE Age >=20 and Age <=30
GROUP BY Age;

/*3. Display the body mass index.*/
/*Computation*/
Select max(Weight_in_pounds), ((730*Weight_in_pounds)/ (Height_in_inches*Height_in_inches)) as 'Body Mass Index:'
from HEALTH;

/*4. Display the Dietary_Restrictions, Illnesses, Goals of a user who performed 4 sets of exercise.*/
/*Subquery*/
Select Dietary_Restrictions, Illnesses, Goals 
from HEALTH 
WHERE UserID IN(
SELECT UserID from FITNESS_DIARY where Sets =4);
        
/*5. Create View Query*/

Create View Food_Consumed_and_WorkOut as select FOOD_DIARY.UserID, FoodName, Exercise, Calories_Burned
from FOOD_DIARY INNER JOIN FITNESS_DIARY ON
FOOD_DIARY.UserID=FITNESS_DIARY.UserID
where Calories_Burned>400;

select * from Food_Consumed_and_WorkOut;

/*6. Display unique value FoodName from FOOD_DIARY and NUTRITION. */

Select 'FoodDiary' as Type, FoodName from FOOD_DIARY
UNION select 'Nutrition' , FoodName from NUTRITION;

/*7. Creat a stored function.*/

DELIMITER //
CREATE FUNCTION BodyMassIndex(
Weight_in_pounds int, Height_in_inches int)
returns INT
READS SQL DATA
DETERMINISTIC
BEGIN
  DECLARE BMI INT;
  SET BMI = ((730*Weight_in_pounds)/
  (Height_in_inches*Height_in_inches));
  RETURN BMI;
END; //
DELIMITER ;

select BodyMassIndex (145, 60);


   
	