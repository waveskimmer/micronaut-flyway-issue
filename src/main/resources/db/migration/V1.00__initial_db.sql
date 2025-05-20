
CREATE TABLE address (
    id UUID NOT NULL PRIMARY KEY,
    street_line_1 VARCHAR NOT NULL,
    street_line_2 VARCHAR DEFAULT NULL,
    city VARCHAR NOT NULL,
    state VARCHAR NOT NULL,
    zip VARCHAR NOT NULL
);
