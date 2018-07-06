USE SocialNetwork

IF OBJECT_ID ('DialoguesInfo', 'View') IS NOT NULL DROP VIEW dbo.DialoguesInfo;
Go

IF OBJECT_ID ('PostInfo', 'View') IS NOT NULL DROP VIEW dbo.PostInfo;
Go

IF OBJECT_ID ('OrganizationInfo', 'View') IS NOT NULL DROP VIEW dbo.OrganizationInfo;
Go

if object_id('NewUserCountPlan', 'Table') is not null drop Table NewUserCountPlan
Go

IF OBJECT_ID ('SchoolInfo', 'View') IS NOT NULL DROP VIEW dbo.SchoolInfo;
Go

if object_id('UserStudy', 'Table') is not null drop Table UserStudy
Go

if object_id('School', 'Table') is not null drop Table School
Go

if object_id('UserWork', 'Table') is not null drop Table UserWork
Go

if object_id('Organization', 'Table') is not null drop Table Organization
Go

if object_id('CommentsFile', 'Table') is not null drop Table CommentsFile
Go

if object_id('Comments', 'Table') is not null drop Table Comments
Go

if object_id('Share', 'Table') is not null drop Table Share
Go

if object_id('Likes', 'Table') is not null drop Table Likes
Go

if object_id('PostFile', 'Table') is not null drop Table PostFile
Go

if object_id('Post', 'Table') is not null drop Table Post
Go

if object_id('MessageFiles', 'Table') is not null drop Table MessageFiles
Go

if object_id('UserMessages', 'Table') is not null drop Table UserMessages
Go

if object_id('UserInDialogue', 'Table') is not null drop Table UserInDialogue
Go

if object_id('Dialogues', 'Table') is not null drop Table Dialogues
Go

if object_id('UserFile', 'Table') is not null drop Table UserFile
Go

if object_id('FileTypes', 'Table') is not null drop Table FileTypes
Go

if object_id('FileCategory', 'Table') is not null drop Table FileCategory
Go

if object_id('SiteUser', 'Table') is not null drop Table SiteUser
Go

if object_id('NewUserCountPlan', 'Table') is not null drop Table NewUserCountPlan
Go

if object_id('PlanYear', 'Table') is not null drop Table PlanYear
Go