-- Address
INSERT INTO address (id, street, zip_code, state)
VALUES (1001, '123 Main St', '12345', 'NY'),
       (1002, '456 Elm St', '67890', 'CA');
-- Owner
INSERT INTO owner (id, name, user_id, address_id, status)
VALUES (1001, 'John Doe', 1001, 1001, 'ACTIVE'),
       (1002, 'Jane David', 1002, 1002, 'INACTIVE');

-- PropertyLocation table
INSERT INTO property_location (id, address, latitude, longitude)
VALUES (1001, '123 Main St New York', '40.748817', '-73.985428'),
       (1002, '456 Park Ave Los Angeles', '40.748817', '-73.985428'),
       (1003, '789 Broadway Chicago', 'IL''40.748817', '-73.985428'),
       (1004, '789 Broadway Chicago', 'IL''40.748817', '-73.985428'),
       (1005, '789 Broadway Chicago', 'IL''40.748817', '-73.985428');

-- Customer table
INSERT INTO Customer (id, name, status, user_id)
VALUES (1001, 'Pat Doe', 'ACTIVE', 2),
       (1002, 'Jack', 'ACTIVE', 3);


-- Property
INSERT INTO property (id, name, location_id, detail, category, status, is_active, price, owner_id)
VALUES (1001, 'My House', 1001, 'My first property', 'HOUSE', 'AVAILABLE', true, 14477.0, 1001),
       (1002, 'My Apartment', 1002, 'My second property', 'APARTMENT', 'AVAILABLE', true, 23345.0, 1002);


INSERT INTO property (id, name, detail, category, status, is_active, price, owner_id, location_id)
VALUES (1003, 'Villa Rica', '3 BHK independent house with lawn and pool', 'RESIDENTIAL', 'AVAILABLE', true, 12000.0,
        1001, 1003),
       (1004, 'Palm Plaza', '4 BHK duplex apartment with garden and gym', 'COMMERCIAL', 'AVAILABLE', true, 100000.0,
        1002, 1004),
       (1005, 'Ocean View', '5 BHK villa with ocean view and private beach', 'RESIDENTIAL', 'AVAILABLE', true,
        23400.56, 1002,
        1005);

-- CustomerOffer table
INSERT INTO property_offers (id, status, customer_id, property_id, owner_id, amount)
VALUES (1001, 'AVAILABLE', 1001, 1001, 1001, 100000),
       (1003, 'AVAILABLE', 1001, 1003, 1001, 180000),
       (1002, 'AVAILABLE', 1002, 1002, 1002, 200000),
       (1004, 'AVAILABLE', 1002, 1001, 1001, 200000);

-- Property Image

INSERT INTO property_image (id, name, type, property_id)
VALUES (1001, 'Casa Bella - Image 1', 'jpeg', 1002),
       (1002, 'Casa Bella - Image 1', 'jpeg', 1002),
       (1003, 'Casa Bella - Image 2', 'jpeg', 1002),
       (1004, 'Villa Rica - Image 1', 'jpeg', 1003),
       (1005, 'Villa Rica - Image 2', 'jpeg', 1003),
    (1006, 'Palm Plaza - Image 1', 'jpeg',  1004),
    (1007, 'Ocean View - Image 1', 'jpeg',  1005),
    (1008, 'Ocean View - Image 2', 'jpeg',  1005),
    (1009, 'Ocean View - Image 3', 'jpeg',  1005);

