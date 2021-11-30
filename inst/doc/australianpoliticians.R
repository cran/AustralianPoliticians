## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(AustralianPoliticians)

## ----eval = F-----------------------------------------------------------------
#  show_datacodes()
#  # A tibble: 4 x 2
#    request_code dataset
#    <chr>        <chr>
#  1 all          australian_politicians-all.csv
#  2 allbyparty   australian_politicians-all-by_party.csv
#  3 mps          australian_politicians-mps-by_division.csv
#  4 senators     australian_politicians-senators-by_state.csv

## ---- eval = F----------------------------------------------------------------
#  get_auspol("all")
#  # A tibble: 1,781 x 20
#     uniqueID  surname allOtherNames firstName commonName
#     <chr>     <chr>   <chr>         <chr>     <chr>
#   1 Abbott18~ Abbott  Richard Hart~ Richard   NA
#   2 Abbott18~ Abbott  Percy Phipps  Percy     NA
#   3 Abbott18~ Abbott  Macartney     Macartney Mac
#   4 Abbott18~ Abbott  Charles Lydi~ Charles   Aubrey
#   5 Abbott18~ Abbott  Joseph Palmer Joseph    NA
#   6 Abbott19~ Abbott  Anthony John  Anthony   Tony
#   7 Abel1939  Abel    John Arthur   John      NA
#   8 Abetz1958 Abetz   Eric          Eric      NA
#   9 Adams1943 Adams   Judith Anne   Judith    NA
#  10 Adams1951 Adams   Dick Godfrey~ Dick      NA
#  # ... with 1,771 more rows, and 15 more variables:
#  #   displayName <chr>, earlierOrLaterNames <chr>,
#  #   title <chr>, gender <chr>, birthDate <date>,
#  #   birthYear <dbl>, birthPlace <chr>,
#  #   deathDate <date>, member <dbl>, senator <dbl>,
#  #   wasPrimeMinister <dbl>, wikidataID <chr>,
#  #   wikipedia <chr>, adb <chr>, comments <chr>
#  
#  all_auspol <- get_auspol("all")

## ----eval = F-----------------------------------------------------------------
#  # Return codes used to call datasets
#  get_reps_senate("codes")
#  # A tibble: 3 x 2
#    request_code dataset
#    <chr>        <chr>
#  1 reps_senate  Generates a dataset of HoRs and Senate ~
#  2 reps         Generates a dataset of HoRs members
#  3 senate       Generates a dataset of Senate members
#  
#  # Request HoR and Senate dataset
#  reps_senate <- get_reps_senate("reps_senate")
#  
#  # Preview dataset
#  head(reps_senate)
#  # A tibble: 6 x 4
#    uniqueID   from       to         house
#    <chr>      <date>     <date>     <chr>
#  1 Abbott1869 1913-05-31 1919-11-03 HoR
#  2 Abbott1886 1925-11-14 1929-10-12 HoR
#  3 Abbott1886 1931-12-19 1937-03-28 HoR
#  4 Abbott1891 1940-09-21 1949-10-31 HoR
#  5 Abbott1957 1994-03-26 2019-05-18 HoR
#  6 Abel1939   1975-12-13 1977-11-10 HoR
#  
#  
#  # Request HoR dataset
#  reps <- get_reps_senate("reps")
#  
#  # Preview dataset
#  head(reps)
#  # A tibble: 6 x 4
#    uniqueID   from       to         house
#    <chr>      <date>     <date>     <chr>
#  1 Abbott1869 1913-05-31 1919-11-03 HoR
#  2 Abbott1886 1925-11-14 1929-10-12 HoR
#  3 Abbott1886 1931-12-19 1937-03-28 HoR
#  4 Abbott1891 1940-09-21 1949-10-31 HoR
#  5 Abbott1957 1994-03-26 2019-05-18 HoR
#  6 Abel1939   1975-12-13 1977-11-10 HoR
#  
#  
#  # Request Senate dataset
#  senate <- get_reps_senate("senate")
#  
#  #Preview dataset
#  head(senate)
#  # A tibble: 6 x 4
#    uniqueID    from       to         house
#    <chr>       <date>     <date>     <chr>
#  1 Abbott1859  1928-12-18 1929-06-30 Senate
#  2 Abbott1869  1925-11-14 1929-06-30 Senate
#  3 Abbott1877  1935-07-01 1941-06-30 Senate
#  4 Abetz1958   1994-02-22 NA         Senate
#  5 Adams1943   2005-07-01 2012-03-31 Senate
#  6 Adamson1857 1920-07-01 1922-05-02 Senate

