USE [HIMS]
GO
/****** Object:  View [dbo].[View_Doctor]    Script Date: 18-02-2025 22:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[View_Doctor]
AS
Select DoctorID
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
	  ,Qualification
	  ,dp.Name AS Department
      ,g.Name As Gender
      ,[DateOfBirth]
      ,[ContactNo1]
      ,[ContactNo2]
      ,[Email]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Pincode]
	  ,C.Name As City
	  from Doctor d
Inner Join Gender g
On d.GenderID=g.GenderID
Inner Join City C
On d.CityID=C.CityID
Inner Join Department dp
On d.DepartmentID=dp.DepartmentID
GO
/****** Object:  View [dbo].[View_Patient]    Script Date: 18-02-2025 22:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[View_Patient]
AS
Select [PatientID]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,g.Name As Gender
      ,[DateOfBirth]
      ,[ContactNo1]
      ,[ContactNo2]
      ,[Email]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Pincode]
	  ,C.Name As City
	  from Patient P
Inner Join Gender g
On P.GenderID=g.GenderID
Inner Join City C
On P.CityID=C.CityID
GO
/****** Object:  View [dbo].[View_ServiceDetails]    Script Date: 18-02-2025 22:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[View_ServiceDetails]
AS
Select ST.Name As ServiceType,SC.Name As ServiceCategory,S.Name As ServiceName,Rate,CompanyId
from Service S
Inner Join ServiceCategory SC On S.ServiceCategoryId=SC.ServiceCategoryId
Inner Join ServiceType ST On S.[ServiceTypeID]=ST.[ServiceTypeID]
GO
/****** Object:  View [dbo].[View_Staff]    Script Date: 18-02-2025 22:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[View_Staff]
AS
Select StaffID
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
	  ,dp.Name AS Department
      ,g.Name As Gender
      ,[DateOfBirth]
      ,[ContactNo1]
      ,[ContactNo2]
      ,[Email]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Pincode]
	  ,C.Name As City
	  from Staff s
Inner Join Gender g
On s.GenderID=g.GenderID
Inner Join City C
On s.CityID=C.CityID
Inner Join Department dp
On s.DepartmentID=dp.DepartmentID
GO
