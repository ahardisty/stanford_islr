target <- data.table(B = c("a", "b", "c", "d", "e", "a", "b", "c", "d", "e"), 
                     val = as.integer(c(6:10, 1:5)))
ans2 <- DT[, .(B, val = c(C, A))]

B
DT <- data.table(A = 1L:5L, B = letters[1:5], C = 6L:10L  )
DT

# DT and the data.table package are pre-loaded

# Subset rows 1 and 3, and columns B and C
DT[c(1,3),.(B, C)]

# Assign to ans the correct value
# From DT, create a data.table, ans with two columns:B and val, where val 
# is the product of A and C.
ans <- DT[, .(B, val = A*C)]


# Fill in the blanks such that ans2 equals target
target <- data.table(B = c("a", "b", "c", "d", "e", "a", "b", "c", "d", "e"), 
                     val = as.integer(c(6:10, 1:5)))
target

ans2 <- DT[, .(B, val = c(C, A))]
ans2


# The data.table DT is loaded in your workspace

# Perform chained operations on DT

DT[,.(Sepal.Length = median(Sepal.Length), 
      Sepal.Width = median(Sepal.Width),
      Petal.Length = median(Petal.Length),
      Petal.Width = median(Petal.Width)), by = Species][order(-Species)]

DT

DT[, sum(C), by = A%%2]
DT[, sum(B), by = A%%2]

substr(iris$Species, 1,1)

DT <- data.table(A = rep(letters[2:1], each = 4L), B = rep(1:4, each = 2L), C = sample(8)) 
DT
ans <- DT[,  sum(B), by = A][order(A)]
ans
set.seed(1L)
DT <- data.table(A = rep(letters[2:1], each = 4L), B = rep(1:4, each = 2L), C = sample(8)) 

# Use chaining:
# Cumsum of C while grouping by A and B, and then select last two values of C while grouping by A

DT[,.(C = cumsum(C)), by = .(A, B)]
DT[,.(C = cumsum(C)), by = .(A,B)][, .(C = tail(C, 2)), by = B]


