
view: __TeleDoc_queue_Next_X_days {

  derived_table: {
    sql:
      select
      j.job_name as JOB_NAME
    --, j.schedule_date_time as SCHEDULED_RUN_DATE
    , je.end_date as MOST_RECENT_EXECUTION_DATE
    , je.job_status as STATUS
    --, case when je.execution_date < CURRENT_DATE then null
    --  else je.execution_date
    --  end as "EXECUTION_DATE"
    --, case when je.end_date < CURRENT_DATE + interval '0 hour' then null  /* ORIG */
    --, case when (j.schedule_date_time < NOW() and je.end_date < CURRENT_DATE + interval '0 hour') then null
    --       when (j.schedule_date_time > NOW() and je.end_date < NOW()) then null
    --       when je.end_date is NULL then null /* See COMPLETED JOBS for previous execution data and status */
    --  else je.job_status
      --end  as STATUS
    , c.customer_name as CUSTOMER_NAME
    from public.job j
    inner join public.job_execution je on je.job_id = j.id
    inner join public.customer c on c.id = j.customer_id
    where
    --j.schedule_date_time between CURRENT_DATE + interval '0 hour' and NOW() + '10 day'::interval  /* Next 10 days j.schedule_date_time*/
    --and
    je.id = (select MAX(x.id) from public.job_execution x where x.job_id = j.id )
    order by j.id --, j.schedule_date_time desc
      ;;  }

      dimension: JOB_NAME {
        type: string
        sql: ${TABLE}.JOB_NAME ;;
      }
      # dimension: SCHEDULED_RUN_DATE {
      #   type: date_time
      #   sql: ${TABLE}.SCHEDULED_RUN_DATE ;;
      # }
      dimension: MOST_RECENT_EXECUTION_DATE {
        type: date_time
        sql: ${TABLE}.MOST_RECENT_EXECUTION_DATE ;;
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
