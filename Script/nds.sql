create database aqi_nds
go

use aqi_nds
go

drop table state_nds

create table state_nds(
	state_sk int identity primary key,
	state_id varchar(50),
	state_name varchar(255),
	created datetime,
	last_updated datetime
)

drop table county_nds
create table county_nds
(
	county_sk int identity primary key,
	[county] [varchar](50) NULL,
	[county_ascii] [varchar](50) NULL,
	[county_full] [varchar](50) NULL,
	[county_fips] [varchar](50) NULL,
	[state_id] [varchar](50) NULL,
	[lat] [varchar](50) NULL,
	[lng] [varchar](50) NULL,
	[population] [int] NULL,
	[created] datetime,
	[last_updated] datetime
)

drop table aqi_nds
CREATE TABLE aqi_nds (
	[aqi_sk] INT IDENTITY PRIMARY KEY,
    [aqi_id] INT,
	[county_fips] VARCHAR(50),
	[state_id] VARCHAR(50),
    [Date_id] int NOT NULL,
    [AQI] INT,
    [Category_id] int,
    [Defining Parameter] VARCHAR(100),
    [Defining Site] VARCHAR(100),
    [Number of Sites Reporting] INT,
	[src_sys] int, 
    [created] DATETIME,
    [last_updated] datetime
)
go

CREATE TABLE [dbo].[date_nds](
	[DateKey] [int] IDENTITY(1,1) primary key,
	[FullDate] [date] NOT NULL,
	[created] datetime,
	last_updated datetime
)

create table category_nds
(
	CategoryKey int identity primary key,
	Category varchar(50),
	[created] [datetime],
	[last_updated] [datetime]
)