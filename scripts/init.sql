
DO $$
BEGIN
   IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'staysync_user') THEN
      CREATE ROLE staysync_user WITH LOGIN PASSWORD 'staysync_pass123';
   END IF;
END
$$;


DO $$
BEGIN
   IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'staysync_db') THEN
      PERFORM dblink_exec('dbname=' || current_database(), 'CREATE DATABASE staysync_db');
   END IF;
END
$$;


ALTER DATABASE staysync_db OWNER TO staysync_user;
GRANT ALL PRIVILEGES ON DATABASE staysync_db TO staysync_user;


\c staysync_db
