DROP TABLE IF EXISTS campaigns,contacts,categories,subcategories;

CREATE TABLE contacts(
	contact_id VARCHAR(4) PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(50));
	
CREATE TABLE categories(
	cat_id VARCHAR(4) PRIMARY KEY,
	category VARCHAR(20));
	
CREATE TABLE subcategories(
	subcat_id VARCHAR(8) PRIMARY KEY,
	subcategory VARCHAR(20));

CREATE TABLE campaigns(
	cf_id VARCHAR(4) PRIMARY KEY,
	contact_id VARCHAR(4),
	company_name VARCHAR(50),
	description VARCHAR(100),
	goal DECIMAL,
	pledged DECIMAL,
	outcome VARCHAR(20),
	backers_count INT,
	country VARCHAR(2),
	currency VARCHAR(3),
	launch_date DATE,
	end_date DATE,
	cat_id VARCHAR(4), 
	subcat_id VARCHAR(8),
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY(cat_id) REFERENCES categories(cat_id),
	FOREIGN KEY(subcat_id) REFERENCES subcategories(subcat_id));
	
SELECT * FROM campaigns;
SELECT * FROM contacts;
SELECT * FROM categories;
SELECT * FROM subcategories;