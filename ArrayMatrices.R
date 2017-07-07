##### Array & Matrices #####

## cbind and rbind
a<-array(c(1:10),dim=c(5,2))
a
b<-array(c(11:20),dim=c(5,2))
b
cbind(a,b)
rbind(a,b)
cbind(c(a,b))

## sliced view
arr=array(c(1:20),dim=c(4,5))
arr
i=cbind(1:3,3:1)
i
arr[i]
arr[i]<-0
arr

## inner product & outer product
a*b            ## element-wise multiplication
t(a)%*%b       ## matrix multiplication
crossprod(a,b) ## equivalent to t(a)%*%b
crossprod(b,a)
outer(a,b)
outer(b,a)

## transpose & permutation: only for 2D matrices
t(a)
aperm(a,c(2,1))

## diagonal
d<-diag(c(1)*3) ## equivalent to diag(3)
d
diag(5)
e<-array(1:9,c(3,3))
e
diag(e)

## Linear Equation & Inverse
A<-array(c(1,2,2,1),dim=c(2,2))
solve(A)

## Eigenvalues & Eigenvectors
eigen(A)

## Singular Value Decomposition
svd(A)
absdet<-prod(svd(A)$d)
absdet
det(A)

D<-diag(svd(a)$d)
D
U<-svd(a)$u
V<-svd(a)$v
U%*%D%*%t(V)
svd(b)


