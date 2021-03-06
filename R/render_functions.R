render_report <- function(output_dir = "reports",
                          title = "",
                          survey_id,
                          data_path,
                          download_data = F,
                          delete_data = F,
                          api_token = "",
                          api_secret = "") {

  # Generate file name
  # timestamp <- Sys.time() %>% format("%Y_%m_%d_%H00")
  filename <- paste0("AutoReport_", survey_id, ".html")

  tryCatch(
    expr = {
      rmarkdown::render("R/auto_results_generator.Rmd",
                        output_file = filename,
                        output_dir = output_dir,
                        knit_root_dir = "..",
                        params = list(title = title,
                                      survey_id = survey_id,
                                      api_token = api_token,
                                      api_secret = api_secret,
                                      data_path = data_path,
                                      download_data = download_data,
                                      delete_data = delete_data,
                                      output_dir = output_dir))
    },
    error = function(e){
      print(paste("error with", filename))
    }
  )
}
