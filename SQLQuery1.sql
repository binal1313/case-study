/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[Facility Reference Number]
      ,[Licence Holder]
      ,[Site Common Name]
      ,[Latitude]
      ,[Longitude]
      ,[Finfish Aquaculture Management Unit]
      ,[Peak Biomass Date]
      ,[Survey Type]
      ,[Monitoring Type]
      ,[Industry Survey Date]
      ,[Industry Results]
      ,[DFO Survey Date]
      ,[DFO Results]
      ,[outcomeid]
      ,[Outcome]
      ,[Comments]
  FROM [Marine life].[dbo].[survey for sediments]

  select*
  FROM [Marine life].[dbo].[survey for sediments]

  select [Site Common Name], [Industry Survey Date], [DFO Survey Date], [Industry Results], [DFO Results], Outcome 
  FROM [Marine life].[dbo].[survey for sediments]

select [Site Common Name], [Industry Survey Date], [DFO Survey Date], 
[Industry Results], [DFO Results], Outcome 
FROM [Marine life].[dbo].[survey for sediments]
where outcomeid = 0;
 
select [Site Common Name], [Industry Survey Date], [DFO Survey Date],
[Industry Results], [DFO Results], Outcome 
FROM [Marine life].[dbo].[survey for sediments]
where outcomeid = 1;

SELECT outcome, COUNT(*) AS outcome_count,
(COUNT(*) * 100 / (SELECT COUNT(*) FROM [Marine life].[dbo].[survey for sediments])) AS Percentage
FROM [Marine life].[dbo].[survey for sediments]
GROUP BY outcome;


 

