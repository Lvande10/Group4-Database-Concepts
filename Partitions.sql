ALTER TABLE customer_order 
MODIFY PARTITION BY RANGE (order_date)
INTERVAL (NUMTOYMINTERVAL(1, 'MONTH'))
(
    PARTITION orders_pre_2025 VALUES LESS THAN (DATE '2025-01-01')
);


ALTER TABLE order_detail
MODIFY PARTITION BY RANGE (created_at)
INTERVAL (NUMTOYMINTERVAL(1, 'MONTH'))
(
    PARTITION order_details_pre_2025 VALUES LESS THAN (DATE '2025-01-01')
);

ALTER TABLE payment 
MODIFY PARTITION BY RANGE (payment_date)
INTERVAL (NUMTOYMINTERVAL(1, 'MONTH'))
(
    PARTITION payments_pre_2025 VALUES LESS THAN (DATE '2025-01-01')
);

ALTER TABLE shipment 
MODIFY PARTITION BY RANGE (actual_shipping_date)
INTERVAL (NUMTOYMINTERVAL(1, 'MONTH'))
(
    PARTITION shipments_pre_2025 VALUES LESS THAN (DATE '2025-01-01')
);