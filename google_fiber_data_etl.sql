CREATE TABLE market_1 (
    date_created DATE,
    contacts_n INTEGER,
    contacts_n_1 INTEGER,
    contacts_n_2 INTEGER,
    contacts_n_3 INTEGER,
    contacts_n_4 INTEGER,
    contacts_n_5 INTEGER,
    contacts_n_6 INTEGER,
    contacts_n_7 INTEGER,
    new_type VARCHAR(10),
    new_market VARCHAR(10)
);

CREATE TABLE market_2 (
    date_created DATE,
    contacts_n INTEGER,
    contacts_n_1 INTEGER,
    contacts_n_2 INTEGER,
    contacts_n_3 INTEGER,
    contacts_n_4 INTEGER,
    contacts_n_5 INTEGER,
    contacts_n_6 INTEGER,
    contacts_n_7 INTEGER,
    new_type VARCHAR(10),
    new_market VARCHAR(10)
);

CREATE TABLE market_3 (
    date_created DATE,
    contacts_n INTEGER,
    contacts_n_1 INTEGER,
    contacts_n_2 INTEGER,
    contacts_n_3 INTEGER,
    contacts_n_4 INTEGER,
    contacts_n_5 INTEGER,
    contacts_n_6 INTEGER,
    contacts_n_7 INTEGER,
    new_type VARCHAR(10),
    new_market VARCHAR(10)
);


-- Due to inadequate planning, the new_type column needed to be modified to accommodate more characters for capturing detailed information about the issue type.

ALTER TABLE market_1
ALTER COLUMN new_type TYPE VARCHAR(100);

UPDATE market_1
SET new_type = CASE
    WHEN new_type = 'type_1' THEN 'account management'
    WHEN new_type = 'type_2' THEN 'technician troubleshooting'
    WHEN new_type = 'type_3' THEN 'scheduling'
    WHEN new_type = 'type_4' THEN 'construction'
    ELSE 'internet and WIFI'  -- Default for any value not covered
END;


ALTER TABLE market_2
ALTER COLUMN new_type TYPE VARCHAR(100);

UPDATE market_2
SET new_type = CASE
    WHEN new_type = 'type_1' THEN 'account management'
    WHEN new_type = 'type_2' THEN 'technician troubleshooting'
    WHEN new_type = 'type_3' THEN 'scheduling'
    WHEN new_type = 'type_4' THEN 'construction'
    ELSE 'internet and WIFI'  -- Default for any value not covered
END;


ALTER TABLE market_3
ALTER COLUMN new_type TYPE VARCHAR(100);

UPDATE market_3
SET new_type = CASE
    WHEN new_type = 'type_1' THEN 'account management'
    WHEN new_type = 'type_2' THEN 'technician troubleshooting'
    WHEN new_type = 'type_3' THEN 'scheduling'
    WHEN new_type = 'type_4' THEN 'construction'
    ELSE 'internet and WIFI'  -- Default for any value not covered
END;

-- Creating a new table that appends/unions the three tables together

CREATE TABLE combined_market AS
SELECT date_created, contacts_n, contacts_n_1, 
		contacts_n_2, contacts_n_3, contacts_n_4, 
		contacts_n_5, contacts_n_6, contacts_n_7, 
		new_type, new_market
FROM market_1

UNION ALL

SELECT date_created, contacts_n, contacts_n_1, 
		contacts_n_2, contacts_n_3, contacts_n_4, 
		contacts_n_5, contacts_n_6, contacts_n_7, 
		new_type, new_market
FROM market_2

UNION ALL

SELECT date_created, contacts_n, contacts_n_1, 
		contacts_n_2, contacts_n_3, contacts_n_4, 
		contacts_n_5, contacts_n_6, contacts_n_7, 
		new_type, new_market
FROM market_3;

SELECT COUNT(*)
FROM combined_market;

SELECT * FROM combined_market
ORDER BY date_created;





