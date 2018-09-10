view: customer_aud {
  sql_table_name: public.customer_aud ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension_group: insert_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.insert_dt ;;
  }

  dimension: merchant_id {
    type: number
    sql: ${TABLE}.merchant_id ;;
  }

  dimension: rev {
    type: number
    sql: ${TABLE}.rev ;;
  }

  dimension: revtype {
    type: number
    sql: ${TABLE}.revtype ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customer_name]
  }
}
