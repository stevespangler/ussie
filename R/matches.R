#' Create a standardized tibble for league data
#'
#' Given a league-play data frame from {engsoccer}, returns a tibble with
#' standardised column-names and types, e.g. `date` is a `Date`.
#'
#' @param data_engsoc dataframe from engsoccer package
#' @param country_name league country name, one of Spain, Italy, England,
#' or Holland
#'
#' @return dataframme, tibble
#' @export
#'
#' @examples uss_make_matches(engsoccerdata::spain, "Spain")
uss_make_matches <- function(data_engsoc, country_name) {
  result <-
    data_engsoc |>
    tibble::as_tibble() |>
    dplyr::transmute(
      country = as.character(country_name),
      tier = factor(tier, levels = c("1", "2", "3", "4")),
      season = as.integer(Season),
      date = as.Date(Date),
      home = as.character(home),
      visitor = as.character(visitor),
      goals_home = as.integer(hgoal),
      goals_visitor = as.integer(vgoal)
    )
  result
}
