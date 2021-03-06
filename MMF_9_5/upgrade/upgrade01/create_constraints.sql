-- PK

ALTER TABLE Track ADD CONSTRAINT PK_Track PRIMARY KEY (ID)
/
ALTER TABLE Type ADD CONSTRAINT PK_Type PRIMARY KEY (ID)
/
ALTER TABLE Comments ADD CONSTRAINT PK_Comments PRIMARY KEY (ID)
/
ALTER TABLE Album ADD CONSTRAINT PK_Album PRIMARY KEY (ID)
/
ALTER TABLE Track_Album ADD CONSTRAINT PK_Track_Album PRIMARY KEY (Track_ID,Album_ID)
/
ALTER TABLE Playlist ADD CONSTRAINT PK_Playlist PRIMARY KEY (ID)
/
ALTER TABLE Track_Playlist ADD CONSTRAINT PK_Track_Playlist PRIMARY KEY (Playlist_ID,Track_ID)
/
ALTER TABLE Album_Playlist ADD CONSTRAINT PK_Album_Playlist PRIMARY KEY (Playlist_ID,Album_ID)
/
ALTER TABLE Person ADD CONSTRAINT PK_Person PRIMARY KEY (ID)
/
ALTER TABLE Likes_Track ADD CONSTRAINT PK_Likes_Track PRIMARY KEY (ID_Person,ID_Track)
/
ALTER TABLE Likes_Album ADD CONSTRAINT PK_Likes_Album PRIMARY KEY (ID_Person,ID_Album)
/
ALTER TABLE Subscription ADD CONSTRAINT PK_Subscription PRIMARY KEY (ID_Persom,ID_Follow)
/
ALTER TABLE Type_Preferences ADD CONSTRAINT PK_Type_Preferences PRIMARY KEY (ID_Person,ID_Type)
/
ALTER TABLE History ADD CONSTRAINT PK_History PRIMARY KEY (ID_Track,ID_Person,ID)
/

--FK

ALTER TABLE Track ADD CONSTRAINT Track_Type_ID_FK FOREIGN KEY (Type_ID) REFERENCES Type (ID) ON DELETE SET NULL
/
ALTER TABLE Album ADD CONSTRAINT Album_Type_ID_FK FOREIGN KEY (Type_ID) REFERENCES Type (ID) ON DELETE SET NULL
/
ALTER TABLE Track_Album ADD CONSTRAINT Track_To_Album FOREIGN KEY (Track_ID) REFERENCES Track (ID) ON DELETE CASCADE
/
ALTER TABLE Track_Album ADD CONSTRAINT Album_To_Track FOREIGN KEY (Album_ID) REFERENCES Album (ID) ON DELETE CASCADE
/
ALTER TABLE Track_Playlist ADD CONSTRAINT Playlist_To_Track FOREIGN KEY (Playlist_ID) REFERENCES Playlist (ID) ON DELETE CASCADE
/
ALTER TABLE Track_Playlist ADD CONSTRAINT Track_To_Playlist FOREIGN KEY (Track_ID) REFERENCES Track (ID) ON DELETE CASCADE
/
ALTER TABLE Album_Playlist ADD CONSTRAINT Playlist_To_Album FOREIGN KEY (Playlist_ID) REFERENCES Playlist (ID) ON DELETE CASCADE
/
ALTER TABLE Album_Playlist ADD CONSTRAINT Album_To_Playlist FOREIGN KEY (Album_ID) REFERENCES Album (ID) ON DELETE CASCADE
/
ALTER TABLE Likes_Track ADD CONSTRAINT Likes_Person_PFK FOREIGN KEY (ID_Person) REFERENCES Person (ID) ON DELETE CASCADE
/
ALTER TABLE Likes_Track ADD CONSTRAINT Likes_Track_PFK FOREIGN KEY (ID_Track) REFERENCES Track (ID) ON DELETE CASCADE
/
ALTER TABLE Likes_Album ADD CONSTRAINT Likes_Persone_PFK FOREIGN KEY (ID_Person) REFERENCES Person (ID) ON DELETE CASCADE
/
ALTER TABLE Likes_Album ADD CONSTRAINT Likes_Album_PFK FOREIGN KEY (ID_Album) REFERENCES Album (ID) ON DELETE CASCADE
/
ALTER TABLE Album ADD CONSTRAINT Album_Persone_FK FOREIGN KEY (Id_Owner) REFERENCES Person (ID) ON DELETE SET NULL
/
ALTER TABLE Track ADD CONSTRAINT Track_Persone_FK FOREIGN KEY (ID_Owner) REFERENCES Person (ID) ON DELETE SET NULL
/
ALTER TABLE Subscription ADD CONSTRAINT Subscriptions_Persone_PFK FOREIGN KEY (ID_Persom) REFERENCES Person (ID) ON DELETE CASCADE
/
ALTER TABLE Subscription ADD CONSTRAINT Subcriptions_Follow_PFK FOREIGN KEY (ID_Follow) REFERENCES Person (ID) ON DELETE CASCADE
/
ALTER TABLE Type_Preferences ADD CONSTRAINT Preferences_Persone_PFK FOREIGN KEY (ID_Person) REFERENCES Person (ID) ON DELETE CASCADE
/
ALTER TABLE Type_Preferences ADD CONSTRAINT Preferences_Type_PFK FOREIGN KEY (ID_Type) REFERENCES Type (ID) ON DELETE CASCADE
/
ALTER TABLE History ADD CONSTRAINT History_Track_PFK FOREIGN KEY (ID_Track) REFERENCES Track (ID) ON DELETE CASCADE
/
ALTER TABLE History ADD CONSTRAINT History_Person_PFK FOREIGN KEY (ID_Person) REFERENCES Person (ID) ON DELETE CASCADE
/
ALTER TABLE Playlist ADD CONSTRAINT FK_ID_Persone FOREIGN KEY (ID_Persone) REFERENCES Person (ID)  ON DELETE SET NULL
/
ALTER TABLE Comments ADD CONSTRAINT FK_Persone_Commnets FOREIGN KEY (User_ID) REFERENCES Person (ID) ON DELETE CASCADE
/
ALTER TABLE Comments ADD CONSTRAINT FK_Track_ID FOREIGN KEY (Item_ID) REFERENCES Track (ID) ON DELETE CASCADE
/
