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
      country = as.character(.env$country_name),
      tier = factor(.data$tier, levels = c("1", "2", "3", "4")),
      season = as.integer(.data$Season),
      date = as.Date(.data$Date),
      home = as.character(.data$home),
      visitor = as.character(.data$visitor),
      goals_home = as.integer(.data$hgoal),
      goals_visitor = as.integer(.data$vgoal)
    )
  result
}
