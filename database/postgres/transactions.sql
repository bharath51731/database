BEGIN;
SAVEPOINT s1;
DELETE FROM customer WHERE customer_id = 3001;

SAVEPOINT s2;
DELETE FROM customer WHERE customer_id = 3003;

ROLLBACK TO s1;
COMMIT;