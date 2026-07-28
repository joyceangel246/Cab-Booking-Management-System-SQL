CREATE DATABASE cab_booking;
USE cab_booking;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE Drivers (
    driver_id INT PRIMARY KEY,
    driver_name VARCHAR(50),
    rating DECIMAL(2,1)
);

CREATE TABLE Cabs (
    cab_id INT PRIMARY KEY,
    cab_number VARCHAR(20),
    cab_type VARCHAR(20)
);

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    customer_id INT,
    driver_id INT,
    cab_id INT,
    ride_date DATE,
    distance_km DECIMAL(5,2),
    fare DECIMAL(10,2),

    FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY(driver_id) REFERENCES Drivers(driver_id),
    FOREIGN KEY(cab_id) REFERENCES Cabs(cab_id)
);
