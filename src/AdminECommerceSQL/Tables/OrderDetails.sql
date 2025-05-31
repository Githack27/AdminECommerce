CREATE TABLE [dbo].[OrderDetails]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[OrderId] UNIQUEIDENTIFIER NOT NULL,
	[TotalAmount] DECIMAL(18, 2) NOT NULL,
	[Quantity] INT NOT NULL,
	[OrderStatusID] INT NOT NULL,
	[CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(),
	[ModifiedDate] DATETIME NOT NULL DEFAULT GETDATE()

	CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders]([OrderId]),
	CONSTRAINT [FK_OrderDetails_OrderStatus] FOREIGN KEY ([OrderStatusID]) REFERENCES [dbo].[OrderStatus]([StatusId])
)
