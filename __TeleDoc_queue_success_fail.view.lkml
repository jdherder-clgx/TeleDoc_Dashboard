view: __TeleDoc_queue_success_fail {

  derived_table: {
    sql:

    with cte_job_execution as(
      select  cast( ( coalesce(   job_status, ' ' ) ) as varchar ) as job_status
      from  public.job_execution je
      inner join public.job j on je.job_id = j.id

    ) select
      case
        when job_status = 'JOB_COMPLETED' then 'Successful'
        when job_status like  '%ERROR%'  then 'Failed'
        else 'Incomplete'
      end as EXECUTION_STATUS,
      round(( count( job_status )* 100.0 /( select count(*) from cte_job_execution ))::numeric, 2 ) as PERCENTAGE
    from
      cte_job_execution
    group by
      EXECUTION_STATUS;;   }


    dimension: EXECUTION_STATUS {
      type: string
      sql: ${TABLE}.EXECUTION_STATUS ;;
    }

# MEASURE required for PIE CHART
    measure: PERCENTAGE {
      type: sum
      value_format: "0.00"
      sql: ${TABLE}.PERCENTAGE ;;
    }


  } # END
