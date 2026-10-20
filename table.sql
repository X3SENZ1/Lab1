CREATE TABLE Post_offices (
    office_id SERIAL PRIMARY KEY,
    address VARCHAR(150) NOT NULL,
    city VARCHAR(50) NOT NULL,
    district VARCHAR(50),
    postal_code VARCHAR(6) NOT NULL,
    phone VARCHAR(20) NOT NULL
);

CREATE TABLE Mail_acceptance (
    tracking_number VARCHAR(20) PRIMARY KEY,
    office_id INT NOT NULL,
    acceptance_datetime TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    declared_value NUMERIC(10, 2),
    total_cost NUMERIC(10, 2) NOT NULL,
    is_paid BOOLEAN NOT NULL,
    dispatch_datetime TIMESTAMP WITHOUT TIME ZONE,
    FOREIGN KEY (office_id) REFERENCES Post_offices (office_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
