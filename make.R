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

devtools::load_all(here::here()) #pas besoin de mettre ca si on utilise rmarkdown


## Global Variables ----

# You can list global variables here (or in a separate R script)


## Run Project ----

# List all R scripts in a sequential order and using the following form:

source(here::here("analyses", "download-data.R"))

rmarkdown::render(here::here("index.qmd"),
                  params = list(fam = "Ursidae"))

