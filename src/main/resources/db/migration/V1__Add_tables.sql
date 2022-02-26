CREATE TABLE IF NOT EXISTS users
(
    id         SERIAL PRIMARY KEY,
    first_name VARCHAR(30)  NOT NULL,
    last_name  VARCHAR(30)  NOT NULL,
    login      VARCHAR(30) UNIQUE,
    password   VARCHAR(128) NOT NULL,
    role       VARCHAR(10)  NOT NULL
);

CREATE TABLE IF NOT EXISTS vehicles
(
    id      SERIAL PRIMARY KEY,
    number  VARCHAR(15) NOT NULL,
    status  SMALLINT    NOT NULL DEFAULT 0,
    user_id INTEGER     NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS spots
(
    id     SERIAL PRIMARY KEY,
    active BOOLEAN     NOT NULL DEFAULT TRUE,
    number VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS bookings
(
    id         SERIAL PRIMARY KEY,
    begin      TIMESTAMP WITH TIME ZONE NOT NULL,
    _end       TIMESTAMP WITH TIME ZONE NOT NULL,
    spot_id    INTEGER                  NOT NULL,
    user_id    INTEGER                  NOT NULL,
    vehicle_id INTEGER                  NOT NULL,
    FOREIGN KEY (spot_id) REFERENCES spots (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (vehicle_id) REFERENCES vehicles (id) ON DELETE CASCADE ON UPDATE CASCADE
);
