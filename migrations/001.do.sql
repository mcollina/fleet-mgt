CREATE TABLE trucks (
    id INTEGER PRIMARY KEY,
    make TEXT NOT NULL,
    model TEXT NOT NULL,
    year INTEGER NOT NULL,
    capacity INTEGER NOT NULL
);

CREATE TABLE drivers (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    license_number TEXT NOT NULL,
    truck_id INTEGER NOT NULL,
    FOREIGN KEY (truck_id) REFERENCES trucks(id)
);

CREATE TABLE trips (
    id INTEGER PRIMARY KEY,
    driver_id INTEGER NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    FOREIGN KEY (driver_id) REFERENCES drivers(id)
);

CREATE TABLE stops (
    id INTEGER PRIMARY KEY,
    trip_id INTEGER NOT NULL,
    location TEXT NOT NULL,
    arrival_time DATETIME NOT NULL,
    departure_time DATETIME NOT NULL,
    FOREIGN KEY (trip_id) REFERENCES trips(id)
);