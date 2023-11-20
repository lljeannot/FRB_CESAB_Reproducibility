library(here)
library(rcompendium)
library(roxygen2)

## Ajout d'un fichier DESCRIPTION ----
add_description()

## Ajout d'une licence ----
add_license(license = "GPL-2")

## Ajout de sous-répertoires ----
add_compendium(compendium = c("data", "analyses", "R", "figures", "outputs"))

usethis::use_r("dl")

## Génération de la doc ----
devtools::document()

## Ajout de dépendances ----
add_dependencies(compendium = ".")

## Installation des packages manquants ----
remotes::install_deps(upgrade = "never")

## Chargement des packages et fonctions R ----
devtools::load_all()

## Ajout d'un makefile ----
add_makefile()

## Ajout d'un script R ----
utils::file.edit(here::here("analyses", "download-data.R"))

## Ajout d'un README ----
add_readme_rmd(type = "compendium")

## Conversion du README.Rmd en README.md ----
rmarkdown::render("README.md")
