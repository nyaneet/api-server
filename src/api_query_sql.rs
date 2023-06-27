#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQuerySql {
    pub database: String,
    pub sql: String,

}
impl ApiQuerySql {
    pub fn fromJson(jsonString: String) -> Self {
        let raw: ApiQuerySql = serde_json::from_str(&jsonString).unwrap();
        println!("raw: {:?}", raw);
        raw
    }
    pub fn fromBytes(bytes: Vec<u8>) -> Self {
        let string = String::from_utf8(bytes).unwrap();
        let string = string.trim_matches(char::from(0));
        debug!("[SqlQuery.fromBytes] string: {:#?}", string);
        let query: ApiQuerySql = match serde_json::from_str(&string) {
            Ok(value) => {value},
            Err(err) => {
                warn!("[SqlQuery.fromBytes] json conversion error: {:?}", err);
                ApiQuerySql {
                    database: String::from("none"),
                    sql: String::new(),
                }
            },
        };
        // debug!("[DsPoint] point: {:#?}", point);
        query
    }

}