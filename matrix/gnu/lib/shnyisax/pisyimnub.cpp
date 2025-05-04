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
void draftAttempt(float x, float y)
{
     if (x != sinh(x)) {
       std::cout << "the values hyperbolic x: " << x;
     } else {
       std::cout << sinh(x) << endl; 
     }
     
     if (y != tanh(y)) {
        std::cout << "the values hyperbolic y:" << y;
     } else {
      std::cout << sinh(y) << endl;
     }
}


// You can include R code blocks in C++ files processed with open source
// (useful for testing and development). The R code will be automatically 
// run after the compilation.
//

/*** R
drafting(x = tanh(4), y = sinh(4))
*/

