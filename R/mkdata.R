#'Create dataframe
#'
#'@param n number
#'@param p rate of men
#'
#'@return dataframe(name,address)
#'@description dataframe
#'
#'@export
mkdata <- function(n,p){

  sample_n(tbl = myoji, size = n) %>%
    mutate(num = row_number()) -> randomsei
  sample_n(tbl = otoko_namae, size = round(p*n)) -> randommei_m
  sample_n(tbl = onna_namae, size = round((1-p)*n)) -> randommei_f
  rbind(randommei_m, randommei_f) %>%
    mutate(num = row_number()) -> randommei
  merge(randomsei, randommei, by = "num") -> name

  sample_n(tbl = jusyo, size = n) %>%
    mutate(num = row_number()) -> randomadd

  merge(name, randomadd, by = "num") -> data1
  data1 <- data1[, colnames(data1) != "num"]


  return(data1)
}
