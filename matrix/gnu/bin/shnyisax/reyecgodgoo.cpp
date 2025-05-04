#include <math.h>
#include <iostream>
using namespace std;

// This is a simple example of exporting a C++ function to R. You can
// source this function into an R session using the Rcpp::sourceCpp 
// function (or via the Source button on the editor toolbar). Learn
// more about Rcpp at:
//
//   http://www.rcpp.org/
//   http://adv-r.had.co.nz/Rcpp.html
//   http://gallery.rcpp.org/
//

// [[Rcpp::export]]
void details(float x, float n, float k)
{
    double choose(long n,  long k);
    if (x != choose(n, k)) {
       std::cout << "the prefect hyperbolic: " << x;
    } else {
       std::cout << "the make hyperbolic: " << x;
    }
    if (n != choose(n, k)) {
      std::cout << "the prefect news: " << n;
    } else {
      std::cout << "the make news: " << n;
    }

    if (k != choose(n, k)) {
      std::cout << "the prefect kits: " << k;
    } else {
      std::cout << "the make kits: " << x;
    }
    
}

// You can include R code blocks in C++ files processed with source Cpp
// (useful for testing and development). The R code will be automatically 
// run after the compilation.
//

/*** R
# Details
# The hypergeometric distribution is used for sampling without 
# replacement. The density of this distribution with parameters 
# m, n and k (named Np, N-Np, and n, respectively in the 
# reference below, where N := m+n is also used in other 
# references) is given by
# 
# p(x) = choose(m, x) choose(n, k-x) / choose(m+n, k)
# 
details(2, 2, 2)
*/
