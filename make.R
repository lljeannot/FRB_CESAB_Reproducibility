#' FRB_CESAB_Reproducibility: A Research Compendium
#' 
#' @description 
#' A paragraph providing a full description of the project and describing each 
#' step of the workflow.
#' 
#' @author Laura-Li Jeannot \email{laurali.jeannot@free.fr}
#' 
#' @date 2023/11/20



## Install Dependencies (listed in DESCRIPTION) ----

devtools::install_deps(upgrade = "never")


## Load Project Addins (R Functions and Packages) ----

devtools::load_all(here::here())


## Global Variables ----

# You can list global variables here (or in a separate R script)


## Run Project ----

# List all R scripts in a sequential order and using the following form:

source(here::here("analyses", "download-data.R"))

dl("github.com/rdatatoolbox/datarepo/blob/main/data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt",
      "github.com/rdatatoolbox/datarepo/blob/main/data/wildfinder/wildfinder-ecoregions_list.csv",
      "github.com/rdatatoolbox/datarepo/blob/main/data/wildfinder/wildfinder-ecoregions_species.csv",
      "github.com/rdatatoolbox/datarepo/blob/main/data/wildfinder/wildfinder-mammals_list.csv")
