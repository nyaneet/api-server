import psycopg2


longString = f'''11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\
longString '''
sufix = f'{len(longString)}'
sufixLen = len(sufix) + 6
longString = longString + sufix + ' chars'


def connectPsqlRoot(autocommit = False):
    conn = psycopg2.connect(
        host="localhost",
        database="postgres",
        user="postgres",
        password="postgres"
    )
    cur = conn.cursor()
    conn.autocommit = autocommit
    return conn, cur

dbName = 'db_postgres_test'
dbUser = 'db_postgres_test'
dbPass = 'db_postgres_test'
def connectPsql(autocommit = False):
    conn = psycopg2.connect(
        host="localhost",
        database=dbName,
        user=dbUser,
        password=dbPass
    )
    cur = conn.cursor()
    conn.autocommit = autocommit
    return conn, cur

def psqlQuery(cur, sql, autocommit = False):
    cur.execute(sql)
    try:
        records = cur.fetchall()
        print(f'result: {records}')
        return records
    except Exception as err:
        print(f'psqlQuery | error: {err}')
        return None
def createDatabase():

    _, curSel = connectPsqlRoot()
    result = psqlQuery(curSel, f"""
    SELECT 1 FROM pg_user WHERE usename = '{dbUser}';
    """)
    if result:
        pass
    else:
        _, cur = connectPsqlRoot(autocommit=True)
        cur.execute(f"""
        CREATE USER {dbUser} WITH PASSWORD '{dbPass}' CREATEDB CREATEROLE;
        """)


    result = psqlQuery(curSel, """
    SELECT 1 FROM pg_database WHERE datname = 'db_postgres_test';
    """)
    if result:
        pass
    else: 
        conn, cursor = connectPsqlRoot(autocommit=True)
        cursor.execute(f'CREATE DATABASE {dbName};')
        cursor.execute(f'GRANT ALL PRIVILEGES ON DATABASE {dbName} TO {dbUser};')
        cursor.close()
        conn.close()



    # result = psqlQuery(cur, """
    # SELECT 1 FROM pg_database WHERE datname = 'db_postgres_test';
    # """)
    # if result:
    #     pass
    # else: 
    #     conn, cursor = connectPsql(autocommit=True)
    #     cursor.execute(f'CREATE DATABASE {dbName}')
    #     cursor.execute(f'GRANT ALL PRIVILEGES ON DATABASE {dbName} TO {dbUser}')
    #     cursor.close()
    #     conn.close()

    conn, cur = connectPsql(autocommit=True)
    cur.execute(f'''
        do $$
            declare longString varchar;
        begin
        drop table if exists db_postgres_test.public.test;
        CREATE TABLE IF NOT EXISTS db_postgres_test.public.test (
            did    			integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
            title			name,
            boolField		boolean,
            int2Field		int2,
            int4Field		int4,
            int8Field		int8,
            float4Field		float4,
            float8Field		float8,
            charField  		char,
            bpCharField  	char(4),
            bpVarcharField  varchar(8),
            varcharField  	varchar,
            nameField		name,
            textField  		text,
            timestampField 		timestamp,
            timestampzField 	timestamp with time zone,
            dateField		date,
            timeField		time,
            jsonField		json,
            jsonbField		jsonb,
            bool_array_field    boolean[],
            int2_array_field    int2[],
            int4_array_field    int4[],
            int8_array_field    int8[],
            float4_array_field    float4[],
            float8_array_field    float8[],
            char_array_field    char[],
            text_array_field    text[],
            varchar_array_field    varchar[]
        );
        longString := '{longString}';
        insert into test (title, boolfield) values ('boolfield', true);
        insert into test (title, int2Field) values ('int2Field', -32768);
        insert into test (title, int2Field) values ('int2Field', 32767);
        insert into test (title, int4Field) values ('int4Field', -2147483648);
        insert into test (title, int4Field) values ('int4Field', 2147483647);
        insert into test (title, int8Field) values ('int8Field', -9223372036854775808);
        insert into test (title, int8Field) values ('int8Field', 9223372036854775807);
        insert into test (title, float4Field) values ('float4Field', -9.123456e3);
        insert into test (title, float8Field) values ('float8Field', 9.123456789012345e3);
        insert into test (title, charField) values ('char', 1);
        insert into test (title, bpCharField) values ('bpChar', '1234');
        insert into test (title, bpVarCharField) values ('bpVarChar', '12345678');
        insert into test (title, varcharField) values ('varchar', longString);
        insert into test (title, nameField) values ('name', longString);
        insert into test (title, textField) values ('text', longString);
        insert into test (title, timestampField) values ('timestamp', '2004-10-19 10:23:54');
        insert into test (title, timestampzField) values ('timestampz', '2004-10-19 10:23:54+02');
        insert into test (title, dateField) values ('date', '2004-10-19');
        insert into test (title, timeField) values ('time', '10:23:54');
        insert into test (title, jsonField) values ('json', '{{"a":123, "b": 456}}');
        insert into test (title, jsonbField) values ('jsonb', '{{"a":123, "b": 456}}'::jsonb);
        insert into test (title, bool_array_field) values ('bool_array', '{{false, true}}');
        insert into test (title, int2_array_field) values ('int2_array', '{{-32768, 32767}}');
        insert into test (title, int4_array_field) values ('int4_array', '{{-2147483648, 2147483647}}');
        insert into test (title, int8_array_field) values ('int8_array', '{{-9223372036854775808, 9223372036854775807}}');
        insert into test (title, float4_array_field) values ('float4_array', '{{-9.123456e3, 9.123456e3}}');
        insert into test (title, float8_array_field) values ('float8_array', '{{-9.123456789012345e3, 9.123456789012345e3}}');
        insert into test (title, char_array_field) values ('char_array', '{{1, 2, 3}}');
        insert into test (title, text_array_field) values ('text_array', '{{"text 1", "text 2", "text 3"}}');
        insert into test (title, varchar_array_field) values ('varchar_array', '{{"varchar 1", "varchar 2", "varchar 3"}}');
        end$$;                
    ''')
    cur.close()
    conn.close()
