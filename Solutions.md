# Solutions to Exercises

## Exercise 1 - Querying for Data

- **1.1** - None
- **1.2**
```sql
SELECT DISTINCT
  PRODUCT
FROM
  PURCHASES
WHERE
  SELLER = 'Fred'
ORDER BY
  PRODUCT
```

## Exercise 2 - Modifying Data

- **2.1** - None
- **2.2**
Add a product,
```sql
INSERT INTO PRODUCTS
  (PRODUCT, PRICE, CATEGORY, MANUFACTURER)
VALUES
  ('New Product', 14.99, 'Clothing', 'Fashion, Inc.')
```
Verify,
```sql
SELECT 
  *
FROM
	PRODUCTS
```
Delete,
```sql
DELETE
FROM
	PRODUCTS
WHERE
  PRODUCT = 'New Product'
```
Verify using the `SELECT` again

