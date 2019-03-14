\*This file creates a starfleet database that keeps track,
of crew species rank and starships.*\


create database starfleet;
use starfleet;

create table species (speciesname varchar (20) not null,
primary key (speciesname));

Create table rank (rankcode varchar (4) not null,
rankname varchar (35) not null,
rankcategory varchar (35) not null,
nextseniorrank varchar (4) not null,
primary key (rankcode));

Create table vessel (vesselcallsign varchar (15) not null,
vesselname varchar (35) not null,
vesselclass varchar (35) not null,
primary key (vesselcallsign));

create table crewmember (crewid varchar (10) not null,
crewname varchar (40) not null,
rankcode varchar (4) not null,
speciesname varchar (20) not null,
vesselcallsign varchar (15) not null,
primary key (crewid),
foreign key (rankcode) references rank (rankcode),
foreign key (speciesname) references species (speciesname),
foreign key (vesselcallsign) references vessel (vesselcallsign));

load data infile "C:/Starfleet/vessel.csv"
into table vessel fields terminated by ','
lines terminated by '\n';

load data infile "C:/Starfleet/rank.csv"
into table rank fields terminated by ','
lines terminated by '\n';

load data infile "C:/Starfleet/rank.csv"
into table rank fields terminated by ','
lines terminated by '\n';

load data infile "C:/Starfleet/species.csv"
into table species fields terminated by ','
lines terminated by '\n';

show columns from rank;

