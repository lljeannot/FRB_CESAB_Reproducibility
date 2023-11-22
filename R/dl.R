
## Create function to download github files ----
#' Download 4 files for FRB_CESAB workshop
#'
#' @param url1 Url of the pantheria file.
#' @param url2 Url of the wildfinder ecoregions list.
#' @param url3 Url of the wildfinder ecoregions species.
#' @param url4 Url of the wildfinder ecoregions species.
#' @description 
#' This function downloads the PanTHERIA dataset hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>.
dl <- function (url1, url2, url3, url4) {
  if (dir.exists(here::here("data/pantheria")) == F & dir.exists(here::here("data/wildfinder")) == F) {
    dir.create("data/pantheria")
    dir.create("data/wildfinder")
    utils::download.file(url1, here::here("data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt"))
    utils::download.file(url2, here::here("data/wildfinder/wildfinder-ecoregions_list.csv"))
    utils::download.file(url3, here::here("data/wildfinder/wildfinder-ecoregions_species.csv"))
    utils::download.file(url4, here::here("data/wildfinder/wildfinder-mammals_list.csv"))
  }
  else{
    if(length(list.files("data/pantheria")) >= 1) {
      #n1 <- readline("The files are already downloaded. Overwrite? [Y/N]")
      n1 = "Y"
      if (n1 == "N") {
        utils::download.file(url1, here::here("data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt"))
        utils::download.file(url2, here::here("data/wildfinder/wildfinder-ecoregions_list.csv"))
        utils::download.file(url3, here::here("data/wildfinder/wildfinder-ecoregions_species.csv"))
        utils::download.file(url4, here::here("data/wildfinder/wildfinder-mammals_list.csv"))
      }
      else {
        return("Data downloaded")
      }
    }
    else{
      utils::download.file(url1, here("data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt"))
      utils::download.file(url2, here("data/wildfinder/wildfinder-ecoregions_list.csv"))
      utils::download.file(url3, here("data/wildfinder/wildfinder-ecoregions_species.csv"))
      utils::download.file(url4, here("data/wildfinder/wildfinder-mammals_list.csv"))
    }
  }
}
