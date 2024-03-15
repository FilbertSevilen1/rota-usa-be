-- Create table: wheels
CREATE TABLE wheels (
    wheel_id INT PRIMARY KEY,
    wheel_name VARCHAR(255)
);

-- Create table: sizes
CREATE TABLE sizes (
    size_id INT PRIMARY KEY,
    wheel_id INT,
    FOREIGN KEY (wheel_id) REFERENCES wheels(wheel_id)
);

-- Create table: offsets
CREATE TABLE offsets (
    offset_id INT PRIMARY KEY
);

-- Create table: bolts
CREATE TABLE bolts (
    bolt_id INT PRIMARY KEY
);

-- Create table: wheels_details
CREATE TABLE wheels_details (
    wheel_detail_id INT PRIMARY KEY,
    wheel_id INT,
    wheel_details_name VARCHAR(255),
    wheel_image VARCHAR(255),
    FOREIGN KEY (wheel_id) REFERENCES wheels(wheel_id)
);

-- Create table: sizes_details
CREATE TABLE sizes_details (
    size_details_id INT PRIMARY KEY,
    size_id INT,
    size_name VARCHAR(255),
    offset_id INT,
    FOREIGN KEY (size_id) REFERENCES sizes(size_id),
    FOREIGN KEY (offset_id) REFERENCES offsets(offset_id)
);

-- Create table: offsets_details
CREATE TABLE offsets_details (
    offset_details_id INT PRIMARY KEY,
    offset_id INT,
    offset_name VARCHAR(255),
    bolt_id INT,
    FOREIGN KEY (offset_id) REFERENCES offsets(offset_id),
    FOREIGN KEY (bolt_id) REFERENCES bolts(bolt_id)
);

-- Create table: bolts_details
CREATE TABLE bolts_details (
    bolt_detail_id INT PRIMARY KEY,
    bolt_id INT,
    bolt_name VARCHAR(255),
    FOREIGN KEY (bolt_id) REFERENCES bolts(bolt_id)
);

-- Create table: brand
DROP TABLE brand;
CREATE TABLE brands (
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR(255),
    brand_image VARCHAR(255)
);

-- Create table: cars
DROP TABLE cars;
CREATE TABLE cars (
    car_id INT PRIMARY KEY,
    car_name VARCHAR(255),
    car_wheel_element1 VARCHAR(255),
    car_wheel_element2 VARCHAR(255),
    brand_id INT,
    FOREIGN KEY (brand_id) REFERENCES brands(brand_id)
);

-- Create table: cars_details
CREATE TABLE cars_details (
    car_id INT,
    car_details_id INT PRIMARY KEY,
    car_color_image VARCHAR(255),
    FOREIGN KEY (car_id) REFERENCES cars(car_id)
);