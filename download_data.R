#Download the file. Put it in the Data folder
path <- getwd()
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
f <- "Dataset.zip"
if (!file.exists(path)) {
  dir.create(path)
}

# only download for the 1st time
if (!file.exists(paste (path,f, sep = "/"))) {
  download.file(url, file.path(path, f))
}

#Unzip the file only if not exist
if (!file.exists(paste (path,"UCI HAR Dataset", sep = "/"))) {

  executable <- file.path("C:", "Program Files", "WinRAR", "WinRAR.exe")
  parameters <- "x"
  cmd <- paste(paste0("\"", executable, "\""), parameters, paste0("\"", file.path(path, 
                                                                                  f), "\""))
  system(cmd)
}

pathIn <- file.path(path, "UCI HAR Dataset")
setwd(pathIn)
