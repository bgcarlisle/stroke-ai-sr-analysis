library(tidyverse)

## Make a folder to contain downloaded data
if ( ! file.exists("working/")) {
    dir.create("working/")
}

## Make a folder to contain processed output
if ( ! file.exists("output/")) {
    dir.create("output/")
}

## Make a folder to contain plots
if ( ! file.exists("plots/")) {
    dir.create("plots/")
}

## Download extractions
extractions <- read_tsv("https://numbat.bgcarlisle.com/stroke-ai/export/2021-12-17_062606-form_2-refset_6-extractions.tsv")
extractions_result <- read_tsv("https://numbat.bgcarlisle.com/stroke-ai/export/2021-12-17_062625-table_results-refset_6-table-extraction.tsv")
extractions_clinical <- read_tsv("https://numbat.bgcarlisle.com/stroke-ai/export/2021-12-17_062700-table_clin_comp_results-refset_6-table-extraction.tsv")

## Save extractions to working/ folder
extractions %>%
    write_tsv("working/extractions.tsv")

extractions_result %>%
    write_tsv("working/extractions_result.tsv")

extractions_clinical %>%
    write_tsv("working/extractions_clinical.tsv")

## Download final 
final <- read_tsv("https://numbat.bgcarlisle.com/stroke-ai/export/2021-12-17_062103-form_2-refset_6-final.tsv")
final_result <- read_tsv("https://numbat.bgcarlisle.com/stroke-ai/export/2021-12-17_062301-table_results-refset_6-table-final.tsv")
final_clinical <- read_tsv("https://numbat.bgcarlisle.com/stroke-ai/export/2021-12-17_062319-table_clin_comp_results-refset_6-table-final.tsv")

## Save final to working/folder
final %>%
    write_tsv("working/final.tsv")

final_result %>%
    write_tsv("working/final_result.tsv")

final_clinical %>%
    write_tsv("working/final_clinical.tsv")

