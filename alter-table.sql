-- 1. Add the column (initially nullable)
ALTER TABLE cars
ADD COLUMN dealership_id INTEGER;

-- 2. Insert data to backfill the dealership_id column

-- Update cars, set the dealership_id to 1
--  where the dealership_id IS NULL

UPDATE cars SET
	dealership_id = 1
WHERE
	dealership_id IS NULL;


-- 3. Add the NOT NULL constraint
ALTER TABLE cars
ALTER COLUMN dealership_id SET NOT NULL;


-- 4. Add the foreign key constraint
ALTER TABLE cars
ADD CONSTRAINT dealership_fk FOREIGN KEY (dealership_id)
REFERENCES dealerships(id);

INSERT INTO cars (brand, model, year, price, color, condition, sold, dealership_id)
VALUES
('Volkswagen', 'Beetle', 1967, 30000, 'Black', 5, FALSE, 2);

