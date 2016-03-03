USE [master]
GO

CREATE LOGIN [AptitudeLogIn] WITH PASSWORD='123456', DEFAULT_DATABASE=[AptitudeDB], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
grant 

ALTER LOGIN [AptitudeLogIn] DISABLE
GO

ALTER SERVER ROLE [sysadmin] ADD MEMBER [AptitudeLogIn]
GO

ALTER SERVER ROLE [securityadmin] ADD MEMBER [AptitudeLogIn]
GO

ALTER SERVER ROLE [serveradmin] ADD MEMBER [AptitudeLogIn]
GO

ALTER SERVER ROLE [setupadmin] ADD MEMBER [AptitudeLogIn]
GO

ALTER SERVER ROLE [processadmin] ADD MEMBER [AptitudeLogIn]
GO

ALTER SERVER ROLE [diskadmin] ADD MEMBER [AptitudeLogIn]
GO

ALTER SERVER ROLE [dbcreator] ADD MEMBER [AptitudeLogIn]
GO

ALTER SERVER ROLE [bulkadmin] ADD MEMBER [AptitudeLogIn]
GO


-- Log in with User
USE [AptitudeDB]
GO

CREATE USER [AptitudeLogIn] FOR LOGIN [AptitudeLogIn] WITH DEFAULT_SCHEMA=[Aptitude]
GO