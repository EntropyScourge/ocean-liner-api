CREATE TABLE "ships" (
  "id" serial PRIMARY KEY,
  "name" varchar(50),
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
  "powerplant" "varchar(50) []",
  "propulsion" "varchar(50) []",
  "line_id" int FOREIGN KEY REFERENCES lines(id),
  "yard_id" int FOREIGN KEY REFERENCES yards(id),
  "captain_ids" "int []" FOREIGN KEY REFERENCES captains(id),
  "survives" bool,
  "status" varchar(10),
  "sister_ships" "int []",
  "running_mates" "int []",
  "port_registry" "int []" FOREIGN KEY REFERENCES ports(id),
  "routes" "int [2][]" FOREIGN KEY REFERENCES ports(id)
);

CREATE TABLE "lines" (
  "id" serial PRIMARY KEY,
  "official_name" varchar(50),
  "common_name" varchar(50),
  "home_port" "int []" FOREIGN KEY REFERENCES ports(id)
);

CREATE TABLE "yards" (
  "id" serial PRIMARY KEY,
  "name" varchar(50),
  "location" varchar(50),
  "date_founded" timestamp,
  "date_closed" timestamp,
  "is_in_business" bool
);

CREATE TABLE "captains" (
  "id" serial PRIMARY KEY,
  "name" varchar(50),
  "dob" timestamp,
  "dod" timestamp
);

CREATE TABLE "ports" (
  "id" serial PRIMARY KEY,
  "name" varchar(50),
  "country" varchar(50),
  "continent" varchar(50)
);

CREATE TABLE "routes" (
  "id" serial PRIMARY KEY,
  "port_1" FOREIGN KEY REFERENCES ports(id),
  "port_2" FOREIGN KEY REFERENCES ports(id),
  "port_3" FOREIGN KEY REFERENCES ports(id),
  "port_4" FOREIGN KEY REFERENCES ports(id)
);
