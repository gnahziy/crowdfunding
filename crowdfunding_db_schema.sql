
--Table creation for crowdfunding 
CREATE TABLE "crowdfunding" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "currency" INT   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR   NOT NULL,
    "subcategory_id" VARCHAR   NOT NULL,
    CONSTRAINT "pk_crowdfunding" PRIMARY KEY (
        "cf_id"
     )
);

--Table creation for contacts 
CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "email" VARCHAR   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

--Table creation for category_table
CREATE TABLE "category_table" (
    "category_id" VARCHAR   NOT NULL,
    "category" VARCHAR   NOT NULL,
    CONSTRAINT "pk_category_table" PRIMARY KEY (
        "category_id"
     )
);

--Table creation for subcategory_table
CREATE TABLE "subcategory_table" (
    "subcategory_id" VARCHAR   NOT NULL,
    "subcategory" VARCHAR   NOT NULL,
    CONSTRAINT "pk_subcategory_table" PRIMARY KEY (
        "subcategory_id"
     )
);

--Altering tables in order to include foreign keys and relationships
ALTER TABLE "crowdfunding" ADD CONSTRAINT "fk_crowdfunding_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "crowdfunding" ADD CONSTRAINT "fk_crowdfunding_category_id" FOREIGN KEY("category_id")
REFERENCES "category_table" ("category_id");

ALTER TABLE "crowdfunding" ADD CONSTRAINT "fk_crowdfunding_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory_table" ("subcategory_id");

--Viewing each table in order to see that all data was added correctly 
SELECT * 
FROM crowdfunding;

SELECT * 
FROM contacts;

SELECT * 
FROM category_table;

SELECT * 
FROM subcategory_table;