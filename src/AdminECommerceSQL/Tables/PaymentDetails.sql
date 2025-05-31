CREATE TABLE [dbo].[PaymentDetails]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[PaymentTypeID] INT NOT NULL,
	[OrderId] INT NOT NULL,
	[PaymentAmount] DECIMAL(18, 2) NOT NULL,
	[PaymentDate] DATETIME NOT NULL DEFAULT GETDATE(),
	[PaymentStatusID] INT NOT NULL,
	[ConsumerId] INT NOT NULL,
	[CreatedBy] NVARCHAR(100) NOT NULL,
	[CreatedDate] DATETIME NOT NULL DEFAULT GETDATE()

	CONSTRAINT FK_PaymentDetails_Order FOREIGN KEY (OrderId) REFERENCES Orders(Id),
	CONSTRAINT FK_PaymentDetails_PaymentType FOREIGN KEY (PaymentTypeID) REFERENCES PaymentType(Id),
	CONSTRAINT CK_PaymentDetails_PaymentStatus FOREIGN KEY (PaymentStatusID) REFERENCES PaymentStatus(Id),
	CONSTRAINT Fk_Consumer_PaymentDetails FOREIGN KEY (ConsumerId) REFERENCES ConsumerDetails(Id)
)
