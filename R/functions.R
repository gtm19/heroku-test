add_time <- function(
  time = Sys.time(),
  file = "./db/data.txt"
) {
  lines <- readLines(file)
  lines <- c(lines, format(time))
  writeLines(text = lines, con = file)
}