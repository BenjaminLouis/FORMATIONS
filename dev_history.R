
print_pdf <- function(dir, file) {
  file.copy(from = here::here("static"), to = here::here(dir), recursive = TRUE)
  pagedown::chrome_print(here::here(dir, file), wait = 15)
  unlink(here::here(dir, "static"), recursive = TRUE)
}


print_pdf("Anova", "Anova.Rmd")
print_pdf("Database", "Database.Rmd")
print_pdf("EDA", "EDA.Rmd")
print_pdf("ggplot2", "ggplot2.Rmd")
print_pdf("Import", "Import.Rmd")
print_pdf("Rbase", "Rbase.Rmd")
print_pdf("References", "Reference.Rmd")
print_pdf("Rmarkdown", "Rmarkdown.Rmd")
print_pdf("Tidyverse", "Tidyverse.Rmd")
print_pdf("Workflow", "Workflow.Rmd")

