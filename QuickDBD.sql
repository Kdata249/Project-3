-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Patient_Info" (
    "Patient_ID" VARCHAR   NOT NULL,
    "Age" INT   NOT NULL,
    "Sex" VARCHAR   NOT NULL,
    "Income" INT   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "Continent" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Patient_Info" PRIMARY KEY (
        "Patient_ID"
     )
);

CREATE TABLE "Health_Information" (
    "Patient_ID" VARCHAR   NOT NULL,
    "Cholesterol" INT   NOT NULL,
    "Blood_Pressure" VARCHAR   NOT NULL,
    "Heart_Rate" VARCHAR   NOT NULL,
    "BMI" DECIMAL   NOT NULL,
    "Triglycerides" INT   NOT NULL
);

CREATE TABLE "Risk_Factors" (
    "Patient_ID" VARCHAR   NOT NULL,
    "Smoking" BOOLEAN   NOT NULL,
    "Alcohol_Consumption" BOOLEAN   NOT NULL,
    "Family_History" BOOLEAN   NOT NULL,
    "Diabetes" BOOLEAN   NOT NULL,
    "Stress_Level" INT   NOT NULL,
    "Previous_Heart_Problems" BOOLEAN   NOT NULL
);

CREATE TABLE "Lifestyle_Factors" (
    "Patient_ID" VARCHAR   NOT NULL,
    "Active_Days" INT   NOT NULL,
    "Sleep_Hours" INT   NOT NULL,
    "Income" INT   NOT NULL,
    "Smoking" BOOLEAN   NOT NULL,
    "Alcohol_Consumption" BOOLEAN   NOT NULL
);

ALTER TABLE "Health_Information" ADD CONSTRAINT "fk_Health_Information_Patient_ID" FOREIGN KEY("Patient_ID")
REFERENCES "Patient_Info" ("Patient_ID");

ALTER TABLE "Risk_Factors" ADD CONSTRAINT "fk_Risk_Factors_Patient_ID" FOREIGN KEY("Patient_ID")
REFERENCES "Patient_Info" ("Patient_ID");

ALTER TABLE "Lifestyle_Factors" ADD CONSTRAINT "fk_Lifestyle_Factors_Patient_ID" FOREIGN KEY("Patient_ID")
REFERENCES "Patient_Info" ("Patient_ID");

