--create table [user] (
--	[id] int not null identity primary key,
--	[firstname] nvarchar(32) not null,
--	[secondname] nvarchar(32) not null,
--	[patronymic] nvarchar(32),
--	[dob] datetime not null,
--	[ava_path] nvarchar(256) not null
--);

--create table [phone_number] (
--	[id] int not null identity primary key,
--	[id_user] int not null,
--	[number] varchar(32) not null
--);

--create table [email] (
--	[id] int not null identity primary key,
--	[id_user] int not null,
--	[email] varchar(48) not null
--);

--create table [language] (
--	[id] int not null identity primary key,
--	[name] varchar(32) not null
--);

--create table [languages_has_user] (
--	[id] int not null identity primary key,
--	[id_user] int not null,
--	[id_language] int not null,
--	[lang_lvl] int not null 
--);

--create table [language_lvl] (
--	[id] int not null identity primary key,
--	[name] varchar(32) not null
--);

--create table [education] (
--	[id] int not null identity primary key,
--	[name] nvarchar(64) not null
--);

--create table [education_has_user] (
--	[id] int not null identity primary key,
--	[id_user] int not null,
--	[id_education] int not null,
--	[speciality] nvarchar(64) not null,
--	[start_DT] datetime not null,
--	[end_DT] datetime not null
--);

--create table [skills] (
--	[id] int not null identity primary key,
--	[name] varchar(128) not null
--);

--create table [skills_has_user] (
--	[id] int not null identity primary key,
--	[id_user] int not null,
--	[id_skill] int not null
--);

--create table [project] (
--	[id] int not null identity primary key,
--	[name] varchar(32) not null,
--	[description] varchar(256),
--	[link] varchar(256) not null,
--);

--create table [projects_has_user] (
--	[id] int not null identity primary key,
--	[id_user] int not null,
--	[id_project] int not null,
--);

--create table [certificates] (
--	[id] int not null identity primary key,
--	[id_user] int not null,
--	[name] nvarchar(32),
--	[img_path] nvarchar(256) not null
--);
