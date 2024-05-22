
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/09/2024 08:18:40
-- Generated from EDMX file: C:\Users\moi\source\repos\isgaG1\App_Code\Model2.edmx
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

IF OBJECT_ID(N'[dbo].[Etudiant]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Etudiant];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Etudiant'
CREATE TABLE [dbo].[Etudiant] (
    [id] int  NOT NULL,
    [nom] nchar(10)  NULL,
    [prenom] nchar(10)  NULL,
    [date] datetime  NULL,
    [gender] nchar(10)  NULL,
    [photo] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ExamenSet1'
CREATE TABLE [dbo].[ExamenSet1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [note] float  NOT NULL,
    [date] datetime  NOT NULL,
    [Etudiant_id] int  NOT NULL,
    [Module_Id] int  NOT NULL
);
GO

-- Creating table 'ModuleSet'
CREATE TABLE [dbo].[ModuleSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [intitule] nvarchar(max)  NOT NULL,
    [coiff] float  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'Etudiant'
ALTER TABLE [dbo].[Etudiant]
ADD CONSTRAINT [PK_Etudiant]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 'ExamenSet1'
ALTER TABLE [dbo].[ExamenSet1]
ADD CONSTRAINT [PK_ExamenSet1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ModuleSet'
ALTER TABLE [dbo].[ModuleSet]
ADD CONSTRAINT [PK_ModuleSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Etudiant_id] in table 'ExamenSet1'
ALTER TABLE [dbo].[ExamenSet1]
ADD CONSTRAINT [FK_EtudiantEXamen]
    FOREIGN KEY ([Etudiant_id])
    REFERENCES [dbo].[Etudiant]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EtudiantEXamen'
CREATE INDEX [IX_FK_EtudiantEXamen]
ON [dbo].[ExamenSet1]
    ([Etudiant_id]);
GO

-- Creating foreign key on [Module_Id] in table 'ExamenSet1'
ALTER TABLE [dbo].[ExamenSet1]
ADD CONSTRAINT [FK_ModuleEXamen]
    FOREIGN KEY ([Module_Id])
    REFERENCES [dbo].[ModuleSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ModuleEXamen'
CREATE INDEX [IX_FK_ModuleEXamen]
ON [dbo].[ExamenSet1]
    ([Module_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------