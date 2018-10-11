gmp <- read.table("https://raw.githubusercontent.com/SergeyMirvoda/MD-DA-2018/master/data/gmp.dat")
gmp$pop<-gmp$gmp/gmp$pcgmp
estimate.scaling.exponent <- function(a, y0=6611, response=gmp$pcgmp,
                                      predictor = gmp$pop, maximum.iterations=100, deriv.step = 1/100,
                                      step.scale = 1e-12, stopping.deriv = 1/100) {
  mse <- function(a) { mean((response - y0*predictor^a)^2) }
  for (iteration in 1:maximum.iterations) {
    deriv <- (mse(a+deriv.step) - mse(a))/deriv.step
    a <- a - step.scale*deriv
    if (abs(deriv) <= stopping.deriv) { break() }
  }
  fit <- list(y0=y0,a=a,iterations=iteration,
              converged=(iteration < maximum.iterations))
  return(fit)
}
estimate.scaling.exponent(0.15)

fact<-function(n) {
  r <- 1
  if (n>1) r<-fact(n-1)*n
  return (r)
} 

fact(5)

fib<-function(n) {
  if (n<=2) return (1) else {  
    a<-1;
    b<-1;
    for(i in 3:n) {
      r<-a+b
      a<-b
      b<-r
    }
    return (r)
  }
}

fib(6)