add_time <- function(
  time = Sys.time(),
  file = "./data.txt"
) {

  if (file.exists(file)) {
    lines <- readLines(file)
  } else {
    lines <- "time"
  }

  lines <- c(lines, format(time))

  writeLines(text = lines, con = file)

  cat(readLines(file), sep = "\n")
}