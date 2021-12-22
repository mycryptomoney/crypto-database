CREATE TABLE price
(
    id      BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    value   NUMERIC(30, 8) NOT NULL,
    time    TIMESTAMP      NOT NULL,
    code_id BIGINT         NOT NULL,
    FOREIGN KEY (code_id)
        REFERENCES code (id)
)