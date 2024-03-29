-- 1
SELECT COUNT(*) FROM invoice 
WHERE billing_country = 'USA';

-- 2
SELECT MAX(total) FROM invoice;


-- 3
SELECT MIN(total) FROM invoice;

-- 4
SELECT * FROM invoice WHERE total > 5;

-- 5
SELECT * FROM invoice WHERE total < 5;

-- 6
SELECT COUNT(*) FROM invoice 
WHERE billing_state in ('CA', 'TX', 'AZ');

-- 7
SELECT AVG(total) FROM invoice;

-- 8
SELECT SUM(total) FROM invoice;

-- 9
UPDATE invoice
SET total = 24
WHERE invoice_id = 5;

-- 10 (This caused an error because this action violates the foreign key constraints)
DELETE FROM invoice
WHERE invoice_id = 1;

-- So Do the Below First:
DELETE FROM invoice_line
WHERE invoice_id = 1;

-- And then
DELETE FROM invoice
WHERE invoice_id = 1;