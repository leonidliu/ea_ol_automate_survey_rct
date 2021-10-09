# ---------- CONFIG ----------

# (string) Title of the automated report
title <- "9/23 West Virginia Test"

# (integer) Alchemer survey ID
survey_id <- 6555071

# (string) Path to data, where data is placed if downloading from Alchemer
data_path <- "data/wv.csv"

# (boolean) Download data from Alchemer?
download_data <- F

# (boolean) Delete data afterward?
delete_data <- F

# (string) Alchemer API token
api_token <- "186f93f71badc7f58fd349d3dcaca8b426974ef7a39131e162"

# (string) Alchemer API secret key
api_secret <- "A9db0fQYULp/I"

# (string) Path to render_functions.R
functions_path <- "R/render_functions.R"

# (string) Path to auto_results_generator.Rmd
script_path <- "R/auto_results_generator.Rmd"

# (string) Path to directory in which to place auto-generated reports
output_dir <- "reports"

# ----------- RUN REPORT ----------

# Source render functions
source(functions_path)

# Render report
render_report(script_path = script_path,
              output_dir = output_dir,
              title = title,
              survey_id = survey_id,
              data_path = data_path,
              download_data = download_data,
              delete_data = delete_data,
              api_token = api_token,
              api_secret = api_secret)
