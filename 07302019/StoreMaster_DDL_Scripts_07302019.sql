------ Drop tables if already exists --------------------
drop table [STG].[UM_DATA];
drop table [STG].[UM_DATES];
drop table [STG].[UM_HOURS];
drop table [STG].[UM_OPS_HIEARARCHY];
drop table [STG].[UM_OPS_HIEARARCHY_DESCR_FILE];
drop table [STG].[UM_ATTRIBUTES];
drop table [ODS].[D_STORE];

-------------------- [STG].[UM_DATA] -------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[UM_DATA](
	[C_UNIT_NO] [varchar](20) NOT NULL,
	[C_OWNER] [varchar](1) NULL,
	[C_UM_STATUS] [varchar](1) NULL,
	[C_CONCEPT_CD] [varchar](5) NULL,
	[COUNTRY] [varchar](3) NULL,
	[ADDRESS1] [varchar](200) NULL,
	[ADDRESS2] [varchar](100) NULL,
	[ADDRESS3] [varchar](100) NULL,
	[CITY] [varchar](20) NULL,
	[STATE] [varchar](10) NULL,
	[POSTAL] [varchar](20) NULL,
	[C_UM_DMA_CD] [varchar](10) NULL,
	[C_LATITUDE] [varchar](100) NULL,
	[C_LONGITUDE] [varchar](100) NULL,
	[DT_TIMER] [varchar](10) NULL,
	[REGIONAL_AREA] [varchar](10) NULL,
	[PLAYGROUND] [varchar](1) NULL,
	[C_SITETYPECD] [varchar](5) NULL,
	[C_SOFTWARE_AGMT] [varchar](1) NULL,
	[C_POSSUPPORTED] [varchar](10) NULL,
	[C_PROGTYPEPOLLED] [varchar](20) NULL,
	[C_POSSUPVNDR] [varchar](100) NULL,
	[C_TLOG] [varchar](10) NULL,
	[CREATEDDATE] [datetime] NOT NULL,
	[CREATEDBY] [varchar](255) NOT NULL
) ON [PRIMARY]
GO

------------------ Create table [STG].[UM_DATES] -------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[UM_DATES](
	[C_UNIT_NO] [varchar](20) NOT NULL,
	[C_EVENTCD] [varchar](5) NOT NULL,
	[DESCR] [varchar](100) NOT NULL,
	[EFFDT] [varchar](50) NULL,
	[CREATEDDATE] [datetime] NOT NULL,
	[CREATEDBY] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
-----------------Create table  [STG].[UM_HOURS] ----------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[UM_HOURS](
	[RESTAURANT] [varchar](20) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[ADDRESS] [varchar](200) NULL,
	[CITY] [varchar](20) NULL,
	[STATE] [varchar](10) NULL,
	[ZIPCODE] [varchar](20) NULL,
	[COUNTRY] [varchar](3) NULL,
	[PHONE] [varchar](10) NULL,
	[CONCEPT] [varchar](5) NULL,
	[LATITUDE] [varchar](100) NULL,
	[LONGITUDE] [varchar](100) NULL,
	[RANK_DESCR] [varchar](10) NULL,
	[AP_CHK_VALID] [varchar](10) NULL,
	[MONDAY_24_HOUR] [varchar](1) NULL,
	[MONDAY_START] [varchar](20) NULL,
	[MONDAY_END] [varchar](20) NULL,
	[MONDAY_CLOSE] [varchar](1) NULL,
	[TUESDAY_24_HOUR] [varchar](1) NULL,
	[TUESDAY_START] [varchar](20) NULL,
	[TUESDAY_END] [varchar](20) NULL,
	[TUESDAY_CLOSE] [varchar](1) NULL,
	[WEDNESDAY_24_HOUR] [varchar](1) NULL,
	[WEDNESDAY_START] [varchar](20) NULL,
	[WEDNESDAY_END] [varchar](20) NULL,
	[WEDNESDAY_CLOSE] [varchar](1) NULL,
	[THURSDAY_24_HOUR] [varchar](1) NULL,
	[THURSDAY_START] [varchar](20) NULL,
	[THURSDAY_END] [varchar](20) NULL,
	[THURSDAY_CLOSE] [varchar](1) NULL,
	[FRIDAY_24_HOUR] [varchar](1) NULL,
	[FRIDAY_START] [varchar](20) NULL,
	[FRIDAY_END] [varchar](20) NULL,
	[FRIDAY_CLOSE] [varchar](1) NULL,
	[STAURDAY_24_HOUR] [varchar](1) NULL,
	[SATURDAY_START] [varchar](20) NULL,
	[SATURDAY_END] [varchar](20) NULL,
	[SATURDAY_CLOSE] [varchar](1) NULL,
	[SUNDAY_24_HOUR] [varchar](1) NULL,
	[SUNDAY_START] [varchar](20) NULL,
	[SUNDAY_END] [varchar](20) NULL,
	[SUNDAY_CLOSE] [varchar](1) NULL,
	[SEGMENT] [varchar](20) NULL,
	[TERRITORY] [varchar](20) NULL,
	[DIVISION] [varchar](20) NULL,
	[REGION] [varchar](20) NULL,
	[TEAM] [varchar](20) NULL,
	[GROUP_ID] [varchar](20) NULL,
	[ENTITY] [varchar](20) NULL,
	[DMA] [varchar](10) NULL,
	[DMADESCRIPTION] [varchar](100) NULL,
	[FRANCHISE] [varchar](100) NULL,
	[CREATEDDATE] [datetime] NOT NULL,
	[CREATEDBY] [varchar](255) NOT NULL
) ON [PRIMARY]
GO

--------------------------------Create table [STG].[UM_OPS_HIEARARCHY] --------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[UM_OPS_HIEARARCHY](
	[SETID] [varchar](10) NOT NULL,
	[C_UNIT_NO] [varchar](20) NOT NULL,
	[EFFDT] [varchar](50) NULL,
	[EFF_STATUS] [varchar](1) NULL,
	[C_UM_STATUS] [varchar](1) NULL,
	[NAME1] [varchar](100) NULL,
	[NAME2] [varchar](100) NULL,
	[NAME3] [varchar](100) NULL,
	[C_OWNER] [varchar](1) NULL,
	[C_SEGMENT] [varchar](20) NULL,
	[C_TERRITORY] [varchar](20) NULL,
	[C_DIVISION] [varchar](20) NULL,
	[C_REGION] [varchar](20) NULL,
	[C_TEAM] [varchar](20) NULL,
	[C_GROUP] [varchar](20) NULL,
	[C_ENTITY] [varchar](20) NULL,
	[CREATEDDATE] [datetime] NOT NULL,
	[CREATEDBY] [varchar](255) NOT NULL
) ON [PRIMARY]
GO

--------------------------- [STG].[UM_OPS_HIEARARCHY_DESCR_FILE] --------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[UM_OPS_HIEARARCHY_DESCR_FILE](
	[C_UM_ALIGN_KEY] [varchar](20) NOT NULL,
	[DESCR] [varchar](100) NOT NULL,
	[MANAGER] [varchar](100) NOT NULL,
	[EMAILID] [varchar](100) NULL,
	[CREATEDDATE] [datetime] NOT NULL,
	[CREATEDBY] [varchar](255) NOT NULL
) ON [PRIMARY]
GO


-------------[STG].[UM_ATTRIBUTES]----------------

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [STG].[UM_ATTRIBUTES](
	[C_UNIT_NO] [varchar](20) NOT NULL,
	[C_LEGACY_NO] [varchar](20) NOT NULL,
	[C_TRECS_NO] [varchar](20) NULL,
	[C_DISTRIB_CENTER] [varchar](20) NULL,
	[C_POS] [varchar](20) NULL,
	[C_BOH] [varchar](20) NULL,
	[CREATEDDATE] [datetime] NOT NULL,
	[CREATEDBY] [varchar](255) NOT NULL
) ON [PRIMARY]
GO

----------------------[ODS].[D_STORE] -----------------------------

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ODS].[D_STORE](
	[UNIT_KEY] [int] NOT NULL,
	[UNIT_ID] [int] NOT NULL,
	[UNIT_MASTER_STATUS] [varchar](100) NULL,
	[UNIT_NAME_1] [varchar](100) NULL,
	[UNIT_NAME_2] [varchar](100) NULL,
	[UNIT_NAME_3] [varchar](100) NULL,
	[OWNER_CODE] [varchar](100) NULL,
	[ADDRESS_CONCEPT_CODE] [varchar](100) NULL,
	[ADDRESS_1] [varchar](100) NULL,
	[ADDRESS_2] [varchar](100) NULL,
	[ADDRESS_3] [varchar](100) NULL,
	[CITY] [varchar](100) NULL,
	[STATE] [varchar](100) NULL,
	[POSTAL_CODE] [varchar](100) NULL,
	[COUNTRY] [varchar](100) NULL,
	[PHONE_NUMBER] [varchar](50) NULL,
	[DMA_CODE] [varchar](10) NULL,
	[DMA_NAME] [varchar](50) NULL,
	[LONGITUDE] [varchar](100) NULL,
	[LATITUDE] [varchar](100) NULL,
	[REGION] [varchar](100) NULL,
	[DRIVE_THRU_TIMER_FLAG] [varchar](10) NULL,
	[PLAYGROUND_FLAG] [varchar](10) NULL,
	[OPEN_DATE] [date] NULL,
	[CLOSE_DATE] [date] NULL,
	[ALIGNMENT_EFFV_DT] [date] NULL,
	[STORE_STATUS] [varchar](5) NULL,
	[BRAND] [varchar](20) NULL,
	[SITE_TYPE_CODE] [varchar](5) NULL,
	[SUPPORTED_STORE_FLAG] [varchar](5) NULL,
	[PROG_TYPE_POLLED] [varchar](20) NULL,
	[POS_CORP_SUPPORTED] [varchar](10) NULL,
	[POS_SUPPORT_VENDOR] [varchar](100) NULL,
	[POS_ESDM_TLOG] [varchar](10) NULL,
	[MON_IS24HR] [varchar](5) NULL,
	[MON_ISCLOSED] [varchar](5) NULL,
	[MON_STARTTIME] [varchar](20) NULL,
	[MON_ENDTIME] [varchar](20) NULL,
	[TUES_IS24HR] [varchar](5) NULL,
	[TUES_ISCLOSED] [varchar](5) NULL,
	[TUES_STARTTIME] [varchar](20) NULL,
	[TUES_ENDTIME] [varchar](20) NULL,
	[WED_IS24HR] [varchar](5) NULL,
	[WED_ISCLOSED] [varchar](5) NULL,
	[WED_STARTTIME] [varchar](20) NULL,
	[WED_ENDTIME] [varchar](20) NULL,
	[THU_IS24HR] [varchar](5) NULL,
	[THU_ISCLOSED] [varchar](5) NULL,
	[THU_STARTTIME] [varchar](20) NULL,
	[THU_ENDTIME] [varchar](20) NULL,
	[FRI_IS24HR] [varchar](5) NULL,
	[FRI_ISCLOSED] [varchar](5) NULL,
	[FRI_STARTTIME] [varchar](20) NULL,
	[FRI_ENDTIME] [varchar](20) NULL,
	[SAT_IS24HR] [varchar](5) NULL,
	[SAT_ISCLOSED] [varchar](5) NULL,
	[SAT_STARTTIME] [varchar](20) NULL,
	[SAT_ENDTIME] [varchar](20) NULL,
	[SUN_IS24HR] [varchar](5) NULL,
	[SUN_ISCLOSED] [varchar](5) NULL,
	[SUN_STARTTIME] [varchar](20) NULL,
	[SUN_ENDTIME] [varchar](20) NULL,
	[CORPORATE_SEGMENT_ID] [varchar](100) NULL,
	[CORPORATE_SEGMENT_DESC] [varchar](100) NULL,
	[CORPORATE_SEGMENT_MANAGER_NAME] [varchar](100) NULL,
	[CORPORATE_SEGMENT_MANAGER_EMAIL] [varchar](100) NULL,
	[CORPORATE_TERRITORY_ID] [varchar](100) NULL,
	[CORPORATE_TERRITORY_DESC] [varchar](100) NULL,
	[CORPORATE_TERRITORY_MANAGER_NAME] [varchar](100) NULL,
	[CORPORATE_TERRITORY_MANAGER_EMAIL] [varchar](100) NULL,
	[CORPORATE_DIVISION_ID] [varchar](100) NULL,
	[CORPORATE_DIVISION_DESC] [varchar](100) NULL,
	[CORPORATE_DIVISION_MANAGER_NAME] [varchar](100) NULL,
	[CORPORATE_DIVISION_MANAGER_EMAIL] [varchar](100) NULL,
	[CORPORATE_REGION_ID] [varchar](100) NULL,
	[CORPORATE_REGION_DESC] [varchar](100) NULL,
	[CORPORATE_REGION_MANAGER_NAME] [varchar](100) NULL,
	[CORPORATE_REGION_MANAGER_EMAIL] [varchar](100) NULL,
	[CORPORATE_TEAM_ID] [varchar](100) NULL,
	[CORPORATE_TEAM_DESC] [varchar](100) NULL,
	[CORPORATE_TEAM_MANAGER_NAME] [varchar](100) NULL,
	[CORPORATE_TEAM_MANAGER_EMAIL] [varchar](100) NULL,
	[FRANCHISE_GROUP_ID] [varchar](100) NULL,
	[FRANCHISE_GROUP_DESC] [varchar](100) NULL,
	[FRANCHISE_GROUP_MANAGER_NAME] [varchar](100) NULL,
	[FRANCHISE_GROUP_MANAGER_EMAIL] [varchar](100) NULL,
	[FRANCHISE_ENTITY_ID] [varchar](100) NULL,
	[FRANCHISE_ENTITY_DESC] [varchar](100) NULL,
	[TRECS_NUMBER] [varchar](100) NULL,
	[POS_SYSTEM] [varchar](100) NULL,
	[BOH_SYSTEM] [varchar](100) NULL,
	[DISTRIBUTION_CENTER] [varchar](100) NULL,
	[LEGACY_NUMBER] [varchar](100) NULL,
	[MD5_CHECK_SUM] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[CREATEDDATE] [datetime] NOT NULL,
	[CREATEDBY] [varchar](255) NOT NULL,
	[LAST_UPDATE_DT] [datetime] NOT NULL,
	[UPDATEDBY] [varchar](255) NOT NULL,
	[EFFECTIVE_DT] [datetime] NOT NULL,
	[EXPIRATION_DT] [datetime] NOT NULL,
	[CURRENT_ROW_FLAG] [varchar](5) NULL
) ON [PRIMARY]
GO
ALTER TABLE [ODS].[D_STORE] ADD  CONSTRAINT [PK_D_STORE] PRIMARY KEY CLUSTERED 
(
	[UNIT_KEY] ASC,
	[UNIT_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF) ON [PRIMARY]
GO


----------------- DML SCRIPT FOR  [dbo].[batch] ----------------------

Update dbo.batch set objectname = 'tf_StoreMaster_Interface' where objectname = 'StoreMaster'
