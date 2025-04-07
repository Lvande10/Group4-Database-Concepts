-- Creating Categories table 
CREATE TABLE category (
    category_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL UNIQUE,
    description VARCHAR2(500),     
    is_active NUMBER(1) DEFAULT 1 CHECK (is_active IN (0,1)),
    created_date TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    updated_date TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL
);


-- Creating Customer table 
CREATE TABLE customer (
    customer_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    date_of_birth DATE,   
    gender VARCHAR2(20) CHECK (gender IN ('Male', 'Female', 'Prefer not to say')),
    email VARCHAR2(100) UNIQUE NOT NULL,
    phone VARCHAR2(20) UNIQUE,
    address VARCHAR2(255),
    city VARCHAR2(50),
    state VARCHAR2(50),
    postal_code VARCHAR2(20),
    country VARCHAR2(50),
    is_active NUMBER(1) DEFAULT 1 CHECK (is_active IN (0, 1)),
    join_date TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL, 
    last_login TIMESTAMP
);


-- Creating User Registration 
CREATE TABLE user_registration (
    user_id NUMBER PRIMARY KEY,
    customer_id NUMBER UNIQUE,
    password VARCHAR2(255) NOT NULL,
    is_active NUMBER(1) DEFAULT 1 CHECK (is_active IN (0,1)),
    created_date TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    last_updated TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

              
-- Creating Employee table 
CREATE TABLE employee (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    position VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    phone VARCHAR2(20),
    address VARCHAR2(255), 
    department VARCHAR2(100) NOT NULL,
    salary NUMBER(10,2) CHECK (salary >= 0),
    hire_date DATE DEFAULT SYSDATE NOT NULL,
    termination_date DATE,
    is_active NUMBER(1) DEFAULT 1 CHECK (is_active IN (0,1)),
    created_date TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    updated_date TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    manager_id NUMBER,
    FOREIGN KEY (manager_id) REFERENCES employee(employee_id),
    CONSTRAINT chk_termination_date CHECK (
        termination_date IS NULL OR 
        termination_date >= hire_date
    ),
    CONSTRAINT chk_valid_emp_email CHECK (email LIKE '%@%.%')
);


-- Creating Vendor table
CREATE TABLE vendor (
    vendor_id NUMBER PRIMARY KEY,
    vendor_name VARCHAR2(100) NOT NULL UNIQUE,
    phone VARCHAR2(20) NOT NULL UNIQUE,
    email VARCHAR2(100) NOT NULL UNIQUE,
    address_line VARCHAR2(100),
    city VARCHAR2(100),                                   
    state VARCHAR2(100),                                    
    postal_code VARCHAR2(20),                               
    country VARCHAR2(50),
    website VARCHAR2(255),
    vendor_type VARCHAR2(50), 
    contract_start_date DATE NOT NULL,
    contract_end_date DATE,
    is_active NUMBER(1) DEFAULT 1 CHECK (is_active IN (0,1)),
    created_date TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,   
    last_updated TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    account_manager_id NUMBER,
    CONSTRAINT fk_vendor_account_manager FOREIGN KEY (account_manager_id) REFERENCES employee(employee_id),
    CONSTRAINT chk_valid_vendor_email CHECK (email LIKE '%@%.%'),
    CONSTRAINT chk_contract_dates CHECK (
        contract_end_date IS NULL OR 
        contract_end_date >= contract_start_date)
);


-- Creating Product table 
CREATE TABLE product (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(100) NOT NULL UNIQUE,
    product_description VARCHAR2(500),
    price NUMBER(10,2) NOT NULL CHECK (price >= 0),
    stock_quantity NUMBER NOT NULL CHECK (stock_quantity >= 0),
    category_id NUMBER NOT NULL,
    vendor_id NUMBER NOT NULL,
    product_status VARCHAR2(50) DEFAULT 'Active' CHECK (product_status IN ('Active', 'Discontinued', 'Out of Stock')), 
    discount_price NUMBER(10,2) CHECK (discount_price IS NULL OR discount_price >= 0),     
    created_date TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,        
    last_updated TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    sku VARCHAR2(50) UNIQUE,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (vendor_id) REFERENCES vendor(vendor_id)
);


-- Creating Customer Order table 
CREATE TABLE customer_order (
    order_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    order_date DATE NOT NULL,
    required_date DATE,
    status VARCHAR2(50) CHECK (status IN ('Pending', 'Shipped', 'Delivered', 'Cancelled', 'Returned', 'Refunded', 'Return Pending')) NOT NULL,
    employee_id NUMBER,
    shipped_date TIMESTAMP,
    subtotal NUMBER(12,2) NOT NULL CHECK (subtotal >= 0),
    tax_amount NUMBER(10,2) DEFAULT 0 CHECK (tax_amount >= 0),
    shipping_amount NUMBER(10,2) DEFAULT 0 CHECK (shipping_amount >= 0),
    total_amount NUMBER(12,2) NOT NULL CHECK (total_amount >= 0),
    payment_method VARCHAR2(30) 
        CHECK (payment_method IN ('Credit Card', 'Debit Card', 'PayPal', 'Bank Transfer', 'Cash On Delivery')),
    shipping_method VARCHAR2(50),
    tracking_number VARCHAR2(50),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    CONSTRAINT chk_order_dates CHECK (
        (shipped_date IS NULL OR shipped_date >= order_date) AND
        (required_date IS NULL OR required_date >= order_date)
    ),
    CONSTRAINT chk_amounts CHECK (total_amount = subtotal + tax_amount + shipping_amount)
);



-- Creating Order Detail table 
CREATE TABLE order_detail (
    order_detail_id NUMBER PRIMARY KEY,
    order_id NUMBER NOT NULL,
    product_id NUMBER NOT NULL,
    quantity NUMBER NOT NULL CHECK (quantity > 0),
    unit_price NUMBER(10,2) NOT NULL CHECK (unit_price >= 0),
    discount NUMBER(10,2) DEFAULT 0 CHECK (discount >= 0),
    created_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    FOREIGN KEY (order_id) REFERENCES customer_order(order_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    CONSTRAINT uk_order_product UNIQUE (order_id, product_id),
    CONSTRAINT chk_discount CHECK (discount <= unit_price) 
);


-- Creating Shipment table 
CREATE TABLE shipment (
    shipment_id NUMBER PRIMARY KEY,
    order_id NUMBER NOT NULL,
    tracking_number VARCHAR2(50) UNIQUE,
    carrier VARCHAR2(50) NOT NULL,
    shipping_method VARCHAR2(50) NOT NULL,
    shipping_cost NUMBER(10,2) NOT NULL CHECK (shipping_cost >= 0),
    estimated_delivery DATE,
    actual_shipping_date DATE,
    actual_delivery_date DATE,
    delivery_status VARCHAR2(20) CHECK (delivery_status IN ('Pending', 'Processing', 'Shipped', 'In Transit', 'Out for Delivery', 'Delivered', 'Failed', 'Returned')) NOT NULL,
    notes VARCHAR2(500),
    FOREIGN KEY (order_id) REFERENCES customer_order(order_id),
    CONSTRAINT chk_tracking_number CHECK (
        tracking_number = 'N/A' OR tracking_number IS NULL OR tracking_number != 'N/A'
    ),
    CONSTRAINT chk_shipment_dates CHECK (
        (actual_shipping_date IS NULL OR actual_shipping_date >= estimated_delivery) AND
        (actual_delivery_date IS NULL OR actual_delivery_date >= estimated_delivery) AND
        (actual_shipping_date IS NULL OR actual_delivery_date IS NULL OR actual_shipping_date <= actual_delivery_date)
    )
);




-- Creating Shopping Cart table 
CREATE TABLE shopping_cart (
    cart_item_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    product_id NUMBER NOT NULL,
    quantity NUMBER NOT NULL CHECK (quantity > 0),
    added_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    is_active NUMBER(1) DEFAULT 3 CHECK (is_active IN (0, 1)),
    session_id VARCHAR2(100),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    CONSTRAINT uk_cart_item UNIQUE (customer_id, product_id, session_id)
);


-- Creating Wishlist table 
CREATE TABLE wishlist (
    wishlist_item_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    product_id NUMBER NOT NULL,
    added_at TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    priority NUMBER(1) CHECK (priority BETWEEN 1 AND 5),
    notes VARCHAR2(200),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    CONSTRAINT uk_wishlist_item UNIQUE (customer_id, product_id)
);


-- Creating Return table 
CREATE TABLE return (
    return_id NUMBER PRIMARY KEY,
    order_id NUMBER NOT NULL,
    customer_id NUMBER NOT NULL,
    product_id NUMBER NOT NULL,
    return_request_date TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    return_reason VARCHAR2(200) NOT NULL,
    return_quantity NUMBER NOT NULL CHECK (return_quantity > 0),
    refund_amount NUMBER(10,2) CHECK (refund_amount >= 0),
    refund_method VARCHAR2(50) CHECK (refund_method IN ('Original Payment', 'Store Credit', 'Gift Card', 'Bank Transfer')),
    status VARCHAR2(20) CHECK (status IN ('Requested', 'Approved', 'Rejected', 'Processing', 'Refunded', 'Completed')) NOT NULL,
    resolution_date TIMESTAMP,
    notes VARCHAR2(500),
    FOREIGN KEY (order_id) REFERENCES customer_order(order_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);


-- Creating Payment table 
CREATE TABLE payment (
    payment_id NUMBER PRIMARY KEY,
    order_id NUMBER NOT NULL,
    customer_id NUMBER NOT NULL,
    payment_reference VARCHAR2(100) UNIQUE,
    payment_date TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    payment_amount NUMBER(10,2) NOT NULL CHECK (payment_amount >= 0),
    payment_method VARCHAR2(50) NOT NULL CHECK (payment_method IN ('Credit Card', 'Debit Card', 'PayPal', 'Bank Transfer', 'Cash On Delivery', 'Digital Wallet')),
    transaction_id VARCHAR2(100),
    status VARCHAR2(20) NOT NULL CHECK (status IN ('Pending', 'Authorized', 'Captured', 'Declined', 'Refunded', 'Partially Refunded', 'Failed', 'Voided')),
    currency VARCHAR2(3) DEFAULT 'USD' NOT NULL,
    FOREIGN KEY (order_id) REFERENCES customer_order(order_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);


-- Creating Payment Method Details table 
CREATE TABLE payment_method_details (
    payment_method_detail_id NUMBER PRIMARY KEY,
    payment_id NUMBER NOT NULL,
    card_type VARCHAR2(50),
    card_last_four VARCHAR2(4),
    card_expiry DATE,
    bank_name VARCHAR2(100),
    bank_account_type VARCHAR2(50),
    paypal_email VARCHAR2(100),
    digital_wallet_type VARCHAR2(50),
    created_date TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,
    FOREIGN KEY (payment_id) REFERENCES payment(payment_id)
);
