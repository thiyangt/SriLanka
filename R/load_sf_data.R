#' Load Simple Feature Objects to Plot Maps of Sri Lanka
#'
#' This function loads spatial `.rda` files stored in `inst/extdata/`.
#'
#' @param file.name The name of the `.rda` file to load (e.g., `"lka_adm1.rda"`).
#' @return An `sf` object containing the loaded spatial data.
#' @examples
#' lka_adm1 <- load_sf_data("lka_adm1.rda")
#' plot(lka_adm1)
load_sf_data <- function(file.name) {
  file_path <- system.file("extdata", file.name, package = "SriLanka")
  
  if (file_path == "") {
    stop("File not found in inst/extdata/")
  }
  
  env <- new.env()
  load(file_path, envir = env)
  
  return(env[[ls(env)[1]]])  # Return the first object in the .rda file
}
