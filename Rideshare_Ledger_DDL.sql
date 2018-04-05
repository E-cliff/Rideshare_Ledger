CREATE TABLE Driver (
driverID int IDENTITY(1,1) PRIMARY KEY,
driverFirstName varchar(50) NOT NULL,
driverLastName varchar(50) NOT NULL,
entryDate Date NOT NULL
)

CREATE TABLE Vehicle (
vehicleID int IDENTITY(1,1) PRIMARY KEY,
driverID int FOREIGN KEY REFERENCES Driver(driverID),
vehicleMake varchar(100) NOT NULL,
vehicleModel varchar(100) NOT NULL,
vehicleYear varchar(4) NOT NULL,
vehicleDoors int NOT NULL,
vehicleSeats int NOT NULL
)

CREATE TABLE DriveSession (
sessionID int IDENTITY(1,1) PRIMARY KEY,
driverID int FOREIGN KEY REFERENCES Driver(driverID),
vehicleID int FOREIGN KEY REFERENCES Vehicle(vehicleID),
city varchar(100) NOT NULL,
startDateTime DateTime NOT NULL,
endDateTime DateTime NOT NULL,
avgMPG numeric,
notes text
)

CREATE TABLE Ride (
rideID int IDENTITY(1,1) PRIMARY KEY,
sessionID int FOREIGN KEY REFERENCES DriveSession(sessionID),
startDateTime DateTime NOT NULL,
endDateTime DateTime NOT NULL,
startAddress varchar(200) NOT NULL,
endAddress varchar(200) NOT NULL,
expense numeric,
income numeric,
liveMiles numeric,
deadMiles numeric,
avgSpeed numeric,
judgedPassengerGender varchar(5),
judgedPassengerAge varchar(5),
judgedPassengerSobriety varchar(5),
numberOfPassengers int,
notes text
)