
view: __TeleDoc_queue_Running_jobs {

  derived_table: {
    sql:
    select
      j.job_name as NAME
    , je.start_date as SCHEDULED_RUN_DATE
    , je.job_status as STATUS
    , customer_name as CUSTOMER_NAME
    from public.job j
    inner join public.job_execution je on je.job_id = j.id
    inner join public.customer c on c.id = j.customer_id
    where je.start_date >=  CURRENT_DATE + interval '0 hour'  /* scheduled for today */
    and   je.end_date is null
    and je.job_status <> 'JOB_COMPLETED'
    order by  je.start_date desc;;  }

      dimension: NAME {
        type: string
        sql: ${TABLE}.NAME ;;
      }
      dimension: SCHEDULED_RUN_DATE {
        type: date_time
        sql: ${TABLE}.SCHEDULED_RUN_DATE ;;
      }
      dimension: STATUS {
        type: string
        sql: ${TABLE}.STATUS ;;
      }
      dimension: CUSTOMER_NAME {
        type: string
        sql: ${TABLE}.CUSTOMER_NAME ;;
      }
    } #END
