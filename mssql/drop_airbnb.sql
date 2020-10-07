/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2008                              */
/* Project file:          airbnb.dez                                      */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2020-10-07 10:59                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop table "dbo.users"                                                 */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__sign_in_c__5441852A]
GO


ALTER TABLE [dbo].[users] DROP CONSTRAINT [pk_users]
GO


DROP TABLE [dbo].[users]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "dbo.schema_migrations"                                     */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [dbo].[schema_migrations] DROP CONSTRAINT [pk_schema_migrations]
GO


DROP TABLE [dbo].[schema_migrations]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "dbo.rooms"                                                 */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [dbo].[rooms] DROP CONSTRAINT [pk_rooms]
GO


DROP TABLE [dbo].[rooms]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "dbo.reservations"                                          */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [dbo].[reservations] DROP CONSTRAINT [pk_reservations]
GO


DROP TABLE [dbo].[reservations]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "dbo.photos"                                                */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [dbo].[photos] DROP CONSTRAINT [pk_photos]
GO


DROP TABLE [dbo].[photos]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "dbo.ar_internal_metadata"                                  */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [dbo].[ar_internal_metadata] DROP CONSTRAINT [pk_ar_internal_metadata]
GO


DROP TABLE [dbo].[ar_internal_metadata]
GO

