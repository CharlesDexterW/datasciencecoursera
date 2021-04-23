function(directory, pollutant, id = 1:332){
  mydirectory <- list.files(path = directory, pattern = "*.csv")
  x <- numeric()
  for(i in id){
    mydata <- read.csv(mydirectory[i])
    x <- c(x, mydata[[pollutant]])
  }	
  mean(x, na.rm = T)
}