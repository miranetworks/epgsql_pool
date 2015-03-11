DROP DATABASE IF EXISTS epgsql_pool_test;
DROP USER IF EXISTS epgsql_pool_test;

CREATE DATABASE epgsql_pool_test
       ENCODING 'UTF8'
       TEMPLATE template0;

CREATE USER epgsql_pool_test PASSWORD 'password';
GRANT ALL ON DATABASE epgsql_pool_test TO epgsql_pool_test;
