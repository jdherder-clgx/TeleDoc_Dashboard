
view: __TeleDoc_queue_Overdue_jobs {

  derived_table: {
    sql:

    select
      j.job_name as NAME
    , je.start_date as SCHEDULED_RUN_DATE
    , DATE_PART('day',   NOW() - je.start_date) * 24 +  DATE_PART('hour', NOW() - je.start_date) as HOURS_OVERDUE
    , je.job_status as STATUS
    , customer_name as CUSTOMER_NAME
    from public.job j
    inner join public.job_execution je on je.job_id = j.id
    inner join public.customer c on c.id = j.customer_id
    where
    je.start_date < NOW()
    and je.job_status <> 'JOB_COMPLETED'
    and je.id = (select MAX(x.id) from public.job_execution x where x.job_id = j.id )
    and (je.start_date is not null and je.start_date >= current_date - interval '30 days') /* 30 days is arbitrary but seems to be enough */
    order by  je.start_date desc
        ;;  }

      dimension: NAME {
        type: string
        sql: ${TABLE}.NAME ;;
      }
      dimension: SCHEDULED_RUN_DATE {
        type: date_time
        sql: ${TABLE}.SCHEDULED_RUN_DATE ;;
      }
      dimension: HOURS_OVERDUE {
        type: number
        sql: ${TABLE}.HOURS_OVERDUE ;;
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
