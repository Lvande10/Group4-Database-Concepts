-- Attempt to insert a customer with a duplicate email
INSERT INTO customer (customer_id, first_name, last_name, gender, email) 
VALUES (1, 'John', 'Doe', 'InvalidGender', 'john.doe@email.com');
 
 -- Attempt to insert category with duplicate name
INSERT INTO category (category_id, name, description)
VALUES (101, 'Clothing', 'Duplicate category name');

-- Attempt to insert an invalid gender value
INSERT INTO customer (customer_id, first_name, last_name, gender, email)
VALUES (102, 'Bob', 'Smith', 'Undefined', 'bob.smith@email.com');

-- Atempt to insert a user with a non-existent customer_id
INSERT INTO user_registration (user_id, customer_id, password)
VALUES (101, 999, 'testpassword123');

-- Attempt to insert a product with non-existent category_id and vendor_id
INSERT INTO product (product_id, product_name, price, stock_quantity, category_id, vendor_id) 
VALUES (201, 'Test Product', 29.99, 10, 9999, 8888);

-- Attempt to insert an employee with an invalid termination date
INSERT INTO employee (employee_id, first_name, last_name, position, email, hire_date, termination_date) 
VALUES (303, 'Olivia', 'Davis', 'Analyst', 'olivia.davis@email.com', TO_DATE('2025-04-01', 'YYYY-MM-DD'), TO_DATE('2025-03-31', 'YYYY-MM-DD'));

-- Attempt to insert a vendor with invalid contract dates
INSERT INTO vendor (vendor_id, vendor_name, phone, email, contract_start_date, contract_end_date) 
VALUES (401, 'ABC Supplies', '+1234567890', 'contact@abc.com', TO_DATE('2025-04-01', 'YYYY-MM-DD'), TO_DATE('2025-03-31', 'YYYY-MM-DD'));


-- Attempt to insert an order detail with an invalid discount
INSERT INTO order_detail (order_detail_id, order_id, product_id, quantity, unit_price, discount) 
VALUES (501, 1, 1, 2, 50.00, 60.00);

-- Attempt to insert an order with invalid total amount calculation
INSERT INTO customer_order (order_id, customer_id, order_date, status, subtotal, tax_amount, shipping_amount, total_amount) 
VALUES (601, 1, SYSDATE, 'Pending', 100.00, 10.00, 5.00, 110.00);