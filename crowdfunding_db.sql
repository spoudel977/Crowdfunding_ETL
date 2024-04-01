CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id INT PRIMARY KEY 
    subcategory_name VARCHAR(50) NOT NULL
);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description STR NOT NULL,
    goal INT NOT NULL,
    pledged INT NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(50) NOT NULL,
    currency VARCHAR(25) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id INT NOT NULL,
    subcategory_id INT NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);