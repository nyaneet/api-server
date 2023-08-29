use log::debug;

use crate::{
    config::Config, 
    api_query::ApiQuery, 
    api_reply::SqlReply, 
    api_query_type::ApiQueryType, 
    sql_query_sqlite::SqlQuerySqlite, 
    python_query::PythonQuery, 
    executable_query::ExecutableQuery, api_service_type::ApiServiceType, sql_query::SqlQuery, sql_query_mysql::SqlQueryMysql, sql_query_postgre::SqlQueryPostgre
};

///
pub struct ApiServer {
    config: Config
}
impl ApiServer {
    ///
    pub fn new(config: Config) -> ApiServer {
        ApiServer {
            config,
        }
    }
    ///
    fn execute(mut sqlQuery: Box<dyn SqlQuery>, auth_token: String, id: String, query: String) -> SqlReply {
        match sqlQuery.execute() {
            Ok(rows) => {                        
                SqlReply {
                    auth_token: auth_token,
                    id: id,
                    query: query,
                    data: rows,
                    error: String::new(),
                }
            },
            Err(err) => {
                SqlReply::error(
                    auth_token,
                    id,
                    query,
                    err.to_string(),
                )
            },
        }
    }

    ///
    pub fn build(&self, bytes: Vec<u8>) -> Vec<u8> {
        let apiQuery = ApiQuery::fromBytes(bytes);
        let sqlReply = match apiQuery.query.clone() {            
            ApiQueryType::Error(err) => {
                SqlReply::error(
                    apiQuery.auth_token,
                    apiQuery.id,
                    apiQuery.query.toString(),
                    err.err,
                )    
            },
            ApiQueryType::Sql(sqlQuery) => {
                debug!("[ApiServer] ApiQueryType: Sql");
                match self.config.services.get(&sqlQuery.database) {
                    Some(dbConfig) => {
                        match dbConfig.serviceType {
                            ApiServiceType::Sqlite => {
                                Self::execute(
                                    Box::new(SqlQuerySqlite::new(dbConfig.clone(), sqlQuery.sql.clone(), None)),
                                    apiQuery.auth_token,
                                    apiQuery.id,
                                    apiQuery.query.toString(),
                                )
                            },
                            ApiServiceType::MySql => {
                                let dir = std::env::current_dir().unwrap();
                                let path: &str = &format!("{}/{}", dir.to_str().unwrap(), dbConfig.path);
                                debug!("[ApiServer] database address: {:?}", path);
                                Self::execute(
                                    Box::new(SqlQueryMysql::new(dbConfig.clone(), sqlQuery.sql.clone(), None)),
                                    apiQuery.auth_token,
                                    apiQuery.id,
                                    apiQuery.query.toString(),
                                )
                            },
                            ApiServiceType::PostgreSql => {
                                Self::execute(
                                    Box::new(SqlQueryPostgre::new(dbConfig.clone(), sqlQuery.sql.clone(), None)),
                                    apiQuery.auth_token,
                                    apiQuery.id,
                                    apiQuery.query.toString(),
                                )
                            },
                            _ => SqlReply::error(
                                apiQuery.auth_token,
                                apiQuery.id,
                                apiQuery.query.toString(),
                                format!("ApiServer.build | Error: Database service with the namne '{}' can't be found", sqlQuery.database),
                            ),
                        }
                    },
                    None => SqlReply::error(
                        apiQuery.auth_token,
                        apiQuery.id,
                        apiQuery.query.toString(),
                        format!("ApiServer.build | Error: Database service with the namne '{}' can't be found", sqlQuery.database),
                    ),
                }                    
            },
            ApiQueryType::Python(pyQuery) => {
                debug!("[ApiServer] ApiQueryType: Python");
                debug!("[ApiServer] ApiQueryType: Python script: {}", pyQuery.script);
                match self.config.services.get(&pyQuery.script) {
                    Some(dbConfig) => {
                        // let path = "./database.sqlite";
                        // let path = self.config.dataBases[0].path.clone();
                        let dir = std::env::current_dir().unwrap();
                        let path: &str = &format!("{}/{}", dir.to_str().unwrap(), dbConfig.path);
                        debug!("[ApiServer] script path: {:?}", path);
                        // let connection = Connection::open_with_flags(path, OpenFlags::SQLITE_OPEN_READ_WRITE); // ::open(path).unwrap();
                        let exists = std::path::Path::new(path).exists();
                        match exists {
                            true => {
                                match PythonQuery::new(path, pyQuery.params.clone()).execute() {
                                    Ok(rows) => {                        
                                        SqlReply {
                                            auth_token: apiQuery.auth_token,
                                            id: apiQuery.id,
                                            query: apiQuery.query.toString(),
                                            data: rows,
                                            error: String::new(),
                                        }
                                    },
                                    Err(err) => {
                                        SqlReply::error(
                                            apiQuery.auth_token,
                                            apiQuery.id,
                                            apiQuery.query.toString(),
                                            err.to_string(),
                                        )
                                    },
                                }
                            },
                            false => {
                                SqlReply::error(
                                    apiQuery.auth_token,
                                    apiQuery.id,
                                    apiQuery.query.toString(),
                                    format!("pyton script does not exists: {}", path),
                                )
                            },
                        }
                    },
                    None => {
                        SqlReply::error(
                            apiQuery.auth_token,
                            apiQuery.id,
                            apiQuery.query.toString(),
                            format!("ApiServer.build | Error: Script with the namne '{}' can't be found", pyQuery.script),
                        )
                    },
                }
            },
            ApiQueryType::Executable(exQuery) => {
                debug!("[ApiServer] ApiQueryType: Executable");
                debug!("[ApiServer] ApiQueryType: Executable name: {}", exQuery.name);
                debug!("[ApiServer] ApiQueryType: Executable name: {:?}", exQuery);
                match self.config.services.get(&exQuery.name) {
                    Some(dbConfig) => {
                        // let path = "./database.sqlite";
                        // let path = self.config.dataBases[0].path.clone();
                        let dir = std::env::current_dir().unwrap();
                        let path: &str = &format!("{}/{}", dir.to_str().unwrap(), dbConfig.path);
                        debug!("[ApiServer] script path: {:?}", path);
                        // let connection = Connection::open_with_flags(path, OpenFlags::SQLITE_OPEN_READ_WRITE); // ::open(path).unwrap();
                        let exists = std::path::Path::new(path).exists();
                        match exists {
                            true => {
                                match ExecutableQuery::new(path, exQuery.params.clone()).execute() {
                                    Ok(rows) => {                        
                                        SqlReply {
                                            auth_token: apiQuery.auth_token,
                                            id: apiQuery.id,
                                            query: apiQuery.query.toString(),
                                            data: rows,
                                            error: String::new(),
                                        }
                                    },
                                    Err(err) => {
                                        SqlReply::error(
                                            apiQuery.auth_token,
                                            apiQuery.id,
                                            apiQuery.query.toString(),
                                            err.to_string(),
                                        )
                                    },
                                }
                            },
                            false => {
                                SqlReply::error(
                                    apiQuery.auth_token,
                                    apiQuery.id,
                                    apiQuery.query.toString(),
                                    format!("pyton script does not exists: {}", path),
                                )
                            },
                        }
                    },
                    None => {
                        SqlReply::error(
                            apiQuery.auth_token,
                            apiQuery.id,
                            apiQuery.query.toString(),
                            format!("ApiServer.build | Error: Executable with the namne '{}' can't be found", exQuery.name),
                        )
                    },
                }
            },
            ApiQueryType::Unknown(_) => {
                SqlReply::error(
                    apiQuery.auth_token,
                    apiQuery.id,
                    apiQuery.query.toString(),
                    "Uncnown type of API query".into(),
                )
            },
        };
        sqlReply.asBytes()
    }
}