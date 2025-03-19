/c ocean_liner_testing

INSERT INTO ships
(name, launch_date, maiden_voyage, keel_laid, length_m, beam_m, draught_m, gross_reg_tge, powerplant, propulsion, line_id, yard_id, captain_ids, survives, status,
running_mates, port_registry, routes)
VALUES (
"SS Great Britain", "19-07-1843", "26-07-1845", "01-07-1839", 98, 15.39, 4.88, 3443, ["single-expansion"], ["propeller"], 1, 1, [1, 2], true, "Museum ship", [2], [1], [1, 3]),
("SS Great Western", "19-07-1837", "08-04-1838", "26-06-1836", 71.6, 17.59, NULL, 3443, ["single-expansion"], ["side-paddles"], 1, 1, [1], false, "Scrapped", [1], [1], [2])
;

INSERT INTO lines
(official_name, common_name, home_port)
VALUES (
    "Great Western Steamship Company", "Great Western", [1]
);


INSERT INTO captains
(name, dob, dod)
VALUES 
('James Hosken', '1798-12-06', '1885-01-02'),
('John Gray', '1819-12-12', '1872-11-25');


INSERT INTO ports
(name, country, continent)
VALUES
('Bristol', 'UK', 'Europe'),
('New York', 'USA', 'North America'),
('Liverpool', 'UK', 'Europe')
('Melbourne', 'Australia', 'Oceania');


INSERT INTO routes
(port_1, port_2)
VALUES
(3, 2),
(1, 2),
(4, 3)