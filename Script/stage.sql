drop table uscounties_stage
CREATE TABLE [dbo].[uscounties_stage](
	[county_fips] [varchar](50) primary key,
	[county] [varchar](50) NULL,
	[county_ascii] [varchar](50) NULL,
	[county_full] [varchar](50) NULL,
	[state_id] [varchar](50) NULL,
	[state_name] [varchar](50) NULL,
	[lat] [varchar](50) NULL,
	[lng] [varchar](50) NULL,
	[population] [int] NULL,
	[Created] [datetime] NULL,
	[Last Updated] [datetime] NULL
)

alter table uscounties add [Created] datetime, [Last Updated] datetime
update uscounties set Created = GETDATE(), [Last Updated] = getdate()

update data_flow set LSET = '2000-01-01', CET = NULL