CREATE DATABASE IF NOT EXISTS um_db;

USE um_db;

CREATE TABLE IF NOT EXISTS Role (
                                    RoleID INT AUTO_INCREMENT PRIMARY KEY,
                                    RoleName VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS User (
                                    UserID INT AUTO_INCREMENT PRIMARY KEY,
                                    Username VARCHAR(50) NOT NULL UNIQUE,
                                    Email VARCHAR(100) NOT NULL UNIQUE,
                                    Password VARCHAR(255) NOT NULL,
                                    RoleID INT,
                                    FOREIGN KEY (RoleID) REFERENCES Role(RoleID)
);


CREATE TABLE IF NOT EXISTS Interview (
                                         InterviewID INT AUTO_INCREMENT PRIMARY KEY,
                                         CandidateID INT,
                                         StartDate DATETIME NOT NULL,
                                         EndDate DATETIME NOT NULL,
                                         InterviewType VARCHAR(50) NOT NULL,
                                         UNIQUE (InterviewID, StartDate)
);

CREATE TABLE IF NOT EXISTS Interview_User (
                                              Interview_UserID INT AUTO_INCREMENT PRIMARY KEY,
                                              InterviewID INT NOT NULL,
                                              UserID INT,
                                              FOREIGN KEY (InterviewID) REFERENCES Interview(InterviewID),
                                              FOREIGN KEY (UserID) REFERENCES User(UserID),
                                              UNIQUE (InterviewID, UserID)
);

SELECT * FROM um_db.user;
DROP DATABASE IF EXISTS um_db;
DROP SCHEMA um_db;