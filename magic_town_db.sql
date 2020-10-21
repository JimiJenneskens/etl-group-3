-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/97lKgG
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "magic_town" (
    "id" int   NOT NULL,
    "town" varchar   NOT NULL,
    "year_entered" int   NOT NULL,
    "id_state" int   NOT NULL,
    CONSTRAINT "pk_magic_town" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "states" (
    "id" int   NOT NULL,
    "state" varchar   NOT NULL,
    "abr_state" varchar   NOT NULL,
    CONSTRAINT "pk_states" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "gdp" (
    "id_state" int   NOT NULL,
    "tourism_gdp" numeric   NOT NULL,
    "year" int   NOT NULL
);

CREATE TABLE "weather" (
    "id_state" int   NOT NULL,
    "year" int   NOT NULL,
    "precipitation" numeric   NOT NULL,
    "average_temperature" numeric   NOT NULL,
    "minimum_temperature" numeric   NOT NULL,
    "maximum_temperature" numeric   NOT NULL
);

ALTER TABLE "magic_town" ADD CONSTRAINT "fk_magic_town_id_state" FOREIGN KEY("id_state")
REFERENCES "states" ("id");

ALTER TABLE "gdp" ADD CONSTRAINT "fk_gdp_id_state" FOREIGN KEY("id_state")
REFERENCES "states" ("id");

ALTER TABLE "weather" ADD CONSTRAINT "fk_weather_id_state" FOREIGN KEY("id_state")
REFERENCES "states" ("id");

