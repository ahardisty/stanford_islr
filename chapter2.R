

# Euclidian Geometry ------------------------------------------------------

# http://davetang.org/muse/2013/08/15/distance-matrix-computation/
  
data2 <- matrix(data = c(0, 3, 0, 2, 0, 0, 0, 1, 3, 0, 1, 2, -1, 0, 1, 1, 1, 1),
               nrow = 6, ncol = 3, byrow = TRUE)

data <- do.call(rbind, lapply(ls(pattern = "x"), get))
data <- cbind(data, y7)
colnames(data) <- rep("",4)

sqrt(rowSums(
  data^2
))

formData <- sqrt(rowSums(
  data2^2
))

formData %in% 

matData <- as.matrix(distData)
str(matData)
sum(matData[1])

as.matrix(distCalc)
distData <- dist(data, method = 'euclidian', upper = FALSE, diag = FALSE )
distData <- as.matrix(distData)
distData[NROW(distData),]


data
data^2
(x1)^2
data <- cbind(data,x4, )
class(data)
colnames(data) <- rep("",4)
dim(data)
csqrt(37)
cbind(ls(pattern = "x"))
x1 <- c(0,3,0)
x2 <- c(2,0,0)
x3 <- c(0,1,3)
x4 <- c(0,1,2)
x5 <- c(-1,0,1)
x6 <- c(1,1,1)
x7 <- rep(0,3)
y7 <- rep(0,6)

dist(x1)

sqrt(dist(rbind(x1,x4)^2))


x1 <- rnorm(30)
x2 <- rnorm(30)
dist(rowSums(rbind(x1, x2)))
sqrt(sum((x1-x4)^2))
sqrt(colSums(data[1,]-0^2))
colSums(data)

set.seed(123)
test <- data.frame(x=sample(1:10000,7), 
                   y=sample(1:10000,7), 
                   z=sample(1:10000,7))
test

#Euclidean distance in R
euclidean_distance <- function(p,q){
  sqrt(sum((p - q)^2))
}
#what is the distance between 1 and 5?
euclidean_distance(1,5)
[1] 4
#what about Cartesian coordinates?
euclidean_distance(c(2,2),c(5.535534,5.535534))
[1] 5
#what about points 4 and 6 from our data frame
euclidean_distance(test[4,],test[6,])
