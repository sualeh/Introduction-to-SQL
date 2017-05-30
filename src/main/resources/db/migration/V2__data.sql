INSERT INTO Products 
(Product, Price, Category, Manufacturer) 
VALUES 
('Gizmo', 19.99, 'Gadgets', 'GizmoWorks'), 
('PowerGizmo', 29.99, 'Gadgets', 'GizmoWorks'), 
('Camera Plus', 149.99, 'Photography', 'Pear'), 
('Clock', 203.99, 'Household', ' Clock Maker')
;

INSERT INTO Purchases 
(Buyer, Seller, Product) 
VALUES 
('Joe', 'Sam', 'Gizmo'), 
('Alan', 'Fred', 'PowerGizmo'), 
('Jill', 'Fred', 'Camera Plus'),
('Alan', 'Fred', 'Camera Plus'),
('Sue', 'Jane', 'Camera Plus')
;

