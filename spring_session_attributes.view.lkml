view: spring_session_attributes {
  sql_table_name: public.spring_session_attributes ;;

  dimension: attribute_bytes {
    type: string
    sql: ${TABLE}.attribute_bytes ;;
  }

  dimension: attribute_name {
    type: string
    sql: ${TABLE}.attribute_name ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  measure: count {
    type: count
    drill_fields: [attribute_name]
  }
}
