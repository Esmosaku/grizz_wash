PRAGMA foreign_keys = ON;

create table machine (
    hall text,
    roomNumber integer,
    washer integer,
    dryer integer,
    primary key (hall, roomNumber)
);
create table broken (
    hall text,
    roomNumber integer,
    brokenWasher integer,
    brokenDryer integer,
    foreign key (hall, roomNumber) references machine(hall, roomNumber) 
    on update CASCADE 
    on DELETE CASCADE
);
create table usage(
    hall text ,
    roomNumber integer,
    washerUsed integer,
    dryerUsed integer,
    foreign key (hall, roomNumber) references machine(hall, roomNumber) 
    on update CASCADE 
    on DELETE CASCADE
);

INSERT INTO machine VALUES ("Oppenheimer", 014, 2, 2);
INSERT INTO machine VALUES ("Oppenheimer", 213, 1, 1);
INSERT INTO machine VALUES ("Oppenheimer", 311, 1, 1);
INSERT INTO machine VALUES ("Anderson & Langdon", 002, 2, 2);
INSERT INTO machine VALUES ("Anderson & Langdon", 107, 3, 3);
INSERT INTO machine VALUES ("Anderson & Langdon", 323, 1, 1);
INSERT INTO machine VALUES ("Harrington", 011, 1, 1);
INSERT INTO machine VALUES("Harrington", 311, 1, 1);
INSERT INTO machine VALUES("Harrington", 211, 1, 1);
INSERT INTO machine VALUES("Schiff", 021, 3, 3);
INSERT INTO machine VALUES("Schiff", 221, 3, 3);
INSERT INTO machine VALUES("Smith", 103, 3, 3);
INSERT INTO machine VALUES("Smith", 127, 3, 3);
INSERT INTO machine VALUES("Trimble", 008, 2, 2);
INSERT INTO machine VALUES("Trimble", 108, 2, 2);
INSERT INTO machine VALUES("Trimble", 122, 2, 2);
INSERT INTO machine VALUES("Trimble", 208, 2, 2);
INSERT INTO machine VALUES("Trimble", 214, 2, 2);
INSERT INTO machine VALUES("Trimble", 316, 1, 1);
INSERT INTO machine VALUES("Trimble", 308, 2, 2);
INSERT INTO machine VALUES("Todd & Phibs", 023, 2, 2);
INSERT INTO machine VALUES("Todd & Phibs", 117, 2, 2);
INSERT INTO machine VALUES("Todd & Phibs", 217, 2, 2);
INSERT INTO machine VALUES("Todd & Phibs", 317, 2, 2);
INSERT INTO machine VALUES("Regester", 016, 2, 2);
INSERT INTO machine VALUES("Regester", 119, 4, 4);
INSERT INTO machine VALUES("Seward", 115, 3, 3);
INSERT INTO machine VALUES("Seward", 215, 3, 3);
INSERT INTO machine VALUES("Seward", 315, 3, 3);
INSERT INTO machine VALUES("Seward", 415, 3, 3);