require(tidyverse)

ctdCompilation <- function(path=".")
{
  
ctdFiles <- list.files(path=path,recursive = T, full.names = T)
ctdData <- NULL 

  
  for (files in ctdFiles)
  {
    ctdData <- rbind(ctdData,as.matrix(read_csv2(files,skip=5, 
                                                       locale = locale(encoding = "ISO-8859-1"))))
    }
  
return(as_tibble(ctdData))
}