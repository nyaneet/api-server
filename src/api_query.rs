#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

use crate::api_query_type::ApiQueryType;

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQuery {
    pub auth_token: String,
    pub id: String,
    pub query: ApiQueryType,

}
impl ApiQuery {
    pub fn fromJson(jsonString: String) -> Self {
        let raw: ApiQuery = serde_json::from_str(&jsonString).unwrap();
        println!("raw: {:?}", raw);
        raw
    }
    pub fn fromBytes(bytes: Vec<u8>) -> Self {
        let string = String::from_utf8(bytes).unwrap();
        let string = string.trim_matches(char::from(0));
        debug!("[SqlQuery.fromBytes] string: {:#?}", string);
        let query: ApiQuery = match serde_json::from_str(&string) {
            Ok(value) => {value},
            Err(err) => {
                warn!("[SqlQuery.fromBytes] json conversion error: {:?}", err);
                ApiQuery {
                    auth_token: String::from("none"),
                    id: String::from("0"),
                    query: ApiQueryType::Error,
                }
            },
        };
        // debug!("[DsPoint] point: {:#?}", point);
        query
    }

}