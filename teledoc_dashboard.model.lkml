connection: "looker-teledoc-preprod"

# include all the views
include: "*.view"

#Added
include: "*.dashboard.lookml"
# include all dashboards in this project

datagroup: teledoc_dashboard_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: teledoc_dashboard_default_datagroup

###################

# Create an explorable item based on the "__TeleDoc_queue_Next_X_days" view
explore: __TeleDoc_queue_Next_X_days {

# Give the explore a user-friendly name in the Explore menu
  label: "TeleDoc queue Next X days"
}


# Create an explorable item based on the "__TeleDoc_queue_success_fail" view
explore: __TeleDoc_queue_success_fail {

# Give the explore a user-friendly name in the Explore menu
  label: "TeleDoc queue Success or Failure"
}


# Create an explorable item based on the "__TeleDoc_queue_Overdue_jobs" view
explore: __TeleDoc_queue_Overdue_jobs {

# Give the explore a user-friendly name in the Explore menu
  label: "TeleDoc queue Overdue jobs"
}


# Create an explorable item based on the "__TeleDoc_queue_Running_jobs" view
explore: __TeleDoc_queue_Running_jobs {

# Give the explore a user-friendly name in the Explore menu
  label: "TeleDoc queue Running jobs"
}


# Create an explorable item based on the "__TeleDoc_queue_Completed_jobs" view
explore: __TeleDoc_queue_Completed_jobs {

# Give the explore a user-friendly name in the Explore menu
  label: "TeleDoc queue Completed jobs"
}

###################
explore: customer {}

explore: customer_aud {}

explore: job {
  join: customer {
    type: left_outer
    sql_on: ${job.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: job_aud {
  join: customer {
    type: left_outer
    sql_on: ${job_aud.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: job_execution {
  join: job {
    type: left_outer
    sql_on: ${job_execution.job_id} = ${job.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${job.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: job_execution_aud {
  join: job {
    type: left_outer
    sql_on: ${job_execution_aud.job_id} = ${job.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${job.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: revinfo {}

explore: schema_version {}

explore: spring_session {}

explore: spring_session_attributes {}
