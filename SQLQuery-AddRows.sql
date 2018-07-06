USE SocialNetwork;
GO

INSERT INTO PlanYear( yearvalue)
  VALUES(2010);
INSERT INTO PlanYear( yearvalue)
  VALUES(2011);
INSERT INTO PlanYear( yearvalue)
  VALUES(2012);
INSERT INTO PlanYear( yearvalue)
  VALUES(2013);
INSERT INTO PlanYear( yearvalue)
  VALUES(2014);
INSERT INTO PlanYear( yearvalue)
  VALUES(2015);
INSERT INTO PlanYear( yearvalue)
  VALUES(2016);
INSERT INTO PlanYear( yearvalue)
  VALUES(2017);

SET IDENTITY_INSERT SiteUser ON;
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, address, city, country)
  VALUES(1, N'Громяко', N'Віталій', 1,'19911012 00:00:00.000', '20170512 10:30:50.873', 2017, N'вул. Солянова, 5', N'Вінниця', N'Україна');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, address, city, country)
  VALUES(2, N'Сатурнов', N'Aндрій', 1, '19990910 00:00:00.000', '20100721 13:48:19.006', 2010, N'Київське шосе, 2Г', N'Харків', N'Україна');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, address, city, country)
  VALUES(3, N'Голубчик', N'Денис', 1, '20030725 00:00:00.000', '20161105 16:48:19.006', 2016, N'Проспект перемоги, 15', N'Київ', N'Україна');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, address, city, region, country)
  VALUES(4, N'Боднар', N'Дарина', 0, '19971212 00:00:00.000', '20140213 17:06:19.006', 2014, N'Maple St, 1', N'Ванкувер', N'Британська Колумбія', N'Канада');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, address, city, country)
  VALUES(5, N'Дудкін', N'Дмитро', 1, '20010426 00:00:00.000', '20160613 10:22:49.006', 2016, N'ул. Шухова, 9', N'Москва', N'Російська Федерація');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, address, city, country)
  VALUES(6, N'Шевчик', N'Ірина', 0, '19990910 00:00:00.000', '20100721 13:48:19.006', 2010, N'вул. Глушкова, 7', N'Київ', N'Україна');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, address, city,region, country)
  VALUES(7, N'Боднар', N'Іван', 1, '19680524 00:00:00.000', '20161231 19:32:05.006', 2016, N'Maple St, 1', N'Ванкувер', N'Британська Колумбія', N'Канада');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, address, city, country)
  VALUES(8, N'Пергаменщик', N'Микита', 0, '19890103 00:00:00.000', '20130212 18:48:19.006', 2013, N'вул. Нова, 4', N'Львів', N'Україна');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, address, city,region, country)
  VALUES(9, N'Боднар', N'Марія', 0, '19700415 00:00:00.000', '20161231 20:12:05.006', 2016, N'Kingston Rd, 24', N'Торонто', N'Онтаріо', N'Канада');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, city, country)
  VALUES(10, N'Варанкин', N'Дмитрий', 1, '19850212 00:00:00.000', '20160515 23:49:24.152', 2016, N'Мінськ', N'Білору́сь');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, city, country)
  VALUES(11, N'Янтарская', N'Валерия', 0, '19920829 00:00:00.000', '20160409 08:45:52.568', 2016, N'Мінськ', N'Білору́сь');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, city, country)
  VALUES(12, N'Ефанова', N'Юлия', 0, '19810514 00:00:00.000', '20170520 16:20:35.279', 2017, N'Київ', N'Україна');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, city, country)
  VALUES(13, N'Ткаченко', N'Влад', 1, '19850727 00:00:00.000', '20140726 15:53:15.957', 2014, N'Київ', N'Україна');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, city, country)
  VALUES(14, N'Криворучко', N'Саша', 1, '19980116 00:00:00.000', '20150726 10:03:37.495', 2015, N'Львів', N'Україна');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, city, country)
  VALUES(15, N'Шихов', N'Максим', 1, '19980326 00:00:00.000', '20121230 14:43:52.257', 2012, N'Одеса', N'Україна');
INSERT INTO SiteUser(userid, lastname, firstname, gender, birthdate, regdate, yearvalue, address, city, country)
  VALUES(16, N'Кулик', N'Вика', 0, '20020929 00:00:00.000', '20161105 16:54:36.940', 2016, N'Проспект перемоги, 1Г', N'Київ', N'Україна');
SET IDENTITY_INSERT SiteUser OFF;

SET IDENTITY_INSERT FileCategory ON;
INSERT INTO FileCategory( categoryid, nickname)
  VALUES(1, N'Картинки');
INSERT INTO FileCategory( categoryid, nickname)
  VALUES(2, N'Музика');
INSERT INTO FileCategory( categoryid, nickname)
  VALUES(3, N'Відео');
INSERT INTO FileCategory( categoryid, nickname)
  VALUES(4, N'Інше');
SET IDENTITY_INSERT FileCategory OFF;

SET IDENTITY_INSERT UserFile ON;
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(1, 1, 1, 121);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(2, 1, 1, 87);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(3, 1, 1, 203);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(4, 2, 1, 11254);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(5, 3, 2, 61895);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(6, 3, 2, 85666);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(7, 3, 4, 10392);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(8, 4, 1, 4245);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(9, 1, 3, 156);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(10, 1, 2, 99);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(11, 1, 7, 9457);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(12, 1, 5, 34);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(13, 1, 6, 19728);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(14, 2, 6, 12923);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(15, 1, 11, 314);
INSERT INTO UserFile( fileid, categoryid, userid, size)
  VALUES(16, 4, 11, 6553);
SET IDENTITY_INSERT UserFile OFF;

SET IDENTITY_INSERT Post ON;
INSERT INTO Post( postid, userid, publishtime)
  VALUES(1, 1, '20171209 17:57:19.254');
INSERT INTO Post( postid, userid, publishtime)
  VALUES(2, 1, '20171209 18:04:54.784');
INSERT INTO Post( postid, userid, publishtime)
  VALUES(3, 7, '20170127 11:20:54.126');
INSERT INTO Post( postid, userid, publishtime) 
  VALUES(4, 6, '20170214 15:34:05.588');
INSERT INTO Post( postid, userid, publishtime)
  VALUES(5, 2, '20150425 21:16:59.716');/*
INSERT INTO Post( postid, userid, publishtime)-- begin need change
  VALUES(6, 1, '20171209 17:57:19.254');
INSERT INTO Post( postid, userid, publishtime)
  VALUES(7, 1, '20171209 17:57:19.254');
INSERT INTO Post( postid, userid, publishtime)
  VALUES(8, 1, '20171209 17:57:19.254');
INSERT INTO Post( postid, userid, publishtime)
  VALUES(9, 1, '20171209 17:57:19.254');
INSERT INTO Post( postid, userid, publishtime) -- end need change
  VALUES(10, 1, '20171209 17:57:19.254');*/
SET IDENTITY_INSERT Post OFF;

INSERT INTO PostFile( postid, fileid)
  VALUES(1, 1);
INSERT INTO PostFile( postid, fileid)
  VALUES(2, 2);
INSERT INTO PostFile( postid, fileid)
  VALUES(2, 3);
INSERT INTO PostFile( postid, fileid)
  VALUES(4, 11);

INSERT INTO Likes( postid, userid)
  VALUES(1, 2);
INSERT INTO Likes( postid, userid)
  VALUES(1, 3);
INSERT INTO Likes( postid, userid)
  VALUES(1, 5);
INSERT INTO Likes( postid, userid)
  VALUES(1, 8);
INSERT INTO Likes( postid, userid)
  VALUES(4, 6);
INSERT INTO Likes( postid, userid)
  VALUES(4, 9);
INSERT INTO Likes( postid, userid)
  VALUES(5, 10);
INSERT INTO Likes( postid, userid)
  VALUES(2, 2);
INSERT INTO Likes( postid, userid)
  VALUES(2, 10);
INSERT INTO Likes( postid, userid)
  VALUES(3, 7);

INSERT INTO Share( postid, userid, sharetime)
  VALUES(1, 2, '20171209 18:01:43.716');
INSERT INTO Share( postid, userid, sharetime)
  VALUES(4, 9, '20170226 10:36:21.307');
INSERT INTO Share( postid, userid, sharetime)
  VALUES(5,10, '20160606 14:48:32.644');

INSERT INTO Comments( postid, userid, commentnumber, publishtime)
  VALUES(1, 3, 1, '20171209 17:59:13.429');
INSERT INTO Comments( postid, userid, commentnumber, publishtime)
  VALUES(4, 7, 1, '20170329 8:01:57.835');
INSERT INTO Comments( postid, userid, commentnumber, publishtime)
  VALUES(4, 7, 2, '20170329 8:05:34.785');
INSERT INTO Comments( postid, userid, commentnumber, publishtime)
  VALUES(4, 6, 1, '20170329 12:42:14.326');
INSERT INTO Comments( postid, userid, commentnumber, publishtime)
  VALUES(4, 7, 3, '20170330 7:19:51.152');
INSERT INTO Comments( postid, userid, commentnumber, publishtime)
  VALUES(5, 10, 1, '20160606 14:46:42.297');

INSERT INTO CommentsFile( postid, userid, commentnumber, fileid)
  VALUES(1, 3, 1, 9);

SET IDENTITY_INSERT Organization ON;
INSERT INTO Organization(organizationid, fullname, address, city, country)
  VALUES(1, N'Український фізико-математичний ліцей', N'проспект академіка Глушкова, 6', N'Київ', N'Україна');
INSERT INTO Organization(organizationid, fullname, address, city, country)
  VALUES(2, N'Київський національний університет ім. Тараса Шевченка', N' вул. Володимирська, 64/13', N'Київ', N'Україна');
INSERT INTO Organization(organizationid, fullname, address, city, country)
  VALUES(3, N'Viber Media', N'вуліца Казлова', N'Мінськ', N'Білору́сь');
INSERT INTO Organization(organizationid, fullname, address, city, country)
  VALUES(4, N'Университет Британской Колумбии', N'3333 University Way', N'Келоуна', N'Канада');
INSERT INTO Organization(organizationid, fullname, address, city, country)
  VALUES(5, N'Кафе "МакДональдз"', N'проспект Шевченка, 7', N'Львів', N'Україна');
INSERT INTO Organization(organizationid, fullname, address, city, country)
  VALUES(6, N'Оде́ський морськи́й торгове́льний порт"', N'вулиця Таможенная площадь, 1', N'Одеса', N'Україна');
SET IDENTITY_INSERT Organization OFF;

INSERT INTO School( organizationid, schoolType)
  VALUES(1, N'Cпеціалізований середній навчальний заклад');
INSERT INTO School( organizationid, schoolType)
  VALUES(2, N'Вищий навчальний заклад');
INSERT INTO School( organizationid, schoolType)
  VALUES(4, N'Вищий навчальний заклад');

INSERT INTO UserStudy( organizationid, userid, class, begintime, endtime)
  VALUES(1, 4, 'Б', '20100901 00:00:00.000', '20140601 00:00:00.000');
INSERT INTO UserStudy( organizationid, userid, class, begintime, endtime)
  VALUES(1, 6, 'Г', '20100901 00:00:00.000', '20140601 00:00:00.000');
INSERT INTO UserStudy( organizationid, userid, class, begintime, endtime)
  VALUES(2, 6, 'Механіка', '20140901 00:00:00.000', NULL);
INSERT INTO UserStudy( organizationid, userid, class, begintime, endtime)
  VALUES(4, 4, 'Sociology', '20140815 00:00:00.000', NULL);
INSERT INTO UserStudy( organizationid, userid, class, begintime, endtime)
  VALUES(1, 8, 'Б', '20100901 00:00:00.000', '20140601 00:00:00.000');
INSERT INTO UserStudy( organizationid, userid, class, begintime, endtime)
  VALUES(2, 12, 'Педагогічний', '20000901 00:00:00.000', '20060630 00:00:00.000');
INSERT INTO UserStudy( organizationid, userid, class, begintime, endtime)
  VALUES(2, 13, 'Педагогічний', '20030901 00:00:00.000', '20090629 00:00:00.000');
INSERT INTO UserStudy( organizationid, userid, class, begintime, endtime)
  VALUES(2, 10, 'Соціологія та суспільствознавство', '20040901 00:00:00.000', '20100630 00:00:00.000');
INSERT INTO UserStudy( organizationid, userid, class, begintime, endtime)
  VALUES(1, 3, 'А', '20170901 00:00:00.000', NULL);

INSERT INTO UserWork( organizationid, userid, position, begintime, endtime)
  VALUES(3, 10, 'HR', '20120412 00:00:00.000', NULL);
INSERT INTO UserWork( organizationid, userid, position, begintime, endtime)
  VALUES(1, 12, 'Вчитель', '20060801 00:00:00.000', NULL);
INSERT INTO UserWork( organizationid, userid, position, begintime, endtime)
  VALUES(1, 13, 'Вчитель', '20090801 00:00:00.000', NULL);
INSERT INTO UserWork( organizationid, userid, position, begintime, endtime)
  VALUES(5, 8, 'Менеджер', '20170323 00:00:00.000', NULL);
INSERT INTO UserWork( organizationid, userid, position, begintime, endtime)
  VALUES(5, 14, 'Помічник менеджера', '20171023 00:00:00.000', NULL);
INSERT INTO UserWork( organizationid, userid, position, begintime, endtime)
  VALUES(6, 15, 'Директор ремонтного відділу', '20170801 00:00:00.000', NULL);

SET IDENTITY_INSERT Dialogues ON;
INSERT INTO Dialogues( dialogueid, createdate)
  VALUES(1, '20161231 20:15:08.437');
INSERT INTO Dialogues( dialogueid, createdate)
  VALUES(2, '20171018 14:56:39.812');
INSERT INTO Dialogues( dialogueid, createdate)
  VALUES(3, '20170520 16:30:04.695');
INSERT INTO Dialogues( dialogueid, createdate)
  VALUES(4, '20130212 18:51:26.789');
SET IDENTITY_INSERT Dialogues OFF;

INSERT INTO UserInDialogue( dialogueid, userid)
  VALUES(1, 4);
INSERT INTO UserInDialogue( dialogueid, userid)
  VALUES(1, 9);
INSERT INTO UserInDialogue( dialogueid, userid)
  VALUES(2, 8);
INSERT INTO UserInDialogue( dialogueid, userid)
  VALUES(2, 14);
INSERT INTO UserInDialogue( dialogueid, userid)
  VALUES(3, 12);
INSERT INTO UserInDialogue( dialogueid, userid)
  VALUES(3, 3);
INSERT INTO UserInDialogue( dialogueid, userid)
  VALUES(3, 16);
INSERT INTO UserInDialogue( dialogueid, userid)
  VALUES(4, 8);
INSERT INTO UserInDialogue( dialogueid, userid)
  VALUES(4, 15);

SET IDENTITY_INSERT UserMessages ON;
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(1, 1, 4, '20161231 20:15:57.254');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(2, 1, 4, '20161231 20:16:09.792');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(3, 1, 9, '20161231 20:16:30.861');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(4, 1, 9, '20161231 20:16:49.533');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(5, 1, 4, '20161231 20:16:57.672');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(6, 1, 9, '20161231 20:17:11.598');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(7, 1, 4, '20161231 20:17:20.987');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(8, 1, 9, '20161231 20:17:24.314');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(9, 2, 8, '20171018 14:57:00.065');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(10, 2, 14, '20171018 15:01:52.726');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(11, 2, 8, '20171018 15:02:15.905');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(12, 2, 8, '20171018 15:02:30.642');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(13, 3, 12, '20170520 16:35:14.695');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(14, 3, 12, '20170520 16:35:59.418');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(15, 4, 8, '20130212 18:55:48.945');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(16, 4, 15, '20130212 18:55:58.380');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(17, 4, 8, '20130212 18:56:05.894');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(18, 4, 8, '20140503 15:34:45.076');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(19, 4, 15, '20140503 15:34:56.637');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(20, 4, 8, '20140503 15:35:05.375');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(21, 4, 15, '20140503 15:35:15.296');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(22, 4, 8, '20140503 15:35:26.817');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(23, 4, 15, '20150413 12:57:34.253');
INSERT INTO UserMessages( messageid, dialogueid, userid, publishtime)
  VALUES(24, 4, 15, '20150413 12:57:50.346');
SET IDENTITY_INSERT UserMessages OFF;

INSERT INTO NewUserCountPlan( yearvalue, countuser)
  VALUES(2010, 5);
INSERT INTO NewUserCountPlan( yearvalue, countuser)
  VALUES(2011, 2);
INSERT INTO NewUserCountPlan( yearvalue, countuser)
  VALUES(2012, 2);
INSERT INTO NewUserCountPlan( yearvalue, countuser)
  VALUES(2013, 2);
INSERT INTO NewUserCountPlan( yearvalue, countuser)
  VALUES(2014, 2);
INSERT INTO NewUserCountPlan( yearvalue, countuser)
  VALUES(2015, 2);
INSERT INTO NewUserCountPlan( yearvalue, countuser)
  VALUES(2016, 2);
INSERT INTO NewUserCountPlan( yearvalue, countuser)
  VALUES(2017, 7);