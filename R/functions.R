add_time <- function(
  time = Sys.time(),
  file = "./db/data.txt"
) {
  lines <- readLines(file)
  lines <- c(lines, format(time))

  cat(lines, sep = "\n")

  writeLines(text = lines, con = file)
}