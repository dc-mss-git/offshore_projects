connection: "vbqconnection"

include: "/views/*.view.lkml"

datagroup: offshore_project_mss_default_datagroup {
  sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: superstore {}
