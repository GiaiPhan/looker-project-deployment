- dashboard: sales_dashboard
  title: Sales Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - name: Count of Orders By Countries
    title: Count of Orders By Countries Hello Giai Phan Development Final
    model: "@{model_cnn}"
    explore: order_items
    type: looker_pie
    fields: [users.country, order_items.count]
    sorts: [order_items.count desc 0]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 9
