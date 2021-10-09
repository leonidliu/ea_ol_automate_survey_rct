# ---------- CONFIG ----------

# (string) Title of the automated report
title <- ""

# (integer) Alchemer survey ID
survey_id <- 6555071  # this is an example survey

# (string) Path to data, where data is placed if downloading from Alchemer
data_path <- "data/wv.csv"  # this is an example path

# (boolean) Download data from Alchemer?
download_data <- F

# (boolean) Delete data afterward?
delete_data <- F

# (string) Alchemer API token
api_token <- ""

# (string) Alchemer API secret key
api_secret <- ""

# (string) Path to directory in which to place auto-generated reports
output_dir <- "reports"

# ----------- RUN REPORT ----------

# Source render functions
source("R/render_functions.R")

# Render report
render_report(output_dir = output_dir,
              title = title,
              survey_id = survey_id,
              data_path = data_path,
              download_data = download_data,
              delete_data = delete_data,
              api_token = api_token,
              api_secret = api_secret)
