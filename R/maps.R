#' Simple feature objects to plot Sri Lanka maps
#' 
#' There are four simple feature objects in this package that can be used to
#' plot Sri Lanka maps:
#' - `lka_adm0`: Country-level boundaries
#' - `lka_adm1`: Province-level boundaries
#' - `lka_adm2`: District-level boundaries
#' - `lka_adm3`: Divisional secretariats boundaries
#'
#' @references https://www.geoboundaries.org/data/1_3_0/shp/LKA/ (accessed: 4 March 2025)
#' @name SriLanka
#'
#' @examples
#' library(ggplot2)
#'
#' # Country-level boundaries
#' ggplot(lka_adm0) +
#'   geom_sf()
#'
#' # Province-level boundaries
#' ggplot(lka_adm1) +
#'   geom_sf()
#'
#' # District-level boundaries
#' ggplot(lka_adm2) +
#'   geom_sf()
#'   
#' # Divisional secretariats boundaries
#' ggplot(lka_adm3) +
#'   geom_sf()
"lka_adm0"

#' @rdname SriLanka
"lka_adm1"

#' @rdname SriLanka
"lka_adm2"

#' @rdname SriLanka
"lka_adm3"