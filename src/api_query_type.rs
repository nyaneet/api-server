#![allow(non_snake_case)]

// use log::debug;
use serde::{
    Serialize, 
    Deserialize, 
};

use crate::{
    api_query_sql::ApiQuerySql, 
    api_query_python::ApiQueryPython, 
    api_query_executable::ApiQueryExecutable, 
    api_query_unknown::ApiQueryUnknown, 
    api_query_error::ApiQueryError,
};


#[derive(Debug, Clone, Serialize, Deserialize)]
// #[serde(rename_all = "lowercase")]
pub enum ApiQueryType {
    Error(ApiQueryError),
    Sql(ApiQuerySql),
    Python(ApiQueryPython),
    Executable(ApiQueryExecutable),
    Unknown(ApiQueryUnknown),
}
impl ApiQueryType {
    pub fn toString(&self) -> String {
        match self {
            ApiQueryType::Error(apiQueryError) => apiQueryError.to_owned().toString(),
            ApiQueryType::Sql(apiQuerySql) => apiQuerySql.to_owned().toString(),
            ApiQueryType::Python(apiQueryPython) => apiQueryPython.to_owned().toString(),
            ApiQueryType::Executable(apiQueryExecutable) => apiQueryExecutable.to_owned().toString(),
            ApiQueryType::Unknown(apiQueryUnknown) => apiQueryUnknown.to_owned().toString(),
        }
    }
}



pub enum ApiQueryTypeName {
    Sql,
    Python,
    Executable,
}
impl ApiQueryTypeName {
    pub fn value(&self) -> &str {
        match *self {
            ApiQueryTypeName::Sql => "sql",
            ApiQueryTypeName::Python => "python",
            ApiQueryTypeName::Executable => "executable",
        }
    }
}
