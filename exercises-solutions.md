# Solutions to Exercises

## Exercise 1 - Queries

### 1.1

```sql
SELECT
  *
FROM
  PRODUCTS
WHERE
  CATEGORY = 'Household'
```

### 1.2

```sql
SELECT
  *
FROM
  PRODUCTS
WHERE
  PRICE < 200
```

### 1.3

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

### 2.1
None

### 2.2
- Add a product,
```sql
INSERT INTO PRODUCTS
  (PRODUCT, PRICE, CATEGORY, MANUFACTURER)
VALUES
  ('New Product', 14.99, 'Clothing', 'Fashion, Inc.')
```
- Verify,
```sql
SELECT
  *
FROM
  PRODUCTS
```
- Delete,
```sql
DELETE
FROM
  PRODUCTS
WHERE
  PRODUCT = 'New Product'
```
- Verify using the `SELECT` again


## Exercise 3 - Joins

### 3.1
None

### 3.2
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

### 4.1
None


## Exercise 5 - Aggregate Functions

### 5.1
None

### 5.2
```sql
SELECT
  SELLER,
  SUM(PRICE) AS GROSS_SALES
FROM
  PRODUCTS
  INNER JOIN PURCHASES
  ON PRODUCTS.PRODUCT = PURCHASES.PRODUCT
GROUP BY
  SELLER
HAVING
  GROSS_SALES > 100
```


## Exercise 6 - Data Definition Language (DDL)

### 6.1
None
