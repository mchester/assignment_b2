#' boxplot quick function
#' this function creates a quick boxplot for visualizing
#' categorical and continuous variables
#'
#' 'quick_boxplot' returns a ggplot2 boxplot with
#' 'x' being categorical,
#' 'y' being continuous variables and
#' 'na.rm' being the keeping of NA values
#'
#' @params {{x}} is a categorical variable from column in dataset (diagonosis)
#' @params {{y}} is a continuous variable from column in dataset (select any continuous column)
#' @return a tidy, simple boxplot
#' @details the function will keep NA values
#' @details the function will be tested for the creation and printing of the object, as well as correct axis labels
#' @examples
#' quick_boxplot(datateachr::cancer_sample, diagnosis, perimeter_mean)
#' quick_boxplot(datateachr::cancer_sample, diagnosis, symmetry_mean)
#' quick_boxplot(datateachr::cancer_sample, diagnosis, area_mean)
#' @export

quick_boxplot <- function(data, x, y, na.rm = FALSE) {
  (ggplot2::ggplot(data, ggplot2::aes({{x}}, {{y}}))) +
    ggplot2::geom_boxplot()
}

