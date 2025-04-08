-- Question # 1
-- Search products by category name
SELECT PR.product_id, PR.product_name, PR.product_description, PR.price, PR.stock_quantity, PR.discount_price, PR.product_status 
FROM PRODUCT PR
LEFT JOIN CATEGORY on CATEGORY.category_id = pr.category_id
WHERE NAME LIKE 'Clothing';

----------------------------------------------------------------------------------------------------
-- Question # 2
-- Add an Item to the Shopping Cart
INSERT INTO shopping_cart (cart_item_id, customer_id, product_id, quantity, added_at, updated_at, is_active, session_id)
VALUES (12, 9, 3, 2, TO_TIMESTAMP('2023-11-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'SESS123456789');

--- Update the Quantity of an item in the cart
UPDATE shopping_cart
SET quantity = 3, updated_at = CURRENT_TIMESTAMP
WHERE cart_item_id = 1 AND customer_id = 1;

-- Remove an item from the Cart
DELETE FROM shopping_cart 
WHERE customer_ID = 9 AND PRODUCT_ID = 10;

-- Retrieve all items in a customer's shopping cart
SELECT sc.cart_item_id, sc.product_id, p.product_name, sc.quantity, p.price, sc.quantity * p.price AS total_price
FROM shopping_cart sc
left JOIN product p ON sc.product_id = p.product_id
WHERE sc.customer_id = 10 AND sc.is_active = 1;

-- Get total price of items in the cart for a customer
SELECT SUM(p.price * sc.quantity) AS total_cart_value
FROM shopping_cart sc
JOIN product p ON sc.product_id = p.product_id
WHERE sc.customer_id = 10 AND sc.is_active = 1;

-- Check if an item exists in the Cart - For example, product_id 1 and 5 are in cart so product_id 2 would return nothing
SELECT cart_item_id
FROM shopping_cart
WHERE customer_id = 10 AND product_id = 2 AND is_active = 1;

-- Activate/Deactivate a shopping cart item
UPDATE shopping_cart
SET is_active = 0
WHERE cart_item_id = 3 AND customer_id = 3;

-- Clear all items from the Cart
DELETE FROM shopping_cart
WHERE customer_id = 2;

-- Check cart item availability
SELECT stock_quantity
FROM product
WHERE product_id = 2;

-- Get Cart Summary for a specific customer
SELECT 
    SUM(p.price * sc.quantity) AS subtotal,
    SUM(p.price * sc.quantity) * 0.13 AS tax_amount,  
    SUM(p.price * sc.quantity) + (SUM(p.price * sc.quantity) * 0.13) AS total_amount
FROM shopping_cart sc
JOIN product p ON sc.product_id = p.product_id
WHERE sc.customer_id = 10 AND sc.is_active = 1;

-- Get active shopping Cart by session ID
SELECT sc.cart_item_id, sc.product_id, p.product_name, sc.quantity, p.price, sc.quantity * p.price AS total_price
FROM shopping_cart sc
JOIN product p ON sc.product_id = p.product_id
WHERE sc.session_id = 'SESS123456789' AND sc.is_active = 1;

----------------------------------------------------------------------------------------------------
-- Question # 3

-- User Registration 
-- First add new customer
INSERT INTO customer (customer_id, first_name, last_name, date_of_birth, gender, email, phone, address, city, state, postal_code, country, is_active, join_date, last_login) 
VALUES (11, 'Alice', 'Johnson', TO_DATE('1990-08-25', 'YYYY-MM-DD'), 'Female', 'alice.johnson@email.com', '+1 555 987 6543', '456 Elm St', 'Vancouver', 'British Columbia', 'V6B 1B4', 'Canada', 1, TO_TIMESTAMP('2022-05-12 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-15 14:30:00', 'YYYY-MM-DD HH24:MI:SS'));

--Then creat new user based on the new customer (customer ID)
INSERT INTO user_registration (user_id, customer_id, password, is_active, created_date, last_updated) 
VALUES (11, 11, 'Tn7#s8WzL!k2', 1, TO_TIMESTAMP(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'));

-- Deactivate Account user account
UPDATE user_registration
SET is_active = 0, last_updated = TO_TIMESTAMP(SYSDATE, 'YYYY-MM-DD HH24:MI:SS')
WHERE user_id = 7;

-- Check if user Exists (For example: user 14 does not exist)
SELECT COUNT(*) 
FROM user_registration
WHERE user_id = 14;


----------------------------------------------------------------------------------------------------

-- Question # 4

-- Have employees track shipping status by order ID (for example order id 4)
SELECT 
    c.first_name || ' ' || c.last_name AS customer_name,
    co.order_id,
    co.order_date,
    s.tracking_number,
    s.carrier,
    s.shipping_method,
    s.shipping_cost,
    s.estimated_delivery,
    s.actual_shipping_date,
    s.actual_delivery_date,
    s.delivery_status,
    s.notes
FROM 
    customer_order co
JOIN 
    shipment s ON co.order_id = s.order_id
JOIN 
    customer c ON co.customer_id = c.customer_id
WHERE 
    co.order_id = 4;


-- Have customers track shipping status by their order ID (for example order id 2)
SELECT 
    co.order_id,
    co.order_date,
    s.tracking_number,
    s.carrier,
    s.shipping_method,
    s.shipping_cost,
    s.estimated_delivery,
    s.actual_shipping_date,
    s.actual_delivery_date,
    s.delivery_status,
    s.notes
FROM 
    customer_order co
JOIN 
    shipment s ON co.order_id = s.order_id
WHERE 
   co.order_id = 2;  


-- Have employees track shipments by status (In Transit or Delivered)
SELECT 
    co.order_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    s.tracking_number,
    s.carrier,
    s.shipping_method,
    s.delivery_status,
    s.actual_shipping_date,
    s.actual_delivery_date,
    s.estimated_delivery,
    s.notes
FROM 
    shipment s
JOIN 
    customer_order co ON s.order_id = co.order_id
JOIN 
    customer c ON co.customer_id = c.customer_id
WHERE 
    s.delivery_status IN ('In Transit', 'Delivered') 
ORDER BY 
    s.actual_shipping_date DESC;


----------------------------------------------------------------------------------------------------
-- Question # 5
-- View vendors 
SELECT * FROM vendor;

-- View active/inactive vendors
SELECT vendor_id, vendor_name, phone, email, country, website, contract_start_date, contract_end_date, is_active
FROM vendor
WHERE is_active = 1;

-- Select a vendor by id
SELECT * FROM vendor WHERE vendor_id = 7;

--Search vendors by type
SELECT * FROM vendor WHERE vendor_type = 'Books';

-- Add new vendor
INSERT INTO vendor (vendor_id, vendor_name, phone, email, address_line, city, state, postal_code, country, website, vendor_type, contract_start_date, contract_end_date, is_active, created_date, last_updated, account_manager_id)
VALUES (11, 'Green Tech Ltd', '8003337777', 'contact@greentech.com', '456 Green St', 'Los Angeles', 'CA', '90001', 'USA', 'www.greentech.com', 'Renewable Energy', TO_DATE('2020-05-15', 'YYYY-MM-DD'), TO_DATE('2026-05-15', 'YYYY-MM-DD'), 1, SYSDATE, SYSDATE, 2);

-- Remove a vendor
DELETE FROM vendor WHERE vendor_id = 9;

-- Active/Deactive vendor 
UPDATE vendor
SET is_active = 0
WHERE vendor_id = 7;

-- Update a vendors information
UPDATE vendor
SET 
    vendor_name = 'Global Tech Solutions',
    phone = '987-654-3210',
    email = 'support@globaltech.com',
    address_line = '456 Elm Street',
    city = 'San Francisco',
    state = 'CA',
    postal_code = '94107',
    country = 'USA',
    website = 'www.globaltech.com',
    vendor_type = 'IT Services',
    contract_start_date = TO_DATE('2025-03-01', 'YYYY-MM-DD'),
    contract_end_date = TO_DATE('2026-03-01', 'YYYY-MM-DD'),
    is_active = 1,
    last_updated = SYSTIMESTAMP,
    account_manager_id = 9
WHERE vendor_id = 10;


----------------------------------------------------------------------------------------------------
-- Question # 6
-- Monthly sales report
SELECT 
    TO_CHAR(o.order_date, 'YYYY-MM') AS month,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_sales,
    AVG(o.total_amount) AS avg_order_value,
    COUNT(DISTINCT o.customer_id) AS unique_customers
FROM customer_order o
WHERE o.order_date BETWEEN TO_DATE('2023-01-01', 'YYYY-MM-DD') 
                        AND TO_DATE('2023-12-31', 'YYYY-MM-DD')
GROUP BY TO_CHAR(o.order_date, 'YYYY-MM')
ORDER BY month;


--- Revenue for a month
SELECT 
    TO_CHAR(o.order_date, 'YYYY-MM') AS month,
    SUM(o.subtotal) AS total_sales,
    SUM(o.tax_amount) AS total_tax 
FROM 
    customer_order o
WHERE 
     TO_CHAR(o.order_date, 'YYYY-MM') = '2023-01'  
GROUP BY 
    TO_CHAR(o.order_date, 'YYYY-MM')
ORDER BY 
    month DESC;
    
    
---  Number of orders per month
SELECT 
    TO_CHAR(o.order_date, 'YYYY-MM') AS month,
    COUNT(o.order_id) AS orders_processed
FROM 
    customer_order o
WHERE 
    TO_CHAR(o.order_date, 'YYYY-MM') = '2023-01'  
GROUP BY 
    TO_CHAR(o.order_date, 'YYYY-MM')
ORDER BY 
    month DESC;


-- Number of new customers per month
SELECT 
    TO_CHAR(c.join_date, 'YYYY-MM') AS month,
    COUNT(c.customer_id) AS new_customers
FROM 
    customer c
WHERE 
    TO_CHAR(c.join_date, 'YYYY-MM') = '2023-01'
GROUP BY 
    TO_CHAR(c.join_date, 'YYYY-MM')
ORDER BY 
    month DESC;


-- Products sold per month
SELECT 
    p.product_name,
    SUM(od.quantity) AS total_units_sold,
    SUM(od.quantity * od.unit_price) AS total_revenue
FROM 
    order_detail od
JOIN 
    product p ON od.product_id = p.product_id
JOIN 
    customer_order o ON od.order_id = o.order_id
WHERE 
    TO_CHAR(o.order_date, 'YYYY-MM') = '2023-01'  
GROUP BY 
    p.product_name
ORDER BY 
    total_revenue DESC;


-- Payment Methods used per month
SELECT 
    p.payment_method,
    COUNT(p.payment_id) AS payment_count,
    SUM(p.payment_amount) AS total_amount
FROM 
    payment p
JOIN 
    customer_order o ON p.order_id = o.order_id
WHERE 
    TO_CHAR(o.order_date, 'YYYY-MM') = '2023-01'  
GROUP BY 
    p.payment_method
ORDER BY 
    total_amount DESC;


-- Summary of shipping Status per month
SELECT 
    s.delivery_status,
    COUNT(s.shipment_id) AS shipment_count
FROM 
    shipment s
JOIN 
    customer_order o ON s.order_id = o.order_id
WHERE 
    TO_CHAR(o.order_date, 'YYYY-MM') = '2023-01'  
GROUP BY 
    s.delivery_status
ORDER BY 
    shipment_count DESC;


----------------------------------------------------------------------------------------------------
-- Question # 7
-- Summary for the top 5 products by total quantity ordered 

SELECT pr.product_id, pr.product_name, SUM(od.quantity) AS total_quantity_ordered
FROM order_detail od
JOIN product pr ON pr.product_id = od.product_id
GROUP BY pr.product_id, pr.product_name
ORDER BY total_quantity_ordered DESC
FETCH FIRST 5 ROWS ONLY;


----------------------------------------------------------------------------------------------------
-- Question # 8
-- Customer Order and spending classifications
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(od.quantity * od.unit_price) AS total_spent,
    COUNT(DISTINCT co.order_id) AS total_orders,  
    CASE
        WHEN SUM(od.quantity * od.unit_price) >= 900 THEN 'Premium'
        WHEN SUM(od.quantity * od.unit_price) BETWEEN 50 AND 1000 THEN 'Gold'
        ELSE 'Regular'
    END AS customer_category
FROM 
    customer c
JOIN 
    customer_order co ON c.customer_id = co.customer_id
JOIN 
    order_detail od ON co.order_id = od.order_id
JOIN 
    product p ON od.product_id = p.product_id
GROUP BY 
    c.customer_id, c.first_name, c.last_name
ORDER BY 
    total_spent DESC, total_orders DESC;



----------------------------------------------------------------------------------------------------
-- Question # 9
--List items on a specific customer's Wishlist (For example: customer 5)
SELECT 
    w.wishlist_item_id, 
    w.product_id, 
    p.product_name, 
    p.product_description, 
    p.price, 
    w.added_at, 
    w.priority, 
    w.notes
FROM 
    wishlist w
JOIN 
    product p ON w.product_id = p.product_id
WHERE 
    w.customer_id = 5
ORDER BY 
    w.priority DESC;


----------------------------------------------------------------------------------------------------
-- Question # 10
-- Start a return request
INSERT INTO return (return_id, order_id, customer_id, product_id, return_request_date, return_reason, return_quantity, refund_amount, refund_method, status, resolution_date, notes)
VALUES (11, 3, 3, 3, TO_TIMESTAMP('2023-01-18 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Defective product', 1, 199.99, 'Store Credit', 'Approved', TO_TIMESTAMP('2023-01-25 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Issued store credit');

-- Update inventory (restock product)
UPDATE product
SET stock_quantity = stock_quantity + 1
WHERE product_id = 3;

-- Update order status
UPDATE customer_order
SET status = 'Refunded'
WHERE order_id = 3;

-- View customer return history
SELECT r.return_id, 
       p.product_name, 
       r.return_quantity, 
       r.refund_amount, 
       r.status, 
       r.return_request_date
FROM return r
JOIN product p ON r.product_id = p.product_id
WHERE r.customer_id = 3
ORDER BY r.return_request_date DESC;



