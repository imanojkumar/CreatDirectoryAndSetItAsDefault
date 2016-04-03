## Copyright: Manoj Kumar

# Ask user to give path to directory
directory <-  readline('Enter Path to Directory You want to set as Default (e.g.:  E:/MyDirectory): ')

# Functions is defined in the background
myfunction <- function(directory) {
  if (!is.null(directory))
    if (file.exists(directory)) {
      cat("Directory exists! Setting it as default.\n")
      setwd(directory)
      cat("Done !")
    } else {
      cat("Sorry ! Directory address you mentioned, does not exist.\n")
      cat("Creating it....\n")
      dir.create(directory, showWarnings = FALSE)
      cat("Directory Created. Setting it as default.\n")
      setwd(directory)
      cat("Done !")
    }
}

# Function runs in the background and sets the user defined directory as default
myfunction(directory)



