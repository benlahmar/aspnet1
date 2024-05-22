
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/08/2024 19:08:54
-- Generated from EDMX file: C:\Users\moi\source\repos\isgaG1\App_Code\Model3.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [isgagroupe1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[UserSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UserSet'
CREATE TABLE [dbo].[UserSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nom] nvarchar(max)  NOT NULL,
    [photo] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'invitationSet'
CREATE TABLE [dbo].[invitationSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [date] datetime  NOT NULL,
    [etat] bit  NOT NULL,
    [sender_Id] int  NOT NULL,
    [reciver_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [PK_UserSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'invitationSet'
ALTER TABLE [dbo].[invitationSet]
ADD CONSTRAINT [PK_invitationSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [sender_Id] in table 'invitationSet'
ALTER TABLE [dbo].[invitationSet]
ADD CONSTRAINT [FK_Userinvitation]
    FOREIGN KEY ([sender_Id])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Userinvitation'
CREATE INDEX [IX_FK_Userinvitation]
ON [dbo].[invitationSet]
    ([sender_Id]);
GO

-- Creating foreign key on [reciver_Id] in table 'invitationSet'
ALTER TABLE [dbo].[invitationSet]
ADD CONSTRAINT [FK_Userinvitation1]
    FOREIGN KEY ([reciver_Id])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Userinvitation1'
CREATE INDEX [IX_FK_Userinvitation1]
ON [dbo].[invitationSet]
    ([reciver_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------