CREATE TABLE IF NOT EXISTS client(
    id                  INT AUTO_INCREMENT NOT NULL,
    phone               VARCHAR(11),
    fio                 VARCHAR(255),
    payment_method      VARCHAR(50),
    car_plate_number    VARCHAR(12),
    car_factory         VARCHAR(20),
    car_model           VARCHAR(20),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS parking_place(
    id                  INT AUTO_INCREMENT NOT NULL,
    name                VARCHAR(10),
    type                VARCHAR(50),
    client_id           INT,
    reservation_id      INT,
    PRIMARY KEY(id)
);

ALTER TABLE parking_place ADD CONSTRAINT fk_client_id FOREIGN KEY (client_id) REFERENCES client;

CREATE TABLE IF NOT EXISTS reservation(
    id                  INT AUTO_INCREMENT NOT NULL,
    start               TIMESTAMP,
    price_per_hour      INT,
    end_time            TIMESTAMP,
    PRIMARY KEY(id)
);

ALTER TABLE parking_place ADD CONSTRAINT fk_reservation FOREIGN KEY (reservation_id) REFERENCES reservation;