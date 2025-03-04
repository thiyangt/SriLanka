#' Download and Unzip Sri Lanka Administrative Boundaries Data
#'
#' This function downloads the Sri Lanka administrative boundary dataset (`lka_adm_20220816_SHP.zip`)
#' from [Humdata](https://data.humdata.org/dataset/cod-ab-lka), saves it to a local directory,
#' and extracts its contents.
#'
#' @param url The URL of the ZIP file. Default is the official dataset URL.
#' @param destfile The name of the ZIP file to be saved locally. Default is `"lka_adm_20220816_SHP.zip"`.
#' @param unzip_dir The directory where the extracted files will be stored. Default is `"lka_adm_shapes"`.
#' @return A character vector of extracted file names.
#' @import httr fs
#' @export
download_data <- function(
    url = "https://data.humdata.org/dataset/47c3de8e-0cfb-46b6-8f3d-c00a8c11929f/resource/527a17e2-b176-4d65-9826-9b5a22193776/download/lka_adm_20220816_SHP.zip",
    destfile = "lka_adm_20220816_SHP.zip",
    unzip_dir = "lka_adm_shapes"
) {

  GET(url, write_disk(destfile, overwrite = TRUE))
}
