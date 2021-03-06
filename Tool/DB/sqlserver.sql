/****** Object:  Table [dbo].[CTask_ErrorLog]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_ErrorLog](
	[Id] [bigint] NOT NULL,
	[Server] [varchar](50) NOT NULL,
	[Job] [varchar](50) NULL,
	[Trigger] [varchar](50) NULL,
	[Message] [varchar](1000) NULL,
	[Description] [varchar](max) NULL,
	[Type] [int] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Task_ErrorLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_EventLog]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_EventLog](
	[Id] [bigint] NOT NULL,
	[Job] [varchar](50) NULL,
	[Trigger] [varchar](50) NULL,
	[Server] [varchar](50) NULL,
	[Message] [varchar](200) NOT NULL,
	[Description] [varchar](max) NULL,
	[CreateTime] [datetime] NOT NULL,
	[LogType] [int] NOT NULL,
	[Level] [int] NOT NULL,
 CONSTRAINT [PK_Task_EventLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_ExecuteLog]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_ExecuteLog](
	[Id] [bigint] NOT NULL,
	[Job] [varchar](50) NOT NULL,
	[Trigger] [varchar](50) NOT NULL,
	[Server] [nchar](10) NOT NULL,
	[BeginTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[RecordTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[Message] [varchar](200) NULL,
 CONSTRAINT [PK_Task_ExecuteLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_Job]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_Job](
	[Id] [varchar](50) NOT NULL,
	[Group] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Type] [int] NOT NULL,
	[RunType] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Description] [varchar](100) NULL,
	[UpdateDate] [datetime] NOT NULL,
	[JobPath] [varchar](500) NULL,
	[JobFileName] [varchar](100) NULL,
 CONSTRAINT [PK_Task_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_JobFile]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_JobFile](
	[Id] [bigint] NOT NULL,
	[Job] [varchar](50) NOT NULL,
	[Title] [varchar](500) NOT NULL,
	[Path] [varchar](500) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CTask_JobFile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_JobGroup]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_JobGroup](
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Sort] [int] NOT NULL,
	[Parent] [varchar](50) NOT NULL,
	[Root] [varchar](50) NOT NULL,
	[Level] [int] NOT NULL,
	[Remark] [varchar](50) NULL,
 CONSTRAINT [PK_Task_JobGroup] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_JobServerHost]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_JobServerHost](
	[Server] [varchar](50) NOT NULL,
	[Job] [varchar](50) NOT NULL,
	[RunStatus] [int] NOT NULL,
 CONSTRAINT [PK_Task_JobServerHost] PRIMARY KEY CLUSTERED 
(
	[Server] ASC,
	[Job] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_ServerNode]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_ServerNode](
	[Id] [varchar](50) NOT NULL,
	[InstanceName] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[Host] [varchar](200) NULL,
	[ThreadCount] [int] NOT NULL,
	[ThreadPriority] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Task_ServerNode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_Trigger]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_Trigger](
	[Id] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](500) NULL,
	[Job] [varchar](50) NOT NULL,
	[ApplyTo] [int] NOT NULL,
	[PrevFireTime] [datetime] NOT NULL,
	[NextFireTime] [datetime] NOT NULL,
	[Priority] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[ConditionType] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NULL,
	[MisFireType] [int] NOT NULL,
	[FireTotalCount] [int] NOT NULL,
 CONSTRAINT [PK_Task_Trigger] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_TriggerAnnualCondition]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_TriggerAnnualCondition](
	[TriggerId] [varchar](50) NOT NULL,
	[Month] [int] NOT NULL,
	[Day] [int] NOT NULL,
	[Include] [bit] NOT NULL,
 CONSTRAINT [PK_Table_TriggerAnnualCondition] PRIMARY KEY CLUSTERED 
(
	[TriggerId] ASC,
	[Month] ASC,
	[Day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_TriggerDailyCondition]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_TriggerDailyCondition](
	[TriggerId] [varchar](50) NOT NULL,
	[BeginTime] [varchar](50) NOT NULL,
	[EndTime] [varchar](50) NOT NULL,
	[Inversion] [bit] NOT NULL,
 CONSTRAINT [PK_Task_TriggerDailyCondition] PRIMARY KEY CLUSTERED 
(
	[TriggerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_TriggerExpression]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_TriggerExpression](
	[TriggerId] [varchar](50) NOT NULL,
	[Option] [int] NOT NULL,
	[ValueType] [int] NOT NULL,
	[BeginValue] [int] NULL,
	[EndValue] [int] NULL,
	[ArrayValue] [varchar](1000) NULL,
 CONSTRAINT [PK_Task_TriggerExpression] PRIMARY KEY CLUSTERED 
(
	[TriggerId] ASC,
	[Option] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_TriggerExpressionCondition]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_TriggerExpressionCondition](
	[TriggerId] [varchar](50) NOT NULL,
	[ConditionOption] [int] NOT NULL,
	[ValueType] [int] NOT NULL,
	[BeginValue] [int] NULL,
	[EndValue] [int] NULL,
	[ArrayValue] [varchar](1000) NULL,
 CONSTRAINT [PK_Task_TriggerExpressionCondition] PRIMARY KEY CLUSTERED 
(
	[TriggerId] ASC,
	[ConditionOption] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_TriggerFullDateCondition]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_TriggerFullDateCondition](
	[TriggerId] [varchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Include] [bit] NOT NULL,
 CONSTRAINT [PK_Task_TriggerFullDateCondition] PRIMARY KEY CLUSTERED 
(
	[TriggerId] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_TriggerMonthlyCondition]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_TriggerMonthlyCondition](
	[TriggerId] [varchar](50) NOT NULL,
	[Day] [int] NOT NULL,
	[Include] [bit] NOT NULL,
 CONSTRAINT [PK_Task_TriggerMonthlyCondition] PRIMARY KEY CLUSTERED 
(
	[TriggerId] ASC,
	[Day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_TriggerServer]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_TriggerServer](
	[Trigger] [varchar](50) NOT NULL,
	[Server] [varchar](50) NOT NULL,
	[RunStatus] [int] NOT NULL,
	[LastFireDate] [datetime] NOT NULL,
	[NextFireDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Task_TriggerServer] PRIMARY KEY CLUSTERED 
(
	[Trigger] ASC,
	[Server] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_TriggerSimple]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_TriggerSimple](
	[TriggerId] [varchar](50) NOT NULL,
	[RepeatCount] [int] NOT NULL,
	[RepeatInterval] [bigint] NOT NULL,
	[RepeatForever] [bit] NOT NULL,
 CONSTRAINT [PK_Task_TriggerSimple] PRIMARY KEY CLUSTERED 
(
	[TriggerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTask_TriggerWeeklyCondition]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTask_TriggerWeeklyCondition](
	[TriggerId] [varchar](50) NOT NULL,
	[Day] [int] NOT NULL,
	[Include] [bit] NOT NULL,
 CONSTRAINT [PK_Task_TriggerWeeklyCondition] PRIMARY KEY CLUSTERED 
(
	[TriggerId] ASC,
	[Day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Authority]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Authority](
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[AuthType] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Sort] [int] NOT NULL,
	[AuthGroup] [bigint] NOT NULL,
	[Remark] [varchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Sys_Authority_1] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_AuthorityBindOperation]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_AuthorityBindOperation](
	[AuthorithOperation] [bigint] NOT NULL,
	[AuthorityCode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sys_AuthorityBindOperation] PRIMARY KEY CLUSTERED 
(
	[AuthorithOperation] ASC,
	[AuthorityCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_AuthorityGroup]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_AuthorityGroup](
	[SysNo] [bigint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[SortIndex] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Parent] [bigint] NOT NULL,
	[Level] [int] NOT NULL,
	[Remark] [varchar](100) NULL,
 CONSTRAINT [PK_SYS_AUTHORITYGROUP] PRIMARY KEY NONCLUSTERED 
(
	[SysNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_AuthorityOperation]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_AuthorityOperation](
	[SysNo] [bigint] NOT NULL,
	[ControllerCode] [varchar](100) NOT NULL,
	[ActionCode] [varchar](100) NOT NULL,
	[Method] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[Sort] [int] NOT NULL,
	[Group] [bigint] NOT NULL,
	[AuthorizeType] [int] NOT NULL,
	[Remark] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_AuthorityOperation] PRIMARY KEY CLUSTERED 
(
	[SysNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_AuthorityOperationGroup]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_AuthorityOperationGroup](
	[SysNo] [bigint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Sort] [int] NOT NULL,
	[Parent] [bigint] NOT NULL,
	[Root] [bigint] NOT NULL,
	[Level] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Remark] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_AuthorityOperationGroup] PRIMARY KEY CLUSTERED 
(
	[SysNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Role](
	[SysNo] [bigint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Level] [int] NOT NULL,
	[Parent] [bigint] NOT NULL,
	[SortIndex] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Remark] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_ROLE] PRIMARY KEY NONCLUSTERED 
(
	[SysNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_RoleAuthorize]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_RoleAuthorize](
	[Role] [bigint] NOT NULL,
	[Authority] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sys_RoleAuthorize] PRIMARY KEY CLUSTERED 
(
	[Role] ASC,
	[Authority] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_User]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_User](
	[SysNo] [bigint] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[RealName] [varchar](50) NOT NULL,
	[Pwd] [varchar](50) NOT NULL,
	[UserType] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Mobile] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[QQ] [varchar](15) NULL,
	[SuperUser] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SYS_USER] PRIMARY KEY NONCLUSTERED 
(
	[SysNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_UserAuthorize]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_UserAuthorize](
	[User] [bigint] NOT NULL,
	[Authority] [varchar](50) NOT NULL,
	[Disable] [bit] NOT NULL,
 CONSTRAINT [PK_Sys_UserAuthorize] PRIMARY KEY CLUSTERED 
(
	[User] ASC,
	[Authority] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_UserRole]    Script Date: 2017/12/11 15:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_UserRole](
	[UserSysNo] [bigint] NOT NULL,
	[RoleSysNo] [bigint] NOT NULL,
 CONSTRAINT [PK_SYS_USERROLE] PRIMARY KEY CLUSTERED 
(
	[UserSysNo] ASC,
	[RoleSysNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CTask_EventLog] ADD  CONSTRAINT [DF_Task_EventLog_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[CTask_EventLog] ADD  CONSTRAINT [DF_Task_EventLog_LogType]  DEFAULT ((0)) FOR [LogType]
GO
ALTER TABLE [dbo].[CTask_ExecuteLog] ADD  CONSTRAINT [DF_Task_ExecuteLog_Id]  DEFAULT ((0)) FOR [Id]
GO
ALTER TABLE [dbo].[CTask_ExecuteLog] ADD  CONSTRAINT [DF_Task_ExecuteLog_ExecBeginTime]  DEFAULT (getdate()) FOR [BeginTime]
GO
ALTER TABLE [dbo].[CTask_ExecuteLog] ADD  CONSTRAINT [DF_Task_ExecuteLog_ExecEndTime]  DEFAULT (getdate()) FOR [EndTime]
GO
ALTER TABLE [dbo].[CTask_ExecuteLog] ADD  CONSTRAINT [DF_Task_ExecuteLog_RecordTime]  DEFAULT (getdate()) FOR [RecordTime]
GO
ALTER TABLE [dbo].[CTask_Job] ADD  CONSTRAINT [DF_Task_Job_RunType]  DEFAULT ((0)) FOR [RunType]
GO
ALTER TABLE [dbo].[CTask_Job] ADD  CONSTRAINT [DF_Task_Job_State]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[CTask_Job] ADD  CONSTRAINT [DF_Task_Job_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[CTask_JobFile] ADD  CONSTRAINT [DF_CTask_JobFile_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[CTask_JobServerHost] ADD  CONSTRAINT [DF_Task_JobServerHost_RunState]  DEFAULT ((0)) FOR [RunStatus]
GO
ALTER TABLE [dbo].[CTask_Trigger] ADD  CONSTRAINT [DF_Task_Trigger_ApplyTo]  DEFAULT ((0)) FOR [ApplyTo]
GO
ALTER TABLE [dbo].[CTask_Trigger] ADD  CONSTRAINT [DF_Task_Trigger_PrevFireTime]  DEFAULT (getdate()) FOR [PrevFireTime]
GO
ALTER TABLE [dbo].[CTask_Trigger] ADD  CONSTRAINT [DF_Task_Trigger_NextFirTime]  DEFAULT (getdate()) FOR [NextFireTime]
GO
ALTER TABLE [dbo].[CTask_Trigger] ADD  CONSTRAINT [DF_Task_Trigger_Priority]  DEFAULT ((0)) FOR [Priority]
GO
ALTER TABLE [dbo].[CTask_Trigger] ADD  CONSTRAINT [DF_Task_Trigger_State]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[CTask_Trigger] ADD  CONSTRAINT [DF_Task_Trigger_Type]  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[CTask_Trigger] ADD  CONSTRAINT [DF_Task_Trigger_ConditionType]  DEFAULT ((0)) FOR [ConditionType]
GO
ALTER TABLE [dbo].[CTask_Trigger] ADD  CONSTRAINT [DF_Task_Trigger_StartTime]  DEFAULT (getdate()) FOR [StartTime]
GO
ALTER TABLE [dbo].[CTask_Trigger] ADD  CONSTRAINT [DF_Task_Trigger_MisFireType]  DEFAULT ((0)) FOR [MisFireType]
GO
ALTER TABLE [dbo].[CTask_Trigger] ADD  CONSTRAINT [DF_Task_Trigger_FireTotalCount]  DEFAULT ((0)) FOR [FireTotalCount]
GO
ALTER TABLE [dbo].[CTask_TriggerServer] ADD  CONSTRAINT [DF_Task_ServerTriggers_RunState]  DEFAULT ((0)) FOR [RunStatus]
GO
ALTER TABLE [dbo].[CTask_TriggerServer] ADD  CONSTRAINT [DF_Task_ServerTriggers_LastFireDate]  DEFAULT (getdate()) FOR [LastFireDate]
GO
ALTER TABLE [dbo].[CTask_TriggerServer] ADD  CONSTRAINT [DF_Task_ServerTriggers_NextFireDate]  DEFAULT (getdate()) FOR [NextFireDate]
GO
ALTER TABLE [dbo].[CTask_TriggerSimple] ADD  CONSTRAINT [DF_Task_TriggerSimple_RepeatCount]  DEFAULT ((0)) FOR [RepeatCount]
GO
ALTER TABLE [dbo].[CTask_TriggerSimple] ADD  CONSTRAINT [DF_Task_TriggerSimple_RepeatInterval]  DEFAULT ((0)) FOR [RepeatInterval]
GO
ALTER TABLE [dbo].[CTask_TriggerSimple] ADD  CONSTRAINT [DF_Task_TriggerSimple_RepeatForever]  DEFAULT ((0)) FOR [RepeatForever]
GO
ALTER TABLE [dbo].[Sys_Authority] ADD  CONSTRAINT [DF_Sys_Authority_AuthGroup]  DEFAULT ((0)) FOR [AuthGroup]
GO
ALTER TABLE [dbo].[Sys_Authority] ADD  CONSTRAINT [DF_Sys_Authority_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Sys_AuthorityBindOperation] ADD  CONSTRAINT [DF_Sys_AuthorityBindOperation_AuthorithOperation]  DEFAULT ((0)) FOR [AuthorithOperation]
GO
ALTER TABLE [dbo].[Sys_AuthorityGroup] ADD  CONSTRAINT [DF_Sys_AuthorityGroup_Parent]  DEFAULT ((0)) FOR [Parent]
GO
ALTER TABLE [dbo].[Sys_AuthorityGroup] ADD  CONSTRAINT [DF_Sys_AuthorityGroup_Level]  DEFAULT ((0)) FOR [Level]
GO
ALTER TABLE [dbo].[Sys_AuthorityOperation] ADD  CONSTRAINT [DF_Sys_AuthorityOperation_SysNo]  DEFAULT ((0)) FOR [SysNo]
GO
ALTER TABLE [dbo].[Sys_AuthorityOperation] ADD  CONSTRAINT [DF_Sys_AuthorityOperation_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Sys_AuthorityOperation] ADD  CONSTRAINT [DF_Sys_AuthorityOperation_Sort]  DEFAULT ((0)) FOR [Sort]
GO
ALTER TABLE [dbo].[Sys_AuthorityOperation] ADD  CONSTRAINT [DF_Sys_AuthorityOperation_Group]  DEFAULT ((0)) FOR [Group]
GO
ALTER TABLE [dbo].[Sys_AuthorityOperation] ADD  CONSTRAINT [DF_Sys_AuthorityOperation_AuthorizeType]  DEFAULT ((0)) FOR [AuthorizeType]
GO
ALTER TABLE [dbo].[Sys_AuthorityOperationGroup] ADD  CONSTRAINT [DF_Sys_AuthorityOperationGroup_SysNo]  DEFAULT ((0)) FOR [SysNo]
GO
ALTER TABLE [dbo].[Sys_AuthorityOperationGroup] ADD  CONSTRAINT [DF_Sys_AuthorityOperationGroup_Sort]  DEFAULT ((0)) FOR [Sort]
GO
ALTER TABLE [dbo].[Sys_AuthorityOperationGroup] ADD  CONSTRAINT [DF_Sys_AuthorityOperationGroup_Parent]  DEFAULT ((0)) FOR [Parent]
GO
ALTER TABLE [dbo].[Sys_AuthorityOperationGroup] ADD  CONSTRAINT [DF_Sys_AuthorityOperationGroup_Root]  DEFAULT ((0)) FOR [Root]
GO
ALTER TABLE [dbo].[Sys_AuthorityOperationGroup] ADD  CONSTRAINT [DF_Sys_AuthorityOperationGroup_Level]  DEFAULT ((0)) FOR [Level]
GO
ALTER TABLE [dbo].[Sys_AuthorityOperationGroup] ADD  CONSTRAINT [DF_Sys_AuthorityOperationGroup_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Sys_UserAuthorize] ADD  CONSTRAINT [DF_Sys_UserAuthority_Disable]  DEFAULT ((1)) FOR [Disable]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ErrorLog', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ErrorLog', @level2type=N'COLUMN',@level2name=N'Server'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作任务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ErrorLog', @level2type=N'COLUMN',@level2name=N'Job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行计划' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ErrorLog', @level2type=N'COLUMN',@level2name=N'Trigger'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'错误消息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ErrorLog', @level2type=N'COLUMN',@level2name=N'Message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'错误描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ErrorLog', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'错误类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ErrorLog', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ErrorLog', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务异常日志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ErrorLog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_EventLog', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_EventLog', @level2type=N'COLUMN',@level2name=N'Job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'触发器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_EventLog', @level2type=N'COLUMN',@level2name=N'Trigger'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_EventLog', @level2type=N'COLUMN',@level2name=N'Server'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_EventLog', @level2type=N'COLUMN',@level2name=N'Message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_EventLog', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_EventLog', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_EventLog', @level2type=N'COLUMN',@level2name=N'LogType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_EventLog', @level2type=N'COLUMN',@level2name=N'Level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'事件日志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_EventLog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ExecuteLog', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作任务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ExecuteLog', @level2type=N'COLUMN',@level2name=N'Job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行计划' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ExecuteLog', @level2type=N'COLUMN',@level2name=N'Trigger'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行服务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ExecuteLog', @level2type=N'COLUMN',@level2name=N'Server'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ExecuteLog', @level2type=N'COLUMN',@level2name=N'BeginTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ExecuteLog', @level2type=N'COLUMN',@level2name=N'EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ExecuteLog', @level2type=N'COLUMN',@level2name=N'RecordTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ExecuteLog', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ExecuteLog', @level2type=N'COLUMN',@level2name=N'Message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务执行日志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ExecuteLog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Job', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Job', @level2type=N'COLUMN',@level2name=N'Group'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Job', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Job', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Job', @level2type=N'COLUMN',@level2name=N'RunType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Job', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Job', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Job', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Job', @level2type=N'COLUMN',@level2name=N'JobPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Job', @level2type=N'COLUMN',@level2name=N'JobFileName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作任务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobFile', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作任务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobFile', @level2type=N'COLUMN',@level2name=N'Job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobFile', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobFile', @level2type=N'COLUMN',@level2name=N'Path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobFile', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务文件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobFile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobGroup', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobGroup', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobGroup', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobGroup', @level2type=N'COLUMN',@level2name=N'Parent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'根节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobGroup', @level2type=N'COLUMN',@level2name=N'Root'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobGroup', @level2type=N'COLUMN',@level2name=N'Level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobGroup', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobServerHost', @level2type=N'COLUMN',@level2name=N'Server'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobServerHost', @level2type=N'COLUMN',@level2name=N'Job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运行状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobServerHost', @level2type=N'COLUMN',@level2name=N'RunStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作承载节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_JobServerHost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ServerNode', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ServerNode', @level2type=N'COLUMN',@level2name=N'InstanceName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ServerNode', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ServerNode', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ServerNode', @level2type=N'COLUMN',@level2name=N'Host'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线程数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ServerNode', @level2type=N'COLUMN',@level2name=N'ThreadCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线程优先级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ServerNode', @level2type=N'COLUMN',@level2name=N'ThreadPriority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ServerNode', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_ServerNode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属任务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'Job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用到对象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'ApplyTo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次执行时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'PrevFireTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下次执行时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'NextFireTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'优先级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'额外条件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'ConditionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行失败操作类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'MisFireType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总触发次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger', @level2type=N'COLUMN',@level2name=N'FireTotalCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务执行计划' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_Trigger'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerAnnualCondition', @level2type=N'COLUMN',@level2name=N'TriggerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerAnnualCondition', @level2type=N'COLUMN',@level2name=N'Month'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerAnnualCondition', @level2type=N'COLUMN',@level2name=N'Day'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'包含' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerAnnualCondition', @level2type=N'COLUMN',@level2name=N'Include'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划年度条件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerAnnualCondition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerDailyCondition', @level2type=N'COLUMN',@level2name=N'TriggerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerDailyCondition', @level2type=N'COLUMN',@level2name=N'BeginTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerDailyCondition', @level2type=N'COLUMN',@level2name=N'EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'启用设定值范围以外' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerDailyCondition', @level2type=N'COLUMN',@level2name=N'Inversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划时间计划条件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerDailyCondition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerExpression', @level2type=N'COLUMN',@level2name=N'TriggerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表达式配置项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerExpression', @level2type=N'COLUMN',@level2name=N'Option'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerExpression', @level2type=N'COLUMN',@level2name=N'ValueType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerExpression', @level2type=N'COLUMN',@level2name=N'BeginValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerExpression', @level2type=N'COLUMN',@level2name=N'EndValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'集合值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerExpression', @level2type=N'COLUMN',@level2name=N'ArrayValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定义表达式计划' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerExpression'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerExpressionCondition', @level2type=N'COLUMN',@level2name=N'TriggerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条件选项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerExpressionCondition', @level2type=N'COLUMN',@level2name=N'ConditionOption'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerExpressionCondition', @level2type=N'COLUMN',@level2name=N'ValueType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'起始值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerExpressionCondition', @level2type=N'COLUMN',@level2name=N'BeginValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerExpressionCondition', @level2type=N'COLUMN',@level2name=N'EndValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'集合值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerExpressionCondition', @level2type=N'COLUMN',@level2name=N'ArrayValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划表达式附加条件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerExpressionCondition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerFullDateCondition', @level2type=N'COLUMN',@level2name=N'TriggerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerFullDateCondition', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'包含当前日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerFullDateCondition', @level2type=N'COLUMN',@level2name=N'Include'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划完整日期条件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerFullDateCondition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerMonthlyCondition', @level2type=N'COLUMN',@level2name=N'TriggerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerMonthlyCondition', @level2type=N'COLUMN',@level2name=N'Day'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'包含当前日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerMonthlyCondition', @level2type=N'COLUMN',@level2name=N'Include'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划月份附加条件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerMonthlyCondition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'触发器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerServer', @level2type=N'COLUMN',@level2name=N'Trigger'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerServer', @level2type=N'COLUMN',@level2name=N'Server'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运行状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerServer', @level2type=N'COLUMN',@level2name=N'RunStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次执行时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerServer', @level2type=N'COLUMN',@level2name=N'LastFireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下次执行时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerServer', @level2type=N'COLUMN',@level2name=N'NextFireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务节点执行计划' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerServer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerSimple', @level2type=N'COLUMN',@level2name=N'TriggerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重复次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerSimple', @level2type=N'COLUMN',@level2name=N'RepeatCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重复间隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerSimple', @level2type=N'COLUMN',@level2name=N'RepeatInterval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'一直重复执行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerSimple', @level2type=N'COLUMN',@level2name=N'RepeatForever'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简单类型执行计划' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerSimple'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerWeeklyCondition', @level2type=N'COLUMN',@level2name=N'TriggerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerWeeklyCondition', @level2type=N'COLUMN',@level2name=N'Day'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'包含当前日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerWeeklyCondition', @level2type=N'COLUMN',@level2name=N'Include'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划星期条件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CTask_TriggerWeeklyCondition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Authority', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Authority', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Authority', @level2type=N'COLUMN',@level2name=N'AuthType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Authority', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Authority', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Authority', @level2type=N'COLUMN',@level2name=N'AuthGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Authority', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Authority', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Authority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权操作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityBindOperation', @level2type=N'COLUMN',@level2name=N'AuthorithOperation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityBindOperation', @level2type=N'COLUMN',@level2name=N'AuthorityCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限&授权操作关联' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityBindOperation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityGroup', @level2type=N'COLUMN',@level2name=N'SysNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityGroup', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityGroup', @level2type=N'COLUMN',@level2name=N'SortIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityGroup', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityGroup', @level2type=N'COLUMN',@level2name=N'Parent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityGroup', @level2type=N'COLUMN',@level2name=N'Level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityGroup', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperation', @level2type=N'COLUMN',@level2name=N'SysNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控制器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperation', @level2type=N'COLUMN',@level2name=N'ControllerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作方法' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperation', @level2type=N'COLUMN',@level2name=N'ActionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperation', @level2type=N'COLUMN',@level2name=N'Method'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperation', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperation', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperation', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperation', @level2type=N'COLUMN',@level2name=N'Group'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperation', @level2type=N'COLUMN',@level2name=N'AuthorizeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'方法描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperation', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权操作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperationGroup', @level2type=N'COLUMN',@level2name=N'SysNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperationGroup', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperationGroup', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperationGroup', @level2type=N'COLUMN',@level2name=N'Parent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'根组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperationGroup', @level2type=N'COLUMN',@level2name=N'Root'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperationGroup', @level2type=N'COLUMN',@level2name=N'Level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperationGroup', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperationGroup', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权操作组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AuthorityOperationGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'SysNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'Level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'Parent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'SortIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'Role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'Authority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'SysNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Pwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'UserType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'超级管理员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'SuperUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最近登录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'LastLoginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserAuthorize', @level2type=N'COLUMN',@level2name=N'User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserAuthorize', @level2type=N'COLUMN',@level2name=N'Authority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserAuthorize', @level2type=N'COLUMN',@level2name=N'Disable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户授权' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserAuthorize'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserRole', @level2type=N'COLUMN',@level2name=N'UserSysNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserRole', @level2type=N'COLUMN',@level2name=N'RoleSysNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserRole'
GO
