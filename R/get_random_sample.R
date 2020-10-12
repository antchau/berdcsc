#' Sample rows
#'
#' Get a random sample of rows from a data frame
#'
#' @param df A data frame
#' @param n Number of rows to randomly sample
#' @param seed Seed number. Use for reproducibility
#'
#' @return A data frame with n randomly selected rows.
#' @export
#'
#' @examples
#' get_random_sample(mtcars, n = 3)
get_random_sample <- function(df, n, seed = 111){
  set.seed(seed)
  sampled <- df[sample(nrow(df), n), ]
  return(sampled)
}
