view: spring_session {
  sql_table_name: public.spring_session ;;

  dimension: creation_time {
    type: number
    sql: ${TABLE}.creation_time ;;
  }

  dimension: last_access_time {
    type: number
    sql: ${TABLE}.last_access_time ;;
  }

  dimension: max_inactive_interval {
    type: number
    sql: ${TABLE}.max_inactive_interval ;;
  }

  dimension: principal_name {
    type: string
    sql: ${TABLE}.principal_name ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  measure: count {
    type: count
    drill_fields: [principal_name]
  }
}
