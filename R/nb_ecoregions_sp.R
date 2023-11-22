
## Create function to calculate number of ecoregions per species given a mammal family ----
#' #'
#' @param x Mammal family
#' @description 
#' This function calculates a number of ecoregions where each species is found.
nb_ecoregions_sp <- function (x) {
  ecoregions_data <- readr::read_csv("data/wildfinder/wildfinder-ecoregions_list.csv")
  species_data <- readr::read_csv("data/wildfinder/wildfinder-ecoregions_species.csv")
  mammals_data <- readr::read_csv("data/wildfinder/wildfinder-mammals_list.csv")
  fam_species <- mammals_data %>% 
    filter(family == x) %>% 
    select(species_id, sci_name) %>% 
    left_join(species_data, by = "species_id") %>%
    left_join(ecoregions_data, by = "ecoregion_id") %>% 
    select(-ecoregion_id) %>% 
    distinct(ecoregion, species_id, sci_name) %>% 
    group_by(species_id) %>% 
    mutate(n = n()) %>% 
    ungroup() %>% 
    distinct(n, sci_name) %>% 
    arrange(n)
}
