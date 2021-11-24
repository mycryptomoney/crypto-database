CREATE TABLE purchase
(
    id        BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    amount    NUMERIC(19, 2) NOT NULL,
    price     NUMERIC(19, 2) NOT NULL,
    wallet_id BIGINT         NOT NULL,
    time      TIMESTAMP      NOT NULL,
    FOREIGN KEY (wallet_id)
        REFERENCES wallet (id)
)