
view: __TeleDoc_queue_Completed_jobs {

  derived_table: {
    sql:
    select
      j.job_name   as NAME
    , je.end_date as COMPLETED_DATE
    , je.job_status as STATUS
    , c.customer_name as CUSTOMER_NAME
    from public.job j
    inner join public.job_execution je on je.job_id = j.id
    inner join public.customer c on c.id = j.customer_id
    --where  '[2017-01-01, 2028-03-01)'::daterange @> je.end_date::date  /* RANGE starts with [ ends with ), ::date converts timestamp to date */
    and je.job_status = 'JOB_COMPLETED'
    and (je.end_date is null or je.end_date <= NOW() )
    order by je.end_date desc, je.job_status desc
        ;;     }


      dimension: NAME {
        type: string
        sql: ${TABLE}.NAME ;;
      }
      dimension: COMPLETED_DATE {
        type: date_time
        sql: ${TABLE}.COMPLETED_DATE ;;
      }
      dimension: STATUS {
        type: string
        sql: ${TABLE}.STATUS ;;
      }
      dimension: CUSTOMER_NAME {
        type: string
        sql: ${TABLE}.CUSTOMER_NAME ;;
      }


      ## MEASURE required for  CHART
      #measure: DURATION {
      #  hidden:  no
      #  type: sum
      #  sql: ${TABLE}.DURATION ;;
      #}

    } #END
