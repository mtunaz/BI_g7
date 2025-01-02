drop table DimRegion
create table DimRegion
(
	[county_sk] [int] PRIMARY KEY,
	[county] [varchar](50) NULL,
	[county_ascii] [varchar](50) NULL,
	[county_full] [varchar](50) NULL,
	[county_fips] [varchar](50) NULL,
	[state_name] [varchar](255) NULL,
	[lat] [varchar](50) NULL,
	[lng] [varchar](50) NULL,
	[population] [int] NULL,
	[created] [datetime] NULL,
	[last_updated] [datetime] NULL,
	[is_current] BIT
)

drop table DimCategory
create table DimCategory
(
	CategoryKey int primary key,
	Category varchar(50),
	[created] [datetime],
	[last_updated] [datetime]
)
drop table DimDate
CREATE TABLE [dbo].[DimDate](
	[DateKey] [int] primary key,
	[FullDate] [date] NOT NULL,
	[Year] [int] NOT NULL,
	[Quarter] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[created] datetime,
	[last_updated] datetime
)

drop table FactAQI
create table FactAQI
(
	county_sk int,
	DateKey int,
	CategoryKey int,
	AQI int,
	created datetime,
	last_updated datetime,
	constraint FactAQI_PK primary key(county_sk, DateKey, CategoryKey),
	constraint FactAQI_FK_DimRegion foreign key(county_sk) references DimRegion(county_sk),
	constraint FactAQI_FK_DimCategory foreign key(CategoryKey) references DimCategory(CategoryKey),
	constraint FactAQI_FK_DimDate foreign key(DateKey) references DimDate(DateKey)
)

