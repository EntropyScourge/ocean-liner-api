CREATE TABLE "ships" (
  "id" serial,
  "name" varchar(50),
  "launch_date" timestamp,
  "maiden_voyage" timestamp,
  "keel_laid" timestamp,
  "length_m" float,
  "beam_m" float,
  "draught_m" float,
  "gross_reg_tge" int,
  "gross_tge" int,
  "net_tge" int,
  "deadwgt_tge" int,
  "line_id" int,
  "yard_id" int,
  "captain_id" int,
  "survives" bool,
  "status" varchar(10),
  "sister_ships" int,
  "running_mates" int
);

CREATE TABLE "lines" (
  "id" serial,
  "official_name" varchar(50),
  "name" varchar(50)
);

CREATE TABLE "yards" (
  "id" serial,
  "name" varchar(50),
  "location" varchar(50),
  "date_founded" timestamp,
  "date_closed" timestamp,
  "is_in_business" bool
);

CREATE TABLE "captains" (
  "id" serial,
  "name" varchar(50),
  "dob" timestamp,
  "dod" timestamp
);

ALTER TABLE "lines" ADD FOREIGN KEY ("id") REFERENCES "ships" ("line_id");

ALTER TABLE "ships" ADD FOREIGN KEY ("yard_id") REFERENCES "yards" ("id");

ALTER TABLE "ships" ADD FOREIGN KEY ("captain_id") REFERENCES "captains" ("id");
