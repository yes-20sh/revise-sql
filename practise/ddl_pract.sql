CREATE TABLE categories (
    category_id UUID PRIMARY KEY DEFAULT gen_random_UUID(),
    category_name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT,
    create_at TIMESTAMP NOT NULL DEFAULT now()
)s


CREATE TABLE products (
    product_id UUID PRIMARY KEY DEFAULT gen_random_UUID(),
    category_id  UUID NOT NULL REFERENCES categories(category_id),
    product_name  VARCHAR(100) NOT NULL,
    price     NUMERIC(10, 2) NOT NULL CHECK (price > 0),
    stock_quantity INT NOT NULL DEFAULT 0 CHECK (stock_quantity >= 0),
    is_active  BOOLEAN NOT NULL DEFAULT TRUE,  -- FALSE = discontinued
    created_at DATE NOT NULL DEFAULT CURRENT_DATE
);


CREATE TABLE customers (
    customer_id UUID PRIMARY KEY DEFAULT gen_random_UUID(),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone    VARCHAR(20),               
    city    VARCHAR(50),            
    country    VARCHAR(50) NOT NULL DEFAULT 'USA',
    signup_date DATE NOT NULL DEFAULT CURRENT_DATE,
    loyalty_points INT NOT NULL DEFAULT 0,
    referred_by UUID REFERENCES customers(customer_id)
);



CREATE TYPE order_status AS ENUM (
    'pending', 
    'processing', 
    'completed', 
    'cancelled'
    );

CREATE TABLE orders (
    order_id      UUID PRIMARY KEY DEFAULT gen_random_UUID(),
    customer_id   UUID NOT NULL REFERENCES customers(customer_id),
    employee_id   UUID REFERENCES employees(employee_id),
    order_date    DATE NOT NULL DEFAULT CURRENT_DATE,
    status        order_status NOT NULL DEFAULT 'pending',
    shipping_city VARCHAR(50),
    notes         TEXT
);


CREATE TABLE order_items (
    order_item_id UUID PRIMARY KEY DEFAULT gen_random_UUID(),
    order_id      UUID NOT NULL REFERENCES orders(order_id) ON DELETE CASCADE, -- ON DELETE CASCADE: delete an order, its line items go with it.
    product_id    UUID NOT NULL REFERENCES products(product_id),
    quantity      INT NOT NULL CHECK (quantity > 0),
    unit_price    NUMERIC(10, 2) NOT NULL CHECK (unit_price > 0)
);


CREATE TYPE payment_method_type AS ENUM (
    'credit_card',
    'debit_card',
    'paypal',
    'bank_transfer',
    'gift_card',
    'upi'
);

CREATE TYPE payment_status_type AS ENUM (
    'success',
    'failed',
    'refunded'
);


CREATE TABLE payments (
    payment_id     UUID PRIMARY KEY DEFAULT gen_random_UUID(),
    order_id       UUID NOT NULL REFERENCES orders(order_id) ON DELETE CASCADE,
    payment_date   DATE NOT NULL,
    amount         NUMERIC(10, 2) NOT NULL CHECK (amount > 0),
    payment_method payment_method_type NOT NULL,
    status         payment_status_type NOT NULL DEFAULT 'success'
);