﻿IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210202031412_Inicial')
BEGIN
    CREATE TABLE [TarjetaCredito] (
        [Id] int NOT NULL IDENTITY,
        [Titular] varChar(100) NOT NULL,
        [NumeroTarjeta] varChar(16) NOT NULL,
        [FechaExpiracion] varChar(5) NOT NULL,
        [CVV] varChar(3) NOT NULL,
        CONSTRAINT [PK_TarjetaCredito] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210202031412_Inicial')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210202031412_Inicial', N'5.0.2');
END;
GO

COMMIT;
GO

