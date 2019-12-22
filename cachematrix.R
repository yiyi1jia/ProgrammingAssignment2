## This function takes a matrix and caches its inverse.





makeCacheMatrix <- function(x = matrix()) {

        cachedMatrix <<- x

        cachedInvertedMatrix <<- solve(x)

}





## This function compares the passed matrix to a cached matrix

## and if they are the same, it passes back the cached inverted matrix.

## If the matrix has changed, it recomputes the inverted matrix.



cacheSolve <- function(x, ...) {

        ## Return a matrix that is the inverse of 'x'

        if (!is.null(cachedMatrix)) {

                message("Checking cached matrix for changes...")

                if (identical(cachedMatrix, x)&&!is.null(cachedInvertedMatrix)) {

                        message("No changes detected. Returning cached inverted matrix:")

                        return(cachedInvertedMatrix)

                } else {

                        message ("Changes detected. Calculating inverted matrix:")

                        return(solve(x))

                }

        }

}
