CREATE TABLE [dbo].[Orders]
(
	[OrderId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
	[CustomerId] INT NOT NULL,
	[ProductId] UNIQUEIDENTIFIER NOT NULL,
	[OrderDate] DATETIME NOT NULL DEFAULT GETDATE(),
	[PaymentTypeId] INT NOT NULL,
	[PaymentStatusId] INT NOT NULL

	CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[ConsumerDetails]([Id]),
	CONSTRAINT [FK_Orders_Products] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductDetails]([ProductId]),
	CONSTRAINT [FK_Orders_PaymentTypes] FOREIGN KEY ([PaymentTypeId]) REFERENCES [dbo].[PaymentType]([Id]),
	CONSTRAINT [FK_Orders_PaymentStatus] FOREIGN KEY ([PaymentStatusId]) REFERENCES [dbo].[PaymentStatus]([Id])
)
