-- Category Table
INSERT INTO category(category_id, name, description, is_active, created_date, updated_date) VALUES (1, 'Electronics', 'Devices and gadgets including smartphones, laptops, and accessories', 1, TO_TIMESTAMP('2020-01-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-01-15 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO category(category_id, name, description, is_active, created_date, updated_date) VALUES (2, 'Clothing', 'Apparel and accessories for men, women, and children', 1, TO_TIMESTAMP('2020-02-20 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-02-20 11:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO category(category_id, name, description, is_active, created_date, updated_date) VALUES (3, 'Home', 'Furniture, decor, and outdoor living products', 1, TO_TIMESTAMP('2020-03-10 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-03-10 12:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO category(category_id, name, description, is_active, created_date, updated_date) VALUES (4, 'Books', 'Fiction, non-fiction, educational, and children''s books', 1, TO_TIMESTAMP('2020-04-05 13:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-04-05 14:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO category(category_id, name, description, is_active, created_date, updated_date) VALUES (5, 'Toys', 'Children''s toys, board games, and video games', 1, TO_TIMESTAMP('2020-05-12 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-05-12 15:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO category(category_id, name, description, is_active, created_date, updated_date) VALUES (6, 'Sports', 'Sports equipment, fitness gear, and outdoor recreation', 1, TO_TIMESTAMP('2020-06-18 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-06-18 16:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO category(category_id, name, description, is_active, created_date, updated_date) VALUES (7, 'Beauty', 'Cosmetics, skincare, haircare, and hygiene products', 1, TO_TIMESTAMP('2020-07-22 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-22 17:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO category(category_id, name, description, is_active, created_date, updated_date) VALUES (8, 'Groceries', 'Food, beverages, and household essentials', 1, TO_TIMESTAMP('2020-08-30 17:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO category(category_id, name, description, is_active, created_date, updated_date) VALUES (9, 'Automotive', 'Car parts, accessories, and maintenance products', 1, TO_TIMESTAMP('2020-09-14 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-09-14 19:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO category(category_id, name, description, is_active, created_date, updated_date) VALUES (10, 'Health', 'Vitamins, supplements, and health monitoring devices', 1, TO_TIMESTAMP('2020-10-25 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-25 20:30:00', 'YYYY-MM-DD HH24:MI:SS'));

COMMIT;



-- Customer Table
INSERT INTO customer (customer_id, first_name, last_name, date_of_birth, gender, email, phone, address, city, state, postal_code, country, is_active, join_date, last_login) 
VALUES (1, 'John', 'Smith', TO_DATE('1985-05-15', 'YYYY-MM-DD'), 'Male', 'john.smith@email.com', '+1 555 123 4567', '123 Main St', 'Toronto', 'Ontario', 'M5V 3L9', 'Canada', 1, TO_TIMESTAMP('2021-01-10 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-15 14:25:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO customer (customer_id, first_name, last_name, date_of_birth, gender, email, phone, address, city, state, postal_code, country, is_active, join_date, last_login) 
VALUES (2, 'Emilia', 'García', TO_DATE('1990-08-22', 'YYYY-MM-DD'), 'Female', 'emilia.garcia@email.com', '+34 91 234 5678', 'Calle Gran Vía 456', 'Madrid', NULL, '28013', 'Spain', 1, TO_TIMESTAMP('2021-02-15 09:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-10 16:40:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO customer (customer_id, first_name, last_name, date_of_birth, gender, email, phone, address, city, state, postal_code, country, is_active, join_date, last_login) 
VALUES (3, 'Mohammed', 'Al-Farsi', TO_DATE('1978-03-10', 'YYYY-MM-DD'), 'Male', 'mohammed.alfarsi@email.com', '+966 12 345 6789', 'King Fahd Road 789', 'Riyadh', 'Riyadh Province', '11564', 'Saudi Arabia', 1, TO_TIMESTAMP('2021-03-20 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-05 11:20:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO customer (customer_id, first_name, last_name, date_of_birth, gender, email, phone, address, city, state, postal_code, country, is_active, join_date, last_login) 
VALUES (4, 'Yuki', 'Tanaka', TO_DATE('1992-11-05', 'YYYY-MM-DD'), 'Female', 'yuki.tanaka@email.com', '+81 3 1234 5678', '1-2-3 Shibuya', 'Tokyo', NULL, '150-0002', 'Japan', 1, TO_TIMESTAMP('2021-04-05 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-30 09:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO customer (customer_id, first_name, last_name, date_of_birth, gender, email, phone, address, city, state, postal_code, country, is_active, join_date, last_login) 
VALUES (5, 'Olivier', 'Martin', TO_DATE('1982-07-30', 'YYYY-MM-DD'), 'Male', 'olivier.martin@email.com', '+33 1 23 45 67 89', '15 Rue de Rivoli', 'Paris', 'Île-de-France', '75004', 'France', 1, TO_TIMESTAMP('2021-05-12 12:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-25 13:50:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO customer (customer_id, first_name, last_name, date_of_birth, gender, email, phone, address, city, state, postal_code, country, is_active, join_date, last_login) 
VALUES (6, 'Priya', 'Patel', TO_DATE('1995-01-18', 'YYYY-MM-DD'), 'Female', 'priya.patel@email.com', '+91 22 2345 6789', '201 Marine Drive', 'Mumbai', 'Maharashtra', '400020', 'India', 1, TO_TIMESTAMP('2021-06-18 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-20 17:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO customer (customer_id, first_name, last_name, date_of_birth, gender, email, phone, address, city, state, postal_code, country, is_active, join_date, last_login) 
VALUES (7, 'Lucas', 'Silva', TO_DATE('1975-09-25', 'YYYY-MM-DD'), 'Male', 'lucas.silva@email.com', '+55 11 91234 5678', 'Avenida Paulista 1590', 'São Paulo', 'SP', '01310-200', 'Brazil', 1, TO_TIMESTAMP('2021-07-22 14:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-15 10:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO customer (customer_id, first_name, last_name, date_of_birth, gender, email, phone, address, city, state, postal_code, country, is_active, join_date, last_login) 
VALUES (8, 'Amina', 'Diallo', TO_DATE('1988-12-12', 'YYYY-MM-DD'), 'Female', 'amina.diallo@email.com', '+234 1 234 5678', '24 Marina Road', 'Lagos', 'Lagos State', '101233', 'Nigeria', 1, TO_TIMESTAMP('2021-08-30 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-10 12:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO customer (customer_id, first_name, last_name, date_of_birth, gender, email, phone, address, city, state, postal_code, country, is_active, join_date, last_login) 
VALUES (9, 'Wei', 'Zhang', TO_DATE('1991-04-08', 'YYYY-MM-DD'), 'Male', 'wei.zhang@email.com', '+86 10 1234 5678', '88 Jianguo Road', 'Beijing', NULL, '100025', 'China', 1, TO_TIMESTAMP('2021-09-14 16:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-05 15:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO customer (customer_id, first_name, last_name, date_of_birth, gender, email, phone, address, city, state, postal_code, country, is_active, join_date, last_login) 
VALUES (10, 'Sophie', 'Müller', TO_DATE('1987-06-20', 'YYYY-MM-DD'), 'Prefer not to say', 'sophie.mueller@email.com', '+49 30 12345678', 'Friedrichstraße 100', 'Berlin', NULL, '10117', 'Germany', 1, TO_TIMESTAMP('2021-10-25 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-09-30 18:30:00', 'YYYY-MM-DD HH24:MI:SS'));

COMMIT;

-- User Registration Table
INSERT INTO user_registration (user_id, customer_id, password, is_active, created_date, last_updated) 
VALUES (1, 1, '$2a$10$X5z4W6y8Z9A0B1C2D3E4F', 1, TO_TIMESTAMP('2021-01-10 08:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-15 14:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO user_registration (user_id, customer_id, password, is_active, created_date, last_updated) 
VALUES (2, 2, '$2a$10$G5H6I7J8K9L0M1N2O3P4Q', 1, TO_TIMESTAMP('2021-02-15 09:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-10 16:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO user_registration (user_id, customer_id, password, is_active, created_date, last_updated) 
VALUES (3, 3, '$2a$10$R5S6T7U8V9W0X1Y2Z3A4B', 1, TO_TIMESTAMP('2021-03-20 10:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-05 11:25:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO user_registration (user_id, customer_id, password, is_active, created_date, last_updated) 
VALUES (4, 4, '$2a$10$C5D6E7F8G9H0I1J2K3L4M', 1, TO_TIMESTAMP('2021-04-05 11:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-30 09:20:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO user_registration (user_id, customer_id, password, is_active, created_date, last_updated) 
VALUES (5, 5, '$2a$10$N5O6P7Q8R9S0T1U2V3W4X', 1, TO_TIMESTAMP('2021-05-12 12:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-25 13:55:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO user_registration (user_id, customer_id, password, is_active, created_date, last_updated) 
VALUES (6, 6, '$2a$10$Y5Z6A7B8C9D0E1F2G3H4I', 1, TO_TIMESTAMP('2021-06-18 13:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-20 17:35:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO user_registration (user_id, customer_id, password, is_active, created_date, last_updated) 
VALUES (7, 7, '$2a$10$J5K6L7M8N9O0P1Q2R3S4T', 1, TO_TIMESTAMP('2021-07-22 14:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-15 10:50:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO user_registration (user_id, customer_id, password, is_active, created_date, last_updated) 
VALUES (8, 8, '$2a$10$U5V6W7X8Y9Z0A1B2C3D4E', 1, TO_TIMESTAMP('2021-08-30 15:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-10 12:05:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO user_registration (user_id, customer_id, password, is_active, created_date, last_updated) 
VALUES (9, 9, '$2a$10$F5G6H7I8J9K0L1M2N3O4P', 1, TO_TIMESTAMP('2021-09-14 16:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-05 15:20:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO user_registration (user_id, customer_id, password, is_active, created_date, last_updated) 
VALUES (10, 10, '$2a$10$Q5R6S7T8U9V0W1X2Y3Z4A', 1, TO_TIMESTAMP('2021-10-25 17:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-09-30 18:35:00', 'YYYY-MM-DD HH24:MI:SS'));

COMMIT;


-- Employee Table
INSERT INTO employee (employee_id, first_name, last_name, position, email, phone, address, department, salary, hire_date, termination_date, is_active, created_date, updated_date, manager_id)
VALUES (1, 'James', 'Wilson', 'CEO', 'james.w@company.com', '5551112222', '100 Executive Blvd, New York, NY 10001', 'Executive', 250000, TO_DATE('2010-01-15', 'YYYY-MM-DD'), NULL, 1, TO_TIMESTAMP('2010-01-15 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-01 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO employee (employee_id, first_name, last_name, position, email, phone, address, department, salary, hire_date, termination_date, is_active, created_date, updated_date, manager_id)
VALUES (2, 'Mary', 'Taylor', 'CFO', 'mary.t@company.com', '5552223333', '200 Finance Ave, New York, NY 10001', 'Finance', 200000, TO_DATE('2011-03-20', 'YYYY-MM-DD'), NULL, 1, TO_TIMESTAMP('2011-03-20 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-15 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO employee (employee_id, first_name, last_name, position, email, phone, address, department, salary, hire_date, termination_date, is_active, created_date, updated_date, manager_id)
VALUES (3, 'Thomas', 'Anderson', 'CTO', 'thomas.a@company.com', '5553334444', '300 Tech Park, New York, NY 10001', 'Technology', 220000, TO_DATE('2012-05-10', 'YYYY-MM-DD'), NULL, 1, TO_TIMESTAMP('2012-05-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-01 14:45:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO employee (employee_id, first_name, last_name, position, email, phone, address, department, salary, hire_date, termination_date, is_active, created_date, updated_date, manager_id)
VALUES (4, 'Patricia', 'Thomas', 'Sales Manager', 'patricia.t@company.com', '5554445555', '400 Sales St, New York, NY 10001', 'Sales', 120000, TO_DATE('2013-07-05', 'YYYY-MM-DD'), NULL, 1, TO_TIMESTAMP('2013-07-05 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-09-15 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO employee (employee_id, first_name, last_name, position, email, phone, address, department, salary, hire_date, termination_date, is_active, created_date, updated_date, manager_id)
VALUES (5, 'Christopher', 'Jackson', 'Marketing Director', 'christopher.j@company.com', '5555556666', '500 Marketing Dr, New York, NY 10001', 'Marketing', 110000, TO_DATE('2014-09-12', 'YYYY-MM-DD'), NULL, 1, TO_TIMESTAMP('2014-09-12 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-09-01 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO employee (employee_id, first_name, last_name, position, email, phone, address, department, salary, hire_date, termination_date, is_active, created_date, updated_date, manager_id)
VALUES (6, 'Linda', 'White', 'HR Manager', 'linda.w@company.com', '5556667777', '600 HR Lane, New York, NY 10001', 'Human Resources', 95000, TO_DATE('2015-11-08', 'YYYY-MM-DD'), NULL, 1, TO_TIMESTAMP('2015-11-08 14:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-15 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO employee (employee_id, first_name, last_name, position, email, phone, address, department, salary, hire_date, termination_date, is_active, created_date, updated_date, manager_id)
VALUES (7, 'Daniel', 'Harris', 'IT Manager', 'daniel.h@company.com', '5557778888', '700 IT Center, New York, NY 10001', 'IT', 105000, TO_DATE('2016-02-14', 'YYYY-MM-DD'), NULL, 1, TO_TIMESTAMP('2016-02-14 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-01 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 3);
INSERT INTO employee (employee_id, first_name, last_name, position, email, phone, address, department, salary, hire_date, termination_date, is_active, created_date, updated_date, manager_id)
VALUES (8, 'Barbara', 'Martin', 'Customer Service Manager', 'barbara.m@company.com', '5558889999', '800 Service Rd, New York, NY 10001', 'Customer Service', 90000, TO_DATE('2017-04-18', 'YYYY-MM-DD'), NULL, 1, TO_TIMESTAMP('2017-04-18 16:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-15 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO employee (employee_id, first_name, last_name, position, email, phone, address, department, salary, hire_date, termination_date, is_active, created_date, updated_date, manager_id)
VALUES (9, 'Paul', 'Thompson', 'Warehouse Manager', 'paul.t@company.com', '5559990000', '900 Warehouse Ave, New York, NY 10001', 'Operations', 85000, TO_DATE('2018-06-22', 'YYYY-MM-DD'), NULL, 1, TO_TIMESTAMP('2018-06-22 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-01 14:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO employee (employee_id, first_name, last_name, position, email, phone, address, department, salary, hire_date, termination_date, is_active, created_date, updated_date, manager_id)
VALUES (10, 'Nancy', 'Garcia', 'Accountant', 'nancy.g@company.com', '5550001111', '1000 Accounting Blvd, New York, NY 10001', 'Finance', 80000, TO_DATE('2019-08-30', 'YYYY-MM-DD'), NULL, 1, TO_TIMESTAMP('2019-08-30 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-06-15 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2);

COMMIT;

-- Vendor Table
INSERT INTO vendor (vendor_id, vendor_name, phone, email, address_line, city, state, postal_code, country, website, vendor_type, contract_start_date, contract_end_date, is_active, created_date, last_updated, account_manager_id)
VALUES (1, 'Tech Solutions Inc', '8001112222', 'sales@techsolutions.com', '123 Tech Blvd', 'San Francisco', 'CA', '94101', 'USA', 'www.techsolutions.com', 'Electronics', TO_DATE('2018-01-10', 'YYYY-MM-DD'), TO_DATE('2025-01-10', 'YYYY-MM-DD'), 1, TO_TIMESTAMP('2018-01-10 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-01-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3);
INSERT INTO vendor (vendor_id, vendor_name, phone, email, address_line, city, state, postal_code, country, website, vendor_type, contract_start_date, contract_end_date, is_active, created_date, last_updated, account_manager_id)
VALUES (2, 'Fashion Forward', '8002223333', 'orders@fashionforward.com', '456 Style Ave', 'New York', 'NY', '10001', 'USA', 'www.fashionforward.com', 'Apparel', TO_DATE('2019-03-15', 'YYYY-MM-DD'), TO_DATE('2026-03-15', 'YYYY-MM-DD'), 1, TO_TIMESTAMP('2019-03-15 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-03-15 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4);
INSERT INTO vendor (vendor_id, vendor_name, phone, email, address_line, city, state, postal_code, country, website, vendor_type, contract_start_date, contract_end_date, is_active, created_date, last_updated, account_manager_id)
VALUES (3, 'Home Essentials', '8003334444', 'support@homeessentials.com', '789 Comfort Ln', 'Chicago', 'IL', '60601', 'USA', 'www.homeessentials.com', 'Home Goods', TO_DATE('2017-05-20', 'YYYY-MM-DD'), TO_DATE('2024-05-20', 'YYYY-MM-DD'), 1, TO_TIMESTAMP('2017-05-20 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-05-20 12:45:00', 'YYYY-MM-DD HH24:MI:SS'), 5);
INSERT INTO vendor (vendor_id, vendor_name, phone, email, address_line, city, state, postal_code, country, website, vendor_type, contract_start_date, contract_end_date, is_active, created_date, last_updated, account_manager_id)
VALUES (4, 'Book World', '8004445555', 'info@bookworld.com', '321 Knowledge Dr', 'Boston', 'MA', '02101', 'USA', 'www.bookworld.com', 'Books', TO_DATE('2020-07-25', 'YYYY-MM-DD'), TO_DATE('2027-07-25', 'YYYY-MM-DD'), 1, TO_TIMESTAMP('2020-07-25 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-25 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 6);
INSERT INTO vendor (vendor_id, vendor_name, phone, email, address_line, city, state, postal_code, country, website, vendor_type, contract_start_date, contract_end_date, is_active, created_date, last_updated, account_manager_id)
VALUES (5, 'Toy Masters', '8005556666', 'sales@toymasters.com', '654 Play St', 'Seattle', 'WA', '98101', 'USA', 'www.toymasters.com', 'Toys', TO_DATE('2018-09-30', 'YYYY-MM-DD'), TO_DATE('2025-09-30', 'YYYY-MM-DD'), 1, TO_TIMESTAMP('2018-09-30 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-09-30 15:15:00', 'YYYY-MM-DD HH24:MI:SS'), 7);
INSERT INTO vendor (vendor_id, vendor_name, phone, email, address_line, city, state, postal_code, country, website, vendor_type, contract_start_date, contract_end_date, is_active, created_date, last_updated, account_manager_id)
VALUES (6, 'Sports Gear Co', '8006667777', 'orders@sportsgear.com', '987 Fitness Way', 'Denver', 'CO', '80201', 'USA', 'www.sportsgear.com', 'Sporting Goods', TO_DATE('2019-11-05', 'YYYY-MM-DD'), TO_DATE('2026-11-05', 'YYYY-MM-DD'), 1, TO_TIMESTAMP('2019-11-05 15:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-05 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 8);
INSERT INTO vendor (vendor_id, vendor_name, phone, email, address_line, city, state, postal_code, country, website, vendor_type, contract_start_date, contract_end_date, is_active, created_date, last_updated, account_manager_id)
VALUES (7, 'Beauty Supply', '8007778888', 'customerservice@beautysupply.com', '159 Glamour Rd', 'Miami', 'FL', '33101', 'USA', 'www.beautysupply.com', 'Beauty', TO_DATE('2020-01-10', 'YYYY-MM-DD'), TO_DATE('2027-01-10', 'YYYY-MM-DD'), 1, TO_TIMESTAMP('2020-01-10 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-01-10 17:45:00', 'YYYY-MM-DD HH24:MI:SS'), 9);
INSERT INTO vendor (vendor_id, vendor_name, phone, email, address_line, city, state, postal_code, country, website, vendor_type, contract_start_date, contract_end_date, is_active, created_date, last_updated, account_manager_id)
VALUES (8, 'Gourmet Foods', '8008889999', 'sales@gourmetfoods.com', '753 Taste Blvd', 'Austin', 'TX', '78701', 'USA', 'www.gourmetfoods.com', 'Food', TO_DATE('2017-03-15', 'YYYY-MM-DD'), TO_DATE('2024-03-15', 'YYYY-MM-DD'), 1, TO_TIMESTAMP('2017-03-15 17:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-03-15 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 10);
INSERT INTO vendor (vendor_id, vendor_name, phone, email, address_line, city, state, postal_code, country, website, vendor_type, contract_start_date, contract_end_date, is_active, created_date, last_updated, account_manager_id)
VALUES (9, 'Auto Parts Direct', '8009990000', 'support@autopartsdirect.com', '426 Engine St', 'Detroit', 'MI', '48201', 'USA', 'www.autopartsdirect.com', 'Automotive', TO_DATE('2018-05-20', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'), 1, TO_TIMESTAMP('2018-05-20 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-05-20 19:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO vendor (vendor_id, vendor_name, phone, email, address_line, city, state, postal_code, country, website, vendor_type, contract_start_date, contract_end_date, is_active, created_date, last_updated, account_manager_id)
VALUES (10, 'Health Plus', '8000001111', 'info@healthplus.com', '864 Wellness Ave', 'Portland', 'OR', '97201', 'USA', 'www.healthplus.com', 'Health', TO_DATE('2019-07-25', 'YYYY-MM-DD'), TO_DATE('2026-07-25', 'YYYY-MM-DD'), 1, TO_TIMESTAMP('2019-07-25 19:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-25 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2);

COMMIT;


-- Product Table
INSERT INTO product (product_id, product_name, product_description, price, stock_quantity, category_id, vendor_id, product_status, discount_price, created_date, last_updated, sku)
VALUES (1, 'Smartphone X', 'Latest smartphone with advanced features', 999.99, 100, 1, 1, 'Active', 899.99, TO_TIMESTAMP('2022-01-15 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-15 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMX-1001');
INSERT INTO product (product_id, product_name, product_description, price, stock_quantity, category_id, vendor_id, product_status, discount_price, created_date, last_updated, sku)
VALUES (2, 'Laptop Pro', 'High-performance laptop for professionals', 1499.99, 50, 1, 1, 'Active', NULL, TO_TIMESTAMP('2022-02-20 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-10 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'LP-2002');
INSERT INTO product (product_id, product_name, product_description, price, stock_quantity, category_id, vendor_id, product_status, discount_price, created_date, last_updated, sku)
VALUES (3, 'Wireless Headphones', 'Noise-cancelling Bluetooth headphones', 199.99, 200, 1, 1, 'Active', 179.99, TO_TIMESTAMP('2022-03-10 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-05 12:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'WH-3003');
INSERT INTO product (product_id, product_name, product_description, price, stock_quantity, category_id, vendor_id, product_status, discount_price, created_date, last_updated, sku)
VALUES (4, 'Men''s Casual Shirt', 'Comfortable cotton shirt for everyday wear', 29.99, 300, 2, 2, 'Active', 24.99, TO_TIMESTAMP('2022-04-05 12:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-30 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'MCS-4004');
INSERT INTO product (product_id, product_name, product_description, price, stock_quantity, category_id, vendor_id, product_status, discount_price, created_date, last_updated, sku)
VALUES (5, 'Women''s Jeans', 'Stylish denim jeans with stretch', 49.99, 250, 2, 2, 'Active', NULL, TO_TIMESTAMP('2022-05-12 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-25 14:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'WJ-5005');
INSERT INTO product (product_id, product_name, product_description, price, stock_quantity, category_id, vendor_id, product_status, discount_price, created_date, last_updated, sku)
VALUES (6, 'Coffee Table', 'Modern wooden coffee table', 149.99, 75, 3, 3, 'Active', 129.99, TO_TIMESTAMP('2022-06-18 14:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-20 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'CT-6006');
INSERT INTO product (product_id, product_name, product_description, price, stock_quantity, category_id, vendor_id, product_status, discount_price, created_date, last_updated, sku)
VALUES (7, 'Bestseller Novel', 'Award-winning fiction book', 14.99, 500, 4, 4, 'Active', 12.99, TO_TIMESTAMP('2022-07-22 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-15 16:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'BN-7007');
INSERT INTO product (product_id, product_name, product_description, price, stock_quantity, category_id, vendor_id, product_status, discount_price, created_date, last_updated, sku)
VALUES (8, 'Board Game', 'Family strategy game for 2-4 players', 24.99, 150, 5, 5, 'Active', NULL, TO_TIMESTAMP('2022-08-30 16:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-10 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'BG-8008');
INSERT INTO product (product_id, product_name, product_description, price, stock_quantity, category_id, vendor_id, product_status, discount_price, created_date, last_updated, sku)
VALUES (9, 'Yoga Mat', 'Non-slip premium yoga mat', 29.99, 180, 6, 6, 'Active', 26.99, TO_TIMESTAMP('2022-09-14 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-05 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'YM-9009');
INSERT INTO product (product_id, product_name, product_description, price, stock_quantity, category_id, vendor_id, product_status, discount_price, created_date, last_updated, sku)
VALUES (10, 'Vitamin C Supplement', 'High-potency immune support', 19.99, 400, 10, 10, 'Active', 17.99, TO_TIMESTAMP('2022-10-25 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-09-30 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'VC-1010');

COMMIT;

-- Customer Order Table
INSERT INTO customer_order (order_id, customer_id, order_date, required_date, status, employee_id, shipped_date, subtotal, tax_amount, shipping_amount, total_amount, payment_method, shipping_method, tracking_number)
VALUES (1, 1, TO_DATE('2023-01-05', 'YYYY-MM-DD'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'Delivered', 4, TO_TIMESTAMP('2023-01-06 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 999.99, 79.99, 9.99, 1089.97, 'Credit Card', 'Standard Shipping', 'UPS123456789');
INSERT INTO customer_order (order_id, customer_id, order_date, required_date, status, employee_id, shipped_date, subtotal, tax_amount, shipping_amount, total_amount, payment_method, shipping_method, tracking_number)
VALUES (2, 2, TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Shipped', 4, TO_TIMESTAMP('2023-01-11 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1499.99, 119.99, 0.00, 1619.98, 'PayPal', 'Free Shipping', 'FEDEX234567890');
INSERT INTO customer_order (order_id, customer_id, order_date, required_date, status, employee_id, shipped_date, subtotal, tax_amount, shipping_amount, total_amount, payment_method, shipping_method, tracking_number)
VALUES (3, 3, TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_DATE('2023-01-20', 'YYYY-MM-DD'), 'Pending', 5, NULL, 199.99, 15.99, 5.99, 221.97, 'Debit Card', 'Express Shipping', NULL);
INSERT INTO customer_order (order_id, customer_id, order_date, required_date, status, employee_id, shipped_date, subtotal, tax_amount, shipping_amount, total_amount, payment_method, shipping_method, tracking_number)
VALUES (4, 4, TO_DATE('2023-01-20', 'YYYY-MM-DD'), TO_DATE('2023-01-25', 'YYYY-MM-DD'), 'Delivered', 5, TO_TIMESTAMP('2023-01-21 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), 79.98, 6.39, 0.00, 86.37, 'Credit Card', 'Free Shipping', 'USPS345678901');
INSERT INTO customer_order (order_id, customer_id, order_date, required_date, status, employee_id, shipped_date, subtotal, tax_amount, shipping_amount, total_amount, payment_method, shipping_method, tracking_number)
VALUES (5, 5, TO_DATE('2023-01-25', 'YYYY-MM-DD'), TO_DATE('2023-01-30', 'YYYY-MM-DD'), 'Shipped', 6, TO_TIMESTAMP('2023-01-26 12:15:00', 'YYYY-MM-DD HH24:MI:SS'), 149.99, 11.99, 19.99, 181.97, 'Bank Transfer', '2-Day Shipping', 'UPS456789012');
INSERT INTO customer_order (order_id, customer_id, order_date, required_date, status, employee_id, shipped_date, subtotal, tax_amount, shipping_amount, total_amount, payment_method, shipping_method, tracking_number)
VALUES (6, 6, TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2023-02-06', 'YYYY-MM-DD'), 'Delivered', 6, TO_TIMESTAMP('2023-02-02 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 24.99, 1.99, 0.00, 26.98, 'PayPal', 'Standard Shipping', 'USPS567890123');
INSERT INTO customer_order (order_id, customer_id, order_date, required_date, status, employee_id, shipped_date, subtotal, tax_amount, shipping_amount, total_amount, payment_method, shipping_method, tracking_number)
VALUES (7, 7, TO_DATE('2023-02-05', 'YYYY-MM-DD'), TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'Cancelled', 7, NULL, 29.99, 2.39, 4.99, 37.37, 'Credit Card', 'Express Shipping', NULL);
INSERT INTO customer_order (order_id, customer_id, order_date, required_date, status, employee_id, shipped_date, subtotal, tax_amount, shipping_amount, total_amount, payment_method, shipping_method, tracking_number)
VALUES (8, 8, TO_DATE('2023-02-10', 'YYYY-MM-DD'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'Pending', 7, NULL, 19.99, 1.59, 0.00, 21.58, 'Debit Card', 'Free Shipping', NULL);
INSERT INTO customer_order (order_id, customer_id, order_date, required_date, status, employee_id, shipped_date, subtotal, tax_amount, shipping_amount, total_amount, payment_method, shipping_method, tracking_number)
VALUES (9, 9, TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'Shipped', 8, TO_TIMESTAMP('2023-02-16 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 199.99, 15.99, 9.99, 225.97, 'Credit Card', 'Standard Shipping', 'FEDEX678901234');
INSERT INTO customer_order (order_id, customer_id, order_date, required_date, status, employee_id, shipped_date, subtotal, tax_amount, shipping_amount, total_amount, payment_method, shipping_method, tracking_number)
VALUES (10, 10, TO_DATE('2023-02-20', 'YYYY-MM-DD'), TO_DATE('2023-02-25', 'YYYY-MM-DD'), 'Delivered', 8, TO_TIMESTAMP('2023-02-21 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 49.99, 3.99, 0.00, 53.98, 'PayPal', 'Free Shipping', 'USPS789012345');

COMMIT;


-- Order Detail Table
INSERT INTO order_detail (order_detail_id, order_id, product_id, quantity, unit_price, discount, created_at)
VALUES (1, 1, 1, 1, 999.99, 0.00, TO_TIMESTAMP('2023-01-05 10:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO order_detail (order_detail_id, order_id, product_id, quantity, unit_price, discount, created_at)
VALUES (2, 2, 2, 1, 1499.99, 0.00, TO_TIMESTAMP('2023-01-10 11:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO order_detail (order_detail_id, order_id, product_id, quantity, unit_price, discount, created_at)
VALUES (3, 3, 3, 1, 199.99, 0.00, TO_TIMESTAMP('2023-01-15 12:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO order_detail (order_detail_id, order_id, product_id, quantity, unit_price, discount, created_at)
VALUES (4, 4, 4, 2, 29.99, 5.00, TO_TIMESTAMP('2023-01-20 13:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO order_detail (order_detail_id, order_id, product_id, quantity, unit_price, discount, created_at)
VALUES (5, 4, 5, 1, 49.99, 0.00, TO_TIMESTAMP('2023-01-20 13:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO order_detail (order_detail_id, order_id, product_id, quantity, unit_price, discount, created_at)
VALUES (6, 5, 6, 1, 149.99, 20.00, TO_TIMESTAMP('2023-01-25 14:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO order_detail (order_detail_id, order_id, product_id, quantity, unit_price, discount, created_at)
VALUES (7, 6, 8, 1, 24.99, 0.00, TO_TIMESTAMP('2023-02-01 15:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO order_detail (order_detail_id, order_id, product_id, quantity, unit_price, discount, created_at)
VALUES (8, 7, 9, 1, 29.99, 3.00, TO_TIMESTAMP('2023-02-05 16:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO order_detail (order_detail_id, order_id, product_id, quantity, unit_price, discount, created_at)
VALUES (9, 8, 10, 1, 19.99, 2.00, TO_TIMESTAMP('2023-02-10 17:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO order_detail (order_detail_id, order_id, product_id, quantity, unit_price, discount, created_at)
VALUES (10, 9, 3, 1, 199.99, 0.00, TO_TIMESTAMP('2023-02-15 18:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO order_detail (order_detail_id, order_id, product_id, quantity, unit_price, discount, created_at)
VALUES (11, 10, 5, 1, 49.99, 0.00, TO_TIMESTAMP('2023-02-20 19:45:00', 'YYYY-MM-DD HH24:MI:SS'));

COMMIT;


-- Shipment Table
INSERT INTO shipment (shipment_id, order_id, tracking_number, carrier, shipping_method, shipping_cost, estimated_delivery, actual_shipping_date, actual_delivery_date, delivery_status, notes)
VALUES (1, 1, 'UPS123456789', 'UPS', 'Standard Shipping', 9.99, TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_TIMESTAMP('2023-01-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-01-10 14:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Delivered', 'Left at front door');
INSERT INTO shipment (shipment_id, order_id, tracking_number, carrier, shipping_method, shipping_cost, estimated_delivery, actual_shipping_date, actual_delivery_date, delivery_status, notes)
VALUES (2, 2, 'FEDEX234567890', 'FedEx', 'Free Shipping', 0.00, TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_TIMESTAMP('2023-01-15 09:20:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'In Transit', 'Signature required');
INSERT INTO shipment (shipment_id, order_id, tracking_number, carrier, shipping_method, shipping_cost, estimated_delivery, actual_shipping_date, actual_delivery_date, delivery_status, notes)
VALUES (3, 4, 'USPS345678901', 'USPS', 'Priority Mail', 0.00, TO_DATE('2023-01-25', 'YYYY-MM-DD'), TO_TIMESTAMP('2023-01-25 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-01-25 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Delivered', 'Delivered to mailbox');
INSERT INTO shipment (shipment_id, order_id, tracking_number, carrier, shipping_method, shipping_cost, estimated_delivery, actual_shipping_date, actual_delivery_date, delivery_status, notes)
VALUES (4, 5, 'UPS456789012', 'UPS', '2-Day Shipping', 19.99, TO_DATE('2023-01-30', 'YYYY-MM-DD'), TO_TIMESTAMP('2023-01-30 13:15:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'Shipped', 'Fragile - handle with care');
INSERT INTO shipment (shipment_id, order_id, tracking_number, carrier, shipping_method, shipping_cost, estimated_delivery, actual_shipping_date, actual_delivery_date, delivery_status, notes)
VALUES (5, 6, 'USPS567890123', 'USPS', 'First Class', 0.00, TO_DATE('2023-02-06', 'YYYY-MM-DD'), TO_TIMESTAMP('2023-02-06 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-02-06 12:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Delivered', 'Left with neighbor');
INSERT INTO shipment (shipment_id, order_id, tracking_number, carrier, shipping_method, shipping_cost, estimated_delivery, actual_shipping_date, actual_delivery_date, delivery_status, notes)
VALUES (6, 9, 'FEDEX678901234', 'FedEx', 'Ground Shipping', 9.99, TO_DATE('2023-02-20', 'YYYY-MM-DD'), TO_TIMESTAMP('2023-02-20 10:10:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'Shipped', 'No special instructions');
INSERT INTO shipment (shipment_id, order_id, tracking_number, carrier, shipping_method, shipping_cost, estimated_delivery, actual_shipping_date, actual_delivery_date, delivery_status, notes)
VALUES (7, 10, 'USPS789012345', 'USPS', 'Priority Mail', 0.00, TO_DATE('2023-02-25', 'YYYY-MM-DD'), TO_TIMESTAMP('2023-02-25 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-02-25 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Delivered', 'Delivered to front porch');
INSERT INTO shipment (shipment_id, order_id, tracking_number, carrier, shipping_method, shipping_cost, estimated_delivery, actual_shipping_date, actual_delivery_date, delivery_status, notes)
VALUES (8, 3, 'N/A', 'UPS', 'Express Shipping', 5.99, TO_DATE('2023-01-20', 'YYYY-MM-DD'), NULL, NULL, 'Pending', 'Awaiting stock');
INSERT INTO shipment (shipment_id, order_id, tracking_number, carrier, shipping_method, shipping_cost, estimated_delivery, actual_shipping_date, actual_delivery_date, delivery_status, notes)
VALUES (9, 7, NULL, 'USPS', 'Express Shipping', 4.99, TO_DATE('2023-02-10', 'YYYY-MM-DD'), TO_DATE('2023-02-10', 'YYYY-MM-DD'), NULL, 'Returned', 'Order cancelled by customer');
INSERT INTO shipment (shipment_id, order_id, tracking_number, carrier, shipping_method, shipping_cost, estimated_delivery, actual_shipping_date, actual_delivery_date, delivery_status, notes)
VALUES (10, 8, NULL, 'FedEx', 'Free Shipping', 0.00, TO_DATE('2023-02-15', 'YYYY-MM-DD'), NULL, NULL, 'Pending', 'Payment processing');

COMMIT;

-- Shopping Cart Table
INSERT INTO shopping_cart (cart_item_id, customer_id, product_id, quantity, added_at, updated_at, is_active, session_id)
VALUES (1, 1, 2, 1, TO_TIMESTAMP('2023-11-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'SESS123456789');
INSERT INTO shopping_cart (cart_item_id, customer_id, product_id, quantity, added_at, updated_at, is_active, session_id)
VALUES (2, 2, 3, 2, TO_TIMESTAMP('2023-11-14 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-14 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'SESS234567890');
INSERT INTO shopping_cart (cart_item_id, customer_id, product_id, quantity, added_at, updated_at, is_active, session_id)
VALUES (3, 3, 4, 1, TO_TIMESTAMP('2023-11-13 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-13 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'SESS345678901');
INSERT INTO shopping_cart (cart_item_id, customer_id, product_id, quantity, added_at, updated_at, is_active, session_id)
VALUES (4, 4, 5, 1, TO_TIMESTAMP('2023-11-12 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-12 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'SESS456789012');
INSERT INTO shopping_cart (cart_item_id, customer_id, product_id, quantity, added_at, updated_at, is_active, session_id)
VALUES (5, 5, 6, 1, TO_TIMESTAMP('2023-11-11 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-11 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'SESS567890123');
INSERT INTO shopping_cart (cart_item_id, customer_id, product_id, quantity, added_at, updated_at, is_active, session_id)
VALUES (6, 6, 7, 1, TO_TIMESTAMP('2023-11-10 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-10 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'SESS678901234');
INSERT INTO shopping_cart (cart_item_id, customer_id, product_id, quantity, added_at, updated_at, is_active, session_id)
VALUES (7, 7, 8, 1, TO_TIMESTAMP('2023-11-09 15:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-09 15:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'SESS789012345');
INSERT INTO shopping_cart (cart_item_id, customer_id, product_id, quantity, added_at, updated_at, is_active, session_id)
VALUES (8, 8, 9, 2, TO_TIMESTAMP('2023-11-08 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-08 16:45:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'SESS890123456');
INSERT INTO shopping_cart (cart_item_id, customer_id, product_id, quantity, added_at, updated_at, is_active, session_id)
VALUES (9, 9, 10, 1, TO_TIMESTAMP('2023-11-07 17:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-07 17:45:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'SESS901234567');
INSERT INTO shopping_cart (cart_item_id, customer_id, product_id, quantity, added_at, updated_at, is_active, session_id)
VALUES (10, 10, 1, 1, TO_TIMESTAMP('2023-11-06 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-06 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'SESS012345678');

COMMIT;

-- Wishlist Table
INSERT INTO wishlist (wishlist_item_id, customer_id, product_id, added_at, priority, notes)
VALUES (1, 1, 3, TO_TIMESTAMP('2023-10-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'Birthday gift idea');
INSERT INTO wishlist (wishlist_item_id, customer_id, product_id, added_at, priority, notes)
VALUES (2, 2, 4, TO_TIMESTAMP('2023-10-14 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Need for work');
INSERT INTO wishlist (wishlist_item_id, customer_id, product_id, added_at, priority, notes)
VALUES (3, 3, 5, TO_TIMESTAMP('2023-10-13 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 'Casual wear');
INSERT INTO wishlist (wishlist_item_id, customer_id, product_id, added_at, priority, notes)
VALUES (4, 4, 6, TO_TIMESTAMP('2023-10-12 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'New living room furniture');
INSERT INTO wishlist (wishlist_item_id, customer_id, product_id, added_at, priority, notes)
VALUES (5, 5, 7, TO_TIMESTAMP('2023-10-11 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 'Book club selection');
INSERT INTO wishlist (wishlist_item_id, customer_id, product_id, added_at, priority, notes)
VALUES (6, 6, 8, TO_TIMESTAMP('2023-10-10 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Family game night');
INSERT INTO wishlist (wishlist_item_id, customer_id, product_id, added_at, priority, notes)
VALUES (7, 7, 9, TO_TIMESTAMP('2023-10-09 15:15:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 'New Year fitness resolution');
INSERT INTO wishlist (wishlist_item_id, customer_id, product_id, added_at, priority, notes)
VALUES (8, 8, 10, TO_TIMESTAMP('2023-10-08 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'Immune support');
INSERT INTO wishlist (wishlist_item_id, customer_id, product_id, added_at, priority, notes)
VALUES (9, 9, 1, TO_TIMESTAMP('2023-10-07 17:45:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Upgrade phone');
INSERT INTO wishlist (wishlist_item_id, customer_id, product_id, added_at, priority, notes)
VALUES (10, 10, 2, TO_TIMESTAMP('2023-10-06 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 'Work laptop replacement');

COMMIT;

-- Return Table
INSERT INTO return (return_id, order_id, customer_id, product_id, return_request_date, return_reason, return_quantity, refund_amount, refund_method, status, resolution_date, notes)
VALUES (1, 7, 7, 9, TO_TIMESTAMP('2023-02-07 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Changed mind', 1, 29.99, 'Original Payment', 'Completed', TO_TIMESTAMP('2023-02-14 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Refund processed successfully');
INSERT INTO return (return_id, order_id, customer_id, product_id, return_request_date, return_reason, return_quantity, refund_amount, refund_method, status, resolution_date, notes)
VALUES (2, 3, 3, 3, TO_TIMESTAMP('2023-01-18 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Defective product', 1, 199.99, 'Store Credit', 'Approved', TO_TIMESTAMP('2023-01-25 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Issued store credit');
INSERT INTO return (return_id, order_id, customer_id, product_id, return_request_date, return_reason, return_quantity, refund_amount, refund_method, status, resolution_date, notes)
VALUES (3, 1, 1, 1, TO_TIMESTAMP('2023-01-08 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Wrong item shipped', 1, 999.99, 'Original Payment', 'Processing', NULL, 'Awaiting return shipment');
INSERT INTO return (return_id, order_id, customer_id, product_id, return_request_date, return_reason, return_quantity, refund_amount, refund_method, status, resolution_date, notes)
VALUES (4, 4, 4, 4, TO_TIMESTAMP('2023-01-23 13:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Size too large', 1, 29.99, 'Store Credit', 'Requested', NULL, 'Pending approval');
INSERT INTO return (return_id, order_id, customer_id, product_id, return_request_date, return_reason, return_quantity, refund_amount, refund_method, status, resolution_date, notes)
VALUES (5, 6, 6, 8, TO_TIMESTAMP('2023-02-03 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Missing pieces', 1, 24.99, 'Original Payment', 'Approved', TO_TIMESTAMP('2023-02-10 16:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Full refund issued');
INSERT INTO return (return_id, order_id, customer_id, product_id, return_request_date, return_reason, return_quantity, refund_amount, refund_method, status, resolution_date, notes)
VALUES (6, 2, 2, 2, TO_TIMESTAMP('2023-01-13 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Damaged during shipping', 1, 1499.99, 'Original Payment', 'Completed', TO_TIMESTAMP('2023-01-20 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Replacement sent');
INSERT INTO return (return_id, order_id, customer_id, product_id, return_request_date, return_reason, return_quantity, refund_amount, refund_method, status, resolution_date, notes)
VALUES (7, 5, 5, 6, TO_TIMESTAMP('2023-01-28 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Color mismatch', 1, 149.99, 'Store Credit', 'Approved', TO_TIMESTAMP('2023-02-04 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Store credit issued');
INSERT INTO return (return_id, order_id, customer_id, product_id, return_request_date, return_reason, return_quantity, refund_amount, refund_method, status, resolution_date, notes)
VALUES (8, 9, 9, 3, TO_TIMESTAMP('2023-02-17 17:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Not as described', 1, 199.99, 'Original Payment', 'Processing', NULL, 'Quality inspection needed');
INSERT INTO return (return_id, order_id, customer_id, product_id, return_request_date, return_reason, return_quantity, refund_amount, refund_method, status, resolution_date, notes)
VALUES (9, 10, 10, 5, TO_TIMESTAMP('2023-02-22 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Poor fit', 1, 49.99, 'Store Credit', 'Requested', NULL, 'Awaiting return');
INSERT INTO return (return_id, order_id, customer_id, product_id, return_request_date, return_reason, return_quantity, refund_amount, refund_method, status, resolution_date, notes)
VALUES (10, 8, 8, 10, TO_TIMESTAMP('2023-02-12 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Allergic reaction', 1, 19.99, 'Original Payment', 'Completed', TO_TIMESTAMP('2023-02-19 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Refund processed');

COMMIT;

-- Payment Table
INSERT INTO payment (payment_id, order_id, customer_id, payment_reference, payment_date, payment_amount, payment_method, transaction_id, status, currency)
VALUES (1, 1, 1, 'PAY123456789', TO_TIMESTAMP('2023-01-05 10:35:00', 'YYYY-MM-DD HH24:MI:SS'), 1089.97, 'Credit Card', 'TXN123456789', 'Captured', 'USD');
INSERT INTO payment (payment_id, order_id, customer_id, payment_reference, payment_date, payment_amount, payment_method, transaction_id, status, currency)
VALUES (2, 2, 2, 'PAY234567890', TO_TIMESTAMP('2023-01-10 11:50:00', 'YYYY-MM-DD HH24:MI:SS'), 1619.98, 'PayPal', 'TXN234567890', 'Authorized', 'USD');
INSERT INTO payment (payment_id, order_id, customer_id, payment_reference, payment_date, payment_amount, payment_method, transaction_id, status, currency)
VALUES (3, 3, 3, 'PAY345678901', TO_TIMESTAMP('2023-01-15 12:05:00', 'YYYY-MM-DD HH24:MI:SS'), 221.97, 'Debit Card', 'TXN345678901', 'Pending', 'USD');
INSERT INTO payment (payment_id, order_id, customer_id, payment_reference, payment_date, payment_amount, payment_method, transaction_id, status, currency)
VALUES (4, 4, 4, 'PAY456789012', TO_TIMESTAMP('2023-01-20 13:20:00', 'YYYY-MM-DD HH24:MI:SS'), 86.37, 'Credit Card', 'TXN456789012', 'Captured', 'USD');
INSERT INTO payment (payment_id, order_id, customer_id, payment_reference, payment_date, payment_amount, payment_method, transaction_id, status, currency)
VALUES (5, 5, 5, 'PAY567890123', TO_TIMESTAMP('2023-01-25 14:35:00', 'YYYY-MM-DD HH24:MI:SS'), 181.97, 'Bank Transfer', 'TXN567890123', 'Authorized', 'USD');
INSERT INTO payment (payment_id, order_id, customer_id, payment_reference, payment_date, payment_amount, payment_method, transaction_id, status, currency)
VALUES (6, 6, 6, 'PAY678901234', TO_TIMESTAMP('2023-02-01 15:50:00', 'YYYY-MM-DD HH24:MI:SS'), 26.98, 'PayPal', 'TXN678901234', 'Captured', 'USD');
INSERT INTO payment (payment_id, order_id, customer_id, payment_reference, payment_date, payment_amount, payment_method, transaction_id, status, currency)
VALUES (7, 7, 7, 'PAY789012345', TO_TIMESTAMP('2023-02-05 16:05:00', 'YYYY-MM-DD HH24:MI:SS'), 37.37, 'Credit Card', 'TXN789012345', 'Voided', 'USD');
INSERT INTO payment (payment_id, order_id, customer_id, payment_reference, payment_date, payment_amount, payment_method, transaction_id, status, currency)
VALUES (8, 8, 8, 'PAY890123456', TO_TIMESTAMP('2023-02-10 17:20:00', 'YYYY-MM-DD HH24:MI:SS'), 21.58, 'Debit Card', 'TXN890123456', 'Pending', 'USD');
INSERT INTO payment (payment_id, order_id, customer_id, payment_reference, payment_date, payment_amount, payment_method, transaction_id, status, currency)
VALUES (9, 9, 9, 'PAY901234567', TO_TIMESTAMP('2023-02-15 18:35:00', 'YYYY-MM-DD HH24:MI:SS'), 225.97, 'Credit Card', 'TXN901234567', 'Authorized', 'USD');
INSERT INTO payment (payment_id, order_id, customer_id, payment_reference, payment_date, payment_amount, payment_method, transaction_id, status, currency)
VALUES (10, 10, 10, 'PAY012345678', TO_TIMESTAMP('2023-02-20 19:50:00', 'YYYY-MM-DD HH24:MI:SS'), 53.98, 'PayPal', 'TXN012345678', 'Captured', 'USD');

COMMIT;


-- Payment Method Details Table
INSERT INTO payment_method_details (payment_method_detail_id, payment_id, card_type, card_last_four, card_expiry, bank_name, bank_account_type, paypal_email, digital_wallet_type, created_date)
VALUES (1, 1, 'Visa', '1234', TO_DATE('2025-12-31', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, TO_TIMESTAMP('2023-01-05 10:35:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO payment_method_details (payment_method_detail_id, payment_id, card_type, card_last_four, card_expiry, bank_name, bank_account_type, paypal_email, digital_wallet_type, created_date)
VALUES (2, 2, NULL, NULL, NULL, NULL, NULL, 'emily.j@email.com', NULL, TO_TIMESTAMP('2023-01-10 11:50:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO payment_method_details (payment_method_detail_id, payment_id, card_type, card_last_four, card_expiry, bank_name, bank_account_type, paypal_email, digital_wallet_type, created_date)
VALUES (3, 3, 'Mastercard', '5678', TO_DATE('2024-10-31', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, TO_TIMESTAMP('2023-01-15 12:05:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO payment_method_details (payment_method_detail_id, payment_id, card_type, card_last_four, card_expiry, bank_name, bank_account_type, paypal_email, digital_wallet_type, created_date)
VALUES (4, 4, 'American Express', '9012', TO_DATE('2026-08-31', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, TO_TIMESTAMP('2023-01-20 13:20:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO payment_method_details (payment_method_detail_id, payment_id, card_type, card_last_four, card_expiry, bank_name, bank_account_type, paypal_email, digital_wallet_type, created_date)
VALUES (5, 5, NULL, NULL, NULL, 'Chase', 'Checking', NULL, NULL, TO_TIMESTAMP('2023-01-25 14:35:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO payment_method_details (payment_method_detail_id, payment_id, card_type, card_last_four, card_expiry, bank_name, bank_account_type, paypal_email, digital_wallet_type, created_date)
VALUES (6, 6, NULL, NULL, NULL, NULL, NULL, 'jessica.g@email.com', NULL, TO_TIMESTAMP('2023-02-01 15:50:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO payment_method_details (payment_method_detail_id, payment_id, card_type, card_last_four, card_expiry, bank_name, bank_account_type, paypal_email, digital_wallet_type, created_date)
VALUES (7, 7, 'Discover', '3456', TO_DATE('2025-06-30', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, TO_TIMESTAMP('2023-02-05 16:05:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO payment_method_details (payment_method_detail_id, payment_id, card_type, card_last_four, card_expiry, bank_name, bank_account_type, paypal_email, digital_wallet_type, created_date)
VALUES (8, 8, 'Visa', '7890', TO_DATE('2024-04-30', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, TO_TIMESTAMP('2023-02-10 17:20:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO payment_method_details (payment_method_detail_id, payment_id, card_type, card_last_four, card_expiry, bank_name, bank_account_type, paypal_email, digital_wallet_type, created_date)
VALUES (9, 9, 'Mastercard', '2345', TO_DATE('2026-02-28', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL, TO_TIMESTAMP('2023-02-15 18:35:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO payment_method_details (payment_method_detail_id, payment_id, card_type, card_last_four, card_expiry, bank_name, bank_account_type, paypal_email, digital_wallet_type, created_date)
VALUES (10, 10, NULL, NULL, NULL, NULL, NULL, 'elizabeth.m@email.com', NULL, TO_TIMESTAMP('2023-02-20 19:50:00', 'YYYY-MM-DD HH24:MI:SS'));

COMMIT;
