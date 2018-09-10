view: job {
  sql_table_name: public.job ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: additional_data_mapping {
    type: string
    sql: ${TABLE}.additional_data_mapping ;;
  }

  dimension: address_1_field_position {
    type: number
    sql: ${TABLE}.address_1_field_position ;;
  }

  dimension: address_1_include_output {
    type: yesno
    sql: ${TABLE}.address_1_include_output ;;
  }

  dimension: address_2_field_position {
    type: number
    sql: ${TABLE}.address_2_field_position ;;
  }

  dimension: address_2_include_output {
    type: yesno
    sql: ${TABLE}.address_2_include_output ;;
  }

  dimension: base_aws_input_path {
    type: string
    sql: ${TABLE}.base_aws_input_path ;;
  }

  dimension: base_aws_output_path {
    type: string
    sql: ${TABLE}.base_aws_output_path ;;
  }

  dimension: base_aws_path {
    type: string
    sql: ${TABLE}.base_aws_path ;;
  }

  dimension: city_field_position {
    type: number
    sql: ${TABLE}.city_field_position ;;
  }

  dimension: city_include_output {
    type: yesno
    sql: ${TABLE}.city_include_output ;;
  }

  dimension: column_delimiter_type {
    type: string
    sql: ${TABLE}.column_delimiter_type ;;
  }

  dimension: compression_encryption_order_type {
    type: string
    sql: ${TABLE}.compression_encryption_order_type ;;
  }

  dimension: compression_password {
    type: string
    sql: ${TABLE}.compression_password ;;
  }

  dimension: compression_type {
    type: string
    sql: ${TABLE}.compression_type ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: date_of_birth_field_position {
    type: number
    sql: ${TABLE}.date_of_birth_field_position ;;
  }

  dimension: date_of_birth_include_output {
    type: yesno
    sql: ${TABLE}.date_of_birth_include_output ;;
  }

  dimension: email_notification_bcc {
    type: string
    sql: ${TABLE}.email_notification_bcc ;;
  }

  dimension: email_notification_cc {
    type: string
    sql: ${TABLE}.email_notification_cc ;;
  }

  dimension: email_notification_to {
    type: string
    sql: ${TABLE}.email_notification_to ;;
  }

  dimension: file_encrypted {
    type: yesno
    sql: ${TABLE}.file_encrypted ;;
  }

  dimension: first_name_field_position {
    type: number
    sql: ${TABLE}.first_name_field_position ;;
  }

  dimension: first_name_include_output {
    type: yesno
    sql: ${TABLE}.first_name_include_output ;;
  }

  dimension: ftp_email_notification_bcc {
    type: string
    sql: ${TABLE}.ftp_email_notification_bcc ;;
  }

  dimension: ftp_email_notification_cc {
    type: string
    sql: ${TABLE}.ftp_email_notification_cc ;;
  }

  dimension: ftp_email_notification_to {
    type: string
    sql: ${TABLE}.ftp_email_notification_to ;;
  }

  dimension: ftp_key {
    type: string
    sql: ${TABLE}.ftp_key ;;
  }

  dimension: ftp_user {
    type: string
    sql: ${TABLE}.ftp_user ;;
  }

  dimension: header_fields {
    type: string
    sql: ${TABLE}.header_fields ;;
  }

  dimension: id_analytics {
    type: yesno
    sql: ${TABLE}.id_analytics ;;
  }

  dimension: input_file_header_inclusion {
    type: yesno
    sql: ${TABLE}.input_file_header_inclusion ;;
  }

  dimension: input_private_encryption_key {
    type: string
    sql: ${TABLE}.input_private_encryption_key ;;
  }

  dimension: input_private_key_password {
    type: string
    sql: ${TABLE}.input_private_key_password ;;
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

  dimension: job_name {
    type: string
    sql: ${TABLE}.job_name ;;
  }

  dimension: last_name_field_position {
    type: number
    sql: ${TABLE}.last_name_field_position ;;
  }

  dimension: last_name_include_output {
    type: yesno
    sql: ${TABLE}.last_name_include_output ;;
  }

  dimension: model_fields {
    type: string
    sql: ${TABLE}.model_fields ;;
  }

  dimension: modified_by_user {
    type: string
    sql: ${TABLE}.modified_by_user ;;
  }

  dimension: output_compression_password {
    type: string
    sql: ${TABLE}.output_compression_password ;;
  }

  dimension: output_compression_type {
    type: string
    sql: ${TABLE}.output_compression_type ;;
  }

  dimension: output_file_header_inclusion {
    type: yesno
    sql: ${TABLE}.output_file_header_inclusion ;;
  }

  dimension: output_public_encryption_key {
    type: string
    sql: ${TABLE}.output_public_encryption_key ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: row_delimiter_type {
    type: string
    sql: ${TABLE}.row_delimiter_type ;;
  }

  dimension: scoring_date_field_position {
    type: number
    sql: ${TABLE}.scoring_date_field_position ;;
  }

  dimension: scoring_date_include_output {
    type: yesno
    sql: ${TABLE}.scoring_date_include_output ;;
  }

  dimension: ssn_field_position {
    type: number
    sql: ${TABLE}.ssn_field_position ;;
  }

  dimension: ssn_include_output {
    type: yesno
    sql: ${TABLE}.ssn_include_output ;;
  }

  dimension: state_field_position {
    type: number
    sql: ${TABLE}.state_field_position ;;
  }

  dimension: state_include_output {
    type: yesno
    sql: ${TABLE}.state_include_output ;;
  }

  dimension: unique_id_field_position {
    type: number
    value_format_name: id
    sql: ${TABLE}.unique_id_field_position ;;
  }

  dimension: unique_id_include_output {
    type: yesno
    sql: ${TABLE}.unique_id_include_output ;;
  }

  dimension_group: update_dt {
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
    sql: ${TABLE}.update_dt ;;
  }

  dimension: zip_field_position {
    type: number
    sql: ${TABLE}.zip_field_position ;;
  }

  dimension: zip_include_output {
    type: yesno
    sql: ${TABLE}.zip_include_output ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      job_name,
      customer.id,
      customer.customer_name,
      job_execution.count,
      job_execution_aud.count
    ]
  }
}
