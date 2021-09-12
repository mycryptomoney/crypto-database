CREATE TABLE confirmation_token (
                        id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                        token VARCHAR(100) NOT NULL,
                        created_at TIMESTAMP,
                        expired_at TIMESTAMP,
                        confirmed_at TIMESTAMP,
                        user_id BIGINT NOT NULL,
                        FOREIGN KEY (user_id)
                            REFERENCES users (id)
);