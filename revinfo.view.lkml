view: revinfo {
  sql_table_name: public.revinfo ;;

  dimension: rev {
    type: number
    sql: ${TABLE}.rev ;;
  }

  dimension: revtstmp {
    type: number
    sql: ${TABLE}.revtstmp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
