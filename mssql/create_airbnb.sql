/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2008                              */
/* Project file:          airbnb.dez                                      */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2020-10-07 10:59                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "dbo.ar_internal_metadata"                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [dbo].[ar_internal_metadata] (
    [key] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [value] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [created_at] DATETIME NOT NULL,
    [updated_at] DATETIME NOT NULL,
    CONSTRAINT [pk_ar_internal_metadata] PRIMARY KEY CLUSTERED ([key])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "dbo.photos"                                                 */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [dbo].[photos] (
    [id] BIGINT IDENTITY(1,1) NOT NULL,
    [room_id] INTEGER,
    [created_at] DATETIME NOT NULL,
    [updated_at] DATETIME NOT NULL,
    [image_file_name] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [image_content_type] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [image_file_size] INTEGER,
    [image_updated_at] DATETIME,
    CONSTRAINT [pk_photos] PRIMARY KEY CLUSTERED ([id])
)
GO


CREATE NONCLUSTERED INDEX [index_photos_on_room_id] ON [dbo].[photos] ([room_id] ASC)
GO


/* ---------------------------------------------------------------------- */
/* Add table "dbo.reservations"                                           */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [dbo].[reservations] (
    [id] BIGINT IDENTITY(1,1) NOT NULL,
    [user_id] INTEGER,
    [room_id] INTEGER,
    [start_date] DATETIME,
    [end_date] DATETIME,
    [price] INTEGER,
    [total] INTEGER,
    [created_at] DATETIME NOT NULL,
    [updated_at] DATETIME NOT NULL,
    CONSTRAINT [pk_reservations] PRIMARY KEY CLUSTERED ([id])
)
GO


CREATE NONCLUSTERED INDEX [index_reservations_on_room_id] ON [dbo].[reservations] ([room_id] ASC)
GO


CREATE NONCLUSTERED INDEX [index_reservations_on_user_id] ON [dbo].[reservations] ([user_id] ASC)
GO


/* ---------------------------------------------------------------------- */
/* Add table "dbo.rooms"                                                  */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [dbo].[rooms] (
    [id] BIGINT IDENTITY(1,1) NOT NULL,
    [home_type] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [room_type] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [accomodate] INTEGER,
    [bedroom] INTEGER,
    [bathroom] INTEGER,
    [summary] TEXT COLLATE SQL_Latin1_General_CP1_CI_AS,
    [address] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [is_tv] SMALLINT,
    [is_kitchen] SMALLINT,
    [is_air] SMALLINT,
    [is_heating] SMALLINT,
    [is_internet] SMALLINT,
    [price] INTEGER,
    [active] SMALLINT,
    [user_id] INTEGER,
    [created_at] DATETIME NOT NULL,
    [updated_at] DATETIME NOT NULL,
    [listing_name] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [latitude] REAL,
    [longitude] REAL,
    CONSTRAINT [pk_rooms] PRIMARY KEY CLUSTERED ([id])
)
GO


CREATE NONCLUSTERED INDEX [index_rooms_on_user_id] ON [dbo].[rooms] ([user_id] ASC)
GO


/* ---------------------------------------------------------------------- */
/* Add table "dbo.schema_migrations"                                      */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [dbo].[schema_migrations] (
    [version] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    CONSTRAINT [pk_schema_migrations] PRIMARY KEY CLUSTERED ([version])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "dbo.users"                                                  */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [dbo].[users] (
    [id] BIGINT IDENTITY(1,1) NOT NULL,
    [email] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [encrypted_password] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [reset_password_token] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [reset_password_sent_at] DATETIME,
    [remember_created_at] DATETIME,
    [sign_in_count] INTEGER CONSTRAINT [DF__users__sign_in_c__5441852A] DEFAULT 0 NOT NULL,
    [current_sign_in_at] DATETIME,
    [last_sign_in_at] DATETIME,
    [current_sign_in_ip] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [last_sign_in_ip] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [created_at] DATETIME NOT NULL,
    [updated_at] DATETIME NOT NULL,
    [fullname] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [confirmation_token] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [confirmed_at] DATETIME,
    [confirmation_sent_at] DATETIME,
    [provider] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [uid] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [image] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [phone_number] VARCHAR(255) COLLATE SQL_Latin1_General_CP1_CI_AS,
    [description] TEXT COLLATE SQL_Latin1_General_CP1_CI_AS,
    CONSTRAINT [pk_users] PRIMARY KEY CLUSTERED ([id])
)
GO


CREATE UNIQUE NONCLUSTERED INDEX [index_users_on_confirmation_token] ON [dbo].[users] ([confirmation_token] ASC)
GO


CREATE UNIQUE NONCLUSTERED INDEX [index_users_on_email] ON [dbo].[users] ([email] ASC)
GO


CREATE UNIQUE NONCLUSTERED INDEX [index_users_on_reset_password_token] ON [dbo].[users] ([reset_password_token] ASC)
GO

