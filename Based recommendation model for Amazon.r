
# we are reading the file from the working directory

library(readr)
read_file <- read.csv("Amazon - Movies and TV Ratings.csv") # if we want , we can use "stringsAsFactor = FALSE"

 # we are analysing the structure of the file and its different classess

ncolncol(read_file)
nrow(read_file)
head(read_file)
class(read_file)


# we have 207 columns and 4848 row of the different columns

# with  the column names  from userid to moviess 1 to 206(total 207 columns)


#we have to find the movies which has the maximun number of ratings : 


output <- numeric()
movie_num <- numeric()
count_num <- numeric()



for(i in 2 : length(read_file)) {
  
  #count_num [i] <- sum(read_file[,i] == 5 ,na.rm = TRUE) to find the movies with the hihest rating 
  
  count_num [i] <- sum(read_file[,i] >0  ,na.rm = TRUE) # to find the movies rated by the users
 output[i] <- sum(read_file[,i] , na.rm = TRUE)

 
 #if any of the movie having the negative rating lets check 
 
 # if(read_file[,i] <= 1 , na.rm = TRUE)
 #ptint()
 
 movie_num[i] <- i-1
 
 movie[i] <- paste('movie.no',movie_num[i])


  }


rating <- data.frame(movie, output,count_num)

sorting_movies <- rating[order(count_num,output),]


