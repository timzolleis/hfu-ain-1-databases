-- Create cities table
CREATE TABLE Cities
(
    ID        int          NOT NULL AUTO_INCREMENT,
    Name      varchar(255) NOT NULL,
    Land      varchar(255) NOT NULL,
    Einwohner int          NOT NULL,
    Flaeche   int          NOT NULL,
    PRIMARY KEY (ID)
);

-- Insert some data
INSERT INTO Cities (Name, Land, Einwohner, Flaeche)
VALUES ('Augsburg', 'Deutschland', 300000, 146),
       ('Muenchen', 'Deutschland', 300000, 300),
       ('London', 'England', 2000000, 200),
       ('NY City', 'USA', 2300000, 250);

-- Add Paris in USA and Paris in France
INSERT INTO Cities (Name, Land, Einwohner, Flaeche)
VALUES ('Paris', 'Frankreich', 2102650, 105),
       ('Paris', 'USA', 24007, 96);

-- Adding two identical record will work since ID auto increments


-- Now we create a table called "Attractions" which will reference a name, description and city
CREATE TABLE Attractions
(
    ID           int          NOT NULL AUTO_INCREMENT,
    Name         varchar(255) NOT NULL,
    Beschreibung varchar(50)  NOT NULL,
    Stadt        int          NOT NULL,
    PRIMARY KEY (ID)
);


-- Insert some data
INSERT INTO Attractions (Name, Beschreibung, Stadt)
VALUES ('Rennrad fahren', 'Fahre ein Rennrad', 2),
       ('Eiffelturm', 'Der Turm', 5)

-- In this case, the "CITY" Column references the id column of the cities table
