---
##Script name: cleaning_penguins_data.r
##
## Purpose of script: 
##      # Function for cleaning data found in Palmer Penguins dataset
##
## Author: This author
##
## Date Created: 2024-12-11
---

#A function to clean column names of Palmer Penguins dataset.
cleaning_penguin_data_columns <- function(raw_data){
  print("Cleaning column names, simplifying species names, removing empty columns and rows and removing unnecessary columns/rows")
  raw_data %>% 
    clean_names() %>% #Cleans names of dataframe to make readable by computer.
    mutate(species = case_when(
      species == "Adelie Penguin (Pygoscelis adeliae)" ~ "Adelie",
      species == "Chinstrap penguin (Pygoscelis antarctica)" ~ "Chinstrap",
      species == "Gentoo penguin (Pygoscelis papua)" ~ "Gentoo")) %>% #mutate() changes name of column.
    remove_empty(c("rows", "cols")) %>% #removes empty rows and columns from dataframe.
    dplyr::select(-starts_with("delta")) %>% #removes any column with name starting with delta.
    dplyr::select(-comments)} #removes comments column.