- dashboard: looker-teledoc-preprod
  title: TeleDoc Dashboard
  layout: newspaper
  description: TeleDoc Dashboard from TDOC-stg source.
  refresh: 10 minutes
  auto_run: true
  elements:
  - title: Scheduled Next 10 Days
    name: Scheduled Next 10 Days
    model: teledoc_dashboard
    explore: __TeleDoc_queue_Next_X_days
    type: table
    fields:
    - __TeleDoc_queue_Next_X_days.NAME
    - __TeleDoc_queue_Next_X_days.MOST_RECENT_EXECUTION_DATE
    - __TeleDoc_queue_Next_X_days.STATUS
    - __TeleDoc_queue_Next_X_days.CUSTOMER_NAME
    sorts:
    - __TeleDoc_queue_Next_X_days.MOST_RECENT_EXECUTION_DATE desc
    limit: 500
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_labels:
      __TeleDoc_queue_Next_X_days.MOST_RECENT_EXECUTION_DATE: Scheduled Date
    refresh: '60000'
    row: 7
    col: 0
    width: 12
    height: 7
  - title: Executing
    name: Executing
    model: teledoc_dashboard
    explore: __TeleDoc_queue_Running_jobs
    type: table
    fields:
    - __TeleDoc_queue_Running_jobs.NAME
    - __TeleDoc_queue_Running_jobs.STATUS
    - __TeleDoc_queue_Running_jobs.CUSTOMER_NAME
    - __TeleDoc_queue_Running_jobs.SCHEDULED_RUN_DATE
    limit: 500
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_labels:
      __TeleDoc_queue_Running_jobs.SCHEDULED_RUN_DATE: Scheduled Date
    refresh: '60000'
    row: 0
    col: 0
    width: 10
    height: 7
  - title: Overdue
    name: Overdue
    model: teledoc_dashboard
    explore: __TeleDoc_queue_Overdue_jobs
    type: table
    fields:
    - __TeleDoc_queue_Overdue_jobs.NAME
    - __TeleDoc_queue_Overdue_jobs.SCHEDULED_RUN_DATE
    - __TeleDoc_queue_Overdue_jobs.HOURS_OVERDUE
    - __TeleDoc_queue_Overdue_jobs.STATUS
    sorts:
    - __TeleDoc_queue_Overdue_jobs.SCHEDULED_RUN_DATE desc
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_labels:
      __TeleDoc_queue_Overdue_jobs.SCHEDULED_RUN_DATE: Scheduled Date
    refresh: '60000'
    note_state: collapsed
    note_display: hover
    note_text: All overdue jobs, including test, last 30 days
    row: 0
    col: 15
    width: 9
    height: 7
  - title: Completed
    name: Completed
    model: teledoc_dashboard
    explore: __TeleDoc_queue_Completed_jobs
    type: table
    fields:
    - __TeleDoc_queue_Completed_jobs.NAME
    - __TeleDoc_queue_Completed_jobs.COMPLETED_DATE
    - __TeleDoc_queue_Completed_jobs.STATUS
    - __TeleDoc_queue_Completed_jobs.CUSTOMER_NAME
    sorts:
    - __TeleDoc_queue_Completed_jobs.COMPLETED_DATE desc
    limit: 500
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    refresh: '60000'
    row: 7
    col: 12
    width: 12
    height: 7
  - title: TeleDoc Job Execution Status
    name: TeleDoc Job Execution Status
    model: teledoc_dashboard
    explore: __TeleDoc_queue_success_fail
    type: looker_pie
    fields:
    - __TeleDoc_queue_success_fail.EXECUTION_STATUS
    - __TeleDoc_queue_success_fail.PERCENTAGE
    sorts:
    - __TeleDoc_queue_success_fail.PERCENTAGE desc
    limit: 500
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      Failed: "#c71d65"
    series_labels:
      Successful: Success
      Failed: Fail
    refresh: '60000'
    row: 0
    col: 10
    width: 5
    height: 7
