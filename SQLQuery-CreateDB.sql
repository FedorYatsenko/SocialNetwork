/*
--if we need to create new Database:

USE master;
Go

IF DB_ID('SocialNetwork') IS NOT NULL DROP DATABASE SocialNetwork;

CREATE DATABASE SocialNetwork
ON 
( NAME = SocialNetwork_dat,
    FILENAME = 'F:\DB\SocialNetworkdat.mdf',
    SIZE = 10,
    MAXSIZE = 50,
    FILEGROWTH = 5 )
LOG ON
( NAME = SocialNetwork_log,
    FILENAME = 'F:\DB\SocialNetworklog.ldf',
    SIZE = 5MB,
    MAXSIZE = 25MB,
    FILEGROWTH = 5MB ) ;
GO
*/

USE SocialNetwork;
GO

CREATE TABLE PlanYear
(
  yearvalue          INT          NOT NULL,
  CONSTRAINT PK_PlanYear PRIMARY KEY(yearvalue)
);

CREATE TABLE SiteUser
(
  userid          INT          NOT NULL IDENTITY(1,1),
  lastname        NVARCHAR(20) NOT NULL,
  firstname       NVARCHAR(10) NOT NULL,
  gender		  BIT		   NOT NULL,
  birthdate       DATETIME     NOT NULL,
  regdate         DATETIME     NOT NULL,
  yearvalue		  INT		   NOT NULL,
  address         NVARCHAR(60) NULL,
  city            NVARCHAR(15) NOT NULL,
  region          NVARCHAR(60) NULL,
  country         NVARCHAR(30) NOT NULL,
  --phone           NVARCHAR(24) NOT NULL,
  --email           NVARCHAR(40) NOT NULL,
  CONSTRAINT PK_SiteUser PRIMARY KEY(userid),
  CONSTRAINT CHK_birthdate CHECK(birthdate <= CURRENT_TIMESTAMP),
  CONSTRAINT CHK_regdate CHECK(regdate <= CURRENT_TIMESTAMP),
  CONSTRAINT FK_SiteUser_PlanYear FOREIGN KEY(yearvalue)
    REFERENCES PlanYear(yearvalue)
);

CREATE TABLE FileCategory
(
  categoryid      INT			NOT NULL IDENTITY(1,1),
  nickname        NVARCHAR(20)	NOT NULL,
  CONSTRAINT PK_FileCategory PRIMARY KEY(categoryid)
);

CREATE TABLE FileTypes
(
  typestring      NVARCHAR(5)   NOT NULL,
  categoryid	  INT			NOT NULL,
  CONSTRAINT PK_FileTypes PRIMARY KEY(typestring),
  CONSTRAINT FK_FileTypes_FileCategory FOREIGN KEY(categoryid)
    REFERENCES FileCategory(categoryid)
);

CREATE TABLE UserFile
(
  fileid          INT          NOT NULL IDENTITY(1,1),
  categoryid	  INT		   NOT NULL,
  userid		  INT		   NOT NULL,
  --filepath        NVARCHAR(5)  NOT NULL,
  size			  INT		   NOT NULL,
  CONSTRAINT PK_UserFile PRIMARY KEY(fileid),
  CONSTRAINT FK_UserFile_FileCategory FOREIGN KEY(categoryid)
    REFERENCES FileCategory(categoryid),
  CONSTRAINT FK_UserFile_SiteUser FOREIGN KEY(userid)
    REFERENCES SiteUser(userid)
);

CREATE TABLE Dialogues
(
  dialogueid      INT          NOT NULL IDENTITY(1,1),
  --nickname        NVARCHAR(20) NOT NULL,
  createdate      DATETIME     NOT NULL,
  CONSTRAINT PK_Dialogues PRIMARY KEY(dialogueid)
);

CREATE TABLE UserInDialogue
(
  dialogueid	INT          NOT NULL,
  userid		INT          NOT NULL,
  CONSTRAINT PK_OrderDetails PRIMARY KEY(dialogueid, userid),
  CONSTRAINT FK_UserInDialogue_Dialogues FOREIGN KEY(dialogueid)
    REFERENCES Dialogues(dialogueid),
  CONSTRAINT FK_UserInDialogue_SiteUser FOREIGN KEY(userid)
    REFERENCES SiteUser(userid)
);

CREATE TABLE UserMessages
(
  messageid       INT			NOT NULL IDENTITY(1,1),
  dialogueid	  INT			NOT NULL,
  userid		  INT			NOT NULL,
  --messagetext     nvarchar(max)	NOT NULL,
  publishtime	  DATETIME		NOT NULL,
  CONSTRAINT PK_UserMessages PRIMARY KEY(messageid),
  CONSTRAINT FK_UserMessages_Dialogues FOREIGN KEY(dialogueid)
    REFERENCES Dialogues(dialogueid),
  CONSTRAINT FK_UserMessages_SiteUser FOREIGN KEY(userid)
    REFERENCES SiteUser(userid)
);

CREATE TABLE MessageFiles
(
  messageid		INT          NOT NULL,
  fileid		INT          NOT NULL,
  CONSTRAINT PK_MessageFiles PRIMARY KEY(messageid, fileid),
  CONSTRAINT FK_MessageFiles_UserMessages FOREIGN KEY(messageid)
    REFERENCES UserMessages(messageid),
  CONSTRAINT FK_MessageFiles_UserFile FOREIGN KEY(fileid)
    REFERENCES UserFile(fileid)
);

CREATE TABLE Post
(
  postid			INT				NOT NULL IDENTITY(1,1),
  userid			INT				NOT NULL,
  --title				NVARCHAR(5)		NOT NULL,
  --posttext			nvarchar(max)	NOT NULL,
  publishtime		DATETIME		NOT NULL,
  CONSTRAINT PK_Post PRIMARY KEY(postid),
  CONSTRAINT FK_Post_SiteUser FOREIGN KEY(userid)
    REFERENCES SiteUser(userid)
);

CREATE TABLE PostFile
(
  postid		INT          NOT NULL,
  fileid		INT          NOT NULL,
  CONSTRAINT PK_PostFile PRIMARY KEY(postid, fileid),
  CONSTRAINT FK_PostFile_Post FOREIGN KEY(postid)
    REFERENCES Post(postid),
  CONSTRAINT FK_PostFile_UserFile FOREIGN KEY(fileid)
    REFERENCES UserFile(fileid)
);

CREATE TABLE Likes
(
  postid		INT          NOT NULL,
  userid		INT          NOT NULL,
  CONSTRAINT PK_Likes PRIMARY KEY(postid, userid),
  CONSTRAINT FK_Likes_Post FOREIGN KEY(postid)
    REFERENCES Post(postid),
  CONSTRAINT FK_Likes_SiteUser FOREIGN KEY(userid)
    REFERENCES SiteUser(userid)
);

CREATE TABLE Share
(
  postid		INT				NOT NULL,
  userid		INT				NOT NULL,
  --sharetext		nvarchar(max)	NULL,
  sharetime		DATETIME		NOT NULL,
  CONSTRAINT PK_Share PRIMARY KEY(postid, userid),
  CONSTRAINT FK_Share_Post FOREIGN KEY(postid)
    REFERENCES Post(postid),
  CONSTRAINT FK_Share_SiteUser FOREIGN KEY(userid)
    REFERENCES SiteUser(userid)
);

CREATE TABLE Comments
(
  postid		INT				NOT NULL,
  userid		INT				NOT NULL,
  commentnumber	INT				NOT NULL,
  --commenttext	nvarchar(max)	NOT NULL,
  publishtime	DATETIME		NOT NULL,
  CONSTRAINT PK_Comments PRIMARY KEY(postid, userid, commentnumber),
  CONSTRAINT FK_Comments_Post FOREIGN KEY(postid)
    REFERENCES Post(postid),
  CONSTRAINT FK_Comments_SiteUser FOREIGN KEY(userid)
    REFERENCES SiteUser(userid)
);

CREATE TABLE CommentsFile
(
  postid		INT          NOT NULL,
  userid		INT          NOT NULL,
  commentnumber INT          NOT NULL,
  fileid		INT          NOT NULL,
  CONSTRAINT PK_CommentsFile PRIMARY KEY(postid, userid, fileid),
  CONSTRAINT FK_CommentsFile_Comments FOREIGN KEY(postid, userid, commentnumber)
    REFERENCES Comments(postid, userid, commentnumber),
  CONSTRAINT FK_CommentsFile_UserFile FOREIGN KEY(fileid)
    REFERENCES UserFile(fileid)
);

CREATE TABLE Organization
(
  organizationid	INT				NOT NULL IDENTITY(1,1),
  fullname			NVARCHAR(max)	NOT NULL,
  --regdate			DATETIME		NOT NULL,
  address			NVARCHAR(max)	NOT NULL,
  city				NVARCHAR(15)	NOT NULL,
  region			NVARCHAR(15)	NULL,
  country			NVARCHAR(15)	NOT NULL,
  --phone				NVARCHAR(24)	NULL,
  --email				NVARCHAR(40)	NULL,
  CONSTRAINT PK_Organization PRIMARY KEY(organizationid),
  --CONSTRAINT CHK_Organization_regdate CHECK(regdate <= CURRENT_TIMESTAMP)
);

CREATE TABLE UserWork
(
  organizationid	INT				NOT NULL,
  userid			INT				NOT NULL,
  position			NVARCHAR(60)	NOT NULL,
  begintime			DATETIME		NOT NULL,
  endtime			DATETIME		NULL,
  CONSTRAINT PK_UserWork PRIMARY KEY(organizationid, userid),
  CONSTRAINT FK_UserWork_Organization FOREIGN KEY(organizationid)
    REFERENCES Organization(organizationid),
  CONSTRAINT FK_UserWork_SiteUser FOREIGN KEY(userid)
    REFERENCES SiteUser(userid)
);

CREATE TABLE School
(
  organizationid	INT				NOT NULL,
  schoolType		NVARCHAR(60)	NOT NULL,
  CONSTRAINT PK_School PRIMARY KEY(organizationid),
  CONSTRAINT FK_School_Organization FOREIGN KEY(organizationid)
    REFERENCES Organization(organizationid)
);

CREATE TABLE UserStudy
(
  organizationid	INT				NOT NULL,
  userid			INT				NOT NULL,
  class				NVARCHAR(60)	NOT NULL,
  begintime			DATETIME		NOT NULL,
  endtime			DATETIME		NULL,
  CONSTRAINT PK_UserStudy PRIMARY KEY(organizationid, userid),
  CONSTRAINT FK_UserStudy_School FOREIGN KEY(organizationid)
    REFERENCES School(organizationid),
  CONSTRAINT FK_UserStudy_SiteUser FOREIGN KEY(userid)
    REFERENCES SiteUser(userid)
);
GO

CREATE TABLE NewUserCountPlan
(
  yearvalue			INT				NOT NULL,
  countuser			INT				NOT NULL,
  CONSTRAINT PK_NewUserCountPlan PRIMARY KEY(yearvalue),
  CONSTRAINT FK_NewUserCountPlan_PlanYear FOREIGN KEY(yearvalue)
    REFERENCES PlanYear(yearvalue)
);
GO

--------------------------- VIEW -------------------------------------

CREATE VIEW PostInfo
  WITH SCHEMABINDING
AS
SELECT p.postid AS postid, p.userid AS userid, p.publishtime AS publishtime,
  COUNT(DISTINCT Pf.fileid) AS filecount,
  COUNT(DISTINCT L.userid) AS likecount,
  COUNT(DISTINCT S.userid) AS sharecount,
  COUNT(DISTINCT C.commentnumber) AS commentcount
FROM dbo.Post AS p
  LEFT JOIN dbo.PostFile AS PF
    ON p.postid = PF.postid
  LEFT JOIN dbo.Likes AS L
    ON p.postid = L.postid
  LEFT JOIN dbo.Share AS S
    ON p.postid = S.postid
  LEFT JOIN dbo.Comments AS C
    ON p.postid = C.postid
GROUP BY p.postid, p.userid, p.publishtime;
GO

CREATE VIEW OrganizationInfo
  WITH SCHEMABINDING
AS
SELECT o.organizationid AS organizationid, o.fullname AS fullname, o.address AS address, o.city AS city, o.region AS region, o.country AS country,
  COUNT(DISTINCT UW.userid) AS workerscount
FROM dbo.Organization AS o
  LEFT JOIN dbo.UserWork AS UW
     ON o.organizationid = UW.organizationid
GROUP BY o.organizationid, o.fullname, o.address, o.city, o.region, o.country;
GO

CREATE VIEW SchoolInfo
  WITH SCHEMABINDING
AS
SELECT s.organizationid AS organizationid, o.fullname AS fullname, o.address AS address, o.city AS city, o.region AS region, o.country AS country,
  s.schoolType AS schooltype,
  COUNT(DISTINCT US.userid) AS studentcount
FROM dbo.School AS s
  INNER JOIN dbo.Organization AS o
    ON s.organizationid = o.organizationid
  LEFT JOIN dbo.UserStudy AS US
     ON s.organizationid = US.organizationid
GROUP BY s.organizationid, o.fullname, o.address, o.city, o.region, o.country, s.schoolType;
GO

CREATE VIEW DialoguesInfo
  WITH SCHEMABINDING
AS
SELECT d.dialogueid AS dialogueid, d.createdate AS createdate,
  COUNT(DISTINCT UD.userid) AS usercount,
  COUNT(DISTINCT UM.messageid) AS messagecount
FROM dbo.Dialogues AS d
  INNER JOIN dbo.UserInDialogue AS UD
    ON d.dialogueid = UD.dialogueid
  LEFT JOIN dbo.UserMessages AS UM
     ON d.dialogueid = UM.dialogueid
GROUP BY d.dialogueid, d.createdate;
GO