#' boxplot quick function
#'
#' this function creates a quick boxplot for visualizing
#' categorical and continuous variables in ggplot2
#'
#' @param x is a categorical variable in the dataset
#' @param y is a continuous variable in the dataset
#' @param data any dataset
#' @param na.rm will keep 'NA' values in the boxplot
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
