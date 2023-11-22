
## Create function to graphically represent number of ecoregions per species given a family ----
#' #'
#' @param x Family
#' @description 
#' This function represents the number of ecoregions where each species is found.
nb_ecoregions_sp_graph <- function (x) {
  df <- nb_ecoregions_sp(x)
  ggplot(df, aes(x = sci_name, y = n, col = sci_name)) +
    geom_point()
}
