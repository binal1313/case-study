/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [_id]
      ,[Catch Year]
      ,[Catch Month]
      ,[Facility Reference Number]
      ,[Licence Holder]
      ,[Site Common Name]
      ,[Latitude]
      ,[Longitude]
      ,[Finfish Aquaculture Management Unit]
      ,[Pacific Fishery Management Area]
      ,[Common Name]
      ,[Scientific Name]
      ,[Number of Fish]
      ,[Comments]
  FROM [Marine life].[dbo].[data]

  select * 
  FROM [Marine life].[dbo].[data]

  Select [Catch Year], [Catch Month],	[Licence Holder], [Common Name],[Number of Fish], Comments
  FROM [Marine life].[dbo].[data]


  -- total wild fish caught for each year
  select [Catch Year], sum([Number of Fish])as Totalfish 
  FROM [Marine life].[dbo].[data]
  group by [Catch Year] 
  order by [Catch Year] desc;

-- total wild fish caught by their name
  Select [Common Name], Sum([number of Fish]) as totalfish 
  FROM [Marine life].[dbo].[data]
  group by [Common Name];

  -- this will include data which has comment " depopulation from CFIS to control infectious virus"
  Select [Catch Year], [Catch Month],	[Licence Holder], [Common Name],[Number of Fish], Comments
  FROM [Marine life].[dbo].[data]
  where Comments != 'n/a';


  -- this query will give the total dead wildfish caught for each year by their name

  Select [Catch Year],[Common Name],sum([Number of Fish])as WildFish
  FROM [Marine life].[dbo].[data]
  where Comments = 'n/a'
  group by [Catch Year] , [Common Name]
  order by [Catch Year] desc;








