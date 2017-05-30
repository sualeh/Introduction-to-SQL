# Solutions to Exercises

## Exercise 1 - Queries

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

## Exercise 2 - Modifications

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

## Exercise 3 - Joins

- **3.1** - None
- **3.2**
```sql
SELECT
  BUYER,
  PRODUCTS.PRODUCT,
  PRICE
FROM
  PRODUCTS
  INNER JOIN PURCHASES
  ON PRODUCTS.PRODUCT = PURCHASES.PRODUCT
WHERE
  SELLER = 'Fred'
ORDER BY
  BUYER
```

## Exercise 4 - Unions

- **4.1** - None

