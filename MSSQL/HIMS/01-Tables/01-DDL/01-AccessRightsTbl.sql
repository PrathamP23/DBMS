CREATE TABLE AccessRightsTbl
(
	AccessRightID bigint IDENTITY(1,1) NOT NULL,
	UserID bigint NOT NULL,
	FunctionalityID bigint NOT NULL,
	Status bit NULL,
	CreatedBy int NULL,
	ModifiedBy int NULL,
	CreatedOn datetime NULL,
	ModifiedOn datetime NULL,
	PRIMARY KEY(AccessRightID ASC) 
) 