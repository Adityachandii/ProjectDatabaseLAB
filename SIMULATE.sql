USE Project

BEGIN TRANSACTION

INSERT INTO PurchaseTransaction VALUES
('PO016','ST002','SP007','2022-12-19')

INSERT INTO PurchaseDetail VALUES
('PO016','IG008',15)

INSERT INTO SalesTransaction VALUES
('SL016','ST004','CS005','2022-12-11')

INSERT INTO SalesDetail VALUES
('SL015','IC005','3')

UPDATE Ingredient

SET IngredientStock+10

WHERE IngredientID = 'IG008'

SELECT * FROM Ingredient

ROLLBACK
