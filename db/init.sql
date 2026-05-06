CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (name, email) VALUES
    ('Alice Martin', 'alice@example.com'),
    ('Bob Dupont', 'bob@example.com'),
    ('Charlie Bernard', 'charlie@example.com')
ON CONFLICT (email) DO NOTHING;
