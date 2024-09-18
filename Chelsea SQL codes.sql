DROP DATABASE IF EXISTS ChelseaFC;
CREATE DATABASE ChelseaFC;
USE ChelseaFC;

CREATE TABLE coaches(
	CoachID INT PRIMARY KEY,
    Name VARCHAR (50),
	Nationality VARCHAR (50),
    DOB DATE,
    ContractStart DATE,
    ContractEnd DATE,
    Salary DECIMAL (10,2),
    Role VARCHAR (50)
);

CREATE TABLE team(
	TeamID INT PRIMARY KEY,
	TeamName VARCHAR (50),
    CoachID INT,
    FOREIGN KEY fk_team_coaches (CoachID)
    REFERENCES coaches (CoachID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE players(
	PlayerID INT PRIMARY KEY,
	Name VARCHAR (50),
    Nationality VARCHAR (50),
    DOB DATE,
    ContractStart DATE,
    ContractEnd DATE,
    JerseyNumber INT,
    Position VARCHAR (20),
    FavoriteFoot VARCHAR (10),
    Salary DECIMAL (10,2)
);

CREATE TABLE jerseysales(
	OrderID INT PRIMARY KEY,
    PlayerID INT,
    Quantity INT,
    Price DECIMAL (4,2),
    FOREIGN KEY fk_jerseysales_players (PlayerID)
    REFERENCES players (PlayerID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE matches(
	MatchID INT PRIMARY KEY,
    TeamID INT,
    Competition VARCHAR (50),
    Time TIME,
    Date DATE,
    Location VARCHAR (50),
    Oppopnents VARCHAR (50),
    NumberOfPlayersAvailable INT,
    Result VARCHAR (10),
    PriceMoney DECIMAL (12,2),
    FOREIGN KEY fk_matches_team (TeamID)
    REFERENCES team (TeamID)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE stadium (
	StadiumID INT PRIMARY KEY,
    StadiumName VARCHAR (50),
    TeamID INT,
    Capacity INT,
    PriceOfTicketSold DECIMAL (3,2),
    AmountOfTicketSold INT,
    PriceOfVipTicketSold DECIMAL (3,2),
    AmountOfVipTicketSold INT,
    FOREIGN KEY fk_stadium_team (TeamID)
    REFERENCES team (TeamID)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE training (
	SessionID INT PRIMARY KEY,
    CoachID INT,
    TeamID INT,
    Location VARCHAR (50),
    Time TIME,
    Date DATE,
    FOREIGN KEY fk_training_coaches (CoachID)
    REFERENCES coaches (CoachID)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
    FOREIGN KEY fk_training_team (TeamID)
    REFERENCES team (TeamID)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE transfer_market(
	TransferID INT PRIMARY KEY,
    PlayerID INT,
    PlayerName VARCHAR (50),
    Nationality VARCHAR (50),
    DOB DATE,
    ContractStart DATE,
    ContractEnd DATE,
    Cost DECIMAL (10,2),
    PlayerIn INT,
    PlayerOut INT,
    JerseyNumber INT,
    Position INT,
    FavoriteFoot VARCHAR (10),
    Salary DECIMAL (10,2),
    FOREIGN KEY fk_transfer_market_players (PlayerID)
    REFERENCES players (PlayerID)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE staff(
	StaffID INT PRIMARY KEY,
    Name VARCHAR (50),
	Nationality VARCHAR (50),
    DOB DATE,
    ContractStart DATE,
    ContractEnd DATE,
    Salary DECIMAL (10,2),
    Role VARCHAR (50)
);