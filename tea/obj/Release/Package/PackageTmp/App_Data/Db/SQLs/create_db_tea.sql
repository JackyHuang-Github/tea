USE [tea]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowRoleUsers]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkflowRoleUsers] DROP CONSTRAINT IF EXISTS [DF_WorkflowRoleUsers_IsEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowMasters]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkflowMasters] DROP CONSTRAINT IF EXISTS [DF_WorkflowMasters_GuidNo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowMasters]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkflowMasters] DROP CONSTRAINT IF EXISTS [DF_WorkflowMasters_IsReject]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowMasters]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkflowMasters] DROP CONSTRAINT IF EXISTS [DF_WorkflowMasters_IsApprove]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkflowDetails] DROP CONSTRAINT IF EXISTS [DF_WorkflowDetails_GuidNo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkflowDetails] DROP CONSTRAINT IF EXISTS [DF_WorkflowDetails_IsReject]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkflowDetails] DROP CONSTRAINT IF EXISTS [DF_WorkflowDetails_IsApprove]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkflowDetails] DROP CONSTRAINT IF EXISTS [DF_WorkflowDetails_IsClose]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TodoLists]') AND type in (N'U'))
ALTER TABLE [dbo].[TodoLists] DROP CONSTRAINT IF EXISTS [DF_TodoLists_IsFinished]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Services]') AND type in (N'U'))
ALTER TABLE [dbo].[Services] DROP CONSTRAINT IF EXISTS [DF_Services_IsEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Securitys]') AND type in (N'U'))
ALTER TABLE [dbo].[Securitys] DROP CONSTRAINT IF EXISTS [DF_Securitys_IsPrint]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Securitys]') AND type in (N'U'))
ALTER TABLE [dbo].[Securitys] DROP CONSTRAINT IF EXISTS [DF_Securitys_IsDownload]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Securitys]') AND type in (N'U'))
ALTER TABLE [dbo].[Securitys] DROP CONSTRAINT IF EXISTS [DF_Securitys_IsUpload]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Securitys]') AND type in (N'U'))
ALTER TABLE [dbo].[Securitys] DROP CONSTRAINT IF EXISTS [DF_Securitys_IsInvalid]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Securitys]') AND type in (N'U'))
ALTER TABLE [dbo].[Securitys] DROP CONSTRAINT IF EXISTS [DF_Securitys_IsUndo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Securitys]') AND type in (N'U'))
ALTER TABLE [dbo].[Securitys] DROP CONSTRAINT IF EXISTS [DF_Securitys_IsConfirm]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Securitys]') AND type in (N'U'))
ALTER TABLE [dbo].[Securitys] DROP CONSTRAINT IF EXISTS [DF_Securitys_IsDelete]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Securitys]') AND type in (N'U'))
ALTER TABLE [dbo].[Securitys] DROP CONSTRAINT IF EXISTS [DF_Securitys_IsEdit]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Securitys]') AND type in (N'U'))
ALTER TABLE [dbo].[Securitys] DROP CONSTRAINT IF EXISTS [DF_Securitys_IsAdd]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT IF EXISTS [DF_Roles_IsEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Propertys]') AND type in (N'U'))
ALTER TABLE [dbo].[Propertys] DROP CONSTRAINT IF EXISTS [DF_Propertys_IsSelect]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Programs]') AND type in (N'U'))
ALTER TABLE [dbo].[Programs] DROP CONSTRAINT IF EXISTS [DF_Programs_PageSize]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Programs]') AND type in (N'U'))
ALTER TABLE [dbo].[Programs] DROP CONSTRAINT IF EXISTS [DF_Programs_IsSearch]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Programs]') AND type in (N'U'))
ALTER TABLE [dbo].[Programs] DROP CONSTRAINT IF EXISTS [DF_Programs_IsPageSize]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Programs]') AND type in (N'U'))
ALTER TABLE [dbo].[Programs] DROP CONSTRAINT IF EXISTS [DF_Programs_IsEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [DF_Products_InventoryQty]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [DF_Products_DiscountPrice]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [DF_Products_SalePrice]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [DF_Products_MarketPrice]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [DF_Products_CostPrice]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [DF_Products_IsShowPhoto]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [DF_Products_Inventory]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [DF_Products_IsEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductPropertys]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductPropertys] DROP CONSTRAINT IF EXISTS [DF_ProductPropertys_IsSelect]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductInventorys]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductInventorys] DROP CONSTRAINT IF EXISTS [DF_ProductInventorys_InventoryQty]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductInventorys]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductInventorys] DROP CONSTRAINT IF EXISTS [DF_ProductInventorys_IsInventory]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pricings]') AND type in (N'U'))
ALTER TABLE [dbo].[Pricings] DROP CONSTRAINT IF EXISTS [DF_Pricings_IsRecommend]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pricings]') AND type in (N'U'))
ALTER TABLE [dbo].[Pricings] DROP CONSTRAINT IF EXISTS [DF_Pricings_IsAdvanced]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pricings]') AND type in (N'U'))
ALTER TABLE [dbo].[Pricings] DROP CONSTRAINT IF EXISTS [DF_Pricings_IsEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PricingDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[PricingDetails] DROP CONSTRAINT IF EXISTS [DF_PricingDetails_IsSupport]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Photos]') AND type in (N'U'))
ALTER TABLE [dbo].[Photos] DROP CONSTRAINT IF EXISTS [DF_Photos_SaleDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrdersStatus]') AND type in (N'U'))
ALTER TABLE [dbo].[OrdersStatus] DROP CONSTRAINT IF EXISTS [DF_OrdersStatus_IsClosed]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrdersStatus]') AND type in (N'U'))
ALTER TABLE [dbo].[OrdersStatus] DROP CONSTRAINT IF EXISTS [DF_OrdersStatus_IsPayed]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT IF EXISTS [DF_Orders_order_IsValid]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT IF EXISTS [DF_Orders_order_IsClosed]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Notifications]') AND type in (N'U'))
ALTER TABLE [dbo].[Notifications] DROP CONSTRAINT IF EXISTS [DF_Notifications_IsRead]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Modules]') AND type in (N'U'))
ALTER TABLE [dbo].[Modules] DROP CONSTRAINT IF EXISTS [DF_Modules_IsWorkflow]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Modules]') AND type in (N'U'))
ALTER TABLE [dbo].[Modules] DROP CONSTRAINT IF EXISTS [DF_Modules_IsEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Messages]') AND type in (N'U'))
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT IF EXISTS [DF_Messages_IsRead]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Forums]') AND type in (N'U'))
ALTER TABLE [dbo].[Forums] DROP CONSTRAINT IF EXISTS [DF_Forums_GuidNo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Forums]') AND type in (N'U'))
ALTER TABLE [dbo].[Forums] DROP CONSTRAINT IF EXISTS [DF_Forums_IsClosed]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Forums]') AND type in (N'U'))
ALTER TABLE [dbo].[Forums] DROP CONSTRAINT IF EXISTS [DF_Forums_IsEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ForumBoards]') AND type in (N'U'))
ALTER TABLE [dbo].[ForumBoards] DROP CONSTRAINT IF EXISTS [DF_ForumBoards_GuidNo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ForumBoards]') AND type in (N'U'))
ALTER TABLE [dbo].[ForumBoards] DROP CONSTRAINT IF EXISTS [DF_ForumBoards_IsEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormMaster]') AND type in (N'U'))
ALTER TABLE [dbo].[FormMaster] DROP CONSTRAINT IF EXISTS [DF_FormMaster_Qty2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormMaster]') AND type in (N'U'))
ALTER TABLE [dbo].[FormMaster] DROP CONSTRAINT IF EXISTS [DF_FormMaster_Qty1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormMaster]') AND type in (N'U'))
ALTER TABLE [dbo].[FormMaster] DROP CONSTRAINT IF EXISTS [DF_FormMaster_FormTime]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormMaster]') AND type in (N'U'))
ALTER TABLE [dbo].[FormMaster] DROP CONSTRAINT IF EXISTS [DF_FormMaster_FormDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormDetail]') AND type in (N'U'))
ALTER TABLE [dbo].[FormDetail] DROP CONSTRAINT IF EXISTS [DF_FormDetail_Qty2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormDetail]') AND type in (N'U'))
ALTER TABLE [dbo].[FormDetail] DROP CONSTRAINT IF EXISTS [DF_FormDetail_Qty1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Featureds]') AND type in (N'U'))
ALTER TABLE [dbo].[Featureds] DROP CONSTRAINT IF EXISTS [DF_Featureds_IsEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Companys]') AND type in (N'U'))
ALTER TABLE [dbo].[Companys] DROP CONSTRAINT IF EXISTS [DF_Companys_IsEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Companys]') AND type in (N'U'))
ALTER TABLE [dbo].[Companys] DROP CONSTRAINT IF EXISTS [DF_Companys_IsDefault]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CodeDatas]') AND type in (N'U'))
ALTER TABLE [dbo].[CodeDatas] DROP CONSTRAINT IF EXISTS [DF_CodeDatas_SortNo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CodeDatas]') AND type in (N'U'))
ALTER TABLE [dbo].[CodeDatas] DROP CONSTRAINT IF EXISTS [DF_CodeDatas_IsEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CodeBases]') AND type in (N'U'))
ALTER TABLE [dbo].[CodeBases] DROP CONSTRAINT IF EXISTS [DF_CodeBases_IsAdmin]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type in (N'U'))
ALTER TABLE [dbo].[Clients] DROP CONSTRAINT IF EXISTS [DF_Clients_IsEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Citys]') AND type in (N'U'))
ALTER TABLE [dbo].[Citys] DROP CONSTRAINT IF EXISTS [DF_Citys_Longitude]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Citys]') AND type in (N'U'))
ALTER TABLE [dbo].[Citys] DROP CONSTRAINT IF EXISTS [DF_Citys_Latitude]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CityAreas]') AND type in (N'U'))
ALTER TABLE [dbo].[CityAreas] DROP CONSTRAINT IF EXISTS [DF_CityAreas_Longitude]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CityAreas]') AND type in (N'U'))
ALTER TABLE [dbo].[CityAreas] DROP CONSTRAINT IF EXISTS [DF_CityAreas_Latitude]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categorys]') AND type in (N'U'))
ALTER TABLE [dbo].[Categorys] DROP CONSTRAINT IF EXISTS [DF_Categorys_IsCategory]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categorys]') AND type in (N'U'))
ALTER TABLE [dbo].[Categorys] DROP CONSTRAINT IF EXISTS [DF_Categorys_IsEnabled]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Carousels]') AND type in (N'U'))
ALTER TABLE [dbo].[Carousels] DROP CONSTRAINT IF EXISTS [DF_Carousels_IsActive]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Calendars]') AND type in (N'U'))
ALTER TABLE [dbo].[Calendars] DROP CONSTRAINT IF EXISTS [DF_Calendars_IsFullday]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Calendars]') AND type in (N'U'))
ALTER TABLE [dbo].[Calendars] DROP CONSTRAINT IF EXISTS [DF_Calendars_EndDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Calendars]') AND type in (N'U'))
ALTER TABLE [dbo].[Calendars] DROP CONSTRAINT IF EXISTS [DF_Calendars_StartDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Calendars]') AND type in (N'U'))
ALTER TABLE [dbo].[Calendars] DROP CONSTRAINT IF EXISTS [DF_Calendars_TargetCode]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Applications]') AND type in (N'U'))
ALTER TABLE [dbo].[Applications] DROP CONSTRAINT IF EXISTS [DF_Applications_MailUseSSL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Applications]') AND type in (N'U'))
ALTER TABLE [dbo].[Applications] DROP CONSTRAINT IF EXISTS [DF_Applications_MailHostPort]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Applications]') AND type in (N'U'))
ALTER TABLE [dbo].[Applications] DROP CONSTRAINT IF EXISTS [DF_Applications_EncryptionMode]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Applications]') AND type in (N'U'))
ALTER TABLE [dbo].[Applications] DROP CONSTRAINT IF EXISTS [DF_Applications_IsDebug]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Applications]') AND type in (N'U'))
ALTER TABLE [dbo].[Applications] DROP CONSTRAINT IF EXISTS [DF_Applications_IsEnabled]
GO
/****** Object:  Index [PK_WorkflowRoutes]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowRoutes]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkflowRoutes] DROP CONSTRAINT IF EXISTS [PK_WorkflowRoutes]
GO
/****** Object:  Index [PK_RoleUsers]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowRoleUsers]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkflowRoleUsers] DROP CONSTRAINT IF EXISTS [PK_RoleUsers]
GO
/****** Object:  Index [PK_WorkflowRoles]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkflowRoles] DROP CONSTRAINT IF EXISTS [PK_WorkflowRoles]
GO
/****** Object:  Index [PK_WorkflowMasters]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowMasters]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkflowMasters] DROP CONSTRAINT IF EXISTS [PK_WorkflowMasters]
GO
/****** Object:  Index [PK_WorkflowDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkflowDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[WorkflowDetails] DROP CONSTRAINT IF EXISTS [PK_WorkflowDetails]
GO
/****** Object:  Index [PK_Vacations]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vacations]') AND type in (N'U'))
ALTER TABLE [dbo].[Vacations] DROP CONSTRAINT IF EXISTS [PK_Vacations]
GO
/****** Object:  Index [PK_Users]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [PK_Users]
GO
/****** Object:  Index [PK_TodoLists]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TodoLists]') AND type in (N'U'))
ALTER TABLE [dbo].[TodoLists] DROP CONSTRAINT IF EXISTS [PK_TodoLists]
GO
/****** Object:  Index [PK_Titles]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Titles]') AND type in (N'U'))
ALTER TABLE [dbo].[Titles] DROP CONSTRAINT IF EXISTS [PK_Titles]
GO
/****** Object:  Index [PK_Teams]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teams]') AND type in (N'U'))
ALTER TABLE [dbo].[Teams] DROP CONSTRAINT IF EXISTS [PK_Teams]
GO
/****** Object:  Index [PK_Shippings]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Shippings]') AND type in (N'U'))
ALTER TABLE [dbo].[Shippings] DROP CONSTRAINT IF EXISTS [PK_Shippings]
GO
/****** Object:  Index [PK_Services]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Services]') AND type in (N'U'))
ALTER TABLE [dbo].[Services] DROP CONSTRAINT IF EXISTS [PK_Services]
GO
/****** Object:  Index [PK_Securitys]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Securitys]') AND type in (N'U'))
ALTER TABLE [dbo].[Securitys] DROP CONSTRAINT IF EXISTS [PK_Securitys]
GO
/****** Object:  Index [PK_Roles]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT IF EXISTS [PK_Roles]
GO
/****** Object:  Index [PK_Propertys]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Propertys]') AND type in (N'U'))
ALTER TABLE [dbo].[Propertys] DROP CONSTRAINT IF EXISTS [PK_Propertys]
GO
/****** Object:  Index [PK_PropertyNames]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyNames]') AND type in (N'U'))
ALTER TABLE [dbo].[PropertyNames] DROP CONSTRAINT IF EXISTS [PK_PropertyNames]
GO
/****** Object:  Index [PK_Promotions]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Promotions]') AND type in (N'U'))
ALTER TABLE [dbo].[Promotions] DROP CONSTRAINT IF EXISTS [PK_Promotions]
GO
/****** Object:  Index [PK_Programs]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Programs]') AND type in (N'U'))
ALTER TABLE [dbo].[Programs] DROP CONSTRAINT IF EXISTS [PK_Programs]
GO
/****** Object:  Index [PK_Products]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [PK_Products]
GO
/****** Object:  Index [PK_ProductRelations]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductRelations]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductRelations] DROP CONSTRAINT IF EXISTS [PK_ProductRelations]
GO
/****** Object:  Index [PK_ProductPropertys]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductPropertys]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductPropertys] DROP CONSTRAINT IF EXISTS [PK_ProductPropertys]
GO
/****** Object:  Index [PK_ProductInventorys]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductInventorys]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductInventorys] DROP CONSTRAINT IF EXISTS [PK_ProductInventorys]
GO
/****** Object:  Index [PK_ProductFeatureds]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductFeatureds]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductFeatureds] DROP CONSTRAINT IF EXISTS [PK_ProductFeatureds]
GO
/****** Object:  Index [PK_Pricings]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pricings]') AND type in (N'U'))
ALTER TABLE [dbo].[Pricings] DROP CONSTRAINT IF EXISTS [PK_Pricings]
GO
/****** Object:  Index [PK_PricingDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PricingDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[PricingDetails] DROP CONSTRAINT IF EXISTS [PK_PricingDetails]
GO
/****** Object:  Index [PK_Photos]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Photos]') AND type in (N'U'))
ALTER TABLE [dbo].[Photos] DROP CONSTRAINT IF EXISTS [PK_Photos]
GO
/****** Object:  Index [PK_Payments]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payments]') AND type in (N'U'))
ALTER TABLE [dbo].[Payments] DROP CONSTRAINT IF EXISTS [PK_Payments]
GO
/****** Object:  Index [PK_OrdersStatus]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrdersStatus]') AND type in (N'U'))
ALTER TABLE [dbo].[OrdersStatus] DROP CONSTRAINT IF EXISTS [PK_OrdersStatus]
GO
/****** Object:  Index [PK_Orders]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT IF EXISTS [PK_Orders]
GO
/****** Object:  Index [PK_OrderDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT IF EXISTS [PK_OrderDetails]
GO
/****** Object:  Index [PK_Notifications]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Notifications]') AND type in (N'U'))
ALTER TABLE [dbo].[Notifications] DROP CONSTRAINT IF EXISTS [PK_Notifications]
GO
/****** Object:  Index [PK_NewsLetter]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsLetter]') AND type in (N'U'))
ALTER TABLE [dbo].[NewsLetter] DROP CONSTRAINT IF EXISTS [PK_NewsLetter]
GO
/****** Object:  Index [IX_News_type_date]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_News_type_date] ON [dbo].[News]
GO
/****** Object:  Index [PK_News]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News]') AND type in (N'U'))
ALTER TABLE [dbo].[News] DROP CONSTRAINT IF EXISTS [PK_News]
GO
/****** Object:  Index [PK_Modules]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Modules]') AND type in (N'U'))
ALTER TABLE [dbo].[Modules] DROP CONSTRAINT IF EXISTS [PK_Modules]
GO
/****** Object:  Index [PK_Messages]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Messages]') AND type in (N'U'))
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT IF EXISTS [PK_Messages]
GO
/****** Object:  Index [PK_MapPositions]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MapPositions]') AND type in (N'U'))
ALTER TABLE [dbo].[MapPositions] DROP CONSTRAINT IF EXISTS [PK_MapPositions]
GO
/****** Object:  Index [PK_Logs]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND type in (N'U'))
ALTER TABLE [dbo].[Logs] DROP CONSTRAINT IF EXISTS [PK_Logs]
GO
/****** Object:  Index [PK_Languages]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Languages]') AND type in (N'U'))
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT IF EXISTS [PK_Languages]
GO
/****** Object:  Index [PK_Forums]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Forums]') AND type in (N'U'))
ALTER TABLE [dbo].[Forums] DROP CONSTRAINT IF EXISTS [PK_Forums]
GO
/****** Object:  Index [PK_ForumBoards]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ForumBoards]') AND type in (N'U'))
ALTER TABLE [dbo].[ForumBoards] DROP CONSTRAINT IF EXISTS [PK_ForumBoards]
GO
/****** Object:  Index [PK_FormMaster]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormMaster]') AND type in (N'U'))
ALTER TABLE [dbo].[FormMaster] DROP CONSTRAINT IF EXISTS [PK_FormMaster]
GO
/****** Object:  Index [PK_FormDetail]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormDetail]') AND type in (N'U'))
ALTER TABLE [dbo].[FormDetail] DROP CONSTRAINT IF EXISTS [PK_FormDetail]
GO
/****** Object:  Index [PK_Featureds]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Featureds]') AND type in (N'U'))
ALTER TABLE [dbo].[Featureds] DROP CONSTRAINT IF EXISTS [PK_Featureds]
GO
/****** Object:  Index [PK_ExtensionTables]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtensionTables]') AND type in (N'U'))
ALTER TABLE [dbo].[ExtensionTables] DROP CONSTRAINT IF EXISTS [PK_ExtensionTables]
GO
/****** Object:  Index [PK_Employees]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT IF EXISTS [PK_Employees]
GO
/****** Object:  Index [PK_Departments]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Departments]') AND type in (N'U'))
ALTER TABLE [dbo].[Departments] DROP CONSTRAINT IF EXISTS [PK_Departments]
GO
/****** Object:  Index [PK_Companys]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Companys]') AND type in (N'U'))
ALTER TABLE [dbo].[Companys] DROP CONSTRAINT IF EXISTS [PK_Companys]
GO
/****** Object:  Index [PK_CodeDatas]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CodeDatas]') AND type in (N'U'))
ALTER TABLE [dbo].[CodeDatas] DROP CONSTRAINT IF EXISTS [PK_CodeDatas]
GO
/****** Object:  Index [IX_CodeBases_admin_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_CodeBases_admin_no] ON [dbo].[CodeBases]
GO
/****** Object:  Index [PK_CodeBases]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CodeBases]') AND type in (N'U'))
ALTER TABLE [dbo].[CodeBases] DROP CONSTRAINT IF EXISTS [PK_CodeBases]
GO
/****** Object:  Index [PK_CloseDates]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CloseDates]') AND type in (N'U'))
ALTER TABLE [dbo].[CloseDates] DROP CONSTRAINT IF EXISTS [PK_CloseDates]
GO
/****** Object:  Index [PK_Clients]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type in (N'U'))
ALTER TABLE [dbo].[Clients] DROP CONSTRAINT IF EXISTS [PK_Clients]
GO
/****** Object:  Index [PK_Citys]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Citys]') AND type in (N'U'))
ALTER TABLE [dbo].[Citys] DROP CONSTRAINT IF EXISTS [PK_Citys]
GO
/****** Object:  Index [PK_CityAreas]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CityAreas]') AND type in (N'U'))
ALTER TABLE [dbo].[CityAreas] DROP CONSTRAINT IF EXISTS [PK_CityAreas]
GO
/****** Object:  Index [PK_Categorys]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categorys]') AND type in (N'U'))
ALTER TABLE [dbo].[Categorys] DROP CONSTRAINT IF EXISTS [PK_Categorys]
GO
/****** Object:  Index [PK_Carts]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Carts]') AND type in (N'U'))
ALTER TABLE [dbo].[Carts] DROP CONSTRAINT IF EXISTS [PK_Carts]
GO
/****** Object:  Index [PK_Carousels]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Carousels]') AND type in (N'U'))
ALTER TABLE [dbo].[Carousels] DROP CONSTRAINT IF EXISTS [PK_Carousels]
GO
/****** Object:  Index [PK_Calendars]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Calendars]') AND type in (N'U'))
ALTER TABLE [dbo].[Calendars] DROP CONSTRAINT IF EXISTS [PK_Calendars]
GO
/****** Object:  Index [PK_Applications]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Applications]') AND type in (N'U'))
ALTER TABLE [dbo].[Applications] DROP CONSTRAINT IF EXISTS [PK_Applications]
GO
/****** Object:  Index [PK_AddressBooks]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddressBooks]') AND type in (N'U'))
ALTER TABLE [dbo].[AddressBooks] DROP CONSTRAINT IF EXISTS [PK_AddressBooks]
GO
/****** Object:  Index [PK_AboutUsDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AboutUsDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[AboutUsDetails] DROP CONSTRAINT IF EXISTS [PK_AboutUsDetails]
GO
/****** Object:  Index [PK_AboutUs]    Script Date: 2023/6/1 下午 02:43:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AboutUs]') AND type in (N'U'))
ALTER TABLE [dbo].[AboutUs] DROP CONSTRAINT IF EXISTS [PK_AboutUs]
GO
/****** Object:  Index [IX_WorkflowRoutes_pno_rorder]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_WorkflowRoutes_pno_rorder] ON [dbo].[WorkflowRoutes] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[WorkflowRoutes]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[WorkflowRoutes]
GO
/****** Object:  Index [IX_WorkflowRoleUsers_rno_uno]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_WorkflowRoleUsers_rno_uno] ON [dbo].[WorkflowRoleUsers] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[WorkflowRoleUsers]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[WorkflowRoleUsers]
GO
/****** Object:  Index [IX_WorkflowRoles_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_WorkflowRoles_no] ON [dbo].[WorkflowRoles] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[WorkflowRoles]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[WorkflowRoles]
GO
/****** Object:  Index [IX_WorkflowMasters_fguid_fno_stime]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_WorkflowMasters_fguid_fno_stime] ON [dbo].[WorkflowMasters] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[WorkflowMasters]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[WorkflowMasters]
GO
/****** Object:  Index [IX_WorkflowDetails_mguid_rguid_rorder]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_WorkflowDetails_mguid_rguid_rorder] ON [dbo].[WorkflowDetails] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[WorkflowDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[WorkflowDetails]
GO
/****** Object:  Index [IX_Vacations_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Vacations_no] ON [dbo].[Vacations] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Vacations]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Vacations]
GO
/****** Object:  Index [IX_TodoLists_uno_date]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_TodoLists_uno_date] ON [dbo].[TodoLists] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[TodoLists]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[TodoLists]
GO
/****** Object:  Index [IX_Titles_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Titles_no] ON [dbo].[Titles] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Titles]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Titles]
GO
/****** Object:  Index [IX_Teams_sort_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Teams_sort_no] ON [dbo].[Teams] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Teams]
GO
/****** Object:  Index [IX_Shippings_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Shippings_no] ON [dbo].[Shippings] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Shippings]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Shippings]
GO
/****** Object:  Index [IX_Services_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Services_sort_name] ON [dbo].[Services] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Services]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Services]
GO
/****** Object:  Index [IX_Securitys_rno_tno_mno_pno]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Securitys_rno_tno_mno_pno] ON [dbo].[Securitys] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Securitys]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Securitys]
GO
/****** Object:  Index [IX_Roles_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Roles_no] ON [dbo].[Roles] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Roles]
GO
/****** Object:  Index [IX_Propertys_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Propertys_no] ON [dbo].[Propertys] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Propertys]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Propertys]
GO
/****** Object:  Index [IX_PropertyNames_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_PropertyNames_name] ON [dbo].[PropertyNames] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[PropertyNames]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[PropertyNames]
GO
/****** Object:  Index [IX_Promotions_stime_etime_pno]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Promotions_stime_etime_pno] ON [dbo].[Promotions] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Promotions]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Promotions]
GO
/****** Object:  Index [IX_Programs_mno_sort_pno]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Programs_mno_sort_pno] ON [dbo].[Programs] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Programs]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Programs]
GO
/****** Object:  Index [IX_Products_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Products_no] ON [dbo].[Products] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Products]
GO
/****** Object:  Index [IX_ProductRelations_pno_cno]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_ProductRelations_pno_cno] ON [dbo].[ProductRelations] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[ProductRelations]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[ProductRelations]
GO
/****** Object:  Index [IX_ProductPropertys_pno_prodno]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_ProductPropertys_pno_prodno] ON [dbo].[ProductPropertys] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[ProductPropertys]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[ProductPropertys]
GO
/****** Object:  Index [IX_ProductInventorys_pno_propno]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_ProductInventorys_pno_propno] ON [dbo].[ProductInventorys] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[ProductInventorys]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[ProductInventorys]
GO
/****** Object:  Index [IX_ProductFeatureds_pno_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_ProductFeatureds_pno_sort_name] ON [dbo].[ProductFeatureds] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[ProductFeatureds]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[ProductFeatureds]
GO
/****** Object:  Index [IX_Pricings_sort_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Pricings_sort_no] ON [dbo].[Pricings] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Pricings]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Pricings]
GO
/****** Object:  Index [IX_PricingDetails_pno_sort]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_PricingDetails_pno_sort] ON [dbo].[PricingDetails] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[PricingDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[PricingDetails]
GO
/****** Object:  Index [IX_Photos_type_folder]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Photos_type_folder] ON [dbo].[Photos] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Photos]
GO
/****** Object:  Index [IX_Payments_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Payments_no] ON [dbo].[Payments] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Payments]
GO
/****** Object:  Index [IX_OrdersStatus_sno]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_OrdersStatus_sno] ON [dbo].[OrdersStatus] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[OrdersStatus]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[OrdersStatus]
GO
/****** Object:  Index [IX_Orders_sno]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Orders_sno] ON [dbo].[Orders] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Orders]
GO
/****** Object:  Index [IX_OrderDetails_sno]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_OrderDetails_sno] ON [dbo].[OrderDetails] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[OrderDetails]
GO
/****** Object:  Index [IX_Notifications_rno_date_time]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Notifications_rno_date_time] ON [dbo].[Notifications] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Notifications]
GO
/****** Object:  Index [IX_NewsLetter_email]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_NewsLetter_email] ON [dbo].[NewsLetter] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[NewsLetter]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[NewsLetter]
GO
/****** Object:  Index [IX_News_date]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_News_date] ON [dbo].[News] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[News]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[News]
GO
/****** Object:  Index [IX_Modules_role_sort_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Modules_role_sort_no] ON [dbo].[Modules] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Modules]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Modules]
GO
/****** Object:  Index [IX_Messages_rno_date_time]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Messages_rno_date_time] ON [dbo].[Messages] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Messages]
GO
/****** Object:  Index [IX_MapPositions_code_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_MapPositions_code_no] ON [dbo].[MapPositions] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[MapPositions]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[MapPositions]
GO
/****** Object:  Index [IX_Logs_date_time]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Logs_date_time] ON [dbo].[Logs] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Logs]
GO
/****** Object:  Index [IX_Languages_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Languages_no] ON [dbo].[Languages] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Languages]
GO
/****** Object:  Index [IX_Forums_pid_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Forums_pid_sort_name] ON [dbo].[Forums] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Forums]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Forums]
GO
/****** Object:  Index [IX_ForumBoards_pid_sort_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_ForumBoards_pid_sort_no] ON [dbo].[ForumBoards] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[ForumBoards]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[ForumBoards]
GO
/****** Object:  Index [IX_FormMaster_code_user_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_FormMaster_code_user_no] ON [dbo].[FormMaster] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[FormMaster]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[FormMaster]
GO
/****** Object:  Index [IX_FormDetail]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_FormDetail] ON [dbo].[FormDetail] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[FormDetail]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[FormDetail]
GO
/****** Object:  Index [IX_Featureds_sort_pno]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Featureds_sort_pno] ON [dbo].[Featureds] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Featureds]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Featureds]
GO
/****** Object:  Index [IX_ExtensionTables_pid_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_ExtensionTables_pid_sort_name] ON [dbo].[ExtensionTables] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[ExtensionTables]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[ExtensionTables]
GO
/****** Object:  Index [IX_Employees_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Employees_no] ON [dbo].[Employees] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Employees]
GO
/****** Object:  Index [IX_Departments_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Departments_no] ON [dbo].[Departments] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Departments]
GO
/****** Object:  Index [IX_CodeBases_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_CodeBases_no] ON [dbo].[CodeBases] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[CodeBases]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[CodeBases]
GO
/****** Object:  Index [IX_CloseDates_code_start]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_CloseDates_code_start] ON [dbo].[CloseDates] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[CloseDates]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[CloseDates]
GO
/****** Object:  Index [IX_Clients_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Clients_sort_name] ON [dbo].[Clients] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Clients]
GO
/****** Object:  Index [IX_Citys_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Citys_sort_name] ON [dbo].[Citys] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Citys]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Citys]
GO
/****** Object:  Index [IX_CityAreas_city_area]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_CityAreas_city_area] ON [dbo].[CityAreas] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[CityAreas]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[CityAreas]
GO
/****** Object:  Index [IX_Categorys_pno_sno_cno]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Categorys_pno_sno_cno] ON [dbo].[Categorys] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Categorys]
GO
/****** Object:  Index [IX_Carts_lno_pno]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Carts_lno_pno] ON [dbo].[Carts] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Carts]
GO
/****** Object:  Index [IX_Carousels_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Carousels_sort_name] ON [dbo].[Carousels] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Carousels]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Carousels]
GO
/****** Object:  Index [IX_Calendars_code_target_date]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Calendars_code_target_date] ON [dbo].[Calendars] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Calendars]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Calendars]
GO
/****** Object:  Index [IX_Applications_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Applications_name] ON [dbo].[Applications] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Applications]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Applications]
GO
/****** Object:  Index [IX_AddressBooks_uno_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_AddressBooks_uno_no] ON [dbo].[AddressBooks] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[AddressBooks]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[AddressBooks]
GO
/****** Object:  Index [IX_AboutUsDetails_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_AboutUsDetails_sort_name] ON [dbo].[AboutUsDetails] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[AboutUsDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[AboutUsDetails]
GO
/****** Object:  Index [IX_AboutUs_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_AboutUs_name] ON [dbo].[AboutUs] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[AboutUs]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[AboutUs]
GO
/****** Object:  View [dbo].[vi_UserVendor]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_UserVendor]
GO
/****** Object:  View [dbo].[vi_UserUser]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_UserUser]
GO
/****** Object:  View [dbo].[vi_UserTarget]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_UserTarget]
GO
/****** Object:  View [dbo].[vi_UserOperator]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_UserOperator]
GO
/****** Object:  View [dbo].[vi_UserMis]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_UserMis]
GO
/****** Object:  View [dbo].[vi_UserCustomer]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_UserCustomer]
GO
/****** Object:  Index [IX_Users_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Users_no] ON [dbo].[Users] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Users]
GO
/****** Object:  View [dbo].[vi_CompVendor]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CompVendor]
GO
/****** Object:  View [dbo].[vi_CompCustomer]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CompCustomer]
GO
/****** Object:  View [dbo].[vi_CompCompany]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CompCompany]
GO
/****** Object:  Index [IX_Companys_code_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_Companys_code_no] ON [dbo].[Companys] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Companys]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[Companys]
GO
/****** Object:  View [dbo].[vi_CodeVendor]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeVendor]
GO
/****** Object:  View [dbo].[vi_CodeVacation]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeVacation]
GO
/****** Object:  View [dbo].[vi_CodeUser]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeUser]
GO
/****** Object:  View [dbo].[vi_TodoList]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_TodoList]
GO
/****** Object:  View [dbo].[vi_CodeTax]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeTax]
GO
/****** Object:  View [dbo].[vi_CodeTarget]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeTarget]
GO
/****** Object:  View [dbo].[vi_CodeSize]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeSize]
GO
/****** Object:  View [dbo].[vi_CodeSheet]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeSheet]
GO
/****** Object:  View [dbo].[vi_CodeResignReason]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeResignReason]
GO
/****** Object:  View [dbo].[vi_CodeProgram]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeProgram]
GO
/****** Object:  View [dbo].[vi_CodePhoto]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodePhoto]
GO
/****** Object:  View [dbo].[vi_CodeNotification]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeNotification]
GO
/****** Object:  View [dbo].[vi_CodeNews]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeNews]
GO
/****** Object:  View [dbo].[vi_CodeMessage]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeMessage]
GO
/****** Object:  View [dbo].[vi_CodeMember]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeMember]
GO
/****** Object:  View [dbo].[vi_CodeMaterial]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeMaterial]
GO
/****** Object:  View [dbo].[vi_CodeLog]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeLog]
GO
/****** Object:  View [dbo].[vi_CodeGender]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeGender]
GO
/****** Object:  View [dbo].[vi_CodeFormStatus]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeFormStatus]
GO
/****** Object:  View [dbo].[vi_CodeCustomer]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeCustomer]
GO
/****** Object:  View [dbo].[vi_CodeColor]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeColor]
GO
/****** Object:  View [dbo].[vi_CodeCompany]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeCompany]
GO
/****** Object:  View [dbo].[vi_CodeCloseDate]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeCloseDate]
GO
/****** Object:  View [dbo].[vi_CodeCalendar]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeCalendar]
GO
/****** Object:  View [dbo].[vi_CodeBrand]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeBrand]
GO
/****** Object:  View [dbo].[vi_CodeAddressBook]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP VIEW IF EXISTS [dbo].[vi_CodeAddressBook]
GO
/****** Object:  Index [IX_BaseDatas_no_pno_sort_code]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP INDEX IF EXISTS [IX_BaseDatas_no_pno_sort_code] ON [dbo].[CodeDatas] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[CodeDatas]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP TABLE IF EXISTS [dbo].[CodeDatas]
GO
/****** Object:  User [tea]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP USER IF EXISTS [tea]
GO
USE [master]
GO
/****** Object:  Database [tea]    Script Date: 2023/6/1 下午 02:43:40 ******/
DROP DATABASE IF EXISTS [tea]
GO
/****** Object:  Database [tea]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE DATABASE [tea]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tea', FILENAME = N'D:\DB\SQL2019\tea.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tea_log', FILENAME = N'D:\DB\SQL2019\tea_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [tea] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tea].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tea] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tea] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tea] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tea] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tea] SET ARITHABORT OFF 
GO
ALTER DATABASE [tea] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tea] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tea] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tea] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tea] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tea] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tea] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tea] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tea] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tea] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tea] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tea] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tea] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tea] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tea] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tea] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tea] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tea] SET RECOVERY FULL 
GO
ALTER DATABASE [tea] SET  MULTI_USER 
GO
ALTER DATABASE [tea] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tea] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tea] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tea] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tea] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [tea] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'tea', N'ON'
GO
ALTER DATABASE [tea] SET QUERY_STORE = OFF
GO
USE [tea]
GO
/****** Object:  User [tea]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE USER [tea] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [tea]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
GRANT CONNECT TO [tea] AS [dbo]
GO
/****** Object:  Table [dbo].[CodeDatas]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodeDatas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[BaseNo] [nvarchar](50) NULL,
	[ParentNo] [nvarchar](50) NULL,
	[SortNo] [nvarchar](50) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[CodeName] [nvarchar](50) NULL,
	[CodeValue] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BaseDatas_no_pno_sort_code]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_BaseDatas_no_pno_sort_code] ON [dbo].[CodeDatas]
(
	[BaseNo] ASC,
	[ParentNo] ASC,
	[SortNo] ASC,
	[CodeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vi_CodeAddressBook]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeAddressBook]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'AddressBook')
GO
/****** Object:  View [dbo].[vi_CodeBrand]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeBrand]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Brand')
GO
/****** Object:  View [dbo].[vi_CodeCalendar]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeCalendar]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Calendar')
GO
/****** Object:  View [dbo].[vi_CodeCloseDate]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeCloseDate]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'CloseDate')
GO
/****** Object:  View [dbo].[vi_CodeCompany]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeCompany]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Company')
GO
/****** Object:  View [dbo].[vi_CodeColor]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeColor]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Color')
GO
/****** Object:  View [dbo].[vi_CodeCustomer]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeCustomer]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Customer')
GO
/****** Object:  View [dbo].[vi_CodeFormStatus]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeFormStatus]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'FormStatus')
GO
/****** Object:  View [dbo].[vi_CodeGender]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeGender]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Gender')
GO
/****** Object:  View [dbo].[vi_CodeLog]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeLog]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Log')
GO
/****** Object:  View [dbo].[vi_CodeMaterial]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeMaterial]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Material')
GO
/****** Object:  View [dbo].[vi_CodeMember]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeMember]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Member')
GO
/****** Object:  View [dbo].[vi_CodeMessage]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeMessage]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Message')
GO
/****** Object:  View [dbo].[vi_CodeNews]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeNews]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'News')
GO
/****** Object:  View [dbo].[vi_CodeNotification]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeNotification]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Notification')
GO
/****** Object:  View [dbo].[vi_CodePhoto]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodePhoto]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Photo')
GO
/****** Object:  View [dbo].[vi_CodeProgram]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeProgram]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Program')
GO
/****** Object:  View [dbo].[vi_CodeResignReason]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeResignReason]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'ResignReason')
GO
/****** Object:  View [dbo].[vi_CodeSheet]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeSheet]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Sheet')
GO
/****** Object:  View [dbo].[vi_CodeSize]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeSize]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Size')
GO
/****** Object:  View [dbo].[vi_CodeTarget]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeTarget]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Target')
GO
/****** Object:  View [dbo].[vi_CodeTax]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeTax]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Tax')
GO
/****** Object:  View [dbo].[vi_TodoList]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_TodoList]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'TodoList')
GO
/****** Object:  View [dbo].[vi_CodeUser]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeUser]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'User')
GO
/****** Object:  View [dbo].[vi_CodeVacation]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeVacation]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Vacation')
GO
/****** Object:  View [dbo].[vi_CodeVendor]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CodeVendor]
AS
SELECT Id, IsEnabled, BaseNo, ParentNo, SortNo, CodeNo, CodeName, CodeValue, Remark
FROM dbo.CodeDatas
WHERE (BaseNo = N'Vendor')
GO
/****** Object:  Table [dbo].[Companys]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[CompNo] [nvarchar](50) NULL,
	[CompName] [nvarchar](250) NULL,
	[ShortName] [nvarchar](50) NULL,
	[EngName] [nvarchar](250) NULL,
	[EngShortName] [nvarchar](50) NULL,
	[RegisterDate] [datetime] NOT NULL,
	[BossName] [nvarchar](50) NULL,
	[ContactName] [nvarchar](50) NULL,
	[CompTel] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[CompFax] [nvarchar](50) NULL,
	[CompID] [nvarchar](50) NULL,
	[ContactEmail] [nvarchar](50) NULL,
	[CompAddress] [nvarchar](250) NULL,
	[CompUrl] [nvarchar](250) NULL,
	[TwitterUrl] [nvarchar](250) NULL,
	[FacebookUrl] [nvarchar](250) NULL,
	[InstagramUrl] [nvarchar](250) NULL,
	[SkypeUrl] [nvarchar](250) NULL,
	[LinkedinUrl] [nvarchar](250) NULL,
	[Latitude] [decimal](20, 15) NOT NULL,
	[Longitude] [decimal](20, 15) NOT NULL,
	[AboutusText] [nvarchar](max) NULL,
	[SupportText] [nvarchar](max) NULL,
	[ReturnText] [nvarchar](max) NULL,
	[ShippingText] [nvarchar](max) NULL,
	[PaymentText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Companys_code_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Companys_code_no] ON [dbo].[Companys]
(
	[CodeNo] ASC,
	[CompNo] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vi_CompCompany]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vi_CompCompany]
AS
SELECT Id, IsDefault, IsEnabled, CodeNo, CompNo, CompName, ShortName, EngName, EngShortName, RegisterDate, BossName, ContactName, CompTel, ContactTel, CompFax, CompID, ContactEmail, CompAddress, CompUrl, TwitterUrl, FacebookUrl, InstagramUrl, SkypeUrl, LinkedinUrl, Latitude, Longitude, AboutusText, SupportText, ReturnText, ShippingText, PaymentText, Remark
FROM dbo.Companys
WHERE (CodeNo = N'Company')
GO
/****** Object:  View [dbo].[vi_CompCustomer]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CompCustomer]
AS
SELECT Id, IsDefault, IsEnabled, CodeNo, CompNo, CompName, ShortName, EngName, EngShortName, RegisterDate, BossName, ContactName, CompTel, ContactTel, CompFax, CompID, ContactEmail, CompAddress, CompUrl, TwitterUrl, FacebookUrl, InstagramUrl, SkypeUrl, LinkedinUrl, Latitude, Longitude, AboutusText, SupportText, ReturnText, ShippingText, PaymentText, Remark
FROM dbo.Companys
WHERE (CodeNo = N'Customer')
GO
/****** Object:  View [dbo].[vi_CompVendor]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_CompVendor]
AS
SELECT Id, IsDefault, IsEnabled, CodeNo, CompNo, CompName, ShortName, EngName, EngShortName, RegisterDate, BossName, ContactName, CompTel, ContactTel, CompFax, CompID, ContactEmail, CompAddress, CompUrl, TwitterUrl, FacebookUrl, InstagramUrl, SkypeUrl, LinkedinUrl, Latitude, Longitude, AboutusText, SupportText, ReturnText, ShippingText, PaymentText, Remark
FROM dbo.Companys
WHERE (CodeNo = N'Vendor')
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsValid] [bit] NOT NULL,
	[UserNo] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[RoleNo] [nvarchar](50) NULL,
	[GenderCode] [nvarchar](50) NULL,
	[DeptNo] [nvarchar](50) NULL,
	[TitleNo] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[OnboardDate] [date] NULL,
	[LeaveDate] [date] NULL,
	[ContactEmail] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[ContactAddress] [nvarchar](250) NULL,
	[ValidateCode] [nvarchar](50) NULL,
	[NotifyPassword] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Users_no] ON [dbo].[Users]
(
	[UserNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vi_UserCustomer]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_UserCustomer]
AS
SELECT Id, IsValid, UserNo, UserName, Password, CodeNo, RoleNo, GenderCode, DeptNo, TitleNo, Birthday, OnboardDate, LeaveDate, ContactEmail, ContactTel, ContactAddress, ValidateCode, Remark
FROM dbo.Users
WHERE (CodeNo = N'Customer')
GO
/****** Object:  View [dbo].[vi_UserMis]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_UserMis]
AS
SELECT Id, IsValid, UserNo, UserName, Password, CodeNo, RoleNo, GenderCode, DeptNo, TitleNo, Birthday, OnboardDate, LeaveDate, ContactEmail, ContactTel, ContactAddress, ValidateCode, Remark
FROM dbo.Users
WHERE (CodeNo = N'Mis')
GO
/****** Object:  View [dbo].[vi_UserOperator]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_UserOperator]
AS
SELECT Id, IsValid, UserNo, UserName, Password, CodeNo, RoleNo, GenderCode, DeptNo, TitleNo, Birthday, OnboardDate, LeaveDate, ContactEmail, ContactTel, ContactAddress, ValidateCode, Remark
FROM dbo.Users
WHERE (CodeNo = N'Operator')
GO
/****** Object:  View [dbo].[vi_UserTarget]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_UserTarget]
AS
SELECT Id, IsValid, UserNo, UserName, Password, CodeNo, RoleNo, GenderCode, DeptNo, TitleNo, Birthday, OnboardDate, LeaveDate, ContactEmail, ContactTel, ContactAddress, ValidateCode, Remark
FROM dbo.Users
WHERE (CodeNo = N'Target')
GO
/****** Object:  View [dbo].[vi_UserUser]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_UserUser]
AS
SELECT Id, IsValid, UserNo, UserName, Password, CodeNo, RoleNo, GenderCode, DeptNo, TitleNo, Birthday, OnboardDate, LeaveDate, ContactEmail, ContactTel, ContactAddress, ValidateCode, Remark
FROM dbo.Users
WHERE (CodeNo = N'User')
GO
/****** Object:  View [dbo].[vi_UserVendor]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vi_UserVendor]
AS
SELECT Id, IsValid, UserNo, UserName, Password, CodeNo, RoleNo, GenderCode, DeptNo, TitleNo, Birthday, OnboardDate, LeaveDate, ContactEmail, ContactTel, ContactAddress, ValidateCode, Remark
FROM dbo.Users
WHERE (CodeNo = N'Vendor')
GO
/****** Object:  Table [dbo].[AboutUs]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HeaderName] [nvarchar](250) NULL,
	[TitleName] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[DetailText] [nvarchar](500) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AboutUs_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_AboutUs_name] ON [dbo].[AboutUs]
(
	[HeaderName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AboutUsDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutUsDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ItemName] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AboutUsDetails_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_AboutUsDetails_sort_name] ON [dbo].[AboutUsDetails]
(
	[SortNo] ASC,
	[ItemName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AddressBooks]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressBooks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserNo] [nvarchar](50) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[EngName] [nvarchar](50) NULL,
	[GenderCode] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[CompName] [nvarchar](250) NULL,
	[CompID] [nvarchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[TitleName] [nvarchar](50) NULL,
	[CompTel] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[ContactEmail] [nvarchar](50) NULL,
	[ContactAddress] [nvarchar](250) NULL,
	[LineID] [nvarchar](50) NULL,
	[FacebookID] [nvarchar](50) NULL,
	[TwitterID] [nvarchar](50) NULL,
	[InstagramID] [nvarchar](50) NULL,
	[LinkedInID] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AddressBooks_uno_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_AddressBooks_uno_no] ON [dbo].[AddressBooks]
(
	[UserNo] ASC,
	[CodeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Applications]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsDebug] [bit] NOT NULL,
	[AppName] [nvarchar](50) NULL,
	[AdminName] [nvarchar](50) NULL,
	[ShopName] [nvarchar](50) NULL,
	[AppVersion] [nvarchar](50) NULL,
	[EncryptionMode] [bit] NOT NULL,
	[PowerBy] [nvarchar](50) NULL,
	[LanguageNo] [nvarchar](50) NULL,
	[GoogleMapKey] [nvarchar](50) NULL,
	[MailSenderName] [nvarchar](50) NULL,
	[MailSenderEmail] [nvarchar](50) NULL,
	[MailReceiverName] [nvarchar](50) NULL,
	[MailReceiverEmail] [nvarchar](50) NULL,
	[MailAppPassword] [nvarchar](50) NULL,
	[MailHostUrl] [nvarchar](250) NULL,
	[MailHostPort] [int] NOT NULL,
	[MailUseSSL] [bit] NOT NULL,
	[WebSiteUrl] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Applications_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Applications_name] ON [dbo].[Applications]
(
	[AppName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calendars]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TargetCode] [nvarchar](50) NULL,
	[TargetNo] [nvarchar](50) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[SubjectName] [nvarchar](50) NULL,
	[StartDate] [datetime] NOT NULL,
	[StartTime] [nvarchar](50) NULL,
	[EndDate] [datetime] NOT NULL,
	[EndTime] [nvarchar](50) NULL,
	[ColorName] [nvarchar](50) NULL,
	[IsFullday] [bit] NOT NULL,
	[PlaceName] [nvarchar](250) NULL,
	[ContactName] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[PlaceAddress] [nvarchar](250) NULL,
	[RoomNo] [nvarchar](50) NULL,
	[ResourceText] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Calendars_code_target_date]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Calendars_code_target_date] ON [dbo].[Calendars]
(
	[TargetCode] ASC,
	[TargetNo] ASC,
	[StartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carousels]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carousels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[HeaderName] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](250) NULL,
	[MoreUrl] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Carousels_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Carousels_sort_name] ON [dbo].[Carousels]
(
	[SortNo] ASC,
	[HeaderName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LotNo] [nvarchar](50) NULL,
	[MemberNo] [nvarchar](50) NULL,
	[VendorNo] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[CategoryName] [nvarchar](250) NULL,
	[ProdNo] [nvarchar](50) NULL,
	[ProdName] [nvarchar](250) NULL,
	[ProdSpec] [nvarchar](250) NULL,
	[OrderQty] [int] NOT NULL,
	[OrderPrice] [int] NOT NULL,
	[OrderAmount] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Carts_lno_pno]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Carts_lno_pno] ON [dbo].[Carts]
(
	[LotNo] ASC,
	[ProdNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsCategory] [bit] NOT NULL,
	[ParentNo] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[SortNo] [nvarchar](50) NULL,
	[CategoryName] [nvarchar](50) NULL,
	[RouteName] [nvarchar](500) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Categorys_pno_sno_cno]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Categorys_pno_sno_cno] ON [dbo].[Categorys]
(
	[ParentNo] ASC,
	[SortNo] ASC,
	[CategoryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityAreas]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityAreas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[AreaName] [nvarchar](50) NULL,
	[Latitude] [decimal](18, 15) NULL,
	[Longitude] [decimal](18, 15) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CityAreas_city_area]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_CityAreas_city_area] ON [dbo].[CityAreas]
(
	[CityName] ASC,
	[AreaName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Citys]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[CityName] [nvarchar](50) NULL,
	[Latitude] [decimal](18, 15) NULL,
	[Longitude] [decimal](18, 15) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Citys_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Citys_sort_name] ON [dbo].[Citys]
(
	[SortNo] ASC,
	[CityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ClientName] [nvarchar](50) NULL,
	[ImageUrl] [nvarchar](250) NULL,
	[WebsiteUrl] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Clients_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Clients_sort_name] ON [dbo].[Clients]
(
	[SortNo] ASC,
	[ClientName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CloseDates]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CloseDates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CloseDates_code_start]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_CloseDates_code_start] ON [dbo].[CloseDates]
(
	[CodeNo] ASC,
	[StartDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CodeBases]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodeBases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[BaseNo] [nvarchar](50) NULL,
	[BaseName] [nvarchar](50) NULL,
	[DefaultValue] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CodeBases_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_CodeBases_no] ON [dbo].[CodeBases]
(
	[BaseNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeptNo] [nvarchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Departments_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Departments_no] ON [dbo].[Departments]
(
	[DeptNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsValid] [bit] NOT NULL,
	[EmpNo] [nvarchar](50) NULL,
	[EmpName] [nvarchar](50) NULL,
	[GenderCode] [nvarchar](50) NULL,
	[DeptNo] [nvarchar](50) NULL,
	[TitleNo] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[OnboardDate] [date] NULL,
	[LeaveDate] [date] NULL,
	[ContactEmail] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[ContactAddress] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Employees_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Employees_no] ON [dbo].[Employees]
(
	[EmpNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtensionTables]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtensionTables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ExtName] [nvarchar](50) NULL,
	[ExtNo] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ExtensionTables_pid_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_ExtensionTables_pid_sort_name] ON [dbo].[ExtensionTables]
(
	[ParentId] ASC,
	[SortNo] ASC,
	[ExtName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Featureds]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Featureds](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ProdNo] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Featureds_sort_pno]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Featureds_sort_pno] ON [dbo].[Featureds]
(
	[SortNo] ASC,
	[ProdNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormDetail]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[FormCode] [nvarchar](50) NULL,
	[FormNo] [nvarchar](50) NULL,
	[GuidNo] [nvarchar](50) NULL,
	[TargetNo] [nvarchar](50) NULL,
	[TargetName] [nvarchar](50) NULL,
	[DeptNo] [nvarchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[TitleNo] [nvarchar](50) NULL,
	[TitleName] [nvarchar](50) NULL,
	[StartDate] [date] NULL,
	[StartTime] [datetime] NULL,
	[EndDate] [date] NULL,
	[EndTime] [datetime] NULL,
	[CodeNo] [nvarchar](50) NULL,
	[CodeName] [nvarchar](50) NULL,
	[Qty1] [int] NOT NULL,
	[Qty2] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FormDetail]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_FormDetail] ON [dbo].[FormDetail]
(
	[FormCode] ASC,
	[FormNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormMaster]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FormCode] [nvarchar](50) NULL,
	[UserNo] [nvarchar](50) NULL,
	[StatusCode] [nvarchar](50) NULL,
	[FormNo] [nvarchar](50) NULL,
	[FormDate] [date] NULL,
	[FormTime] [datetime] NULL,
	[TargetNo] [nvarchar](50) NULL,
	[TargetName] [nvarchar](50) NULL,
	[DeptNo] [nvarchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[TitleNo] [nvarchar](50) NULL,
	[TitleName] [nvarchar](50) NULL,
	[StartDate] [date] NULL,
	[StartTime] [datetime] NULL,
	[EndDate] [date] NULL,
	[EndTime] [datetime] NULL,
	[CodeNo] [nvarchar](50) NULL,
	[CodeName] [nvarchar](50) NULL,
	[Qty1] [int] NOT NULL,
	[Qty2] [int] NOT NULL,
	[ApproveTime] [datetime] NULL,
	[RejectTime] [datetime] NULL,
	[SourceNo] [nvarchar](50) NULL,
	[ApproveNo] [nvarchar](50) NULL,
	[RejectNo] [nvarchar](50) NULL,
	[NextNo] [nvarchar](50) NULL,
	[GuidNo] [nvarchar](50) NULL,
	[NotifyKey] [nvarchar](50) NULL,
	[FormDescribe] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FormMaster_code_user_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_FormMaster_code_user_no] ON [dbo].[FormMaster]
(
	[FormCode] ASC,
	[UserNo] ASC,
	[FormNo] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForumBoards]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForumBoards](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[BoardNo] [nvarchar](50) NULL,
	[BoardName] [nvarchar](250) NULL,
	[IconName] [nvarchar](50) NULL,
	[DescriptionText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL,
	[GuidNo] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ForumBoards_pid_sort_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_ForumBoards_pid_sort_no] ON [dbo].[ForumBoards]
(
	[SortNo] ASC,
	[BoardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forums]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forums](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentGuid] [nvarchar](50) NULL,
	[ReplyGuid] [nvarchar](50) NULL,
	[BoardNo] [nvarchar](50) NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsClosed] [bit] NOT NULL,
	[SubjectDate] [datetime] NOT NULL,
	[UserNo] [nvarchar](50) NULL,
	[SubjectName] [nvarchar](250) NULL,
	[SubjectContent] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL,
	[GuidNo] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Forums_pid_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Forums_pid_sort_name] ON [dbo].[Forums]
(
	[BoardNo] ASC,
	[ParentGuid] ASC,
	[SubjectDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LangNo] [nvarchar](50) NULL,
	[LangName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Languages_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Languages_no] ON [dbo].[Languages]
(
	[LangNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LogDate] [date] NOT NULL,
	[LogTime] [datetime] NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[UserNo] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[TargetNo] [nvarchar](50) NULL,
	[LogNo] [nvarchar](50) NULL,
	[LogQty] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Logs_date_time]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Logs_date_time] ON [dbo].[Logs]
(
	[LogDate] DESC,
	[LogTime] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MapPositions]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MapPositions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TargetCode] [nvarchar](50) NULL,
	[TargetNo] [nvarchar](50) NULL,
	[TitleName] [nvarchar](50) NULL,
	[ContactName] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[ContactEmail] [nvarchar](50) NULL,
	[ContactAddress] [nvarchar](250) NULL,
	[Latitude] [decimal](18, 15) NOT NULL,
	[Longitude] [decimal](18, 15) NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MapPositions_code_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_MapPositions_code_no] ON [dbo].[MapPositions]
(
	[TargetCode] ASC,
	[TargetNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[SenderNo] [nvarchar](50) NULL,
	[ReceiverNo] [nvarchar](50) NULL,
	[SendDate] [date] NOT NULL,
	[SendTime] [date] NOT NULL,
	[HeaderText] [nvarchar](250) NULL,
	[MessageText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Messages_rno_date_time]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Messages_rno_date_time] ON [dbo].[Messages]
(
	[ReceiverNo] ASC,
	[SendDate] DESC,
	[SendTime] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modules]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modules](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsWorkflow] [bit] NOT NULL,
	[RoleNo] [nvarchar](50) NULL,
	[SortNo] [nvarchar](50) NULL,
	[ModuleNo] [nvarchar](50) NULL,
	[ModuleName] [nvarchar](50) NULL,
	[IconName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Modules_role_sort_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Modules_role_sort_no] ON [dbo].[Modules]
(
	[RoleNo] ASC,
	[SortNo] ASC,
	[ModuleNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[PublishDate] [datetime] NOT NULL,
	[HeaderName] [nvarchar](50) NULL,
	[DetailText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_News_date]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_News_date] ON [dbo].[News]
(
	[PublishDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsLetter]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsLetter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserEmail] [nvarchar](50) NULL,
	[SubscribeDate] [datetime] NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_NewsLetter_email]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_NewsLetter_email] ON [dbo].[NewsLetter]
(
	[UserEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[SourceNo] [nvarchar](50) NULL,
	[SenderNo] [nvarchar](50) NULL,
	[ReceiverNo] [nvarchar](50) NULL,
	[SendDate] [date] NOT NULL,
	[SendTime] [date] NOT NULL,
	[HeaderText] [nvarchar](250) NULL,
	[MessageText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Notifications_rno_date_time]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Notifications_rno_date_time] ON [dbo].[Notifications]
(
	[ReceiverNo] ASC,
	[SendDate] DESC,
	[SendTime] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentNo] [nvarchar](50) NULL,
	[VendorNo] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[ProdNo] [nvarchar](50) NULL,
	[ProdName] [nvarchar](250) NULL,
	[ProdSpec] [nvarchar](250) NULL,
	[OrderPrice] [int] NOT NULL,
	[OrderQty] [int] NOT NULL,
	[OrderAmount] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OrderDetails_sno]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_OrderDetails_sno] ON [dbo].[OrderDetails]
(
	[ParentNo] ASC,
	[ProdNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SheetNo] [nvarchar](50) NULL,
	[SheetDate] [datetime] NOT NULL,
	[StatusCode] [nvarchar](50) NULL,
	[IsClosed] [bit] NOT NULL,
	[IsValid] [bit] NOT NULL,
	[CustNo] [nvarchar](50) NULL,
	[CustName] [nvarchar](50) NULL,
	[PaymentNo] [nvarchar](50) NULL,
	[ShippingNo] [nvarchar](50) NULL,
	[ReceiverName] [nvarchar](50) NULL,
	[ReceiverEmail] [nvarchar](50) NULL,
	[ReceiverAddress] [nvarchar](250) NULL,
	[OrderAmount] [int] NOT NULL,
	[TaxAmount] [int] NOT NULL,
	[TotalAmount] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL,
	[GuidNo] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_sno]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Orders_sno] ON [dbo].[Orders]
(
	[SheetNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersStatus]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsPayed] [bit] NOT NULL,
	[IsClosed] [bit] NOT NULL,
	[StatusNo] [nvarchar](50) NULL,
	[StatusName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OrdersStatus_sno]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_OrdersStatus_sno] ON [dbo].[OrdersStatus]
(
	[StatusNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentNo] [nvarchar](50) NULL,
	[PaymentName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Payments_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Payments_no] ON [dbo].[Payments]
(
	[PaymentNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[FolderName] [nvarchar](50) NULL,
	[PhotoName] [nvarchar](250) NULL,
	[PriceName] [nvarchar](250) NULL,
	[SaleDate] [date] NOT NULL,
	[DetailText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Photos_type_folder]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Photos_type_folder] ON [dbo].[Photos]
(
	[CodeNo] ASC,
	[FolderName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PricingDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PricingDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PricingNo] [nvarchar](50) NULL,
	[IsSupport] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ItemName] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PricingDetails_pno_sort]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_PricingDetails_pno_sort] ON [dbo].[PricingDetails]
(
	[PricingNo] ASC,
	[SortNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricings]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsAdvanced] [bit] NOT NULL,
	[IsRecommend] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[PricingNo] [nvarchar](50) NULL,
	[PricingName] [nvarchar](50) NULL,
	[ProdPrice] [int] NOT NULL,
	[CycleName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Pricings_sort_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Pricings_sort_no] ON [dbo].[Pricings]
(
	[SortNo] ASC,
	[PricingNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductFeatureds]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductFeatureds](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProdNo] [nvarchar](50) NULL,
	[SortNo] [nvarchar](50) NULL,
	[FeaturedName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProductFeatureds_pno_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_ProductFeatureds_pno_sort_name] ON [dbo].[ProductFeatureds]
(
	[ProdNo] ASC,
	[SortNo] ASC,
	[FeaturedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductInventorys]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductInventorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProdNo] [nvarchar](50) NULL,
	[PropertyNo] [nvarchar](50) NULL,
	[IsInventory] [bit] NOT NULL,
	[InventoryQty] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProductInventorys_pno_propno]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_ProductInventorys_pno_propno] ON [dbo].[ProductInventorys]
(
	[ProdNo] ASC,
	[PropertyNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPropertys]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPropertys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsSelect] [bit] NOT NULL,
	[ProdNo] [nvarchar](50) NULL,
	[PropertyNo] [nvarchar](50) NULL,
	[PropertyValue] [nvarchar](500) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProductPropertys_pno_prodno]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_ProductPropertys_pno_prodno] ON [dbo].[ProductPropertys]
(
	[ProdNo] ASC,
	[PropertyNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductRelations]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductRelations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProdNo] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProductRelations_pno_cno]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_ProductRelations_pno_cno] ON [dbo].[ProductRelations]
(
	[ProdNo] ASC,
	[CategoryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsInventory] [bit] NOT NULL,
	[IsShowPhoto] [bit] NOT NULL,
	[ProdNo] [nvarchar](50) NULL,
	[ProdName] [nvarchar](250) NULL,
	[BrandName] [nvarchar](50) NULL,
	[BrandSeriesName] [nvarchar](50) NULL,
	[BarcodeNo] [nvarchar](50) NULL,
	[VendorNo] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](50) NULL,
	[CostPrice] [int] NOT NULL,
	[MarketPrice] [int] NOT NULL,
	[SalePrice] [int] NOT NULL,
	[DiscountPrice] [int] NOT NULL,
	[InventoryQty] [int] NOT NULL,
	[ContentText] [nvarchar](max) NULL,
	[SpecificationText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Products_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Products_no] ON [dbo].[Products]
(
	[ProdNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programs]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsPageSize] [bit] NOT NULL,
	[IsSearch] [bit] NOT NULL,
	[RoleNo] [nvarchar](50) NULL,
	[ModuleNo] [nvarchar](50) NULL,
	[SortNo] [nvarchar](50) NULL,
	[PrgNo] [nvarchar](50) NULL,
	[PrgName] [nvarchar](50) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[AreaName] [nvarchar](50) NULL,
	[ControllerName] [nvarchar](50) NULL,
	[ActionName] [nvarchar](50) NULL,
	[ParmValue] [nvarchar](50) NULL,
	[PageSize] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Programs_mno_sort_pno]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Programs_mno_sort_pno] ON [dbo].[Programs]
(
	[ModuleNo] ASC,
	[SortNo] ASC,
	[PrgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotions]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[ProdNo] [nvarchar](50) NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[SalePrice] [int] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Promotions_stime_etime_pno]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Promotions_stime_etime_pno] ON [dbo].[Promotions]
(
	[StartTime] DESC,
	[EndTime] DESC,
	[ProdNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyNames]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyNames](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PropName] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PropertyNames_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_PropertyNames_name] ON [dbo].[PropertyNames]
(
	[PropName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Propertys]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Propertys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsSelect] [bit] NOT NULL,
	[PropertyNo] [nvarchar](50) NULL,
	[PropertyName] [nvarchar](50) NULL,
	[PropertyValue] [nvarchar](500) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Propertys_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Propertys_no] ON [dbo].[Propertys]
(
	[PropertyNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[RoleNo] [nvarchar](50) NULL,
	[RoleName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Roles_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Roles_no] ON [dbo].[Roles]
(
	[RoleNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Securitys]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Securitys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleNo] [nvarchar](50) NULL,
	[TargetNo] [nvarchar](50) NULL,
	[ModuleNo] [nvarchar](50) NULL,
	[PrgNo] [nvarchar](50) NULL,
	[IsAdd] [bit] NOT NULL,
	[IsEdit] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[IsConfirm] [bit] NOT NULL,
	[IsUndo] [bit] NOT NULL,
	[IsInvalid] [bit] NOT NULL,
	[IsUpload] [bit] NOT NULL,
	[IsDownload] [bit] NOT NULL,
	[IsPrint] [bit] NOT NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Securitys_rno_tno_mno_pno]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Securitys_rno_tno_mno_pno] ON [dbo].[Securitys]
(
	[RoleNo] ASC,
	[TargetNo] ASC,
	[ModuleNo] ASC,
	[PrgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[HeaderName] [nvarchar](250) NULL,
	[DetailName] [nvarchar](250) NULL,
	[ImageUrl] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Services_sort_name]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Services_sort_name] ON [dbo].[Services]
(
	[SortNo] ASC,
	[HeaderName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippings]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShippingNo] [nvarchar](50) NULL,
	[ShippingName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Shippings_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Shippings_no] ON [dbo].[Shippings]
(
	[ShippingNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SortNo] [nvarchar](50) NULL,
	[TeamNo] [nvarchar](50) NULL,
	[TeamName] [nvarchar](50) NULL,
	[EngName] [nvarchar](50) NULL,
	[GenderCode] [nvarchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[TitleName] [nvarchar](50) NULL,
	[TwitterUrl] [nvarchar](50) NULL,
	[FacebookUrl] [nvarchar](50) NULL,
	[LinkedinUrl] [nvarchar](50) NULL,
	[InstagramUrl] [nvarchar](50) NULL,
	[SkypeUrl] [nvarchar](50) NULL,
	[ContactEmail] [nvarchar](50) NULL,
	[DetailText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Teams_sort_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Teams_sort_no] ON [dbo].[Teams]
(
	[SortNo] ASC,
	[TeamNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Titles]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Titles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TitleNo] [nvarchar](50) NULL,
	[TitleName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Titles_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Titles_no] ON [dbo].[Titles]
(
	[TitleNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TodoLists]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TodoLists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsFinished] [bit] NOT NULL,
	[UserNo] [nvarchar](50) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[TitleName] [nvarchar](250) NULL,
	[DeadlineDate] [datetime] NOT NULL,
	[Remark] [nvarchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TodoLists_uno_date]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_TodoLists_uno_date] ON [dbo].[TodoLists]
(
	[UserNo] ASC,
	[DeadlineDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacations]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VacYear] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[CodeNo] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vacations_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_Vacations_no] ON [dbo].[Vacations]
(
	[VacYear] DESC,
	[StartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkflowDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsClose] [bit] NOT NULL,
	[IsApprove] [bit] NOT NULL,
	[IsReject] [bit] NOT NULL,
	[MasterGuidNo] [nvarchar](50) NULL,
	[RouteGuidNo] [nvarchar](50) NULL,
	[RouteOrder] [nvarchar](50) NULL,
	[RoleNo] [nvarchar](50) NULL,
	[RoleName] [nvarchar](50) NULL,
	[UserNo] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[AgentNo] [nvarchar](50) NULL,
	[AgentName] [nvarchar](50) NULL,
	[CreateTime] [datetime] NOT NULL,
	[UserReadTime] [datetime] NULL,
	[AgentReadTime] [datetime] NULL,
	[SignUserNo] [nvarchar](50) NULL,
	[SignUserName] [nvarchar](50) NULL,
	[SignTime] [datetime] NULL,
	[SignComment] [nvarchar](250) NULL,
	[Remark] [nvarchar](250) NULL,
	[GuidNo] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_WorkflowDetails_mguid_rguid_rorder]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_WorkflowDetails_mguid_rguid_rorder] ON [dbo].[WorkflowDetails]
(
	[MasterGuidNo] ASC,
	[RouteGuidNo] ASC,
	[RouteOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkflowMasters]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowMasters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsClose] [bit] NOT NULL,
	[IsApprove] [bit] NOT NULL,
	[IsReject] [bit] NOT NULL,
	[FlowGuidNo] [nvarchar](50) NULL,
	[SheetNo] [nvarchar](50) NULL,
	[SheetName] [nvarchar](50) NULL,
	[UserNo] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[DeadlineTime] [datetime] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NULL,
	[ContentText] [nvarchar](max) NULL,
	[Remark] [nvarchar](250) NULL,
	[GuidNo] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_WorkflowMasters_fguid_fno_stime]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_WorkflowMasters_fguid_fno_stime] ON [dbo].[WorkflowMasters]
(
	[FlowGuidNo] ASC,
	[SheetNo] ASC,
	[StartTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkflowRoles]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleNo] [nvarchar](50) NULL,
	[RoleName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_WorkflowRoles_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_WorkflowRoles_no] ON [dbo].[WorkflowRoles]
(
	[RoleNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkflowRoleUsers]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowRoleUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[RoleNo] [nvarchar](50) NULL,
	[UserNo] [nvarchar](50) NULL,
	[AgentNo] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_WorkflowRoleUsers_rno_uno]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_WorkflowRoleUsers_rno_uno] ON [dbo].[WorkflowRoleUsers]
(
	[RoleNo] ASC,
	[UserNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkflowRoutes]    Script Date: 2023/6/1 下午 02:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowRoutes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrgNo] [nvarchar](50) NULL,
	[RouteOrder] [nvarchar](50) NULL,
	[RoleNo] [nvarchar](50) NULL,
	[RoleName] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_WorkflowRoutes_pno_rorder]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE CLUSTERED INDEX [IX_WorkflowRoutes_pno_rorder] ON [dbo].[WorkflowRoutes]
(
	[PrgNo] ASC,
	[RouteOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Applications] ON 

INSERT [dbo].[Applications] ([Id], [IsEnabled], [IsDebug], [AppName], [AdminName], [ShopName], [AppVersion], [EncryptionMode], [PowerBy], [LanguageNo], [GoogleMapKey], [MailSenderName], [MailSenderEmail], [MailReceiverName], [MailReceiverEmail], [MailAppPassword], [MailHostUrl], [MailHostPort], [MailUseSSL], [WebSiteUrl], [Remark]) VALUES (1, 1, 1, N'Tea 愛找茶', N'好好用後台管理', N'好好用購物商城', N'1.0', 0, N'DevStudio', N'zh-TW', N'12345', N'網站管理員', N'jacky58.huang@gmail.com', NULL, NULL, N'xxxxxxxxx', N'smtp.gmail.com', 587, 1, N'http://localhost:8888', NULL)
SET IDENTITY_INSERT [dbo].[Applications] OFF
GO
SET IDENTITY_INSERT [dbo].[Carousels] ON 

INSERT [dbo].[Carousels] ([Id], [IsActive], [SortNo], [HeaderName], [Description], [ImageUrl], [MoreUrl], [Remark]) VALUES (1, 1, N'01', N'歡迎來到我們公司', N'嗨！歡迎來到我們公司！ 我們是一間「以人為本」、帶有真實溫度、採用人性化管理的公司，我們重視團隊，並給予每一位同仁尊重與支持。 你的自由感有多大，來自於你對團隊的擁有感有多大。', N'Carousel1.jpg', N'#', N'')
INSERT [dbo].[Carousels] ([Id], [IsActive], [SortNo], [HeaderName], [Description], [ImageUrl], [MoreUrl], [Remark]) VALUES (2, 0, N'02', N'溫馨的工作環境', N'我們公司在改善員工的工作環境上展現積極的態度，藉此提升職場的工作效率。為了確保這一點，我們公司提供免費的休閒活動、餐廳和無障礙設施。也為了員工身體健康我們也保持清新的空氣和提供過濾後的飲用水給員工飲用。', N'Carousel2.jpg', N'#', N'')
INSERT [dbo].[Carousels] ([Id], [IsActive], [SortNo], [HeaderName], [Description], [ImageUrl], [MoreUrl], [Remark]) VALUES (3, 0, N'03', N'專業的團隊合作', N'如獅群般的團隊合作. 團隊是由員工和管理層組成的一個共同體，該共同體合理利用每一個成員的知識和技能協同工作，解決問題，達到共同的目標。 我們是一支專業的團隊。我們的成員擁有多年的系統整合專業技術背景，來自國內知名公司的骨幹。', N'Carousel3.jpg', N'#', N'')
INSERT [dbo].[Carousels] ([Id], [IsActive], [SortNo], [HeaderName], [Description], [ImageUrl], [MoreUrl], [Remark]) VALUES (4, 0, N'04', N'04', N'04', N'Carousel4.jpg', NULL, NULL)
INSERT [dbo].[Carousels] ([Id], [IsActive], [SortNo], [HeaderName], [Description], [ImageUrl], [MoreUrl], [Remark]) VALUES (5, 0, N'05', N'05', N'05', N'Carousel5.jpg', NULL, NULL)
INSERT [dbo].[Carousels] ([Id], [IsActive], [SortNo], [HeaderName], [Description], [ImageUrl], [MoreUrl], [Remark]) VALUES (6, 0, N'06', N'06', N'06', N'Carousel6.jpg', NULL, NULL)
INSERT [dbo].[Carousels] ([Id], [IsActive], [SortNo], [HeaderName], [Description], [ImageUrl], [MoreUrl], [Remark]) VALUES (7, 0, N'07', N'07', N'07', N'Carousel7.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Carousels] OFF
GO
SET IDENTITY_INSERT [dbo].[Categorys] ON 

INSERT [dbo].[Categorys] ([Id], [IsEnabled], [IsCategory], [ParentNo], [CategoryNo], [SortNo], [CategoryName], [RouteName], [Remark]) VALUES (1, 1, 1, N'', N'26A61931BFEF49EEAB6A05ABA1F2B23B', N'01', N'男裝', N'', N'')
INSERT [dbo].[Categorys] ([Id], [IsEnabled], [IsCategory], [ParentNo], [CategoryNo], [SortNo], [CategoryName], [RouteName], [Remark]) VALUES (2, 1, 1, N'', N'8AD750E920EE425DB8A45520822B68FC', N'02', N'女裝', N'', N'')
INSERT [dbo].[Categorys] ([Id], [IsEnabled], [IsCategory], [ParentNo], [CategoryNo], [SortNo], [CategoryName], [RouteName], [Remark]) VALUES (3, 1, 1, N'26A61931BFEF49EEAB6A05ABA1F2B23B', N'2193130D2E314175BAB84F2CFC45D166', N'01', N'短袖T恤', N'男裝', N'')
INSERT [dbo].[Categorys] ([Id], [IsEnabled], [IsCategory], [ParentNo], [CategoryNo], [SortNo], [CategoryName], [RouteName], [Remark]) VALUES (4, 1, 1, N'26A61931BFEF49EEAB6A05ABA1F2B23B', N'3789BBDF3911412B8003272DD3F638CA', N'02', N'背心', N'男裝', N'')
INSERT [dbo].[Categorys] ([Id], [IsEnabled], [IsCategory], [ParentNo], [CategoryNo], [SortNo], [CategoryName], [RouteName], [Remark]) VALUES (6, 1, 1, N'8AD750E920EE425DB8A45520822B68FC', N'B309D8015BE64A28B8ABF687B20E70DB', N'01', N'上衣', N'女裝', N'')
INSERT [dbo].[Categorys] ([Id], [IsEnabled], [IsCategory], [ParentNo], [CategoryNo], [SortNo], [CategoryName], [RouteName], [Remark]) VALUES (5, 1, 1, N'8AD750E920EE425DB8A45520822B68FC', N'6CCFC32C1772424095D7A4F9E9C8D5B6', N'02', N'洋裝', N'女裝', N'')
SET IDENTITY_INSERT [dbo].[Categorys] OFF
GO
SET IDENTITY_INSERT [dbo].[CityAreas] ON 

INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (1, N'宜蘭縣', N'三星鄉', CAST(121.664271400000000 AS Decimal(18, 15)), CAST(24.667719720000000 AS Decimal(18, 15)), N'宜蘭縣三星鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (2, N'宜蘭縣', N'大同鄉', CAST(121.504036900000000 AS Decimal(18, 15)), CAST(24.551520820000000 AS Decimal(18, 15)), N'宜蘭縣大同鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (3, N'宜蘭縣', N'五結鄉', CAST(121.805834200000000 AS Decimal(18, 15)), CAST(24.688873430000000 AS Decimal(18, 15)), N'宜蘭縣五結鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (4, N'宜蘭縣', N'冬山鄉', CAST(121.760255000000000 AS Decimal(18, 15)), CAST(24.642149860000000 AS Decimal(18, 15)), N'宜蘭縣冬山鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (5, N'宜蘭縣', N'壯圍鄉', CAST(121.801762200000000 AS Decimal(18, 15)), CAST(24.751830420000000 AS Decimal(18, 15)), N'宜蘭縣壯圍鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (6, N'宜蘭縣', N'宜蘭市', CAST(121.756935800000000 AS Decimal(18, 15)), CAST(24.750211840000000 AS Decimal(18, 15)), N'宜蘭縣宜蘭市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (7, N'宜蘭縣', N'南澳鄉', CAST(121.656059300000000 AS Decimal(18, 15)), CAST(24.448640580000000 AS Decimal(18, 15)), N'宜蘭縣南澳鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (8, N'宜蘭縣', N'員山鄉', CAST(121.661228200000000 AS Decimal(18, 15)), CAST(24.741992370000000 AS Decimal(18, 15)), N'宜蘭縣員山鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (9, N'宜蘭縣', N'釣魚臺', CAST(123.475482000000000 AS Decimal(18, 15)), CAST(25.746396000000000 AS Decimal(18, 15)), N'宜蘭縣釣魚臺列嶼')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (10, N'宜蘭縣', N'頭城鎮', CAST(121.845797000000000 AS Decimal(18, 15)), CAST(24.900758820000000 AS Decimal(18, 15)), N'宜蘭縣頭城鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (11, N'宜蘭縣', N'礁溪鄉', CAST(121.734660600000000 AS Decimal(18, 15)), CAST(24.811441920000000 AS Decimal(18, 15)), N'宜蘭縣礁溪鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (12, N'宜蘭縣', N'羅東鎮', CAST(121.770178200000000 AS Decimal(18, 15)), CAST(24.678848240000000 AS Decimal(18, 15)), N'宜蘭縣羅東鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (13, N'宜蘭縣', N'蘇澳鎮', CAST(121.834689200000000 AS Decimal(18, 15)), CAST(24.554670580000000 AS Decimal(18, 15)), N'宜蘭縣蘇澳鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (14, N'花蓮縣', N'玉里鎮', CAST(121.360447600000000 AS Decimal(18, 15)), CAST(23.371435880000000 AS Decimal(18, 15)), N'花蓮縣玉里鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (15, N'花蓮縣', N'光復鄉', CAST(121.435123100000000 AS Decimal(18, 15)), CAST(23.646587420000000 AS Decimal(18, 15)), N'花蓮縣光復鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (16, N'花蓮縣', N'吉安鄉', CAST(121.564673800000000 AS Decimal(18, 15)), CAST(23.955465850000000 AS Decimal(18, 15)), N'花蓮縣吉安鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (17, N'花蓮縣', N'秀林鄉', CAST(121.480719400000000 AS Decimal(18, 15)), CAST(24.123744140000000 AS Decimal(18, 15)), N'花蓮縣秀林鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (18, N'花蓮縣', N'卓溪鄉', CAST(121.180422200000000 AS Decimal(18, 15)), CAST(23.390628750000000 AS Decimal(18, 15)), N'花蓮縣卓溪鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (19, N'花蓮縣', N'花蓮市', CAST(121.607146300000000 AS Decimal(18, 15)), CAST(23.997002710000000 AS Decimal(18, 15)), N'花蓮縣花蓮市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (20, N'花蓮縣', N'富里鄉', CAST(121.298049400000000 AS Decimal(18, 15)), CAST(23.196720920000000 AS Decimal(18, 15)), N'花蓮縣富里鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (21, N'花蓮縣', N'新城鄉', CAST(121.613796900000000 AS Decimal(18, 15)), CAST(24.055799520000000 AS Decimal(18, 15)), N'花蓮縣新城鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (22, N'花蓮縣', N'瑞穗鄉', CAST(121.407347200000000 AS Decimal(18, 15)), CAST(23.515612400000000 AS Decimal(18, 15)), N'花蓮縣瑞穗鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (23, N'花蓮縣', N'萬榮鄉', CAST(121.318953100000000 AS Decimal(18, 15)), CAST(23.727726290000000 AS Decimal(18, 15)), N'花蓮縣萬榮鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (24, N'花蓮縣', N'壽豐鄉', CAST(121.534156900000000 AS Decimal(18, 15)), CAST(23.844597140000000 AS Decimal(18, 15)), N'花蓮縣壽豐鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (25, N'花蓮縣', N'鳳林鎮', CAST(121.469884800000000 AS Decimal(18, 15)), CAST(23.743244620000000 AS Decimal(18, 15)), N'花蓮縣鳳林鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (26, N'花蓮縣', N'豐濱鄉', CAST(121.494233100000000 AS Decimal(18, 15)), CAST(23.585194280000000 AS Decimal(18, 15)), N'花蓮縣豐濱鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (27, N'金門縣', N'金沙鎮', CAST(118.408410000000000 AS Decimal(18, 15)), CAST(24.458650000000000 AS Decimal(18, 15)), N'金門縣金沙鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (28, N'金門縣', N'金城鎮', CAST(118.301280000000000 AS Decimal(18, 15)), CAST(24.384020000000000 AS Decimal(18, 15)), N'金門縣金城鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (29, N'金門縣', N'金湖鎮', CAST(118.403730000000000 AS Decimal(18, 15)), CAST(24.414960000000000 AS Decimal(18, 15)), N'金門縣金湖鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (30, N'金門縣', N'金寧鄉', CAST(118.317050000000000 AS Decimal(18, 15)), CAST(24.424820000000000 AS Decimal(18, 15)), N'金門縣金寧鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (31, N'金門縣', N'烈嶼鄉', CAST(118.227890000000000 AS Decimal(18, 15)), CAST(24.401660000000000 AS Decimal(18, 15)), N'金門縣烈嶼鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (32, N'金門縣', N'烏坵鄉', CAST(119.452738000000000 AS Decimal(18, 15)), CAST(24.992338000000000 AS Decimal(18, 15)), N'金門縣烏坵鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (33, N'南投縣', N'中寮鄉', CAST(120.785915900000000 AS Decimal(18, 15)), CAST(23.905892140000000 AS Decimal(18, 15)), N'南投縣中寮鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (34, N'南投縣', N'仁愛鄉', CAST(121.144387900000000 AS Decimal(18, 15)), CAST(24.028865130000000 AS Decimal(18, 15)), N'南投縣仁愛鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (35, N'南投縣', N'水里鄉', CAST(120.862272100000000 AS Decimal(18, 15)), CAST(23.796129070000000 AS Decimal(18, 15)), N'南投縣水里鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (36, N'南投縣', N'名間鄉', CAST(120.677440200000000 AS Decimal(18, 15)), CAST(23.851077100000000 AS Decimal(18, 15)), N'南投縣名間鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (37, N'南投縣', N'竹山鎮', CAST(120.710079700000000 AS Decimal(18, 15)), CAST(23.698055180000000 AS Decimal(18, 15)), N'南投縣竹山鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (38, N'南投縣', N'信義鄉', CAST(121.021286700000000 AS Decimal(18, 15)), CAST(23.655464700000000 AS Decimal(18, 15)), N'南投縣信義鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (39, N'南投縣', N'南投市', CAST(120.678765800000000 AS Decimal(18, 15)), CAST(23.921735370000000 AS Decimal(18, 15)), N'南投縣南投市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (40, N'南投縣', N'埔里鎮', CAST(120.962525900000000 AS Decimal(18, 15)), CAST(23.978925910000000 AS Decimal(18, 15)), N'南投縣埔里鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (41, N'南投縣', N'草屯鎮', CAST(120.732618200000000 AS Decimal(18, 15)), CAST(23.983210810000000 AS Decimal(18, 15)), N'南投縣草屯鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (42, N'南投縣', N'國姓鄉', CAST(120.867605200000000 AS Decimal(18, 15)), CAST(24.031354130000000 AS Decimal(18, 15)), N'南投縣國姓鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (43, N'南投縣', N'魚池鄉', CAST(120.925673600000000 AS Decimal(18, 15)), CAST(23.876012130000000 AS Decimal(18, 15)), N'南投縣魚池鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (44, N'南投縣', N'鹿谷鄉', CAST(120.781506500000000 AS Decimal(18, 15)), CAST(23.737760290000000 AS Decimal(18, 15)), N'南投縣鹿谷鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (45, N'南投縣', N'集集鎮', CAST(120.785419200000000 AS Decimal(18, 15)), CAST(23.837016870000000 AS Decimal(18, 15)), N'南投縣集集鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (46, N'屏東縣', N'九如鄉', CAST(120.484504400000000 AS Decimal(18, 15)), CAST(22.731667700000000 AS Decimal(18, 15)), N'屏東縣九如鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (47, N'屏東縣', N'三地門', CAST(120.686521900000000 AS Decimal(18, 15)), CAST(22.797868470000000 AS Decimal(18, 15)), N'屏東縣三地門鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (48, N'屏東縣', N'內埔鄉', CAST(120.588822200000000 AS Decimal(18, 15)), CAST(22.651169330000000 AS Decimal(18, 15)), N'屏東縣內埔鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (49, N'屏東縣', N'竹田鄉', CAST(120.526637900000000 AS Decimal(18, 15)), CAST(22.588556360000000 AS Decimal(18, 15)), N'屏東縣竹田鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (50, N'屏東縣', N'牡丹鄉', CAST(120.817360900000000 AS Decimal(18, 15)), CAST(22.155528590000000 AS Decimal(18, 15)), N'屏東縣牡丹鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (51, N'屏東縣', N'車城鄉', CAST(120.743263300000000 AS Decimal(18, 15)), CAST(22.079156170000000 AS Decimal(18, 15)), N'屏東縣車城鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (52, N'屏東縣', N'里港鄉', CAST(120.506127600000000 AS Decimal(18, 15)), CAST(22.798548310000000 AS Decimal(18, 15)), N'屏東縣里港鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (53, N'屏東縣', N'佳冬鄉', CAST(120.547612400000000 AS Decimal(18, 15)), CAST(22.429806240000000 AS Decimal(18, 15)), N'屏東縣佳冬鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (54, N'屏東縣', N'來義鄉', CAST(120.685723200000000 AS Decimal(18, 15)), CAST(22.501572060000000 AS Decimal(18, 15)), N'屏東縣來義鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (55, N'屏東縣', N'枋山鄉', CAST(120.656767300000000 AS Decimal(18, 15)), CAST(22.270869620000000 AS Decimal(18, 15)), N'屏東縣枋山鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (56, N'屏東縣', N'枋寮鄉', CAST(120.597584500000000 AS Decimal(18, 15)), CAST(22.403341990000000 AS Decimal(18, 15)), N'屏東縣枋寮鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (57, N'屏東縣', N'東港鎮', CAST(120.475133300000000 AS Decimal(18, 15)), CAST(22.462656350000000 AS Decimal(18, 15)), N'屏東縣東港鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (58, N'屏東縣', N'林邊鄉', CAST(120.512509500000000 AS Decimal(18, 15)), CAST(22.441421010000000 AS Decimal(18, 15)), N'屏東縣林邊鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (59, N'屏東縣', N'長治鄉', CAST(120.555979000000000 AS Decimal(18, 15)), CAST(22.694549520000000 AS Decimal(18, 15)), N'屏東縣長治鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (60, N'屏東縣', N'南州鄉', CAST(120.518056100000000 AS Decimal(18, 15)), CAST(22.479807040000000 AS Decimal(18, 15)), N'屏東縣南州鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (61, N'屏東縣', N'屏東市', CAST(120.479994800000000 AS Decimal(18, 15)), CAST(22.664737500000000 AS Decimal(18, 15)), N'屏東縣屏東市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (62, N'屏東縣', N'恆春鎮', CAST(120.763253700000000 AS Decimal(18, 15)), CAST(21.985316450000000 AS Decimal(18, 15)), N'屏東縣恆春鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (63, N'屏東縣', N'春日鄉', CAST(120.697579900000000 AS Decimal(18, 15)), CAST(22.403997540000000 AS Decimal(18, 15)), N'屏東縣春日鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (64, N'屏東縣', N'崁頂鄉', CAST(120.500659800000000 AS Decimal(18, 15)), CAST(22.515281510000000 AS Decimal(18, 15)), N'屏東縣崁頂鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (65, N'屏東縣', N'泰武鄉', CAST(120.691792900000000 AS Decimal(18, 15)), CAST(22.604084770000000 AS Decimal(18, 15)), N'屏東縣泰武鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (66, N'屏東縣', N'琉球鄉', CAST(120.371046600000000 AS Decimal(18, 15)), CAST(22.340002780000000 AS Decimal(18, 15)), N'屏東縣琉球鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (67, N'屏東縣', N'高樹鄉', CAST(120.601767800000000 AS Decimal(18, 15)), CAST(22.809920220000000 AS Decimal(18, 15)), N'屏東縣高樹鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (68, N'屏東縣', N'新埤鄉', CAST(120.584625700000000 AS Decimal(18, 15)), CAST(22.486762790000000 AS Decimal(18, 15)), N'屏東縣新埤鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (69, N'屏東縣', N'新園鄉', CAST(120.450142900000000 AS Decimal(18, 15)), CAST(22.517190300000000 AS Decimal(18, 15)), N'屏東縣新園鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (70, N'屏東縣', N'獅子鄉', CAST(120.735645400000000 AS Decimal(18, 15)), CAST(22.260849210000000 AS Decimal(18, 15)), N'屏東縣獅子鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (71, N'屏東縣', N'萬丹鄉', CAST(120.476618800000000 AS Decimal(18, 15)), CAST(22.588495470000000 AS Decimal(18, 15)), N'屏東縣萬丹鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (72, N'屏東縣', N'萬巒鄉', CAST(120.601817000000000 AS Decimal(18, 15)), CAST(22.582334590000000 AS Decimal(18, 15)), N'屏東縣萬巒鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (73, N'屏東縣', N'滿州鄉', CAST(120.843567500000000 AS Decimal(18, 15)), CAST(22.049300150000000 AS Decimal(18, 15)), N'屏東縣滿州鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (74, N'屏東縣', N'瑪家鄉', CAST(120.679923900000000 AS Decimal(18, 15)), CAST(22.671077640000000 AS Decimal(18, 15)), N'屏東縣瑪家鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (75, N'屏東縣', N'潮州鎮', CAST(120.556806300000000 AS Decimal(18, 15)), CAST(22.536429470000000 AS Decimal(18, 15)), N'屏東縣潮州鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (76, N'屏東縣', N'霧臺鄉', CAST(120.800809900000000 AS Decimal(18, 15)), CAST(22.759904780000000 AS Decimal(18, 15)), N'屏東縣霧臺鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (77, N'屏東縣', N'麟洛鄉', CAST(120.529969300000000 AS Decimal(18, 15)), CAST(22.648763670000000 AS Decimal(18, 15)), N'屏東縣麟洛鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (78, N'屏東縣', N'鹽埔鄉', CAST(120.569394100000000 AS Decimal(18, 15)), CAST(22.742536360000000 AS Decimal(18, 15)), N'屏東縣鹽埔鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (79, N'苗栗縣', N'三義鄉', CAST(120.770192900000000 AS Decimal(18, 15)), CAST(24.380816590000000 AS Decimal(18, 15)), N'苗栗縣三義鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (80, N'苗栗縣', N'三灣鄉', CAST(120.952574500000000 AS Decimal(18, 15)), CAST(24.635994050000000 AS Decimal(18, 15)), N'苗栗縣三灣鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (81, N'苗栗縣', N'大湖鄉', CAST(120.863119200000000 AS Decimal(18, 15)), CAST(24.393596410000000 AS Decimal(18, 15)), N'苗栗縣大湖鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (82, N'苗栗縣', N'公館鄉', CAST(120.850590400000000 AS Decimal(18, 15)), CAST(24.502496860000000 AS Decimal(18, 15)), N'苗栗縣公館鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (83, N'苗栗縣', N'竹南鎮', CAST(120.877731600000000 AS Decimal(18, 15)), CAST(24.698624590000000 AS Decimal(18, 15)), N'苗栗縣竹南鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (84, N'苗栗縣', N'西湖鄉', CAST(120.761414400000000 AS Decimal(18, 15)), CAST(24.541532180000000 AS Decimal(18, 15)), N'苗栗縣西湖鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (85, N'苗栗縣', N'卓蘭鎮', CAST(120.856196600000000 AS Decimal(18, 15)), CAST(24.325101670000000 AS Decimal(18, 15)), N'苗栗縣卓蘭鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (86, N'苗栗縣', N'南庄鄉', CAST(121.017471000000000 AS Decimal(18, 15)), CAST(24.566084320000000 AS Decimal(18, 15)), N'苗栗縣南庄鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (87, N'苗栗縣', N'後龍鎮', CAST(120.781205000000000 AS Decimal(18, 15)), CAST(24.615626500000000 AS Decimal(18, 15)), N'苗栗縣後龍鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (88, N'苗栗縣', N'苗栗市', CAST(120.811229900000000 AS Decimal(18, 15)), CAST(24.563821410000000 AS Decimal(18, 15)), N'苗栗縣苗栗市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (89, N'苗栗縣', N'苑裡鎮', CAST(120.688219500000000 AS Decimal(18, 15)), CAST(24.411023200000000 AS Decimal(18, 15)), N'苗栗縣苑裡鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (90, N'苗栗縣', N'泰安鄉', CAST(121.068157100000000 AS Decimal(18, 15)), CAST(24.419258190000000 AS Decimal(18, 15)), N'苗栗縣泰安鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (91, N'苗栗縣', N'通霄鎮', CAST(120.714637800000000 AS Decimal(18, 15)), CAST(24.485046400000000 AS Decimal(18, 15)), N'苗栗縣通霄鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (92, N'苗栗縣', N'造橋鄉', CAST(120.869566300000000 AS Decimal(18, 15)), CAST(24.624813140000000 AS Decimal(18, 15)), N'苗栗縣造橋鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (93, N'苗栗縣', N'獅潭鄉', CAST(120.920668800000000 AS Decimal(18, 15)), CAST(24.519786140000000 AS Decimal(18, 15)), N'苗栗縣獅潭鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (94, N'苗栗縣', N'銅鑼鄉', CAST(120.799204300000000 AS Decimal(18, 15)), CAST(24.455918320000000 AS Decimal(18, 15)), N'苗栗縣銅鑼鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (95, N'苗栗縣', N'頭份市', CAST(120.918943700000000 AS Decimal(18, 15)), CAST(24.676282430000000 AS Decimal(18, 15)), N'苗栗縣頭份市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (96, N'苗栗縣', N'頭屋鄉', CAST(120.882663100000000 AS Decimal(18, 15)), CAST(24.573454970000000 AS Decimal(18, 15)), N'苗栗縣頭屋鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (97, N'桃園市', N'八德區', CAST(121.291310200000000 AS Decimal(18, 15)), CAST(24.949689030000000 AS Decimal(18, 15)), N'桃園市八德區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (98, N'桃園市', N'大園區', CAST(121.211770000000000 AS Decimal(18, 15)), CAST(25.063847090000000 AS Decimal(18, 15)), N'桃園市大園區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (99, N'桃園市', N'大溪區', CAST(121.296342000000000 AS Decimal(18, 15)), CAST(24.867970260000000 AS Decimal(18, 15)), N'桃園市大溪區')
GO
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (100, N'桃園市', N'中壢區', CAST(121.214724300000000 AS Decimal(18, 15)), CAST(24.979938030000000 AS Decimal(18, 15)), N'桃園市中壢區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (101, N'桃園市', N'平鎮區', CAST(121.214005100000000 AS Decimal(18, 15)), CAST(24.921179230000000 AS Decimal(18, 15)), N'桃園市平鎮區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (102, N'桃園市', N'桃園區', CAST(121.299661200000000 AS Decimal(18, 15)), CAST(25.000400240000000 AS Decimal(18, 15)), N'桃園市桃園區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (103, N'桃園市', N'復興區', CAST(121.375458800000000 AS Decimal(18, 15)), CAST(24.729498840000000 AS Decimal(18, 15)), N'桃園市復興區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (104, N'桃園市', N'新屋區', CAST(121.067758000000000 AS Decimal(18, 15)), CAST(24.972803520000000 AS Decimal(18, 15)), N'桃園市新屋區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (105, N'桃園市', N'楊梅區', CAST(121.129169700000000 AS Decimal(18, 15)), CAST(24.918209890000000 AS Decimal(18, 15)), N'桃園市楊梅區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (106, N'桃園市', N'龍潭區', CAST(121.211787700000000 AS Decimal(18, 15)), CAST(24.850649540000000 AS Decimal(18, 15)), N'桃園市龍潭區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (107, N'桃園市', N'龜山區', CAST(121.356926500000000 AS Decimal(18, 15)), CAST(25.024174720000000 AS Decimal(18, 15)), N'桃園市龜山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (108, N'桃園市', N'蘆竹區', CAST(121.283126600000000 AS Decimal(18, 15)), CAST(25.060733370000000 AS Decimal(18, 15)), N'桃園市蘆竹區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (109, N'桃園市', N'觀音區', CAST(121.115502100000000 AS Decimal(18, 15)), CAST(25.026716110000000 AS Decimal(18, 15)), N'桃園市觀音區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (110, N'高雄市', N'三民區', CAST(120.317918700000000 AS Decimal(18, 15)), CAST(22.649898830000000 AS Decimal(18, 15)), N'高雄市三民區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (111, N'高雄市', N'大社區', CAST(120.370799400000000 AS Decimal(18, 15)), CAST(22.739834790000000 AS Decimal(18, 15)), N'高雄市大社區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (112, N'高雄市', N'大寮區', CAST(120.411146800000000 AS Decimal(18, 15)), CAST(22.592835760000000 AS Decimal(18, 15)), N'高雄市大寮區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (113, N'高雄市', N'大樹區', CAST(120.425407000000000 AS Decimal(18, 15)), CAST(22.711003640000000 AS Decimal(18, 15)), N'高雄市大樹區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (114, N'高雄市', N'小港區', CAST(120.359260500000000 AS Decimal(18, 15)), CAST(22.551402070000000 AS Decimal(18, 15)), N'高雄市小港區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (115, N'高雄市', N'仁武區', CAST(120.360526500000000 AS Decimal(18, 15)), CAST(22.701207820000000 AS Decimal(18, 15)), N'高雄市仁武區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (116, N'高雄市', N'內門區', CAST(120.471927200000000 AS Decimal(18, 15)), CAST(22.956688170000000 AS Decimal(18, 15)), N'高雄市內門區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (117, N'高雄市', N'六龜區', CAST(120.658563500000000 AS Decimal(18, 15)), CAST(23.011954260000000 AS Decimal(18, 15)), N'高雄市六龜區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (118, N'高雄市', N'左營區', CAST(120.295158800000000 AS Decimal(18, 15)), CAST(22.683956990000000 AS Decimal(18, 15)), N'高雄市左營區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (119, N'高雄市', N'永安區', CAST(120.228051000000000 AS Decimal(18, 15)), CAST(22.822245850000000 AS Decimal(18, 15)), N'高雄市永安區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (120, N'高雄市', N'田寮區', CAST(120.395984200000000 AS Decimal(18, 15)), CAST(22.863943070000000 AS Decimal(18, 15)), N'高雄市田寮區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (121, N'高雄市', N'甲仙區', CAST(120.623289500000000 AS Decimal(18, 15)), CAST(23.116549950000000 AS Decimal(18, 15)), N'高雄市甲仙區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (122, N'高雄市', N'杉林區', CAST(120.562197100000000 AS Decimal(18, 15)), CAST(22.996946810000000 AS Decimal(18, 15)), N'高雄市杉林區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (123, N'高雄市', N'那瑪夏', CAST(120.741944000000000 AS Decimal(18, 15)), CAST(23.275008000000000 AS Decimal(18, 15)), N'高雄市那瑪夏區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (124, N'高雄市', N'岡山區', CAST(120.297890600000000 AS Decimal(18, 15)), CAST(22.805058860000000 AS Decimal(18, 15)), N'高雄市岡山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (125, N'高雄市', N'東沙群', CAST(116.906984000000000 AS Decimal(18, 15)), CAST(20.705842000000000 AS Decimal(18, 15)), N'高雄市東沙群島')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (126, N'高雄市', N'林園區', CAST(120.399052000000000 AS Decimal(18, 15)), CAST(22.508137430000000 AS Decimal(18, 15)), N'高雄市林園區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (127, N'高雄市', N'阿蓮區', CAST(120.321096700000000 AS Decimal(18, 15)), CAST(22.870228830000000 AS Decimal(18, 15)), N'高雄市阿蓮區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (128, N'高雄市', N'前金區', CAST(120.294421700000000 AS Decimal(18, 15)), CAST(22.626990500000000 AS Decimal(18, 15)), N'高雄市前金區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (129, N'高雄市', N'前鎮區', CAST(120.314674900000000 AS Decimal(18, 15)), CAST(22.592697240000000 AS Decimal(18, 15)), N'高雄市前鎮區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (130, N'高雄市', N'南沙群', CAST(115.812406000000000 AS Decimal(18, 15)), CAST(10.724232000000000 AS Decimal(18, 15)), N'高雄市南沙群島')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (131, N'高雄市', N'美濃區', CAST(120.563463500000000 AS Decimal(18, 15)), CAST(22.900055290000000 AS Decimal(18, 15)), N'高雄市美濃區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (132, N'高雄市', N'茄萣區', CAST(120.198051900000000 AS Decimal(18, 15)), CAST(22.882413990000000 AS Decimal(18, 15)), N'高雄市茄萣區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (133, N'高雄市', N'茂林區', CAST(120.752384000000000 AS Decimal(18, 15)), CAST(22.919932560000000 AS Decimal(18, 15)), N'高雄市茂林區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (134, N'高雄市', N'苓雅區', CAST(120.320910300000000 AS Decimal(18, 15)), CAST(22.623594480000000 AS Decimal(18, 15)), N'高雄市苓雅區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (135, N'高雄市', N'桃源區', CAST(120.852338300000000 AS Decimal(18, 15)), CAST(23.224945900000000 AS Decimal(18, 15)), N'高雄市桃源區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (136, N'高雄市', N'梓官區', CAST(120.259398900000000 AS Decimal(18, 15)), CAST(22.748209000000000 AS Decimal(18, 15)), N'高雄市梓官區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (137, N'高雄市', N'鳥松區', CAST(120.372778300000000 AS Decimal(18, 15)), CAST(22.662493020000000 AS Decimal(18, 15)), N'高雄市鳥松區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (138, N'高雄市', N'湖內區', CAST(120.225937500000000 AS Decimal(18, 15)), CAST(22.893249520000000 AS Decimal(18, 15)), N'高雄市湖內區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (139, N'高雄市', N'新興區', CAST(120.306733700000000 AS Decimal(18, 15)), CAST(22.629929060000000 AS Decimal(18, 15)), N'高雄市新興區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (140, N'高雄市', N'楠梓區', CAST(120.300758000000000 AS Decimal(18, 15)), CAST(22.721099610000000 AS Decimal(18, 15)), N'高雄市楠梓區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (141, N'高雄市', N'路竹區', CAST(120.265987100000000 AS Decimal(18, 15)), CAST(22.857241710000000 AS Decimal(18, 15)), N'高雄市路竹區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (142, N'高雄市', N'鼓山區', CAST(120.274163000000000 AS Decimal(18, 15)), CAST(22.650195250000000 AS Decimal(18, 15)), N'高雄市鼓山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (143, N'高雄市', N'旗山區', CAST(120.475455400000000 AS Decimal(18, 15)), CAST(22.864970330000000 AS Decimal(18, 15)), N'高雄市旗山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (144, N'高雄市', N'旗津區', CAST(120.289153900000000 AS Decimal(18, 15)), CAST(22.585655830000000 AS Decimal(18, 15)), N'高雄市旗津區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (145, N'高雄市', N'鳳山區', CAST(120.355435900000000 AS Decimal(18, 15)), CAST(22.613792510000000 AS Decimal(18, 15)), N'高雄市鳳山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (146, N'高雄市', N'橋頭區', CAST(120.300653400000000 AS Decimal(18, 15)), CAST(22.752523980000000 AS Decimal(18, 15)), N'高雄市橋頭區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (147, N'高雄市', N'燕巢區', CAST(120.370799000000000 AS Decimal(18, 15)), CAST(22.787696260000000 AS Decimal(18, 15)), N'高雄市燕巢區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (148, N'高雄市', N'彌陀區', CAST(120.239457100000000 AS Decimal(18, 15)), CAST(22.779445280000000 AS Decimal(18, 15)), N'高雄市彌陀區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (149, N'高雄市', N'鹽埕區', CAST(120.284233100000000 AS Decimal(18, 15)), CAST(22.624245850000000 AS Decimal(18, 15)), N'高雄市鹽埕區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (150, N'基隆市', N'七堵區', CAST(121.683628000000000 AS Decimal(18, 15)), CAST(25.109620280000000 AS Decimal(18, 15)), N'基隆市七堵區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (151, N'基隆市', N'中山區', CAST(121.730891300000000 AS Decimal(18, 15)), CAST(25.149863650000000 AS Decimal(18, 15)), N'基隆市中山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (152, N'基隆市', N'中正區', CAST(121.778354900000000 AS Decimal(18, 15)), CAST(25.143657540000000 AS Decimal(18, 15)), N'基隆市中正區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (153, N'基隆市', N'仁愛區', CAST(121.743420500000000 AS Decimal(18, 15)), CAST(25.119454210000000 AS Decimal(18, 15)), N'基隆市仁愛區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (154, N'基隆市', N'安樂區', CAST(121.707832500000000 AS Decimal(18, 15)), CAST(25.141395210000000 AS Decimal(18, 15)), N'基隆市安樂區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (155, N'基隆市', N'信義區', CAST(121.772646000000000 AS Decimal(18, 15)), CAST(25.125765790000000 AS Decimal(18, 15)), N'基隆市信義區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (156, N'基隆市', N'暖暖區', CAST(121.744734400000000 AS Decimal(18, 15)), CAST(25.080970030000000 AS Decimal(18, 15)), N'基隆市暖暖區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (157, N'連江縣', N'北竿鄉', CAST(119.994251000000000 AS Decimal(18, 15)), CAST(26.225637000000000 AS Decimal(18, 15)), N'連江縣北竿鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (158, N'連江縣', N'東引鄉', CAST(120.490300000000000 AS Decimal(18, 15)), CAST(26.366101000000000 AS Decimal(18, 15)), N'連江縣東引鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (159, N'連江縣', N'南竿鄉', CAST(119.931128000000000 AS Decimal(18, 15)), CAST(26.154321000000000 AS Decimal(18, 15)), N'連江縣南竿鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (160, N'連江縣', N'莒光鄉', CAST(119.938877000000000 AS Decimal(18, 15)), CAST(25.972980000000000 AS Decimal(18, 15)), N'連江縣莒光鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (161, N'雲林縣', N'二崙鄉', CAST(120.396459800000000 AS Decimal(18, 15)), CAST(23.792552100000000 AS Decimal(18, 15)), N'雲林縣二崙鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (162, N'雲林縣', N'口湖鄉', CAST(120.141371100000000 AS Decimal(18, 15)), CAST(23.553653950000000 AS Decimal(18, 15)), N'雲林縣口湖鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (163, N'雲林縣', N'土庫鎮', CAST(120.364725200000000 AS Decimal(18, 15)), CAST(23.691106650000000 AS Decimal(18, 15)), N'雲林縣土庫鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (164, N'雲林縣', N'大埤鄉', CAST(120.425559200000000 AS Decimal(18, 15)), CAST(23.645597100000000 AS Decimal(18, 15)), N'雲林縣大埤鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (165, N'雲林縣', N'元長鄉', CAST(120.327961700000000 AS Decimal(18, 15)), CAST(23.642430950000000 AS Decimal(18, 15)), N'雲林縣元長鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (166, N'雲林縣', N'斗六市', CAST(120.560004400000000 AS Decimal(18, 15)), CAST(23.706518830000000 AS Decimal(18, 15)), N'雲林縣斗六市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (167, N'雲林縣', N'斗南鎮', CAST(120.482635600000000 AS Decimal(18, 15)), CAST(23.670663930000000 AS Decimal(18, 15)), N'雲林縣斗南鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (168, N'雲林縣', N'水林鄉', CAST(120.235273400000000 AS Decimal(18, 15)), CAST(23.561628490000000 AS Decimal(18, 15)), N'雲林縣水林鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (169, N'雲林縣', N'北港鎮', CAST(120.294016400000000 AS Decimal(18, 15)), CAST(23.592195280000000 AS Decimal(18, 15)), N'雲林縣北港鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (170, N'雲林縣', N'古坑鄉', CAST(120.611735100000000 AS Decimal(18, 15)), CAST(23.625454690000000 AS Decimal(18, 15)), N'雲林縣古坑鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (171, N'雲林縣', N'四湖鄉', CAST(120.206469900000000 AS Decimal(18, 15)), CAST(23.642068750000000 AS Decimal(18, 15)), N'雲林縣四湖鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (172, N'雲林縣', N'西螺鎮', CAST(120.458079500000000 AS Decimal(18, 15)), CAST(23.779421090000000 AS Decimal(18, 15)), N'雲林縣西螺鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (173, N'雲林縣', N'東勢鄉', CAST(120.256417300000000 AS Decimal(18, 15)), CAST(23.696123240000000 AS Decimal(18, 15)), N'雲林縣東勢鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (174, N'雲林縣', N'林內鄉', CAST(120.615501800000000 AS Decimal(18, 15)), CAST(23.755720900000000 AS Decimal(18, 15)), N'雲林縣林內鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (175, N'雲林縣', N'虎尾鎮', CAST(120.429306100000000 AS Decimal(18, 15)), CAST(23.716615450000000 AS Decimal(18, 15)), N'雲林縣虎尾鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (176, N'雲林縣', N'崙背鄉', CAST(120.333976900000000 AS Decimal(18, 15)), CAST(23.778497910000000 AS Decimal(18, 15)), N'雲林縣崙背鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (177, N'雲林縣', N'麥寮鄉', CAST(120.243533000000000 AS Decimal(18, 15)), CAST(23.788170560000000 AS Decimal(18, 15)), N'雲林縣麥寮鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (178, N'雲林縣', N'莿桐鄉', CAST(120.529041900000000 AS Decimal(18, 15)), CAST(23.769738940000000 AS Decimal(18, 15)), N'雲林縣莿桐鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (179, N'雲林縣', N'臺西鄉', CAST(120.205495200000000 AS Decimal(18, 15)), CAST(23.716008150000000 AS Decimal(18, 15)), N'雲林縣臺西鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (180, N'雲林縣', N'褒忠鄉', CAST(120.311612200000000 AS Decimal(18, 15)), CAST(23.716132040000000 AS Decimal(18, 15)), N'雲林縣褒忠鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (181, N'新北市', N'八里區', CAST(121.413835900000000 AS Decimal(18, 15)), CAST(25.138127630000000 AS Decimal(18, 15)), N'新北市八里區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (182, N'新北市', N'三芝區', CAST(121.515558000000000 AS Decimal(18, 15)), CAST(25.231598910000000 AS Decimal(18, 15)), N'新北市三芝區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (183, N'新北市', N'三重區', CAST(121.487097700000000 AS Decimal(18, 15)), CAST(25.062816510000000 AS Decimal(18, 15)), N'新北市三重區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (184, N'新北市', N'三峽區', CAST(121.416309400000000 AS Decimal(18, 15)), CAST(24.882097660000000 AS Decimal(18, 15)), N'新北市三峽區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (185, N'新北市', N'土城區', CAST(121.445737000000000 AS Decimal(18, 15)), CAST(24.964251020000000 AS Decimal(18, 15)), N'新北市土城區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (186, N'新北市', N'中和區', CAST(121.493674400000000 AS Decimal(18, 15)), CAST(24.990880390000000 AS Decimal(18, 15)), N'新北市中和區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (187, N'新北市', N'五股區', CAST(121.433213900000000 AS Decimal(18, 15)), CAST(25.096147460000000 AS Decimal(18, 15)), N'新北市五股區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (188, N'新北市', N'平溪區', CAST(121.757881700000000 AS Decimal(18, 15)), CAST(25.026070680000000 AS Decimal(18, 15)), N'新北市平溪區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (189, N'新北市', N'永和區', CAST(121.516745000000000 AS Decimal(18, 15)), CAST(25.008101990000000 AS Decimal(18, 15)), N'新北市永和區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (190, N'新北市', N'石門區', CAST(121.569276100000000 AS Decimal(18, 15)), CAST(25.265180790000000 AS Decimal(18, 15)), N'新北市石門區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (191, N'新北市', N'石碇區', CAST(121.647227700000000 AS Decimal(18, 15)), CAST(24.947141070000000 AS Decimal(18, 15)), N'新北市石碇區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (192, N'新北市', N'汐止區', CAST(121.654699200000000 AS Decimal(18, 15)), CAST(25.073313220000000 AS Decimal(18, 15)), N'新北市汐止區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (193, N'新北市', N'坪林區', CAST(121.724223000000000 AS Decimal(18, 15)), CAST(24.910970730000000 AS Decimal(18, 15)), N'新北市坪林區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (194, N'新北市', N'林口區', CAST(121.352723500000000 AS Decimal(18, 15)), CAST(25.100086800000000 AS Decimal(18, 15)), N'新北市林口區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (195, N'新北市', N'板橋區', CAST(121.457967500000000 AS Decimal(18, 15)), CAST(25.011864530000000 AS Decimal(18, 15)), N'新北市板橋區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (196, N'新北市', N'金山區', CAST(121.605263900000000 AS Decimal(18, 15)), CAST(25.217145940000000 AS Decimal(18, 15)), N'新北市金山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (197, N'新北市', N'泰山區', CAST(121.416278500000000 AS Decimal(18, 15)), CAST(25.055497740000000 AS Decimal(18, 15)), N'新北市泰山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (198, N'新北市', N'烏來區', CAST(121.541480600000000 AS Decimal(18, 15)), CAST(24.788242950000000 AS Decimal(18, 15)), N'新北市烏來區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (199, N'新北市', N'貢寮區', CAST(121.918246600000000 AS Decimal(18, 15)), CAST(25.024856410000000 AS Decimal(18, 15)), N'新北市貢寮區')
GO
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (200, N'新北市', N'淡水區', CAST(121.463904000000000 AS Decimal(18, 15)), CAST(25.189076360000000 AS Decimal(18, 15)), N'新北市淡水區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (201, N'新北市', N'深坑區', CAST(121.620062400000000 AS Decimal(18, 15)), CAST(24.997675060000000 AS Decimal(18, 15)), N'新北市深坑區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (202, N'新北市', N'新店區', CAST(121.531656500000000 AS Decimal(18, 15)), CAST(24.930390080000000 AS Decimal(18, 15)), N'新北市新店區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (203, N'新北市', N'新莊區', CAST(121.436753500000000 AS Decimal(18, 15)), CAST(25.035830300000000 AS Decimal(18, 15)), N'新北市新莊區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (204, N'新北市', N'瑞芳區', CAST(121.823201800000000 AS Decimal(18, 15)), CAST(25.098129300000000 AS Decimal(18, 15)), N'新北市瑞芳區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (205, N'新北市', N'萬里區', CAST(121.643930700000000 AS Decimal(18, 15)), CAST(25.175724570000000 AS Decimal(18, 15)), N'新北市萬里區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (206, N'新北市', N'樹林區', CAST(121.401034000000000 AS Decimal(18, 15)), CAST(24.979706090000000 AS Decimal(18, 15)), N'新北市樹林區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (207, N'新北市', N'雙溪區', CAST(121.832982200000000 AS Decimal(18, 15)), CAST(24.996983940000000 AS Decimal(18, 15)), N'新北市雙溪區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (208, N'新北市', N'蘆洲區', CAST(121.471246100000000 AS Decimal(18, 15)), CAST(25.089271730000000 AS Decimal(18, 15)), N'新北市蘆洲區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (209, N'新北市', N'鶯歌區', CAST(121.346626900000000 AS Decimal(18, 15)), CAST(24.956625800000000 AS Decimal(18, 15)), N'新北市鶯歌區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (210, N'新竹市', N'北區', CAST(120.949123300000000 AS Decimal(18, 15)), CAST(24.822695420000000 AS Decimal(18, 15)), N'新竹市北區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (211, N'新竹市', N'東區', CAST(120.992750500000000 AS Decimal(18, 15)), CAST(24.790281740000000 AS Decimal(18, 15)), N'新竹市東區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (212, N'新竹市', N'香山區', CAST(120.923672700000000 AS Decimal(18, 15)), CAST(24.771043420000000 AS Decimal(18, 15)), N'新竹市香山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (213, N'新竹縣', N'五峰鄉', CAST(121.138949500000000 AS Decimal(18, 15)), CAST(24.578054000000000 AS Decimal(18, 15)), N'新竹縣五峰鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (214, N'新竹縣', N'北埔鄉', CAST(121.064274500000000 AS Decimal(18, 15)), CAST(24.672074050000000 AS Decimal(18, 15)), N'新竹縣北埔鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (215, N'新竹縣', N'尖石鄉', CAST(121.281934100000000 AS Decimal(18, 15)), CAST(24.594932350000000 AS Decimal(18, 15)), N'新竹縣尖石鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (216, N'新竹縣', N'竹北市', CAST(120.994870400000000 AS Decimal(18, 15)), CAST(24.838162090000000 AS Decimal(18, 15)), N'新竹縣竹北市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (217, N'新竹縣', N'竹東鎮', CAST(121.075363200000000 AS Decimal(18, 15)), CAST(24.730758020000000 AS Decimal(18, 15)), N'新竹縣竹東鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (218, N'新竹縣', N'芎林鄉', CAST(121.104639400000000 AS Decimal(18, 15)), CAST(24.765711600000000 AS Decimal(18, 15)), N'新竹縣芎林鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (219, N'新竹縣', N'峨眉鄉', CAST(121.011080900000000 AS Decimal(18, 15)), CAST(24.678111970000000 AS Decimal(18, 15)), N'新竹縣峨眉鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (220, N'新竹縣', N'湖口鄉', CAST(121.051724200000000 AS Decimal(18, 15)), CAST(24.885663410000000 AS Decimal(18, 15)), N'新竹縣湖口鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (221, N'新竹縣', N'新埔鎮', CAST(121.093988600000000 AS Decimal(18, 15)), CAST(24.841339590000000 AS Decimal(18, 15)), N'新竹縣新埔鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (222, N'新竹縣', N'新豐鄉', CAST(120.995603300000000 AS Decimal(18, 15)), CAST(24.907312980000000 AS Decimal(18, 15)), N'新竹縣新豐鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (223, N'新竹縣', N'橫山鄉', CAST(121.146973200000000 AS Decimal(18, 15)), CAST(24.707809200000000 AS Decimal(18, 15)), N'新竹縣橫山鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (224, N'新竹縣', N'關西鎮', CAST(121.186622100000000 AS Decimal(18, 15)), CAST(24.785146810000000 AS Decimal(18, 15)), N'新竹縣關西鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (225, N'新竹縣', N'寶山鄉', CAST(120.999160500000000 AS Decimal(18, 15)), CAST(24.736973510000000 AS Decimal(18, 15)), N'新竹縣寶山鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (226, N'嘉義市', N'西區', CAST(120.424872400000000 AS Decimal(18, 15)), CAST(23.479155290000000 AS Decimal(18, 15)), N'嘉義市西區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (227, N'嘉義市', N'東區', CAST(120.470624400000000 AS Decimal(18, 15)), CAST(23.481703340000000 AS Decimal(18, 15)), N'嘉義市東區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (228, N'嘉義縣', N'大林鎮', CAST(120.480786500000000 AS Decimal(18, 15)), CAST(23.598908270000000 AS Decimal(18, 15)), N'嘉義縣大林鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (229, N'嘉義縣', N'大埔鄉', CAST(120.589646600000000 AS Decimal(18, 15)), CAST(23.288484260000000 AS Decimal(18, 15)), N'嘉義縣大埔鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (230, N'嘉義縣', N'中埔鄉', CAST(120.536531200000000 AS Decimal(18, 15)), CAST(23.404089980000000 AS Decimal(18, 15)), N'嘉義縣中埔鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (231, N'嘉義縣', N'六腳鄉', CAST(120.271472800000000 AS Decimal(18, 15)), CAST(23.510209840000000 AS Decimal(18, 15)), N'嘉義縣六腳鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (232, N'嘉義縣', N'太保市', CAST(120.344000900000000 AS Decimal(18, 15)), CAST(23.472919100000000 AS Decimal(18, 15)), N'嘉義縣太保市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (233, N'嘉義縣', N'水上鄉', CAST(120.414735700000000 AS Decimal(18, 15)), CAST(23.429112870000000 AS Decimal(18, 15)), N'嘉義縣水上鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (234, N'嘉義縣', N'布袋鎮', CAST(120.177749800000000 AS Decimal(18, 15)), CAST(23.374942760000000 AS Decimal(18, 15)), N'嘉義縣布袋鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (235, N'嘉義縣', N'民雄鄉', CAST(120.444279800000000 AS Decimal(18, 15)), CAST(23.542553470000000 AS Decimal(18, 15)), N'嘉義縣民雄鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (236, N'嘉義縣', N'朴子市', CAST(120.253897700000000 AS Decimal(18, 15)), CAST(23.446106050000000 AS Decimal(18, 15)), N'嘉義縣朴子市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (237, N'嘉義縣', N'竹崎鄉', CAST(120.596577100000000 AS Decimal(18, 15)), CAST(23.503765270000000 AS Decimal(18, 15)), N'嘉義縣竹崎鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (238, N'嘉義縣', N'東石鄉', CAST(120.173868200000000 AS Decimal(18, 15)), CAST(23.468660590000000 AS Decimal(18, 15)), N'嘉義縣東石鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (239, N'嘉義縣', N'阿里山', CAST(120.759617300000000 AS Decimal(18, 15)), CAST(23.440776190000000 AS Decimal(18, 15)), N'嘉義縣阿里山鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (240, N'嘉義縣', N'梅山鄉', CAST(120.638745900000000 AS Decimal(18, 15)), CAST(23.555354650000000 AS Decimal(18, 15)), N'嘉義縣梅山鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (241, N'嘉義縣', N'鹿草鄉', CAST(120.304546800000000 AS Decimal(18, 15)), CAST(23.408117360000000 AS Decimal(18, 15)), N'嘉義縣鹿草鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (242, N'嘉義縣', N'番路鄉', CAST(120.607533500000000 AS Decimal(18, 15)), CAST(23.427656690000000 AS Decimal(18, 15)), N'嘉義縣番路鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (243, N'嘉義縣', N'新港鄉', CAST(120.348287300000000 AS Decimal(18, 15)), CAST(23.545812950000000 AS Decimal(18, 15)), N'嘉義縣新港鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (244, N'嘉義縣', N'溪口鄉', CAST(120.401028200000000 AS Decimal(18, 15)), CAST(23.593530890000000 AS Decimal(18, 15)), N'嘉義縣溪口鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (245, N'嘉義縣', N'義竹鄉', CAST(120.223943300000000 AS Decimal(18, 15)), CAST(23.345758720000000 AS Decimal(18, 15)), N'嘉義縣義竹鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (246, N'彰化縣', N'二水鄉', CAST(120.628589000000000 AS Decimal(18, 15)), CAST(23.809240200000000 AS Decimal(18, 15)), N'彰化縣二水鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (247, N'彰化縣', N'二林鎮', CAST(120.404225000000000 AS Decimal(18, 15)), CAST(23.916214050000000 AS Decimal(18, 15)), N'彰化縣二林鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (248, N'彰化縣', N'大村鄉', CAST(120.558686600000000 AS Decimal(18, 15)), CAST(23.992092060000000 AS Decimal(18, 15)), N'彰化縣大村鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (249, N'彰化縣', N'大城鄉', CAST(120.311328400000000 AS Decimal(18, 15)), CAST(23.850692760000000 AS Decimal(18, 15)), N'彰化縣大城鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (250, N'彰化縣', N'北斗鎮', CAST(120.533156600000000 AS Decimal(18, 15)), CAST(23.867574000000000 AS Decimal(18, 15)), N'彰化縣北斗鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (251, N'彰化縣', N'永靖鄉', CAST(120.541603200000000 AS Decimal(18, 15)), CAST(23.921395070000000 AS Decimal(18, 15)), N'彰化縣永靖鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (252, N'彰化縣', N'田中鎮', CAST(120.590347100000000 AS Decimal(18, 15)), CAST(23.857238720000000 AS Decimal(18, 15)), N'彰化縣田中鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (253, N'彰化縣', N'田尾鄉', CAST(120.522324400000000 AS Decimal(18, 15)), CAST(23.900560650000000 AS Decimal(18, 15)), N'彰化縣田尾鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (254, N'彰化縣', N'竹塘鄉', CAST(120.413664500000000 AS Decimal(18, 15)), CAST(23.850587200000000 AS Decimal(18, 15)), N'彰化縣竹塘鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (255, N'彰化縣', N'伸港鄉', CAST(120.486449000000000 AS Decimal(18, 15)), CAST(24.163671070000000 AS Decimal(18, 15)), N'彰化縣伸港鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (256, N'彰化縣', N'秀水鄉', CAST(120.504118400000000 AS Decimal(18, 15)), CAST(24.032494050000000 AS Decimal(18, 15)), N'彰化縣秀水鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (257, N'彰化縣', N'和美鎮', CAST(120.511204500000000 AS Decimal(18, 15)), CAST(24.113795350000000 AS Decimal(18, 15)), N'彰化縣和美鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (258, N'彰化縣', N'社頭鄉', CAST(120.602166100000000 AS Decimal(18, 15)), CAST(23.905364130000000 AS Decimal(18, 15)), N'彰化縣社頭鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (259, N'彰化縣', N'芳苑鄉', CAST(120.353922600000000 AS Decimal(18, 15)), CAST(23.953790600000000 AS Decimal(18, 15)), N'彰化縣芳苑鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (260, N'彰化縣', N'花壇鄉', CAST(120.559765500000000 AS Decimal(18, 15)), CAST(24.030068750000000 AS Decimal(18, 15)), N'彰化縣花壇鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (261, N'彰化縣', N'芬園鄉', CAST(120.629441400000000 AS Decimal(18, 15)), CAST(24.006287940000000 AS Decimal(18, 15)), N'彰化縣芬園鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (262, N'彰化縣', N'員林市', CAST(120.593073000000000 AS Decimal(18, 15)), CAST(23.956504480000000 AS Decimal(18, 15)), N'彰化縣員林市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (263, N'彰化縣', N'埔心鄉', CAST(120.534280200000000 AS Decimal(18, 15)), CAST(23.952775210000000 AS Decimal(18, 15)), N'彰化縣埔心鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (264, N'彰化縣', N'埔鹽鄉', CAST(120.459462600000000 AS Decimal(18, 15)), CAST(23.992044170000000 AS Decimal(18, 15)), N'彰化縣埔鹽鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (265, N'彰化縣', N'埤頭鄉', CAST(120.467564200000000 AS Decimal(18, 15)), CAST(23.882341180000000 AS Decimal(18, 15)), N'彰化縣埤頭鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (266, N'彰化縣', N'鹿港鎮', CAST(120.438549100000000 AS Decimal(18, 15)), CAST(24.082866850000000 AS Decimal(18, 15)), N'彰化縣鹿港鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (267, N'彰化縣', N'溪州鄉', CAST(120.522490400000000 AS Decimal(18, 15)), CAST(23.827251850000000 AS Decimal(18, 15)), N'彰化縣溪州鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (268, N'彰化縣', N'溪湖鎮', CAST(120.483173900000000 AS Decimal(18, 15)), CAST(23.951714560000000 AS Decimal(18, 15)), N'彰化縣溪湖鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (269, N'彰化縣', N'彰化市', CAST(120.569420800000000 AS Decimal(18, 15)), CAST(24.075329090000000 AS Decimal(18, 15)), N'彰化縣彰化市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (270, N'彰化縣', N'福興鄉', CAST(120.431051100000000 AS Decimal(18, 15)), CAST(24.030216740000000 AS Decimal(18, 15)), N'彰化縣福興鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (271, N'彰化縣', N'線西鄉', CAST(120.452157000000000 AS Decimal(18, 15)), CAST(24.131581270000000 AS Decimal(18, 15)), N'彰化縣線西鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (272, N'臺中市', N'大甲區', CAST(120.635790100000000 AS Decimal(18, 15)), CAST(24.378271610000000 AS Decimal(18, 15)), N'臺中市大甲區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (273, N'臺中市', N'大安區', CAST(120.591440700000000 AS Decimal(18, 15)), CAST(24.365095550000000 AS Decimal(18, 15)), N'臺中市大安區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (274, N'臺中市', N'大肚區', CAST(120.554324300000000 AS Decimal(18, 15)), CAST(24.144675040000000 AS Decimal(18, 15)), N'臺中市大肚區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (275, N'臺中市', N'大里區', CAST(120.692626100000000 AS Decimal(18, 15)), CAST(24.095757420000000 AS Decimal(18, 15)), N'臺中市大里區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (276, N'臺中市', N'大雅區', CAST(120.641181800000000 AS Decimal(18, 15)), CAST(24.227041810000000 AS Decimal(18, 15)), N'臺中市大雅區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (277, N'臺中市', N'中區', CAST(120.680598000000000 AS Decimal(18, 15)), CAST(24.141685660000000 AS Decimal(18, 15)), N'臺中市中區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (278, N'臺中市', N'太平區', CAST(120.773421700000000 AS Decimal(18, 15)), CAST(24.114773750000000 AS Decimal(18, 15)), N'臺中市太平區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (279, N'臺中市', N'北屯區', CAST(120.736231900000000 AS Decimal(18, 15)), CAST(24.184002980000000 AS Decimal(18, 15)), N'臺中市北屯區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (280, N'臺中市', N'北區', CAST(120.680952100000000 AS Decimal(18, 15)), CAST(24.158639850000000 AS Decimal(18, 15)), N'臺中市北區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (281, N'臺中市', N'外埔區', CAST(120.665063900000000 AS Decimal(18, 15)), CAST(24.335510710000000 AS Decimal(18, 15)), N'臺中市外埔區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (282, N'臺中市', N'石岡區', CAST(120.790382200000000 AS Decimal(18, 15)), CAST(24.264932990000000 AS Decimal(18, 15)), N'臺中市石岡區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (283, N'臺中市', N'后里區', CAST(120.714612700000000 AS Decimal(18, 15)), CAST(24.309624830000000 AS Decimal(18, 15)), N'臺中市后里區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (284, N'臺中市', N'西屯區', CAST(120.627013100000000 AS Decimal(18, 15)), CAST(24.183088950000000 AS Decimal(18, 15)), N'臺中市西屯區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (285, N'臺中市', N'西區', CAST(120.664757900000000 AS Decimal(18, 15)), CAST(24.143910820000000 AS Decimal(18, 15)), N'臺中市西區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (286, N'臺中市', N'沙鹿區', CAST(120.583862800000000 AS Decimal(18, 15)), CAST(24.234252120000000 AS Decimal(18, 15)), N'臺中市沙鹿區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (287, N'臺中市', N'和平區', CAST(121.140185000000000 AS Decimal(18, 15)), CAST(24.276202770000000 AS Decimal(18, 15)), N'臺中市和平區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (288, N'臺中市', N'東區', CAST(120.697086500000000 AS Decimal(18, 15)), CAST(24.137332090000000 AS Decimal(18, 15)), N'臺中市東區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (289, N'臺中市', N'東勢區', CAST(120.840140100000000 AS Decimal(18, 15)), CAST(24.249526370000000 AS Decimal(18, 15)), N'臺中市東勢區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (290, N'臺中市', N'南屯區', CAST(120.617737900000000 AS Decimal(18, 15)), CAST(24.141655240000000 AS Decimal(18, 15)), N'臺中市南屯區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (291, N'臺中市', N'南區', CAST(120.664617800000000 AS Decimal(18, 15)), CAST(24.121141070000000 AS Decimal(18, 15)), N'臺中市南區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (292, N'臺中市', N'烏日區', CAST(120.629330500000000 AS Decimal(18, 15)), CAST(24.083927100000000 AS Decimal(18, 15)), N'臺中市烏日區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (293, N'臺中市', N'神岡區', CAST(120.673332100000000 AS Decimal(18, 15)), CAST(24.265680080000000 AS Decimal(18, 15)), N'臺中市神岡區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (294, N'臺中市', N'梧棲區', CAST(120.530125900000000 AS Decimal(18, 15)), CAST(24.245524310000000 AS Decimal(18, 15)), N'臺中市梧棲區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (295, N'臺中市', N'清水區', CAST(120.580909400000000 AS Decimal(18, 15)), CAST(24.292057430000000 AS Decimal(18, 15)), N'臺中市清水區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (296, N'臺中市', N'新社區', CAST(120.831322800000000 AS Decimal(18, 15)), CAST(24.177692890000000 AS Decimal(18, 15)), N'臺中市新社區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (297, N'臺中市', N'潭子區', CAST(120.710997000000000 AS Decimal(18, 15)), CAST(24.211711210000000 AS Decimal(18, 15)), N'臺中市潭子區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (298, N'臺中市', N'龍井區', CAST(120.528372800000000 AS Decimal(18, 15)), CAST(24.200628920000000 AS Decimal(18, 15)), N'臺中市龍井區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (299, N'臺中市', N'豐原區', CAST(120.737571500000000 AS Decimal(18, 15)), CAST(24.249902980000000 AS Decimal(18, 15)), N'臺中市豐原區')
GO
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (300, N'臺中市', N'霧峰區', CAST(120.720198900000000 AS Decimal(18, 15)), CAST(24.043327850000000 AS Decimal(18, 15)), N'臺中市霧峰區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (301, N'臺北市', N'士林區', CAST(121.550847300000000 AS Decimal(18, 15)), CAST(25.125467040000000 AS Decimal(18, 15)), N'臺北市士林區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (302, N'臺北市', N'大同區', CAST(121.513041700000000 AS Decimal(18, 15)), CAST(25.063424330000000 AS Decimal(18, 15)), N'臺北市大同區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (303, N'臺北市', N'大安區', CAST(121.543444600000000 AS Decimal(18, 15)), CAST(25.026770120000000 AS Decimal(18, 15)), N'臺北市大安區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (304, N'臺北市', N'中山區', CAST(121.538159700000000 AS Decimal(18, 15)), CAST(25.069699170000000 AS Decimal(18, 15)), N'臺北市中山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (305, N'臺北市', N'中正區', CAST(121.519883900000000 AS Decimal(18, 15)), CAST(25.032404870000000 AS Decimal(18, 15)), N'臺北市中正區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (306, N'臺北市', N'內湖區', CAST(121.592382800000000 AS Decimal(18, 15)), CAST(25.083706230000000 AS Decimal(18, 15)), N'臺北市內湖區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (307, N'臺北市', N'文山區', CAST(121.573608200000000 AS Decimal(18, 15)), CAST(24.988579340000000 AS Decimal(18, 15)), N'臺北市文山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (308, N'臺北市', N'北投區', CAST(121.517799200000000 AS Decimal(18, 15)), CAST(25.148068200000000 AS Decimal(18, 15)), N'臺北市北投區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (309, N'臺北市', N'松山區', CAST(121.557587600000000 AS Decimal(18, 15)), CAST(25.059991010000000 AS Decimal(18, 15)), N'臺北市松山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (310, N'臺北市', N'信義區', CAST(121.571669700000000 AS Decimal(18, 15)), CAST(25.030620830000000 AS Decimal(18, 15)), N'臺北市信義區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (311, N'臺北市', N'南港區', CAST(121.609757300000000 AS Decimal(18, 15)), CAST(25.036009340000000 AS Decimal(18, 15)), N'臺北市南港區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (312, N'臺北市', N'萬華區', CAST(121.497985800000000 AS Decimal(18, 15)), CAST(25.028589900000000 AS Decimal(18, 15)), N'臺北市萬華區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (313, N'臺東縣', N'大武鄉', CAST(120.899170300000000 AS Decimal(18, 15)), CAST(22.383595220000000 AS Decimal(18, 15)), N'臺東縣大武鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (314, N'臺東縣', N'太麻里', CAST(120.979764300000000 AS Decimal(18, 15)), CAST(22.590980820000000 AS Decimal(18, 15)), N'臺東縣太麻里鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (315, N'臺東縣', N'成功鎮', CAST(121.353798300000000 AS Decimal(18, 15)), CAST(23.126637160000000 AS Decimal(18, 15)), N'臺東縣成功鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (316, N'臺東縣', N'池上鄉', CAST(121.218450100000000 AS Decimal(18, 15)), CAST(23.092487140000000 AS Decimal(18, 15)), N'臺東縣池上鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (317, N'臺東縣', N'卑南鄉', CAST(121.001552100000000 AS Decimal(18, 15)), CAST(22.764944530000000 AS Decimal(18, 15)), N'臺東縣卑南鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (318, N'臺東縣', N'延平鄉', CAST(120.983190200000000 AS Decimal(18, 15)), CAST(22.903431740000000 AS Decimal(18, 15)), N'臺東縣延平鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (319, N'臺東縣', N'東河鄉', CAST(121.251791700000000 AS Decimal(18, 15)), CAST(22.980069210000000 AS Decimal(18, 15)), N'臺東縣東河鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (320, N'臺東縣', N'金峰鄉', CAST(120.857038400000000 AS Decimal(18, 15)), CAST(22.581616870000000 AS Decimal(18, 15)), N'臺東縣金峰鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (321, N'臺東縣', N'長濱鄉', CAST(121.426172500000000 AS Decimal(18, 15)), CAST(23.334768990000000 AS Decimal(18, 15)), N'臺東縣長濱鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (322, N'臺東縣', N'海端鄉', CAST(121.017567200000000 AS Decimal(18, 15)), CAST(23.114785280000000 AS Decimal(18, 15)), N'臺東縣海端鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (323, N'臺東縣', N'鹿野鄉', CAST(121.156037600000000 AS Decimal(18, 15)), CAST(22.951256660000000 AS Decimal(18, 15)), N'臺東縣鹿野鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (324, N'臺東縣', N'達仁鄉', CAST(120.835523900000000 AS Decimal(18, 15)), CAST(22.384307180000000 AS Decimal(18, 15)), N'臺東縣達仁鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (325, N'臺東縣', N'綠島鄉', CAST(121.490195100000000 AS Decimal(18, 15)), CAST(22.660175370000000 AS Decimal(18, 15)), N'臺東縣綠島鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (326, N'臺東縣', N'臺東市', CAST(121.110364700000000 AS Decimal(18, 15)), CAST(22.751657210000000 AS Decimal(18, 15)), N'臺東縣臺東市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (327, N'臺東縣', N'關山鎮', CAST(121.176619700000000 AS Decimal(18, 15)), CAST(23.037806840000000 AS Decimal(18, 15)), N'臺東縣關山鎮')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (328, N'臺東縣', N'蘭嶼鄉', CAST(121.550832800000000 AS Decimal(18, 15)), CAST(22.046168350000000 AS Decimal(18, 15)), N'臺東縣蘭嶼鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (329, N'臺南市', N'七股區', CAST(120.100585400000000 AS Decimal(18, 15)), CAST(23.123265780000000 AS Decimal(18, 15)), N'臺南市七股區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (330, N'臺南市', N'下營區', CAST(120.264840000000000 AS Decimal(18, 15)), CAST(23.231039780000000 AS Decimal(18, 15)), N'臺南市下營區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (331, N'臺南市', N'大內區', CAST(120.398814700000000 AS Decimal(18, 15)), CAST(23.144821520000000 AS Decimal(18, 15)), N'臺南市大內區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (332, N'臺南市', N'山上區', CAST(120.370977000000000 AS Decimal(18, 15)), CAST(23.096893290000000 AS Decimal(18, 15)), N'臺南市山上區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (333, N'臺南市', N'中西區', CAST(120.192874000000000 AS Decimal(18, 15)), CAST(22.995944580000000 AS Decimal(18, 15)), N'臺南市中西區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (334, N'臺南市', N'仁德區', CAST(120.241878800000000 AS Decimal(18, 15)), CAST(22.941309310000000 AS Decimal(18, 15)), N'臺南市仁德區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (335, N'臺南市', N'六甲區', CAST(120.380025900000000 AS Decimal(18, 15)), CAST(23.227267200000000 AS Decimal(18, 15)), N'臺南市六甲區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (336, N'臺南市', N'北門區', CAST(120.126235700000000 AS Decimal(18, 15)), CAST(23.277770800000000 AS Decimal(18, 15)), N'臺南市北門區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (337, N'臺南市', N'北區', CAST(120.206873500000000 AS Decimal(18, 15)), CAST(23.010121790000000 AS Decimal(18, 15)), N'臺南市北區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (338, N'臺南市', N'左鎮區', CAST(120.412391700000000 AS Decimal(18, 15)), CAST(23.026046110000000 AS Decimal(18, 15)), N'臺南市左鎮區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (339, N'臺南市', N'永康區', CAST(120.254279500000000 AS Decimal(18, 15)), CAST(23.027295320000000 AS Decimal(18, 15)), N'臺南市永康區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (340, N'臺南市', N'玉井區', CAST(120.460962200000000 AS Decimal(18, 15)), CAST(23.114809260000000 AS Decimal(18, 15)), N'臺南市玉井區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (341, N'臺南市', N'白河區', CAST(120.457856500000000 AS Decimal(18, 15)), CAST(23.351320680000000 AS Decimal(18, 15)), N'臺南市白河區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (342, N'臺南市', N'安平區', CAST(120.164994900000000 AS Decimal(18, 15)), CAST(22.990084370000000 AS Decimal(18, 15)), N'臺南市安平區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (343, N'臺南市', N'安定區', CAST(120.229623500000000 AS Decimal(18, 15)), CAST(23.099749270000000 AS Decimal(18, 15)), N'臺南市安定區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (344, N'臺南市', N'安南區', CAST(120.152618900000000 AS Decimal(18, 15)), CAST(23.048696810000000 AS Decimal(18, 15)), N'臺南市安南區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (345, N'臺南市', N'西港區', CAST(120.200230900000000 AS Decimal(18, 15)), CAST(23.124918930000000 AS Decimal(18, 15)), N'臺南市西港區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (346, N'臺南市', N'佳里區', CAST(120.178593000000000 AS Decimal(18, 15)), CAST(23.166994100000000 AS Decimal(18, 15)), N'臺南市佳里區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (347, N'臺南市', N'官田區', CAST(120.347991800000000 AS Decimal(18, 15)), CAST(23.190985480000000 AS Decimal(18, 15)), N'臺南市官田區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (348, N'臺南市', N'東山區', CAST(120.444121100000000 AS Decimal(18, 15)), CAST(23.278318700000000 AS Decimal(18, 15)), N'臺南市東山區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (349, N'臺南市', N'東區', CAST(120.228185800000000 AS Decimal(18, 15)), CAST(22.981782020000000 AS Decimal(18, 15)), N'臺南市東區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (350, N'臺南市', N'南化區', CAST(120.544122300000000 AS Decimal(18, 15)), CAST(23.115111100000000 AS Decimal(18, 15)), N'臺南市南化區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (351, N'臺南市', N'南區', CAST(120.190374300000000 AS Decimal(18, 15)), CAST(22.955618630000000 AS Decimal(18, 15)), N'臺南市南區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (352, N'臺南市', N'後壁區', CAST(120.348508100000000 AS Decimal(18, 15)), CAST(23.362014780000000 AS Decimal(18, 15)), N'臺南市後壁區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (353, N'臺南市', N'柳營區', CAST(120.354920500000000 AS Decimal(18, 15)), CAST(23.268870010000000 AS Decimal(18, 15)), N'臺南市柳營區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (354, N'臺南市', N'將軍區', CAST(120.127695800000000 AS Decimal(18, 15)), CAST(23.208344130000000 AS Decimal(18, 15)), N'臺南市將軍區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (355, N'臺南市', N'麻豆區', CAST(120.241308000000000 AS Decimal(18, 15)), CAST(23.182480330000000 AS Decimal(18, 15)), N'臺南市麻豆區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (356, N'臺南市', N'善化區', CAST(120.298827400000000 AS Decimal(18, 15)), CAST(23.140310720000000 AS Decimal(18, 15)), N'臺南市善化區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (357, N'臺南市', N'新化區', CAST(120.335796400000000 AS Decimal(18, 15)), CAST(23.033945450000000 AS Decimal(18, 15)), N'臺南市新化區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (358, N'臺南市', N'新市區', CAST(120.292394100000000 AS Decimal(18, 15)), CAST(23.083194960000000 AS Decimal(18, 15)), N'臺南市新市區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (359, N'臺南市', N'新營區', CAST(120.295406700000000 AS Decimal(18, 15)), CAST(23.301524880000000 AS Decimal(18, 15)), N'臺南市新營區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (360, N'臺南市', N'楠西區', CAST(120.517030400000000 AS Decimal(18, 15)), CAST(23.178858540000000 AS Decimal(18, 15)), N'臺南市楠西區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (361, N'臺南市', N'學甲區', CAST(120.184186500000000 AS Decimal(18, 15)), CAST(23.252198050000000 AS Decimal(18, 15)), N'臺南市學甲區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (362, N'臺南市', N'龍崎區', CAST(120.386937300000000 AS Decimal(18, 15)), CAST(22.954822760000000 AS Decimal(18, 15)), N'臺南市龍崎區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (363, N'臺南市', N'歸仁區', CAST(120.293062700000000 AS Decimal(18, 15)), CAST(22.946794690000000 AS Decimal(18, 15)), N'臺南市歸仁區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (364, N'臺南市', N'關廟區', CAST(120.334282100000000 AS Decimal(18, 15)), CAST(22.955779090000000 AS Decimal(18, 15)), N'臺南市關廟區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (365, N'臺南市', N'鹽水區', CAST(120.248297700000000 AS Decimal(18, 15)), CAST(23.297986220000000 AS Decimal(18, 15)), N'臺南市鹽水區')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (366, N'澎湖縣', N'七美鄉', CAST(119.433930000000000 AS Decimal(18, 15)), CAST(23.201080000000000 AS Decimal(18, 15)), N'澎湖縣七美鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (367, N'澎湖縣', N'白沙鄉', CAST(119.592510000000000 AS Decimal(18, 15)), CAST(23.641780000000000 AS Decimal(18, 15)), N'澎湖縣白沙鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (368, N'澎湖縣', N'西嶼鄉', CAST(119.507830000000000 AS Decimal(18, 15)), CAST(23.599750000000000 AS Decimal(18, 15)), N'澎湖縣西嶼鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (369, N'澎湖縣', N'馬公市', CAST(119.592340000000000 AS Decimal(18, 15)), CAST(23.555340000000000 AS Decimal(18, 15)), N'澎湖縣馬公市')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (370, N'澎湖縣', N'望安鄉', CAST(119.504060000000000 AS Decimal(18, 15)), CAST(23.369040000000000 AS Decimal(18, 15)), N'澎湖縣望安鄉')
INSERT [dbo].[CityAreas] ([Id], [CityName], [AreaName], [Latitude], [Longitude], [Remark]) VALUES (371, N'澎湖縣', N'湖西鄉', CAST(119.644620000000000 AS Decimal(18, 15)), CAST(23.573640000000000 AS Decimal(18, 15)), N'澎湖縣湖西鄉')
SET IDENTITY_INSERT [dbo].[CityAreas] OFF
GO
SET IDENTITY_INSERT [dbo].[Citys] ON 

INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (1, N'100', N'臺北市', CAST(25.032969873738880 AS Decimal(18, 15)), CAST(121.565416580278850 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (2, N'200', N'基隆市', CAST(25.127600097250900 AS Decimal(18, 15)), CAST(121.739182959439290 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (3, N'207', N'新北市', CAST(25.016985170720580 AS Decimal(18, 15)), CAST(121.462785210471600 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (4, N'209', N'連江縣', CAST(26.160242070310530 AS Decimal(18, 15)), CAST(119.951665319196960 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (5, N'260', N'宜蘭縣', CAST(24.759115446286220 AS Decimal(18, 15)), CAST(121.753739484759340 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (6, N'290', N'釣魚臺', CAST(25.744006589830168 AS Decimal(18, 15)), CAST(123.474513994865150 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (7, N'300', N'新竹市', CAST(24.813828845173630 AS Decimal(18, 15)), CAST(120.967478706811480 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (8, N'302', N'新竹縣', CAST(24.761498021236925 AS Decimal(18, 15)), CAST(121.031956282073250 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (9, N'320', N'桃園市', CAST(24.991707591523866 AS Decimal(18, 15)), CAST(121.298958333590950 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (10, N'350', N'苗栗縣', CAST(24.560161309304515 AS Decimal(18, 15)), CAST(120.821424813348160 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (11, N'400', N'臺中市', CAST(24.147737364215230 AS Decimal(18, 15)), CAST(120.673648363630020 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (12, N'500', N'彰化縣', CAST(23.963058076008580 AS Decimal(18, 15)), CAST(120.515182068233770 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (13, N'540', N'南投縣', CAST(23.960998600250665 AS Decimal(18, 15)), CAST(120.971863541971560 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (14, N'600', N'嘉義市', CAST(23.480073598896038 AS Decimal(18, 15)), CAST(120.449108296805720 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (15, N'602', N'嘉義縣', CAST(23.451840409353192 AS Decimal(18, 15)), CAST(120.255462028714050 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (16, N'630', N'雲林縣', CAST(23.709204361746450 AS Decimal(18, 15)), CAST(120.431337240887230 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (17, N'700', N'臺南市', CAST(22.999900159667950 AS Decimal(18, 15)), CAST(120.226877302795360 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (18, N'800', N'高雄市', CAST(22.628784552656917 AS Decimal(18, 15)), CAST(120.301646015772060 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (19, N'817', N'南海島', CAST(10.721038940045405 AS Decimal(18, 15)), CAST(115.839429187310320 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (20, N'880', N'澎湖縣', CAST(23.571189301169140 AS Decimal(18, 15)), CAST(119.579314503948350 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (21, N'890', N'金門縣', CAST(24.449374619015440 AS Decimal(18, 15)), CAST(118.376636219215630 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (22, N'900', N'屏東縣', CAST(22.674677369906558 AS Decimal(18, 15)), CAST(120.492308863654940 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (23, N'950', N'臺東縣', CAST(22.797244475393537 AS Decimal(18, 15)), CAST(121.071369076386080 AS Decimal(18, 15)), N'')
INSERT [dbo].[Citys] ([Id], [SortNo], [CityName], [Latitude], [Longitude], [Remark]) VALUES (24, N'970', N'花蓮縣', CAST(23.987161563098663 AS Decimal(18, 15)), CAST(121.601570991277270 AS Decimal(18, 15)), N'')
SET IDENTITY_INSERT [dbo].[Citys] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (1, 1, N'01', N'My OB', N'myob.png', N'https://www.myob.com/au', N'')
INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (2, 1, N'02', N'BELIMO', N'belimo.png', N'https://www.belimo.com/', N'')
INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (3, 1, N'03', N'Life Groups', N'lifegroups.png', N'https://www.life.church/lifegroups/', N'')
INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (4, 1, N'04', N'Lilly', N'lilly.png', N'https://www.lilly.com/', N'')
INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (5, 1, N'05', N'Citrus', N'citrus.png', N'https://www.citrus.com/', N'')
INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (6, 1, N'06', N'Trustly', N'trustly.png', N'https://www.trustly.net/', N'')
INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (7, 1, N'07', N'Oldendorff', N'oldendorff.png', N'https://www.oldendorff.com/', N'')
INSERT [dbo].[Clients] ([Id], [IsEnabled], [SortNo], [ClientName], [ImageUrl], [WebsiteUrl], [Remark]) VALUES (8, 1, N'08', N'Grabyo', N'grabyo.png', N'https://about.grabyo.com/', N'')
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[CodeBases] ON 

INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (1, 0, N'AddressBook', N'通訊錄類別', N'Friend', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (2, 0, N'Brand', N'品牌', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (3, 0, N'Calendar', N'行事曆類別', N'Public', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (4, 1, N'CloseDate', N'關帳類別', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (6, 1, N'Color', N'顏色', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (5, 1, N'Company', N'公司類別', N'Company', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (7, 0, N'Customer', N'客戶分類', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (8, 0, N'FormStatus', N'表單狀態', N'New', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (9, 1, N'Gender', N'性別', N'M', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (10, 1, N'Log', N'日誌類別', N'Login', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (11, 0, N'Material', N'材質', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (12, 0, N'Member', N'會員分類', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (13, 1, N'Message', N'訊息類別', N'User', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (14, 1, N'News', N'最新消息類別', N'Post', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (15, 1, N'Notification', N'通知類別', N'System', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (16, 0, N'Photo', N'照片類別', N'Cloth', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (17, 1, N'Program', N'程式類別', N'Program', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (18, 1, N'ResignReason', N'離職原因', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (19, 1, N'Sheet', N'單據狀態', N'New', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (20, 1, N'Size', N'尺寸', N'', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (21, 1, N'Target', N'對象', N'O', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (22, 1, N'Tax', N'稅別', N'O', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (23, 1, N'TodoList', N'待辦事項', N'O', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (24, 0, N'User', N'使用者類別', N'Official', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (25, 0, N'Vacation', N'假日類別', N'Personal', N'')
INSERT [dbo].[CodeBases] ([Id], [IsAdmin], [BaseNo], [BaseName], [DefaultValue], [Remark]) VALUES (26, 0, N'Vendor', N'廠商分類', N'', N'')
SET IDENTITY_INSERT [dbo].[CodeBases] OFF
GO
SET IDENTITY_INSERT [dbo].[CodeDatas] ON 

INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (1, 1, N'AddressBook', N'', N'01', N'Friend', N'朋友', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (2, 1, N'AddressBook', N'', N'02', N'Family', N'家庭', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (3, 1, N'AddressBook', N'', N'03', N'Colleague', N'同事', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (4, 1, N'AddressBook', N'', N'03', N'Colleague', N'親戚', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (5, 1, N'Calendar', N'', N'01', N'Public', N'公開行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (6, 1, N'Calendar', N'', N'02', N'Private', N'私人行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (7, 1, N'Calendar', N'', N'03', N'Visit', N'拜訪行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (8, 1, N'Calendar', N'', N'04', N'Travel', N'旅遊行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (9, 1, N'Calendar', N'', N'05', N'Wedding', N'婚禮行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (10, 1, N'Calendar', N'', N'06', N'Funeral', N'喪禮行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (11, 1, N'Calendar', N'', N'07', N'Birthday', N'生日行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (12, 1, N'Calendar', N'', N'08', N'Opening', N'開業行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (13, 1, N'Calendar', N'', N'09', N'Residential', N'入宅行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (14, 1, N'Calendar', N'', N'10', N'Party', N'派對行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (15, 1, N'Calendar', N'', N'11', N'Congratulate', N'祝賀行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (16, 1, N'Calendar', N'', N'12', N'Exam', N'考試行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (17, 1, N'Calendar', N'', N'13', N'Competition', N'競賽行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (18, 1, N'Calendar', N'', N'14', N'Fun', N'玩樂行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (19, 1, N'Calendar', N'', N'15', N'Food', N'餐飲行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (20, 1, N'Calendar', N'', N'16', N'Class', N'上課行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (21, 1, N'Calendar', N'', N'17', N'Study', N'進修行程', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (22, 1, N'Company', N'', N'01', N'Company', N'公司', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (23, 1, N'Company', N'', N'02', N'Customer', N'客戶', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (24, 1, N'Company', N'', N'03', N'Vendor', N'廠商', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (86, 1, N'Customer', N'', N'01', N'Normal', N'正常客戶', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (87, 1, N'Customer', N'', N'02', N'Reject', N'拒往客戶', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (88, 1, N'Customer', N'', N'03', N'UnValid', N'待驗客戶', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (104, 1, N'Drink', N'', N'01', N'Fresh', N'鮮榨原汁', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (105, 1, N'Drink', N'', N'02', N'Tea', N'鮮茶香茗', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (106, 1, N'Drink', N'', N'03', N'Special', N'獨家特調', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (25, 1, N'FormStatus', N'', N'01', N'New', N'新增', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (26, 1, N'FormStatus', N'', N'02', N'Approve', N'核准', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (27, 1, N'FormStatus', N'', N'03', N'Reject', N'駁回', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (28, 1, N'FormStatus', N'', N'04', N'Pause', N'暫停', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (29, 1, N'Gender', N'', N'01', N'M', N'男', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (30, 1, N'Gender', N'', N'02', N'F', N'女', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (31, 1, N'Gender', N'', N'03', N'O', N'其它', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (32, 1, N'Log', N'', N'01', N'Login', N'登入', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (33, 1, N'Log', N'', N'02', N'Lout', N'登出', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (34, 1, N'Log', N'', N'03', N'Open', N'開啟程式', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (35, 1, N'Log', N'', N'04', N'Eamil', N'寄出郵件', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (36, 1, N'Log', N'', N'05', N'Upload', N'上傳檔案', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (37, 1, N'Log', N'', N'06', N'Create', N'新增記錄', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (38, 1, N'Log', N'', N'07', N'Delete', N'刪除記錄', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (39, 1, N'Log', N'', N'08', N'Edit', N'修改記錄', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (40, 1, N'News', N'', N'01', N'Post', N'一般', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (41, 1, N'News', N'', N'02', N'Action', N'活動', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (42, 1, N'News', N'', N'03', N'Rewards', N'獎勵', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (43, 1, N'News', N'', N'04', N'Punishments', N'懲處', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (44, 1, N'News', N'', N'05', N'Promotion', N'晋升', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (45, 1, N'News', N'', N'06', N'Mis', N'資訊室', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (92, 1, N'Photo', N'', N'01', N'Cloth', N'服飾', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (93, 1, N'Photo', N'', N'02', N'Hat', N'帽子', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (94, 1, N'Photo', N'', N'03', N'Shoe', N'鞋子', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (46, 1, N'Program', N'', N'01', N'P', N'程式', N'fas fa-table', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (47, 1, N'Program', N'', N'02', N'R', N'報表', N'fas fa-print', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (48, 1, N'Program', N'', N'03', N'G', N'圖表', N'fas fa-chart-line', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (49, 1, N'Program', N'', N'04', N'S', N'行事曆', N'fas fa-calendar-alt', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (50, 1, N'Program', N'', N'05', N'A', N'分析', N'fas fa-search', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (51, 1, N'ResignReason', N'', N'01', N'Private', N'個人因素', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (52, 1, N'ResignReason', N'', N'02', N'Family', N'家庭因素', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (53, 1, N'ResignReason', N'', N'03', N'Job', N'工作因素', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (54, 1, N'ResignReason', N'', N'04', N'Future', N'前程發展', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (55, 1, N'ResignReason', N'', N'05', N'Director', N'主管因素', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (56, 1, N'ResignReason', N'', N'99', N'Other', N'其它因素', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (57, 1, N'Sheet', N'', N'01', N'New', N'新單據', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (58, 1, N'Sheet', N'', N'02', N'Confirm', N'確認', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (59, 1, N'Sheet', N'', N'03', N'Abolish', N'作廢', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (60, 1, N'Tax', N'', N'01', N'O', N'外加稅', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (61, 1, N'Tax', N'', N'02', N'I', N'內含稅', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (62, 1, N'Tax', N'', N'03', N'Z', N'零稅率', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (63, 1, N'TodoList', N'', N'01', N'Normal', N'一般', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (64, 1, N'TodoList', N'', N'02', N'Work', N'工作', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (65, 1, N'TodoList', N'', N'03', N'Project', N'專案', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (66, 1, N'TodoList', N'', N'04', N'Class', N'上課', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (67, 1, N'TodoList', N'', N'05', N'Exam', N'考試', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (68, 1, N'TodoList', N'', N'06', N'Hospital', N'醫療', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (69, 1, N'TodoList', N'', N'07', N'Action', N'活動', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (70, 1, N'TodoList', N'', N'08', N'Food', N'飲食', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (71, 1, N'TodoList', N'', N'09', N'Other', N'其它', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (72, 1, N'Vacation', N'', N'01', N'Personal', N'事假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (73, 1, N'Vacation', N'', N'02', N'Sick', N'病假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (74, 1, N'Vacation', N'', N'03', N'Public', N'公假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (75, 1, N'Vacation', N'', N'04', N'Takecare', N'家庭照顧假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (76, 1, N'Vacation', N'', N'05', N'Injuried', N'普通偒病假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (77, 1, N'Vacation', N'', N'06', N'Menstrual', N'生理假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (78, 1, N'Vacation', N'', N'07', N'Marry', N'婚假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (79, 1, N'Vacation', N'', N'08', N'Bereavement', N'喪假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (80, 1, N'Vacation', N'', N'09', N'Maternity', N'產假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (81, 1, N'Vacation', N'', N'10', N'Prenatal', N'產前假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (82, 1, N'Vacation', N'', N'11', N'Abortion', N'流產假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (83, 1, N'Vacation', N'', N'12', N'Paternity', N'陪產假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (84, 1, N'Vacation', N'', N'13', N'Special', N'特休假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (85, 1, N'Vacation', N'', N'14', N'Compensatory', N'補休假', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (89, 1, N'Vendor', N'', N'01', N'Meterial', N'材料供應商', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (90, 1, N'Vendor', N'', N'02', N'Device', N'設備供應商', N'', N'')
INSERT [dbo].[CodeDatas] ([Id], [IsEnabled], [BaseNo], [ParentNo], [SortNo], [CodeNo], [CodeName], [CodeValue], [Remark]) VALUES (91, 1, N'Vendor', N'', N'03', N'Repair', N'維修商', N'', N'')
SET IDENTITY_INSERT [dbo].[CodeDatas] OFF
GO
SET IDENTITY_INSERT [dbo].[Companys] ON 

INSERT [dbo].[Companys] ([Id], [IsDefault], [IsEnabled], [CodeNo], [CompNo], [CompName], [ShortName], [EngName], [EngShortName], [RegisterDate], [BossName], [ContactName], [CompTel], [ContactTel], [CompFax], [CompID], [ContactEmail], [CompAddress], [CompUrl], [TwitterUrl], [FacebookUrl], [InstagramUrl], [SkypeUrl], [LinkedinUrl], [Latitude], [Longitude], [AboutusText], [SupportText], [ReturnText], [ShippingText], [PaymentText], [Remark]) VALUES (1, 1, 1, N'Company', N'C001', N'Tea 愛找茶', N'Tea 愛找茶', N'Tea Beverage Shop', N'Tea', CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'王大明', N'陳小姐', N'0918736523', N'0918736523', N'', N'12345678', N'jacky58.huang@gmail.com', N'桃園市中壢區自立五街10號11樓', N'https://tw.yahoo.com/', N'https://twitter.com/?lang=zh-Hant', N'https://www.facebook.com/', N'https://www.instagram.com/', N'https://www.skype.com/zh-Hant/', N'https://tw.linkedin.com/', CAST(25.040000000000000 AS Decimal(20, 15)), CAST(121.520000000000000 AS Decimal(20, 15)), N'<span style="font-weight: bold;">『細節簡單做、簡單的細節重覆做』，就是專業</span></br>', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Companys] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [DeptNo], [DeptName], [Remark]) VALUES (1, N'D001', N'總理室', N'')
INSERT [dbo].[Departments] ([Id], [DeptNo], [DeptName], [Remark]) VALUES (2, N'D002', N'管理部', N'')
INSERT [dbo].[Departments] ([Id], [DeptNo], [DeptName], [Remark]) VALUES (3, N'D003', N'人事部', N'')
INSERT [dbo].[Departments] ([Id], [DeptNo], [DeptName], [Remark]) VALUES (4, N'D004', N'財務部', N'')
INSERT [dbo].[Departments] ([Id], [DeptNo], [DeptName], [Remark]) VALUES (5, N'D005', N'營業部', N'')
INSERT [dbo].[Departments] ([Id], [DeptNo], [DeptName], [Remark]) VALUES (6, N'D006', N'廠務部', N'')
INSERT [dbo].[Departments] ([Id], [DeptNo], [DeptName], [Remark]) VALUES (7, N'D007', N'品管部', N'')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[ForumBoards] ON 

INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (1, 1, N'01', N'Course', N'課程內容討論區', N'Course', N'這是有關課程內容討論區', N'', N'7AA4C85D-1D45-47FD-9F03-FFB9E692560A')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (2, 1, N'02', N'DataBase', N'資料庫討論區', N'DataBase', N'這是有關資料庫討論區', N'', N'4EDC5176-0B44-4514-94E6-0924745B9E33')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (3, 1, N'03', N'DevExpress', N'DevExpress', N'DevExpress', N'這是有關 DevExpress 討論區', N'', N'23EF8971-C2C8-430D-AF00-9364DD0112E0')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (4, 1, N'04', N'DevStudio', N'DevStudio', N'DevStudio', N'這是有關 DevStudio 討論區', N'', N'7F2859B8-83E1-453B-9452-A540EAC9ED5A')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (5, 1, N'05', N'Discussion', N'一般討論區', N'Discussion', N'這是有關一般討論區', N'', N'0B42E465-8052-4929-A750-791B785E80A6')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (6, 1, N'06', N'Interview', N'面試討論區', N'Interview', N'這是有關面試討論區', N'', N'AC1ADEEA-0596-4E97-B537-7341AEEC9B46')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (7, 1, N'07', N'MVC', N'ASP.NET MVC', N'MVC', N'這是有關 ASP.NET MVC 討論區', N'', N'4FBF9E64-BA9E-4807-BE2C-31A4E05D2BEE')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (8, 1, N'08', N'Outsourcing', N'外包討論區', N'Outsourcing', N'這是有關外包討論區', N'', N'76D8038C-EE7C-4F59-B288-B9518E0BB93C')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (9, 1, N'09', N'ProductSale', N'商品銷售', N'ProductSale', N'這是有關商品銷售', N'', N'BB4BA678-03C0-4874-9CE2-F6470FA16808')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (10, 1, N'10', N'Questions', N'疑難雜症討論區', N'Questions', N'這是有關疑難雜症討論區', N'', N'82BEE660-B4C8-49F8-902E-438CDF4EF628')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (11, 1, N'11', N'RWD', N'RWD 討論區', N'RWD', N'這是有關 RWD 討論區', N'', N'D3D26731-7555-4DAD-8A71-A28574A89C8C')
INSERT [dbo].[ForumBoards] ([Id], [IsEnabled], [SortNo], [BoardNo], [BoardName], [IconName], [DescriptionText], [Remark], [GuidNo]) VALUES (12, 1, N'12', N'WebForm', N'ASP.NET WebForm', N'WebForm', N'這是有關 ASP.NET WebForm 討論區', N'', N'06E0D03B-6C4C-4A2D-BE33-BB6FFB9FE274')
SET IDENTITY_INSERT [dbo].[ForumBoards] OFF
GO
SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([Id], [LangNo], [LangName], [Remark]) VALUES (2, N'en-US', N'English', N'')
INSERT [dbo].[Languages] ([Id], [LangNo], [LangName], [Remark]) VALUES (1, N'zh-TW', N'繁體中文', N'')
SET IDENTITY_INSERT [dbo].[Languages] OFF
GO
SET IDENTITY_INSERT [dbo].[Modules] ON 

INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (1, 1, 0, N'Mis', N'01', N'MBAS', N'基本資料', N'fas fa-book', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (2, 1, 0, N'Mis', N'02', N'MUSR', N'帳號管理', N'fas fa-user', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (3, 1, 0, N'Mis', N'03', N'MSEC', N'權限管理', N'fas fa-shield-alt', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (4, 1, 0, N'Mis', N'04', N'MSYS', N'系統管理', N'fas fa-cog', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (5, 1, 0, N'Mis', N'05', N'MCOD', N'程式產生', N'fas fa-code', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (6, 1, 0, N'User', N'01', N'UBAS', N'基本資料', N'fas fa-book', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (7, 1, 0, N'User', N'02', N'UORG', N'組織管理', N'fas fa-book', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (8, 1, 0, N'User', N'03', N'UHOM', N'首頁管理', N'fas fa-book', N'')
INSERT [dbo].[Modules] ([Id], [IsEnabled], [IsWorkflow], [RoleNo], [SortNo], [ModuleNo], [ModuleName], [IconName], [Remark]) VALUES (9, 1, 0, N'User', N'04', N'UORD', N'訂單管理', N'fas fa-book', N'')
SET IDENTITY_INSERT [dbo].[Modules] OFF
GO
SET IDENTITY_INSERT [dbo].[OrdersStatus] ON 

INSERT [dbo].[OrdersStatus] ([Id], [IsPayed], [IsClosed], [StatusNo], [StatusName], [Remark]) VALUES (9, 0, 1, N'CC', N'已取消', N'')
INSERT [dbo].[OrdersStatus] ([Id], [IsPayed], [IsClosed], [StatusNo], [StatusName], [Remark]) VALUES (2, 0, 0, N'NP', N'已下單未付款', N'')
INSERT [dbo].[OrdersStatus] ([Id], [IsPayed], [IsClosed], [StatusNo], [StatusName], [Remark]) VALUES (3, 1, 0, N'NS', N'已付款未出貨', N'')
INSERT [dbo].[OrdersStatus] ([Id], [IsPayed], [IsClosed], [StatusNo], [StatusName], [Remark]) VALUES (1, 0, 0, N'NW', N'新訂單', N'')
INSERT [dbo].[OrdersStatus] ([Id], [IsPayed], [IsClosed], [StatusNo], [StatusName], [Remark]) VALUES (7, 1, 1, N'RD', N'已領貨', N'')
INSERT [dbo].[OrdersStatus] ([Id], [IsPayed], [IsClosed], [StatusNo], [StatusName], [Remark]) VALUES (8, 1, 1, N'RT', N'已退貨', N'')
INSERT [dbo].[OrdersStatus] ([Id], [IsPayed], [IsClosed], [StatusNo], [StatusName], [Remark]) VALUES (4, 1, 0, N'SD', N'已出貨', N'')
INSERT [dbo].[OrdersStatus] ([Id], [IsPayed], [IsClosed], [StatusNo], [StatusName], [Remark]) VALUES (5, 1, 0, N'SU', N'已出貨未到店', N'')
INSERT [dbo].[OrdersStatus] ([Id], [IsPayed], [IsClosed], [StatusNo], [StatusName], [Remark]) VALUES (6, 1, 0, N'UR', N'已到店未領取', N'')
SET IDENTITY_INSERT [dbo].[OrdersStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([Id], [PaymentNo], [PaymentName], [Remark]) VALUES (1, N'ATM', N'ATM', N'')
INSERT [dbo].[Payments] ([Id], [PaymentNo], [PaymentName], [Remark]) VALUES (2, N'Card', N'信用卡', N'')
INSERT [dbo].[Payments] ([Id], [PaymentNo], [PaymentName], [Remark]) VALUES (3, N'Cash', N'貨到付款', N'')
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[Photos] ON 

INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (1, N'Fresh', N'Fresh001', N'金桔檸檬', N'45-70元', CAST(N'2023-05-31' AS Date), N'新鮮金桔汁搭配上鮮榨檸檬汁，酸甜滋味給您滿滿的surprise！', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (2, N'Fresh', N'Fresh002', N'炸彈檸檬冰沙', N'55-80元', CAST(N'2023-05-31' AS Date), N'整顆新鮮檸檬原汁原味入茶，獨家直擊，超完美比例最好喝！', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (3, N'Fresh', N'Fresh003', N'鮮果百香綠', N'50-75元', CAST(N'2023-05-31' AS Date), N'喝起來略帶有淡淡茉莉香氣綠茶搭配新鮮百香原汁，特別獻給愛嚐鮮的您！', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (4, N'Fresh', N'Fresh004', N'檸檬青', N'50-75元', CAST(N'2023-05-31' AS Date), N'檸檬汁搭配各式甘醇茗茶，酸甜口感一次滿足。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (5, N'Fresh', N'Fresh005', N'檸檬蜂蜜', N'45-70元', CAST(N'2023-05-31' AS Date), N'以蜂蜜代替果糖，香甜蜂蜜搭配檸檬汁，給愛喝酸甜的您不一樣的選擇。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (6, N'Fresh', N'Fresh006', N'檸檬蜂蜜蘆薈', N'45-70元', CAST(N'2023-05-31' AS Date), N'清新爽口、微酸微甜，吃得到粒粒分明的蘆薈，夏季消暑的沁涼推薦。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (13, N'Special', N'Special001', N'寒天愛玉', N'45-70元', CAST(N'2023-05-31' AS Date), N'寒天採用紅藻萃取而成，搭配滑嫩愛玉，舊雨新知必點的暢銷飲品。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (14, N'Special', N'Special002', N'寒天愛玉小紫蘇', N'55-80元', CAST(N'2023-05-31' AS Date), N'寒天愛玉遇上小紫蘇，彈牙Q嫩的寒天晶球一吃就上癮，完美口感，給您超幸福的甜蜜滋味。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (15, N'Special', N'Special003', N'膠原愛玉', N'50-75元', CAST(N'2023-05-31' AS Date), N'採用天然竹炭粉與膠原製成的晶球凍，以單茶為基底搭配愛玉，幸福口感甜蜜滿分。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (16, N'Special', N'Special004', N'膠原愛玉小紫蘇', N'50-75元', CAST(N'2023-05-31' AS Date), N'咕溜順口的小紫蘇搭配滑嫩愛玉與獨賣膠原晶鑽口感豐富，經典熱銷。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (17, N'Special', N'Special005', N'檸檬愛玉', N'45-70元', CAST(N'2023-05-31' AS Date), N'含有膳食纖維的檸檬愛玉，酸甜滋味加上愛玉清爽的口感，給您暑氣全消。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (18, N'Special', N'Special006', N'檸檬愛玉小紫蘇', N'45-70元', CAST(N'2023-05-31' AS Date), N'滑嫩愛玉搭上咕溜小紫蘇，豐富口感，具飽足感，清爽酸甜，舊雨新知的熱銷經典。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (7, N'Tea', N'Tea001', N'台灣高山青', N'45-70元', CAST(N'2023-05-31' AS Date), N'茶品甘醇、茶香四溢、清涼暢飲、絕對消暑。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (8, N'Tea', N'Tea002', N'四季烏龍', N'55-80元', CAST(N'2023-05-31' AS Date), N'嚴選台灣茶葉，喝起來清香回甘，值得您一再品嚐。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (9, N'Tea', N'Tea003', N'茉莉綠茶', N'50-75元', CAST(N'2023-05-31' AS Date), N'帶有淡淡茉莉清香，半糖好喝，無糖甘醇。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (10, N'Tea', N'Tea004', N'桔香冰梅綠', N'50-75元', CAST(N'2023-05-31' AS Date), N'金桔梅子巧妙搭配，酸甜口味，甘醇順口，炎夏消暑的美好選擇。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (11, N'Tea', N'Tea005', N'糖心蜜紅茶', N'45-70元', CAST(N'2023-05-31' AS Date), N'純手工現煮糖蜜，純粹融合香茗茶品，口感滑順，宛如青春詩篇。', N'')
INSERT [dbo].[Photos] ([Id], [CodeNo], [FolderName], [PhotoName], [PriceName], [SaleDate], [DetailText], [Remark]) VALUES (12, N'Tea', N'Tea006', N'蜂蜜綠茶', N'45-70元', CAST(N'2023-05-31' AS Date), N'香甜蜂蜜將綠茶的風味升至全新境界，讓你的五感有新鮮體驗。', N'')
SET IDENTITY_INSERT [dbo].[Photos] OFF
GO
SET IDENTITY_INSERT [dbo].[PricingDetails] ON 

INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (7, N'Business', 1, N'01', N'雲端支付平台', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (8, N'Business', 1, N'02', N'雲端行動刷卡', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (9, N'Business', 1, N'03', N'雲端智慧終端', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (10, N'Business', 0, N'04', N'雲端智慧小鋪', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (11, N'Business', 0, N'05', N'雲端營運管理', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (12, N'Business', 0, N'06', N'雲端會員管理', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (13, N'Developer', 1, N'01', N'雲端支付平台', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (14, N'Developer', 1, N'02', N'雲端行動刷卡', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (15, N'Developer', 1, N'03', N'雲端智慧終端', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (16, N'Developer', 1, N'04', N'雲端智慧小鋪', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (17, N'Developer', 0, N'05', N'雲端營運管理', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (18, N'Developer', 0, N'06', N'雲端會員管理', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (1, N'Free', 1, N'01', N'雲端支付平台', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (2, N'Free', 1, N'02', N'雲端行動刷卡', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (3, N'Free', 0, N'03', N'雲端智慧終端', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (4, N'Free', 0, N'04', N'雲端智慧小鋪', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (5, N'Free', 0, N'05', N'雲端營運管理', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (6, N'Free', 0, N'06', N'雲端會員管理', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (19, N'Ultimate', 1, N'01', N'雲端支付平台', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (20, N'Ultimate', 1, N'02', N'雲端行動刷卡', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (21, N'Ultimate', 1, N'03', N'雲端智慧終端', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (22, N'Ultimate', 1, N'04', N'雲端智慧小鋪', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (23, N'Ultimate', 1, N'05', N'雲端營運管理', N'')
INSERT [dbo].[PricingDetails] ([Id], [PricingNo], [IsSupport], [SortNo], [ItemName], [Remark]) VALUES (24, N'Ultimate', 1, N'06', N'雲端會員管理', N'')
SET IDENTITY_INSERT [dbo].[PricingDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Pricings] ON 

INSERT [dbo].[Pricings] ([Id], [IsEnabled], [IsAdvanced], [IsRecommend], [SortNo], [PricingNo], [PricingName], [ProdPrice], [CycleName], [Remark]) VALUES (1, 1, 0, 0, N'01', N'Free', N'免費版', 0, N'月', N'')
INSERT [dbo].[Pricings] ([Id], [IsEnabled], [IsAdvanced], [IsRecommend], [SortNo], [PricingNo], [PricingName], [ProdPrice], [CycleName], [Remark]) VALUES (2, 1, 0, 1, N'02', N'Business', N'商業版', 500, N'月', N'')
INSERT [dbo].[Pricings] ([Id], [IsEnabled], [IsAdvanced], [IsRecommend], [SortNo], [PricingNo], [PricingName], [ProdPrice], [CycleName], [Remark]) VALUES (3, 1, 0, 0, N'03', N'Developer', N'開發版', 800, N'月', N'')
INSERT [dbo].[Pricings] ([Id], [IsEnabled], [IsAdvanced], [IsRecommend], [SortNo], [PricingNo], [PricingName], [ProdPrice], [CycleName], [Remark]) VALUES (4, 1, 1, 0, N'04', N'Ultimate', N'終極版', 1000, N'月', N'')
SET IDENTITY_INSERT [dbo].[Pricings] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductFeatureds] ON 

INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (1, N'11077494', N'01', N'地藏潮流設計短TEE', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (2, N'11077494', N'02', N'以地藏機器人X光透視為主設計', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (3, N'11077494', N'03', N'特殊印花刷色，率性獨特又有個性', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (4, N'11078443', N'01', N'IC9821', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (5, N'11078443', N'02', N'M ALL SZN G T', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (6, N'11078443', N'03', N'T恤', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (7, N'11082124', N'01', N'胸前LOGO與後背印花圖案', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (8, N'11082124', N'02', N'簡約低調的時尚單品', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (9, N'11082124', N'03', N'100%純棉材質,親膚舒適', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (10, N'11083356', N'01', N'FlashDry吸濕排汗材質', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (11, N'11083356', N'02', N'舒適圓領設計，休閒易穿搭', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (12, N'11083356', N'03', N'經典品牌LOGO，簡約時尚', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (13, N'11083835', N'01', N'伸縮彈性佳材質', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (14, N'11083835', N'02', N'左袖反光燙印', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (15, N'11085080', N'01', N'情侶款 男女可穿', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (16, N'11085082', N'01', N'男女可穿', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (17, N'11085082', N'02', N'經典四種國家公園圖騰', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (18, N'11085113', N'01', N'60%棉、40%聚酯纖維', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (19, N'11085113', N'02', N'產地 / 台灣', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (20, N'11085185', N'01', N'100% 純棉', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (21, N'11085185', N'02', N'厚度180克 (5.3oz)', N'')
INSERT [dbo].[ProductFeatureds] ([Id], [ProdNo], [SortNo], [FeaturedName], [Remark]) VALUES (22, N'11085185', N'03', N'亞規版型 (正常版)', N'')
SET IDENTITY_INSERT [dbo].[ProductFeatureds] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductPropertys] ON 

INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (1, 1, N'11051174', N'Color', N'白', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (2, 0, N'11051174', N'Material', N'棉布,聚脂纖維', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (3, 1, N'11051174', N'Size', N'S,M,L,XL,2XL', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (4, 0, N'11051174', N'Style', N'合身,短袖', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (5, 0, N'11051174', N'Target', N'男性', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (6, 1, N'11077494', N'Color', N'黑色', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (7, 0, N'11077494', N'Material', N'棉布', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (8, 1, N'11077494', N'Size', N'M,L,XL', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (9, 0, N'11077494', N'Style', N'合身,短袖', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (10, 0, N'11077494', N'Target', N'男性', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (11, 1, N'11078443', N'Color', N'白色', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (12, 0, N'11078443', N'Material', N'棉布,聚脂纖維', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (13, 1, N'11078443', N'Size', N'S,M,L,XL,2XL', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (14, 0, N'11078443', N'Style', N'寛鬆,短袖', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (15, 0, N'11078443', N'Target', N'男性', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (16, 1, N'11081389', N'Color', N'白色', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (17, 1, N'11081389', N'Size', N'M,L,XL,2XL', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (18, 0, N'11081389', N'Style', N'合身,短袖', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (19, 0, N'11081389', N'Target', N'男性', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (20, 1, N'11082124', N'Color', N'綠色,藍色', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (21, 0, N'11082124', N'Material', N'棉布', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (22, 1, N'11082124', N'Size', N'S,M,L,XL', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (23, 0, N'11082124', N'Style', N'合身,短袖', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (24, 0, N'11082124', N'Target', N'男性', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (25, 1, N'11083356', N'Color', N'米色', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (26, 0, N'11083356', N'Material', N'其它', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (27, 1, N'11083356', N'Size', N'S,M,L,XL,2XL,3XL', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (28, 0, N'11083356', N'Style', N'合身,短袖', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (29, 0, N'11083356', N'Target', N'男性', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (30, 1, N'11083835', N'Color', N'綠色,藍色', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (31, 0, N'11083835', N'Material', N'聚酯纖維,彈性纖維', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (32, 0, N'11083835', N'Shape', N'A,B,C', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (33, 1, N'11083835', N'Size', N'S,M,L,XL,2XL,3XL', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (34, 0, N'11083835', N'Style', N'寛鬆,短袖', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (35, 0, N'11083835', N'Target', N'女性,男性,中性', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (36, 1, N'11083838', N'Color', N'藍色', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (37, 1, N'11083838', N'Size', N'XS,S,M,L,XL', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (38, 0, N'11083838', N'Style', N'合身,短袖', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (39, 0, N'11083838', N'Target', N'男性', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (40, 1, N'11085080', N'Color', N'黑色,白色,寶藍,愛馬仕灰', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (41, 0, N'11085080', N'Material', N'棉布,彈性纖維', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (42, 1, N'11085080', N'Size', N'寬版M,寬版L', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (43, 0, N'11085080', N'Style', N'寛鬆,短袖', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (44, 0, N'11085080', N'Target', N'女性,男性,中性', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (45, 1, N'11085082', N'Color', N'黑色,白色,綠色,棕色/咖啡色', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (46, 0, N'11085082', N'Material', N'棉布,彈性纖維', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (47, 1, N'11085082', N'Size', N'M,L', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (48, 0, N'11085082', N'Style', N'寛鬆,短袖', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (49, 0, N'11085082', N'Target', N'女性,男性,中性', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (50, 1, N'11085113', N'Color', N'灰藍,麻花黑,蛋黃', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (51, 0, N'11085113', N'Material', N'棉布,聚脂纖維', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (52, 1, N'11085113', N'Size', N'S,M,L,XL', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (53, 0, N'11085113', N'Style', N'合身,短袖', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (54, 0, N'11085113', N'Target', N'男性', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (55, 1, N'11085185', N'Color', N'黑色,白色,粉紅色,灰色,軍綠色,棗紅色,卡其色', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (56, 0, N'11085185', N'Material', N'棉布', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (57, 1, N'11085185', N'Size', N'S,M,L,XL,2XL,3XL', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (58, 0, N'11085185', N'Style', N'合身,短袖', N'')
INSERT [dbo].[ProductPropertys] ([Id], [IsSelect], [ProdNo], [PropertyNo], [PropertyValue], [Remark]) VALUES (59, 0, N'11085185', N'Target', N'女性,男性,中性', N'')
SET IDENTITY_INSERT [dbo].[ProductPropertys] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [IsEnabled], [IsInventory], [IsShowPhoto], [ProdNo], [ProdName], [BrandName], [BrandSeriesName], [BarcodeNo], [VendorNo], [CategoryNo], [CostPrice], [MarketPrice], [SalePrice], [DiscountPrice], [InventoryQty], [ContentText], [SpecificationText], [Remark]) VALUES (1, 1, 0, 1, N'11051174', N'短袖上衣 休閒 AS M NRG ACG SS TEE PATCH 男款 白(DX9444100)', N'NIKE 耐吉', N'', N'11051174', N'', N'2193130D2E314175BAB84F2CFC45D166', 1000, 1580, 1394, 1324, 0, N'', N'品牌名稱：NIKE
商品尺寸：S~XXL
產品顏色：白


材 質：(依原廠標示)
產 地：依原廠標示
包 裝：原廠', N'')
INSERT [dbo].[Products] ([Id], [IsEnabled], [IsInventory], [IsShowPhoto], [ProdNo], [ProdName], [BrandName], [BrandSeriesName], [BarcodeNo], [VendorNo], [CategoryNo], [CostPrice], [MarketPrice], [SalePrice], [DiscountPrice], [InventoryQty], [ContentText], [SpecificationText], [Remark]) VALUES (2, 1, 0, 1, N'11077494', N'男裝 機器人機械 短袖 上衣', N'BLUE WAY', N'地藏小王', N'11077494', N'', N'2193130D2E314175BAB84F2CFC45D166', 500, 0, 1680, 790, 0, N'-商品問題，歡迎使用問問詢問', N'', N'')
INSERT [dbo].[Products] ([Id], [IsEnabled], [IsInventory], [IsShowPhoto], [ProdNo], [ProdName], [BrandName], [BrandSeriesName], [BarcodeNo], [VendorNo], [CategoryNo], [CostPrice], [MarketPrice], [SalePrice], [DiscountPrice], [InventoryQty], [ContentText], [SpecificationText], [Remark]) VALUES (3, 1, 0, 1, N'11078443', N'M All Szn G T 男 短袖上衣 T恤 運動 休閒 寬鬆 純棉 舒適 白(IC9821)', N'adidas 愛迪達', N'', N'11078443', N'', N'2193130D2E314175BAB84F2CFC45D166', 800, 0, 1090, 1035, 0, N'', N'型號: IC9821
品名: Adidas M All Szn G T
配色: 白


寬鬆版型
羅紋圓領
100% 純棉', N'')
INSERT [dbo].[Products] ([Id], [IsEnabled], [IsInventory], [IsShowPhoto], [ProdNo], [ProdName], [BrandName], [BrandSeriesName], [BarcodeNo], [VendorNo], [CategoryNo], [CostPrice], [MarketPrice], [SalePrice], [DiscountPrice], [InventoryQty], [ContentText], [SpecificationText], [Remark]) VALUES (4, 1, 0, 1, N'11081389', N'上衣 男款 短袖上衣 運動 足球 白 HT5686(S1692)', N'adidas 愛迪達', N'', N'11081389', N'', N'2193130D2E314175BAB84F2CFC45D166', 600, 0, 1043, 990, 0, N'', N'', N'')
INSERT [dbo].[Products] ([Id], [IsEnabled], [IsInventory], [IsShowPhoto], [ProdNo], [ProdName], [BrandName], [BrandSeriesName], [BarcodeNo], [VendorNo], [CategoryNo], [CostPrice], [MarketPrice], [SalePrice], [DiscountPrice], [InventoryQty], [ContentText], [SpecificationText], [Remark]) VALUES (5, 1, 0, 1, N'11082124', N'男裝-後背植物圖案印花LOGO短T(藍綠色)', N'Arnold Palmer 雨傘', N'', N'11082124', N'', N'2193130D2E314175BAB84F2CFC45D166', 1000, 0, 1750, 0, 0, N'40410-031-112-06-204
胸前LOGO與後背印花圖案
簡約低調的時尚單品
100%純棉材質,親膚舒適', N'100%棉', N'')
INSERT [dbo].[Products] ([Id], [IsEnabled], [IsInventory], [IsShowPhoto], [ProdNo], [ProdName], [BrandName], [BrandSeriesName], [BarcodeNo], [VendorNo], [CategoryNo], [CostPrice], [MarketPrice], [SalePrice], [DiscountPrice], [InventoryQty], [ContentText], [SpecificationText], [Remark]) VALUES (6, 1, 0, 1, N'11083356', N'北面男款米白色吸濕排汗簡約LOGO短袖T恤｜7QOSR8R', N'The North Face', N'', N'11083356', N'', N'2193130D2E314175BAB84F2CFC45D166', 1800, 0, 2380, 0, 0, N'', N'NF0A7QOSR8R1', N'')
INSERT [dbo].[Products] ([Id], [IsEnabled], [IsInventory], [IsShowPhoto], [ProdNo], [ProdName], [BrandName], [BrandSeriesName], [BarcodeNo], [VendorNo], [CategoryNo], [CostPrice], [MarketPrice], [SalePrice], [DiscountPrice], [InventoryQty], [ContentText], [SpecificationText], [Remark]) VALUES (7, 1, 0, 1, N'11083835', N'美津濃】短袖T恤 K2TAA002XX（任選一件）(T恤)', N'MIZUNO 美津濃', N'', N'11083835', N'', N'2193130D2E314175BAB84F2CFC45D166', 0, 0, 1180, 944, 0, N'', N'', N'吸汗速乾材質')
INSERT [dbo].[Products] ([Id], [IsEnabled], [IsInventory], [IsShowPhoto], [ProdNo], [ProdName], [BrandName], [BrandSeriesName], [BarcodeNo], [VendorNo], [CategoryNo], [CostPrice], [MarketPrice], [SalePrice], [DiscountPrice], [InventoryQty], [ContentText], [SpecificationText], [Remark]) VALUES (8, 1, 0, 1, N'11083838', N'上衣 男款 短袖上衣 運動 歐規 No.1 Logo 藍 67447316', N'PUMA', N'', N'11083838', N'', N'2193130D2E314175BAB84F2CFC45D166', 400, 0, 660, 627, 0, N'', N'', N'')
INSERT [dbo].[Products] ([Id], [IsEnabled], [IsInventory], [IsShowPhoto], [ProdNo], [ProdName], [BrandName], [BrandSeriesName], [BarcodeNo], [VendorNo], [CategoryNo], [CostPrice], [MarketPrice], [SalePrice], [DiscountPrice], [InventoryQty], [ContentText], [SpecificationText], [Remark]) VALUES (9, 1, 0, 1, N'11085080', N'落肩西岸標語GRADATION印花短t 寬版短袖上衣(男女可穿 OVERSIZE)', N'Dition', N'', N'11085080', N'', N'2193130D2E314175BAB84F2CFC45D166', 500, 0, 780, 550, 0, N'落肩oversize寬鬆感,搭配西岸風格文字,穿起來的立體順修感就是好看
男麻豆身材176/65穿L號略寬鬆
女生157-164穿M號都是寬鬆感
 
顏色:黑色 / 白色 / 寶藍色/ 愛馬仕灰
尺寸:寬版M / 寬版L
寬版M號-肩寬59胸寬58衣長72袖長23公分
寬版L號-肩寬61胸寬60衣長74袖長24公分', N'落肩oversize寬鬆感,搭配西岸風格文字,穿起來的立體順修感就是好看
男麻豆身材176/65穿L號略寬鬆
女生157-164穿M號都是寬鬆感

顏色:黑色 / 白色 / 寶藍色/ 愛馬仕灰
尺寸:寬版M / 寬版L
寬版M號-肩寬59胸寬58衣長72袖長23公分
寬版L號-肩寬61胸寬60衣長74袖長24公分', N'oversize韓版落肩')
INSERT [dbo].[Products] ([Id], [IsEnabled], [IsInventory], [IsShowPhoto], [ProdNo], [ProdName], [BrandName], [BrandSeriesName], [BarcodeNo], [VendorNo], [CategoryNo], [CostPrice], [MarketPrice], [SalePrice], [DiscountPrice], [InventoryQty], [ContentText], [SpecificationText], [Remark]) VALUES (10, 1, 0, 1, N'11085082', N'國家公園national park動物圖騰短T 落肩上衣(男女可穿 OVERSIZE)
', N'Dition', N'', N'11085082', N'', N'2193130D2E314175BAB84F2CFC45D166', 500, 0, 780, 550, 0, N'落肩oversize版型,搭配四種國家公園印花,每一色圖騰都不一樣充滿巧思
男麻豆身材176/65穿L號略寬鬆
女生157-164穿M號都是寬鬆感
 
顏色:黑色 / 白色 / 軍綠 / 沙棕色
尺寸:寬版M / 寬版L
寬版M號-肩寬59胸寬58衣長72袖長23公分
寬版L號-肩寬61胸寬60衣長74袖長24公分', N'落肩oversize版型,搭配四種國家公園的印花,每一色圖騰都不一樣充滿巧思
男麻豆身材176/65穿L號略寬鬆
女生157-164穿M號都是寬鬆感

顏色:黑色 / 白色 / 軍綠 / 沙棕色
尺寸:寬版M / 寬版L
寬版M號-肩寬59胸寬58衣長72袖長23公分
寬版L號-肩寬61胸寬60衣長74袖長24公分', N'oversize韓版落肩')
INSERT [dbo].[Products] ([Id], [IsEnabled], [IsInventory], [IsShowPhoto], [ProdNo], [ProdName], [BrandName], [BrandSeriesName], [BarcodeNo], [VendorNo], [CategoryNo], [CostPrice], [MarketPrice], [SalePrice], [DiscountPrice], [InventoryQty], [ContentText], [SpecificationText], [Remark]) VALUES (11, 1, 0, 1, N'11085113', N'台灣製/MIT/現貨 VANISH美式貼布滾邊短TEE(2310037)', N'Roush', N'', N'11085113', N'', N'2193130D2E314175BAB84F2CFC45D166', 500, 0, 719, 479, 0, N'【Roush】美式破版字樣重磅短TEE

布料選用20織中磅精梳棉
 
厚薄度適中 穿著更加舒適
 
VANISH英文字母大LOGO印花
 
搭配領口與袖口的滾邊撞色 帶動整體造型感
 
搭配左袖國旗貼布及下擺裝飾標
 
整體呈現豐富有造型 潮流感大提升
 
領口及袖口螺紋縮口設計 俐落且不易鬆脫
 
更具美式風格 春夏最具人氣的穿搭基本款
 
材質 / 60%棉、40%聚酯纖維
 
產地 / 台灣', N'布料選用20織中磅精梳棉

厚薄度適中 穿著更加舒適

VANISH英文字母大LOGO印花

搭配領口與袖口的滾邊撞色 帶動整體造型感

搭配左袖國旗貼布及下擺裝飾標

整體呈現豐富有造型 潮流感大提升

領口及袖口螺紋縮口設計 俐落且不易鬆脫

更具美式風格 春夏最具人氣的穿搭基本款', N'')
INSERT [dbo].[Products] ([Id], [IsEnabled], [IsInventory], [IsShowPhoto], [ProdNo], [ProdName], [BrandName], [BrandSeriesName], [BarcodeNo], [VendorNo], [CategoryNo], [CostPrice], [MarketPrice], [SalePrice], [DiscountPrice], [InventoryQty], [ContentText], [SpecificationText], [Remark]) VALUES (12, 1, 0, 1, N'11085185', N'國王萬歲 烏鴉 皇冠 T恤 短袖上衣 衣服 潮T 男女休閒穿搭 短T 潮流 可愛 個性 街頭(', N'潮野屋', N'', N'11085185', N'', N'2193130D2E314175BAB84F2CFC45D166', 0, 0, 590, 390, 0, N'-趣味時尚，獨家不撞衫，休閒好穿搭~
-每周上架新品，有空就來逛逛囉~
#請依據實際體重對應尺寸表，喜歡寬鬆可選大一號。

 

短袖產品簡介:

- 100% 純棉 (除了灰色跟紫色)

(灰色:90%棉，10%聚酯纖維)

(紫色:50%，50%聚酯纖維)

- 中性服飾，男女皆可穿

- 耐洗，耐穿，絕不掉色

- 無側邊縫線設計

- 厚度180克 (5.3oz)

- 本產品採用美國棉', N'短袖產品簡介:

- 100% 純棉 (除了灰色跟紫色)

(灰色:90%棉，10%聚酯纖維)

(紫色:50%，50%聚酯纖維)

- 中性服飾，男女皆可穿

- 耐洗，耐穿，絕不掉色

- 無側邊縫線設計

- 厚度180克 (5.3oz)

- 本產品採用美國棉', N'歐美風格系列-潮T')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Programs] ON 

INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (1, 1, 1, 1, N'Mis', N'MBAS', N'01', N'MBASP001', N'角色基本資料維護', N'P', N'Mis', N'MBASP001_Role', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (2, 1, 1, 1, N'Mis', N'MBAS', N'02', N'MBASP002', N'程式類別資料維護', N'P', N'Mis', N'MBASP002_ProgramType', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (3, 1, 1, 1, N'Mis', N'MBAS', N'03', N'MBASP003', N'語言基本資料維護', N'P', N'Mis', N'MBASP003_Language', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (4, 1, 1, 1, N'Mis', N'MBAS', N'04', N'MBASP004', N'後台主檔資料維護', N'P', N'Mis', N'MBASP004_CodeBase', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (5, 1, 1, 1, N'Mis', N'MBAS', N'05', N'MBASP005', N'公司基本資料維護', N'P', N'Mis', N'MBASP005_Company', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (6, 1, 1, 1, N'Mis', N'MCOD', N'01', N'MCODP001', N'Metadata 產生器', N'P', N'Mis', N'MCODP001_Metadata', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (7, 1, 1, 1, N'Mis', N'MCOD', N'02', N'MCODP002', N'Repository 產生器', N'P', N'Mis', N'MCODP002_Repository', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (8, 1, 1, 1, N'Mis', N'MCOD', N'03', N'MCODP003', N'Controller 產生器', N'P', N'Mis', N'MCODP003_Controller', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (9, 1, 1, 1, N'Mis', N'MCOD', N'04', N'MCODP004', N'View 產生器', N'P', N'Mis', N'MCODP004_View', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (10, 1, 1, 1, N'Mis', N'MCOD', N'05', N'MCODP005', N'單檔維護產生器', N'P', N'Mis', N'MCODP005_Single', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (11, 1, 1, 1, N'Mis', N'MCOD', N'06', N'MCODP006', N'單筆維護產生器', N'P', N'Mis', N'MCODP006_SingleForm', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (12, 1, 1, 1, N'Mis', N'MCOD', N'07', N'MCODP007', N'表頭單明細產生器', N'P', N'Mis', N'MCODP007_MultiForm', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (13, 1, 1, 1, N'Mis', N'MCOD', N'08', N'MCODP008', N'表頭多明細產生器', N'P', N'Mis', N'MCODP008_MultiTabForm', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (14, 1, 1, 1, N'Mis', N'MCOD', N'09', N'MCODP009', N'報表產生器', N'P', N'Mis', N'MCODP009_Report', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (15, 1, 1, 1, N'Mis', N'MCOD', N'10', N'MCODP010', N'圖表產生器', N'P', N'Mis', N'MCODP010_Chart', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (16, 1, 1, 1, N'Mis', N'MCOD', N'11', N'MCODP011', N'行事曆產生器', N'P', N'Mis', N'MCODP011_Scheduler', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (17, 1, 1, 1, N'Mis', N'MCOD', N'99', N'MCODP099', N'預設欄位名稱維護', N'P', N'Mis', N'MCODP099_PropertyName', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (18, 1, 1, 1, N'Mis', N'MSEC', N'01', N'MSECP001', N'程式權限設定', N'P', N'Mis', N'MSECP001_PrgSecurity', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (19, 1, 1, 1, N'Mis', N'MSEC', N'02', N'MSECP002', N'使用者權限設定', N'P', N'Mis', N'MSECP002_UserSecurity', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (20, 1, 1, 1, N'Mis', N'MSYS', N'01', N'MSYSP001', N'模組基本資料維護', N'P', N'Mis', N'MSYSP001_Module', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (21, 1, 1, 1, N'Mis', N'MSYS', N'02', N'MSYSP002', N'程式基本資料維護', N'P', N'Mis', N'MSYSP002_Program', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (22, 1, 1, 1, N'Mis', N'MSYS', N'03', N'MSYSP003', N'日誌記錄資料查詢', N'Q', N'Mis', N'MSYSP003_Log', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (23, 1, 1, 1, N'Mis', N'MSYS', N'04', N'MSYSP004', N'首頁輸播圖設定', N'P', N'Mis', N'MSYSP004_Carousel', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (24, 1, 1, 1, N'Mis', N'MSYS', N'99', N'MSYSP099', N'專案系統參數設定', N'P', N'Mis', N'MSYSP099_Application', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (25, 1, 1, 1, N'Mis', N'MUSR', N'01', N'MUSRP001', N'使用者資料維護', N'P', N'Mis', N'MUSRP001_User', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (26, 1, 1, 1, N'Mis', N'MUSR', N'02', N'MUSRP002', N'管理者資料維護', N'P', N'Mis', N'MUSRP002_Mis', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (27, 1, 1, 1, N'User', N'UBAS', N'01', N'UBASP001', N'基本主檔資料維護', N'P', N'User', N'UBASP001_CodeBase', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (28, 1, 1, 1, N'User', N'UBAS', N'02', N'UBASP002', N'縣市基本資料維護', N'P', N'User', N'UBASP002_City', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (29, 1, 1, 1, N'User', N'UBAS', N'03', N'UBASP003', N'個人通訊錄資料維護', N'P', N'User', N'UBASP003_AddressBook', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (30, 1, 1, 1, N'User', N'UBAS', N'04', N'UBASP004', N'地圖地點資料維護', N'P', N'User', N'UBASP004_MapPosition', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (31, 1, 1, 1, N'User', N'UBAS', N'05', N'UBASP005', N'待辦事項資料維護', N'P', N'User', N'UBASP005_TodoList', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (32, 1, 1, 1, N'User', N'UHOM', N'01', N'UHOMP001', N'公司介紹資料維護', N'P', N'User', N'UHOMP001_AboutUs', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (33, 1, 1, 1, N'User', N'UHOM', N'02', N'UHOMP002', N'產品代表客戶介紹', N'P', N'User', N'UHOMP002_Client', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (34, 1, 1, 1, N'User', N'UHOM', N'03', N'UHOMP003', N'最新消息資料維護', N'P', N'User', N'UHOMP003_News', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (35, 1, 1, 1, N'User', N'UHOM', N'04', N'UHOMP004', N'圖片展示資料維護', N'P', N'User', N'UHOMP004_Photo', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (36, 1, 1, 1, N'User', N'UHOM', N'05', N'UHOMP005', N'商品價格資料維護', N'P', N'User', N'UHOMP005_Pricing', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (37, 1, 1, 1, N'User', N'UHOM', N'06', N'UHOMP006', N'公司服務資料維護', N'P', N'User', N'UHOMP006_Service', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (38, 1, 1, 1, N'User', N'UORD', N'01', N'UORDP001', N'未結訂單資料維護', N'P', N'User', N'UORDP001_OrderUnClose', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (39, 1, 1, 1, N'User', N'UORD', N'02', N'UORDP002', N'已結訂單資料維護', N'P', N'User', N'UORDP002_OrderClosed', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (40, 1, 1, 1, N'User', N'UORD', N'03', N'UORDP003', N'商品基本資料維護', N'P', N'User', N'UORDP003_Product', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (41, 1, 1, 1, N'User', N'UORD', N'04', N'UORDP004', N'促銷商品資料維護', N'P', N'User', N'UORDP004_Promotion', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (42, 1, 1, 1, N'User', N'UORD', N'05', N'UORDP005', N'商品分類資料維護', N'P', N'User', N'UORDP005_Category', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (43, 1, 1, 1, N'User', N'UORD', N'06', N'UORDP006', N'訂單狀態資料維護', N'P', N'User', N'UORDP006_OrdersStatus', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (44, 1, 1, 1, N'User', N'UORD', N'07', N'UORDP007', N'付款方式資料維護', N'P', N'User', N'UORDP007_Payment', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (45, 1, 1, 1, N'User', N'UORD', N'08', N'UORDP008', N'出貨方式資料維護', N'P', N'User', N'UORDP008_Shipping', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (46, 1, 1, 1, N'User', N'UORG', N'01', N'UORGP001', N'公司基本資料維護', N'P', N'User', N'UORGP001_Company', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (47, 1, 1, 1, N'User', N'UORG', N'02', N'UORGP002', N'部門基本資料維護', N'P', N'User', N'UORGP002_Department', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (48, 1, 1, 1, N'User', N'UORG', N'03', N'UORGP003', N'職稱基本資料維護', N'P', N'User', N'UORGP003_Title', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (49, 1, 1, 1, N'User', N'UORG', N'04', N'UORGP004', N'員工基本資料維護', N'P', N'User', N'UORGP004_Employee', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (50, 1, 1, 1, N'User', N'UORG', N'05', N'UORGP005', N'公司休假行事曆維護', N'P', N'User', N'UORGP005_Vacation', N'Index', N'', 10, N'')
INSERT [dbo].[Programs] ([Id], [IsEnabled], [IsPageSize], [IsSearch], [RoleNo], [ModuleNo], [SortNo], [PrgNo], [PrgName], [CodeNo], [AreaName], [ControllerName], [ActionName], [ParmValue], [PageSize], [Remark]) VALUES (51, 1, 1, 1, N'User', N'UORG', N'06', N'UORGP006', N'公司分機表資料維護', N'P', N'User', N'UORGP006_ExtensionTable', N'Index', N'', 10, N'')
SET IDENTITY_INSERT [dbo].[Programs] OFF
GO
SET IDENTITY_INSERT [dbo].[PropertyNames] ON 

INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (1, N'AboutusText', N'公司簡介', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (2, N'ActionName', N'動作', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (3, N'AppName', N'應用程式名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (4, N'AppVersion', N'應用程式版本', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (5, N'AreaName', N'區域', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (6, N'ArticleCount', N'文章數', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (7, N'BarcodeNo', N'條碼編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (8, N'Birthday', N'出生日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (9, N'BoardName', N'版面名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (10, N'BoardNo', N'版面編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (11, N'BossName', N'負責人', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (12, N'CategoryName', N'分類名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (13, N'CategoryNo', N'分類編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (14, N'CityName', N'縣市名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (15, N'ClientName', N'客戶名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (16, N'ColorName', N'行程顏色', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (17, N'CompAddress', N'公司地址', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (18, N'CompFax', N'公司傳真', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (19, N'CompID', N'統一編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (20, N'CompName', N'公司名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (21, N'CompNo', N'公司編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (22, N'CompTel', N'公司電話', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (23, N'CompUrl', N'公司網址', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (24, N'ContactAddress', N'連絡地址', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (25, N'ContactEmail', N'電子信箱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (26, N'ContactName', N'連絡人', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (27, N'ContactTel', N'連絡電話', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (28, N'ContentText', N'商品內容', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (29, N'ControllerName', N'控制器', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (30, N'CostPrice', N'成本單價', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (31, N'CustName', N'客戶名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (32, N'CustNo', N'客戶代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (33, N'CycleName', N'週期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (34, N'DeptName', N'部門名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (35, N'DeptNo', N'部門代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (36, N'Description', N'詳細描述', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (37, N'DescriptionText', N'內容描述', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (38, N'DetailName', N'明細名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (39, N'DetailText', N'明細說明', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (40, N'DiscountPrice', N'折扣單價', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (41, N'DisplayName', N'顯示名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (42, N'EmpName', N'員工姓名', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (43, N'EmpNo', N'員工編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (44, N'EncryptionMode', N'啟用加密', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (45, N'EndDate', N'結束日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (46, N'EndHour', N'時始小時', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (47, N'EndMinute', N'時始分鐘', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (48, N'EndTime', N'結束時間', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (49, N'EngName', N'英文名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (50, N'EngShortName', N'英文簡稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (51, N'EventEnd', N'結束日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (52, N'EventStart', N'開始日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (53, N'ExtName', N'分機名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (54, N'ExtNo', N'分機', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (55, N'FacebookID', N'Facebook ID', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (56, N'FacebookUrl', N'Facebook', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (57, N'FirstName', N'姓氏', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (58, N'GenderCode', N'性別', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (59, N'GenderName', N'性別', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (60, N'GuidNo', N'唯一值', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (61, N'HeaderName', N'主要標題', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (62, N'IconName', N'圖示名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (63, N'ImageUrl', N'圖片位址', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (64, N'InstagramID', N'Instagram ID', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (65, N'InstagramUrl', N'Instagram', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (66, N'IsActive', N'啟動', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (67, N'IsAdd', N'新增', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (68, N'IsClosed', N'結案', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (69, N'IsConfirm', N'審核', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (70, N'IsDefault', N'預設', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (71, N'IsDelete', N'刪除', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (72, N'IsDownload', N'下載', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (73, N'IsEdit', N'修改', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (74, N'IsEnabled', N'啟用', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (75, N'IsFullday', N'全天行程', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (76, N'IsInvalid', N'作廢', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (77, N'IsPrint', N'列印', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (78, N'IsUndo', N'解除', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (79, N'IsUpload', N'上傳', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (80, N'IsValid', N'合法', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (81, N'IsWorkflow', N'簽核', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (82, N'ItemName', N'項目名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (83, N'LangName', N'語言名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (84, N'LangNo', N'語言代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (85, N'LanguageNo', N'預設語言', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (86, N'LastName', N'名字', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (87, N'Latitude', N'緯度(Lat)', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (88, N'LeaveDate', N'離職日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (89, N'LineID', N'LINE ID', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (90, N'LinkedInID', N'LinkedIn ID', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (91, N'LinkedinUrl', N'Linkedin', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (92, N'LogDate', N'日誌日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (93, N'LogNo', N'日誌編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (94, N'LogQty', N'數量', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (95, N'LogTime', N'日誌時間', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (96, N'Longitude', N'經度(Long)', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (97, N'MailAppPassword', N'應用程式密碼', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (98, N'MailHostPort', N'郵件埠號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (99, N'MailHostUrl', N'郵件伺服器', N'')
GO
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (100, N'MailSenderEmail', N'郵件寄件郵件', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (101, N'MailSenderName', N'郵件寄件名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (102, N'MailUseSSL', N'郵件啟用SSL', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (103, N'ModuleName', N'模組名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (104, N'ModuleNo', N'模組代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (105, N'MoreUrl', N'更多網址', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (106, N'OnboardDate', N'到職日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (107, N'OrderAmount', N'未稅金額', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (108, N'ParentGuid', N'父階編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (109, N'ParentId', N'父Id', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (110, N'ParentNo', N'父編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (111, N'ParmValue', N'參數', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (112, N'Password', N'登入密碼', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (113, N'PaymentName', N'付款名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (114, N'PaymentNo', N'付款編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (115, N'PaymentText', N'付款說明', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (116, N'PlaceAddress', N'地點地址', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (117, N'PlaceName', N'地點名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (118, N'PowerBy', N'設計公司', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (119, N'PrgName', N'程式名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (120, N'PrgNo', N'程式代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (121, N'PricingName', N'單價名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (122, N'PricingNo', N'單價編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (123, N'ProdName', N'商品名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (124, N'ProdNo', N'商品編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (125, N'ProdPrice', N'商品單價', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (126, N'Programs', N'程式數', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (127, N'PublishDate', N'發佈日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (128, N'ReceiverAddress', N'收件地址', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (129, N'ReceiverEmail', N'收件郵件', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (130, N'ReceiverName', N'收件人員', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (131, N'RegisterDate', N'登記日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (132, N'Remark', N'備註', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (133, N'ReplyCount', N'回覆數', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (134, N'ReplyGuid', N'回覆編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (135, N'ResourceText', N'攜帶物品', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (136, N'ReturnText', N'退貨說明', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (137, N'RoleName', N'角色名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (138, N'RoleNo', N'角色', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (139, N'RoomNo', N'會議室號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (140, N'SalePrice', N'銷售單價', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (141, N'SheetDate', N'單據日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (142, N'SheetNo', N'單據編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (143, N'ShippingName', N'交貨名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (144, N'ShippingNo', N'交貨方式', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (145, N'ShippingText', N'運送說明', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (146, N'ShortName', N'公司簡稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (147, N'SkypeUrl', N'Skype', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (148, N'SortNo', N'排序', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (149, N'StartDate', N'開始日期', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (150, N'StartHour', N'時始小時', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (151, N'StartMinute', N'時始分鐘', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (152, N'StartTime', N'開始時間', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (153, N'StatusCode', N'狀態', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (154, N'SubjectContent', N'內容明細', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (155, N'SubjectDate', N'發佈時間', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (156, N'SubjectName', N'主旨', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (157, N'SubjectTime', N'發佈時間', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (158, N'SupportText', N'服務說明', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (159, N'TargetCode', N'對象類別', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (160, N'TargetName', N'使用者', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (161, N'TargetNo', N'對象代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (162, N'TaxAmount', N'稅額', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (163, N'TitleName', N'標題名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (164, N'TitleNo', N'職稱編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (165, N'TotalAmount', N'合計金額', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (166, N'TwitterID', N'Twitter ID', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (167, N'TwitterUrl', N'Twitter', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (168, N'TypeName', N'類別名稱', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (169, N'TypeNo', N'類別代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (170, N'UserName', N'發佈人員', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (171, N'UserNo', N'代號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (172, N'Users', N'人數', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (173, N'VacYear', N'年度', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (174, N'ValidateCode', N'驗證碼', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (175, N'VendorNo', N'廠商編號', N'')
INSERT [dbo].[PropertyNames] ([Id], [PropName], [DisplayName], [Remark]) VALUES (176, N'WebSiteUrl', N'網站位址', N'')
SET IDENTITY_INSERT [dbo].[PropertyNames] OFF
GO
SET IDENTITY_INSERT [dbo].[Propertys] ON 

INSERT [dbo].[Propertys] ([Id], [IsSelect], [PropertyNo], [PropertyName], [PropertyValue], [Remark]) VALUES (1, 1, N'Color', N'顏色', N'紅,黑,白', N'')
INSERT [dbo].[Propertys] ([Id], [IsSelect], [PropertyNo], [PropertyName], [PropertyValue], [Remark]) VALUES (7, 1, N'Color', N'顏色', N'紅,黑,白', N'')
INSERT [dbo].[Propertys] ([Id], [IsSelect], [PropertyNo], [PropertyName], [PropertyValue], [Remark]) VALUES (2, 0, N'Material', N'材質', N'棉布,聚脂纖維', N'')
INSERT [dbo].[Propertys] ([Id], [IsSelect], [PropertyNo], [PropertyName], [PropertyValue], [Remark]) VALUES (3, 1, N'Shape', N'款式', N'A,B,C', N'')
INSERT [dbo].[Propertys] ([Id], [IsSelect], [PropertyNo], [PropertyName], [PropertyValue], [Remark]) VALUES (4, 1, N'Size', N'尺寸', N'S,M,L,XL,2XL', N'')
INSERT [dbo].[Propertys] ([Id], [IsSelect], [PropertyNo], [PropertyName], [PropertyValue], [Remark]) VALUES (8, 1, N'Size', N'尺寸', N'S,M,L,XL,XXL', N'')
INSERT [dbo].[Propertys] ([Id], [IsSelect], [PropertyNo], [PropertyName], [PropertyValue], [Remark]) VALUES (5, 0, N'Style', N'版型', N'合身,短袖', N'')
INSERT [dbo].[Propertys] ([Id], [IsSelect], [PropertyNo], [PropertyName], [PropertyValue], [Remark]) VALUES (6, 0, N'Target', N'對象與族群', N'男性,女性', N'')
SET IDENTITY_INSERT [dbo].[Propertys] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (5, 0, N'Customer', N'客戶', N'')
INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (6, 1, N'Demo', N'測試', N'')
INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (3, 0, N'Member', N'會員', N'')
INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (2, 1, N'Mis', N'管理者', N'')
INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (1, 1, N'User', N'使用者', N'')
INSERT [dbo].[Roles] ([Id], [IsEnabled], [RoleNo], [RoleName], [Remark]) VALUES (4, 0, N'Vendor', N'廠商', N'')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [IsEnabled], [SortNo], [HeaderName], [DetailName], [ImageUrl], [Remark]) VALUES (1, 1, N'01', N'雲端支付平台', N'雲端串接、管理各類型支付、票券、會員、點數等相關設定，統一對帳規格，簡化不同服務串接的繁複程序。', N'fas fa-cloud', N'')
INSERT [dbo].[Services] ([Id], [IsEnabled], [SortNo], [HeaderName], [DetailName], [ImageUrl], [Remark]) VALUES (2, 1, N'02', N'雲端行動刷卡', N'結合多元支付及電子發票的簡易收銀，直覺操作最貼心，最懂中小商家的店經理。', N'fas fa-credit-card', N'')
INSERT [dbo].[Services] ([Id], [IsEnabled], [SortNo], [HeaderName], [DetailName], [ImageUrl], [Remark]) VALUES (3, 1, N'03', N'雲端智慧終端', N'結合收銀、點餐、多元支付、會員經營與櫃台行銷活動，提供多合一的物聯網應用，為您創造更佳的顧客互動方式。', N'fas fa-terminal', N'')
INSERT [dbo].[Services] ([Id], [IsEnabled], [SortNo], [HeaderName], [DetailName], [ImageUrl], [Remark]) VALUES (4, 1, N'04', N'雲端智慧小鋪', N'透過雲端平台管理門店事務，滿足各業態店務管理需求，無論是單店經營、連鎖體系或複合商場皆可導入。', N'fas fa-store', N'')
INSERT [dbo].[Services] ([Id], [IsEnabled], [SortNo], [HeaderName], [DetailName], [ImageUrl], [Remark]) VALUES (5, 1, N'05', N'雲端營運管理', N'整合各商場營運資訊與專櫃廠商服務，雲端同步各項帳務、電子發票與支付資訊，即時提供完整的商場消費及營運分析報表，聰明管理零時差。', N'fas fa-cogs', N'')
INSERT [dbo].[Services] ([Id], [IsEnabled], [SortNo], [HeaderName], [DetailName], [ImageUrl], [Remark]) VALUES (6, 1, N'06', N'雲端會員管理', N'雲端會員虛實整合，提供紅利積點、消費明細、票券優惠等個人化服務，鞏固顧客忠誠度，有效提升回購率', N'fas fa-user-tie', N'')
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Shippings] ON 

INSERT [dbo].[Shippings] ([Id], [ShippingNo], [ShippingName], [Remark]) VALUES (1, N'Delivery', N'宅配到府', N'')
INSERT [dbo].[Shippings] ([Id], [ShippingNo], [ShippingName], [Remark]) VALUES (3, N'Store', N'店到店', N'')
INSERT [dbo].[Shippings] ([Id], [ShippingNo], [ShippingName], [Remark]) VALUES (2, N'Supermarket', N'超商取貨', N'')
SET IDENTITY_INSERT [dbo].[Shippings] OFF
GO
SET IDENTITY_INSERT [dbo].[Teams] ON 

INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (1, N'01', N'team01', N'麥肯齊‧鮑爾斯', N'MACKENZIE BOWERS', N'M', N'管理部', N'經理', N'#', N'#', N'#', N'#', N'#', N'mackenzie.bowers@gooduse.com.tw', N'', N'')
INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (2, N'02', N'team02', N'艾達‧希金斯', N'ADA HIGGINS', N'F', N'市場部', N'協理', N'#', N'#', N'#', N'#', N'#', N'ada.higgins@gooduse.com.tw', N'', N'')
INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (3, N'03', N'team03', N'理查德‧夏季', N'RICHARD SUMMERS', N'M', N'行銷部', N'副理', N'#', N'#', N'#', N'#', N'#', N'richard.summers@gooduse.com.tw', N'', N'')
INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (4, N'04', N'team04', N'奧布麗‧鮑曼', N'AUBREE BOWMAN', N'F', N'資管部', N'經理', N'#', N'#', N'#', N'#', N'#', N'aubree.browman@gooduse.com.tw', N'', N'')
INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (5, N'05', N'team05', N'約瑟夫琳‧達德利', N'JOSELYN DUDLEY', N'F', N'財務部', N'經理', N'#', N'#', N'#', N'#', N'#', N'joselyn.dudley@gooduse.com.tw', N'', N'')
INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (6, N'06', N'team06', N'伊萊賈‧漢普頓', N'ELIJAH HAMPTON', N'M', N'行政部', N'副理', N'#', N'#', N'#', N'#', N'#', N'elijah.hampton@gooduse.com.tw', N'', N'')
INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (7, N'07', N'team07', N'泰‧佈雷', N'TY BRAY', N'M', N'法務部', N'經理', N'#', N'#', N'#', N'#', N'#', N'ty.bray@gooduse.com.tw', N'', N'')
INSERT [dbo].[Teams] ([Id], [SortNo], [TeamNo], [TeamName], [EngName], [GenderCode], [DeptName], [TitleName], [TwitterUrl], [FacebookUrl], [LinkedinUrl], [InstagramUrl], [SkypeUrl], [ContactEmail], [DetailText], [Remark]) VALUES (8, N'08', N'team08', N'派珀‧葛瑞芬', N'PIPER GRIFFIN', N'F', N'業務部', N'協理', N'#', N'#', N'#', N'#', N'#', N'piper.griffin@gooduse.com.tw', N'', N'')
SET IDENTITY_INSERT [dbo].[Teams] OFF
GO
SET IDENTITY_INSERT [dbo].[Titles] ON 

INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (1, N'T001', N'董事長', N'')
INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (2, N'T002', N'副董事長', N'')
INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (3, N'T003', N'總經理', N'')
INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (4, N'T004', N'副總經理', N'')
INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (5, N'T005', N'協理', N'')
INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (6, N'T006', N'副理', N'')
INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (7, N'T007', N'課長', N'')
INSERT [dbo].[Titles] ([Id], [TitleNo], [TitleName], [Remark]) VALUES (8, N'T008', N'專員', N'')
SET IDENTITY_INSERT [dbo].[Titles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [Remark]) VALUES (8, 1, N'JoeWang', N'王喬伊', N'12345', N'Normal', N'Customer', N'M', N'D006', N'T008', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'joewang@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', N'')
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [Remark]) VALUES (1, 1, N'M001', N'王大明', N'12345', N'Official', N'Mis', N'M', N'D003', N'T005', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'M001@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', N'')
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [Remark]) VALUES (7, 1, N'MikeLee', N'李麥克', N'12345', N'Meterial', N'Vendor', N'M', N'D004', N'T005', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'mikelee@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', N'')
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [Remark]) VALUES (2, 1, N'U001', N'楊小天', N'12345', N'Official', N'User', N'M', N'D004', N'T004', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'U001@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', N'')
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [Remark]) VALUES (3, 1, N'U002', N'王小華', N'12345', N'Official', N'User', N'F', N'D002', N'T006', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'U002@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', N'')
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [Remark]) VALUES (4, 1, N'U003', N'陳小國', N'12345', N'Official', N'User', N'M', N'D001', N'T007', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'U003@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', N'')
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [Remark]) VALUES (5, 1, N'U004', N'許小信', N'12345', N'Official', N'User', N'M', N'D005', N'T008', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'U004@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', N'')
INSERT [dbo].[Users] ([Id], [IsValid], [UserNo], [UserName], [Password], [CodeNo], [RoleNo], [GenderCode], [DeptNo], [TitleNo], [Birthday], [OnboardDate], [LeaveDate], [ContactEmail], [ContactTel], [ContactAddress], [ValidateCode], [NotifyPassword], [Remark]) VALUES (6, 1, N'U005', N'楊小風', N'12345', N'Official', N'User', N'F', N'D002', N'T006', CAST(N'2000-01-01' AS Date), CAST(N'2000-01-01' AS Date), NULL, N'U005@gmail.com', N'0912345678', N'台北市信義區信義路五段5號', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [PK_AboutUs]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[AboutUs] ADD  CONSTRAINT [PK_AboutUs] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_AboutUsDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[AboutUsDetails] ADD  CONSTRAINT [PK_AboutUsDetails] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_AddressBooks]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[AddressBooks] ADD  CONSTRAINT [PK_AddressBooks] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Applications]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Applications] ADD  CONSTRAINT [PK_Applications] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Calendars]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [PK_Calendars] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Carousels]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Carousels] ADD  CONSTRAINT [PK_Carousels] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Carts]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Carts] ADD  CONSTRAINT [PK_Carts] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Categorys]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Categorys] ADD  CONSTRAINT [PK_Categorys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_CityAreas]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[CityAreas] ADD  CONSTRAINT [PK_CityAreas] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Citys]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Citys] ADD  CONSTRAINT [PK_Citys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Clients]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [PK_Clients] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_CloseDates]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[CloseDates] ADD  CONSTRAINT [PK_CloseDates] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_CodeBases]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[CodeBases] ADD  CONSTRAINT [PK_CodeBases] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CodeBases_admin_no]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE NONCLUSTERED INDEX [IX_CodeBases_admin_no] ON [dbo].[CodeBases]
(
	[IsAdmin] ASC,
	[BaseNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_CodeDatas]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[CodeDatas] ADD  CONSTRAINT [PK_CodeDatas] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Companys]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Companys] ADD  CONSTRAINT [PK_Companys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Departments]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [PK_Departments] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Employees]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Employees] ADD  CONSTRAINT [PK_Employees] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_ExtensionTables]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[ExtensionTables] ADD  CONSTRAINT [PK_ExtensionTables] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Featureds]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Featureds] ADD  CONSTRAINT [PK_Featureds] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_FormDetail]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[FormDetail] ADD  CONSTRAINT [PK_FormDetail] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_FormMaster]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[FormMaster] ADD  CONSTRAINT [PK_FormMaster] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_ForumBoards]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[ForumBoards] ADD  CONSTRAINT [PK_ForumBoards] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Forums]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Forums] ADD  CONSTRAINT [PK_Forums] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Languages]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [PK_Languages] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Logs]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Logs] ADD  CONSTRAINT [PK_Logs] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_MapPositions]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[MapPositions] ADD  CONSTRAINT [PK_MapPositions] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Messages]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [PK_Messages] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Modules]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Modules] ADD  CONSTRAINT [PK_Modules] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_News]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [PK_News] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_News_type_date]    Script Date: 2023/6/1 下午 02:43:40 ******/
CREATE NONCLUSTERED INDEX [IX_News_type_date] ON [dbo].[News]
(
	[CodeNo] ASC,
	[PublishDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_NewsLetter]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[NewsLetter] ADD  CONSTRAINT [PK_NewsLetter] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Notifications]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Notifications] ADD  CONSTRAINT [PK_Notifications] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_OrderDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [PK_OrderDetails] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Orders]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [PK_Orders] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_OrdersStatus]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[OrdersStatus] ADD  CONSTRAINT [PK_OrdersStatus] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Payments]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Payments] ADD  CONSTRAINT [PK_Payments] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Photos]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Photos] ADD  CONSTRAINT [PK_Photos] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_PricingDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[PricingDetails] ADD  CONSTRAINT [PK_PricingDetails] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Pricings]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Pricings] ADD  CONSTRAINT [PK_Pricings] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_ProductFeatureds]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[ProductFeatureds] ADD  CONSTRAINT [PK_ProductFeatureds] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_ProductInventorys]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[ProductInventorys] ADD  CONSTRAINT [PK_ProductInventorys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_ProductPropertys]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[ProductPropertys] ADD  CONSTRAINT [PK_ProductPropertys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_ProductRelations]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[ProductRelations] ADD  CONSTRAINT [PK_ProductRelations] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Products]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [PK_Products] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Programs]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Programs] ADD  CONSTRAINT [PK_Programs] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Promotions]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Promotions] ADD  CONSTRAINT [PK_Promotions] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_PropertyNames]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[PropertyNames] ADD  CONSTRAINT [PK_PropertyNames] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Propertys]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Propertys] ADD  CONSTRAINT [PK_Propertys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Roles]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [PK_Roles] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Securitys]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Securitys] ADD  CONSTRAINT [PK_Securitys] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Services]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Services] ADD  CONSTRAINT [PK_Services] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Shippings]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Shippings] ADD  CONSTRAINT [PK_Shippings] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Teams]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Teams] ADD  CONSTRAINT [PK_Teams] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Titles]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Titles] ADD  CONSTRAINT [PK_Titles] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_TodoLists]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[TodoLists] ADD  CONSTRAINT [PK_TodoLists] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Users]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [PK_Users] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_Vacations]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[Vacations] ADD  CONSTRAINT [PK_Vacations] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_WorkflowDetails]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[WorkflowDetails] ADD  CONSTRAINT [PK_WorkflowDetails] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_WorkflowMasters]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[WorkflowMasters] ADD  CONSTRAINT [PK_WorkflowMasters] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_WorkflowRoles]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[WorkflowRoles] ADD  CONSTRAINT [PK_WorkflowRoles] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_RoleUsers]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[WorkflowRoleUsers] ADD  CONSTRAINT [PK_RoleUsers] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK_WorkflowRoutes]    Script Date: 2023/6/1 下午 02:43:40 ******/
ALTER TABLE [dbo].[WorkflowRoutes] ADD  CONSTRAINT [PK_WorkflowRoutes] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Applications] ADD  CONSTRAINT [DF_Applications_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[Applications] ADD  CONSTRAINT [DF_Applications_IsDebug]  DEFAULT ((1)) FOR [IsDebug]
GO
ALTER TABLE [dbo].[Applications] ADD  CONSTRAINT [DF_Applications_EncryptionMode]  DEFAULT ((0)) FOR [EncryptionMode]
GO
ALTER TABLE [dbo].[Applications] ADD  CONSTRAINT [DF_Applications_MailHostPort]  DEFAULT ((587)) FOR [MailHostPort]
GO
ALTER TABLE [dbo].[Applications] ADD  CONSTRAINT [DF_Applications_MailUseSSL]  DEFAULT ((1)) FOR [MailUseSSL]
GO
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [DF_Calendars_TargetCode]  DEFAULT ('User') FOR [TargetCode]
GO
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [DF_Calendars_StartDate]  DEFAULT (getdate()) FOR [StartDate]
GO
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [DF_Calendars_EndDate]  DEFAULT (getdate()) FOR [EndDate]
GO
ALTER TABLE [dbo].[Calendars] ADD  CONSTRAINT [DF_Calendars_IsFullday]  DEFAULT ((0)) FOR [IsFullday]
GO
ALTER TABLE [dbo].[Carousels] ADD  CONSTRAINT [DF_Carousels_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Categorys] ADD  CONSTRAINT [DF_Categorys_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[Categorys] ADD  CONSTRAINT [DF_Categorys_IsCategory]  DEFAULT ((0)) FOR [IsCategory]
GO
ALTER TABLE [dbo].[CityAreas] ADD  CONSTRAINT [DF_CityAreas_Latitude]  DEFAULT ((0)) FOR [Latitude]
GO
ALTER TABLE [dbo].[CityAreas] ADD  CONSTRAINT [DF_CityAreas_Longitude]  DEFAULT ((0)) FOR [Longitude]
GO
ALTER TABLE [dbo].[Citys] ADD  CONSTRAINT [DF_Citys_Latitude]  DEFAULT ((0)) FOR [Latitude]
GO
ALTER TABLE [dbo].[Citys] ADD  CONSTRAINT [DF_Citys_Longitude]  DEFAULT ((0)) FOR [Longitude]
GO
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[CodeBases] ADD  CONSTRAINT [DF_CodeBases_IsAdmin]  DEFAULT ((0)) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[CodeDatas] ADD  CONSTRAINT [DF_CodeDatas_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[CodeDatas] ADD  CONSTRAINT [DF_CodeDatas_SortNo]  DEFAULT (space((0))) FOR [SortNo]
GO
ALTER TABLE [dbo].[Companys] ADD  CONSTRAINT [DF_Companys_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[Companys] ADD  CONSTRAINT [DF_Companys_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[Featureds] ADD  CONSTRAINT [DF_Featureds_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[FormDetail] ADD  CONSTRAINT [DF_FormDetail_Qty1]  DEFAULT ((0)) FOR [Qty1]
GO
ALTER TABLE [dbo].[FormDetail] ADD  CONSTRAINT [DF_FormDetail_Qty2]  DEFAULT ((0)) FOR [Qty2]
GO
ALTER TABLE [dbo].[FormMaster] ADD  CONSTRAINT [DF_FormMaster_FormDate]  DEFAULT (getdate()) FOR [FormDate]
GO
ALTER TABLE [dbo].[FormMaster] ADD  CONSTRAINT [DF_FormMaster_FormTime]  DEFAULT (getdate()) FOR [FormTime]
GO
ALTER TABLE [dbo].[FormMaster] ADD  CONSTRAINT [DF_FormMaster_Qty1]  DEFAULT ((0)) FOR [Qty1]
GO
ALTER TABLE [dbo].[FormMaster] ADD  CONSTRAINT [DF_FormMaster_Qty2]  DEFAULT ((0)) FOR [Qty2]
GO
ALTER TABLE [dbo].[ForumBoards] ADD  CONSTRAINT [DF_ForumBoards_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[ForumBoards] ADD  CONSTRAINT [DF_ForumBoards_GuidNo]  DEFAULT (newid()) FOR [GuidNo]
GO
ALTER TABLE [dbo].[Forums] ADD  CONSTRAINT [DF_Forums_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[Forums] ADD  CONSTRAINT [DF_Forums_IsClosed]  DEFAULT ((0)) FOR [IsClosed]
GO
ALTER TABLE [dbo].[Forums] ADD  CONSTRAINT [DF_Forums_GuidNo]  DEFAULT (newid()) FOR [GuidNo]
GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_IsRead]  DEFAULT ((0)) FOR [IsRead]
GO
ALTER TABLE [dbo].[Modules] ADD  CONSTRAINT [DF_Modules_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[Modules] ADD  CONSTRAINT [DF_Modules_IsWorkflow]  DEFAULT ((0)) FOR [IsWorkflow]
GO
ALTER TABLE [dbo].[Notifications] ADD  CONSTRAINT [DF_Notifications_IsRead]  DEFAULT ((0)) FOR [IsRead]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_order_IsClosed]  DEFAULT ((0)) FOR [IsClosed]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_order_IsValid]  DEFAULT ((0)) FOR [IsValid]
GO
ALTER TABLE [dbo].[OrdersStatus] ADD  CONSTRAINT [DF_OrdersStatus_IsPayed]  DEFAULT ((0)) FOR [IsPayed]
GO
ALTER TABLE [dbo].[OrdersStatus] ADD  CONSTRAINT [DF_OrdersStatus_IsClosed]  DEFAULT ((0)) FOR [IsClosed]
GO
ALTER TABLE [dbo].[Photos] ADD  CONSTRAINT [DF_Photos_SaleDate]  DEFAULT (getdate()) FOR [SaleDate]
GO
ALTER TABLE [dbo].[PricingDetails] ADD  CONSTRAINT [DF_PricingDetails_IsSupport]  DEFAULT ((0)) FOR [IsSupport]
GO
ALTER TABLE [dbo].[Pricings] ADD  CONSTRAINT [DF_Pricings_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[Pricings] ADD  CONSTRAINT [DF_Pricings_IsAdvanced]  DEFAULT ((0)) FOR [IsAdvanced]
GO
ALTER TABLE [dbo].[Pricings] ADD  CONSTRAINT [DF_Pricings_IsRecommend]  DEFAULT ((0)) FOR [IsRecommend]
GO
ALTER TABLE [dbo].[ProductInventorys] ADD  CONSTRAINT [DF_ProductInventorys_IsInventory]  DEFAULT ((0)) FOR [IsInventory]
GO
ALTER TABLE [dbo].[ProductInventorys] ADD  CONSTRAINT [DF_ProductInventorys_InventoryQty]  DEFAULT ((0)) FOR [InventoryQty]
GO
ALTER TABLE [dbo].[ProductPropertys] ADD  CONSTRAINT [DF_ProductPropertys_IsSelect]  DEFAULT ((1)) FOR [IsSelect]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Inventory]  DEFAULT ((0)) FOR [IsInventory]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_IsShowPhoto]  DEFAULT ((0)) FOR [IsShowPhoto]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_CostPrice]  DEFAULT ((0)) FOR [CostPrice]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_MarketPrice]  DEFAULT ((0)) FOR [MarketPrice]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_SalePrice]  DEFAULT ((0)) FOR [SalePrice]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_DiscountPrice]  DEFAULT ((0)) FOR [DiscountPrice]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_InventoryQty]  DEFAULT ((0)) FOR [InventoryQty]
GO
ALTER TABLE [dbo].[Programs] ADD  CONSTRAINT [DF_Programs_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[Programs] ADD  CONSTRAINT [DF_Programs_IsPageSize]  DEFAULT ((1)) FOR [IsPageSize]
GO
ALTER TABLE [dbo].[Programs] ADD  CONSTRAINT [DF_Programs_IsSearch]  DEFAULT ((1)) FOR [IsSearch]
GO
ALTER TABLE [dbo].[Programs] ADD  CONSTRAINT [DF_Programs_PageSize]  DEFAULT ((10)) FOR [PageSize]
GO
ALTER TABLE [dbo].[Propertys] ADD  CONSTRAINT [DF_Propertys_IsSelect]  DEFAULT ((1)) FOR [IsSelect]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[Securitys] ADD  CONSTRAINT [DF_Securitys_IsAdd]  DEFAULT ((1)) FOR [IsAdd]
GO
ALTER TABLE [dbo].[Securitys] ADD  CONSTRAINT [DF_Securitys_IsEdit]  DEFAULT ((1)) FOR [IsEdit]
GO
ALTER TABLE [dbo].[Securitys] ADD  CONSTRAINT [DF_Securitys_IsDelete]  DEFAULT ((1)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Securitys] ADD  CONSTRAINT [DF_Securitys_IsConfirm]  DEFAULT ((1)) FOR [IsConfirm]
GO
ALTER TABLE [dbo].[Securitys] ADD  CONSTRAINT [DF_Securitys_IsUndo]  DEFAULT ((1)) FOR [IsUndo]
GO
ALTER TABLE [dbo].[Securitys] ADD  CONSTRAINT [DF_Securitys_IsInvalid]  DEFAULT ((1)) FOR [IsInvalid]
GO
ALTER TABLE [dbo].[Securitys] ADD  CONSTRAINT [DF_Securitys_IsUpload]  DEFAULT ((1)) FOR [IsUpload]
GO
ALTER TABLE [dbo].[Securitys] ADD  CONSTRAINT [DF_Securitys_IsDownload]  DEFAULT ((1)) FOR [IsDownload]
GO
ALTER TABLE [dbo].[Securitys] ADD  CONSTRAINT [DF_Securitys_IsPrint]  DEFAULT ((1)) FOR [IsPrint]
GO
ALTER TABLE [dbo].[Services] ADD  CONSTRAINT [DF_Services_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[TodoLists] ADD  CONSTRAINT [DF_TodoLists_IsFinished]  DEFAULT ((0)) FOR [IsFinished]
GO
ALTER TABLE [dbo].[WorkflowDetails] ADD  CONSTRAINT [DF_WorkflowDetails_IsClose]  DEFAULT ((0)) FOR [IsClose]
GO
ALTER TABLE [dbo].[WorkflowDetails] ADD  CONSTRAINT [DF_WorkflowDetails_IsApprove]  DEFAULT ((0)) FOR [IsApprove]
GO
ALTER TABLE [dbo].[WorkflowDetails] ADD  CONSTRAINT [DF_WorkflowDetails_IsReject]  DEFAULT ((0)) FOR [IsReject]
GO
ALTER TABLE [dbo].[WorkflowDetails] ADD  CONSTRAINT [DF_WorkflowDetails_GuidNo]  DEFAULT (newid()) FOR [GuidNo]
GO
ALTER TABLE [dbo].[WorkflowMasters] ADD  CONSTRAINT [DF_WorkflowMasters_IsApprove]  DEFAULT ((0)) FOR [IsApprove]
GO
ALTER TABLE [dbo].[WorkflowMasters] ADD  CONSTRAINT [DF_WorkflowMasters_IsReject]  DEFAULT ((0)) FOR [IsReject]
GO
ALTER TABLE [dbo].[WorkflowMasters] ADD  CONSTRAINT [DF_WorkflowMasters_GuidNo]  DEFAULT (newid()) FOR [GuidNo]
GO
ALTER TABLE [dbo].[WorkflowRoleUsers] ADD  CONSTRAINT [DF_WorkflowRoleUsers_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
USE [master]
GO
ALTER DATABASE [tea] SET  READ_WRITE 
GO
