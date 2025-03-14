\c ocean_liner_testing

CREATE TABLE IF NOT EXISTS "ships" (
  "id" serial PRIMARY KEY,
  "name" varchar(50) NOT NULL,
  "other_names" "varchar(50) []",
  "description" text,
  "launch_date" timestamp,
  "maiden_voyage" timestamp,
  "keel_laid" timestamp,
  "length_m" float,
  "beam_m" float,
  "draught_m" float,
  "gross_reg_tge" int,
  "gross_tge" int,
  "net_tge" int,
  "disp_tge" int,
  "passenger_capacity" int,
  "crew" int,
  "powerplant" "varchar(50) []",
  "propulsion" "varchar(50) []",
  "line_id" int REFERENCES lines(id),
  "yard_id" int REFERENCES yards(id),
  "captain_ids" "int []" REFERENCES captains(id),
  "survives" bool,
  "status" varchar(10),
  "sister_ships" "int []",
  "running_mates" "int []",
  "port_registry" "int []" REFERENCES ports(id),
  "routes" "int [2][]" REFERENCES ports(id)
);

CREATE TABLE IF NOT EXISTS "lines" (
  "id" serial PRIMARY KEY,
  "official_name" varchar(50),
  "common_name" varchar(50),
  "home_port" "int []" REFERENCES ports(id)
);

CREATE TABLE IF NOT EXISTS "yards" (
  "id" serial PRIMARY KEY,
  "name" varchar(50),
  "location" varchar(50),
  "date_founded" timestamp,
  "date_closed" timestamp,
  "is_in_business" bool
);

CREATE TABLE IF NOT EXISTS "captains" (
  "id" serial PRIMARY KEY,
  "name" varchar(50),
  "dob" timestamp,
  "dod" timestamp
);

CREATE TABLE IF NOT EXISTS "ports" (
  "id" serial PRIMARY KEY,
  "name" varchar(50),
  "country" varchar(50),
  "continent" varchar(50)
);

CREATE TABLE IF NOT EXISTS "routes" (
  "id" serial PRIMARY KEY,
  "port_1" int REFERENCES ports(id),
  "port_2" int REFERENCES ports(id),
  "port_3" int REFERENCES ports(id),
  "port_4" int REFERENCES ports(id)
);
