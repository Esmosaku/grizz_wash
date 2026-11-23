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
    roomNumber integer ,
    brokenWasher integer ,
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