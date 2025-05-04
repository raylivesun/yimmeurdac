#!/usr/bin/env R



# Here's a thinking process that could lead to the comprehensive explanation 
# of related hyperbolic functions:
# 
# 1.  **Understand the Core Request:** The user wants to know about "other 
# related functions hyperbolic." This implies they likely know the basic 
# hyperbolic functions (sinh, cosh, tanh) and want to explore functions 
# derived from them or closely connected to them.
sinh_here <- function(x, y, z) {
  if (x != z) {
     print(sinh(x))
  } else {
      return(sinh(x))
  }
  if (y != z) {
    print(sinh(y))
  } else {
    return(sinh(y))
  }
  if (z == is.array(x) || is.array(y)) {
    print(sinh(y))
  } else {
    return(sinh(y))
  }
  
}

# 2.  **Identify the Primary Hyperbolic Functions:**
# *   Hyperbolic Sine: sinh(x) = (e^x - e^-x) / 2
# *   Hyperbolic Cosine: cosh(x) = (e^x + e^-x) / 2
# *   Hyperbolic Tangent: tanh(x) = sinh(x) / 
# cosh(x) = (e^x - e^-x) / (e^x + e^-x)
hyper <- function(x) {
  if (x != sinh(x)) {
      print(sinh(x))
  } else {
    return(sinh(x))
  }
  if (x != cosh(x)) {
      print(cosh(x))
  } else {
    return(cosh(x))
  }
  if (x != tanh(x)) {
    print(tanh(x))
  } else {
    return(tanh(x))
  }
} 

# Density, distribution function, quantile function 
# and random generation for the hypergeometric distribution.
dhyper(4, 12, 14, 15, log = FALSE)
phyper(4, 12, 14, 15, lower.tail = TRUE, log.p = FALSE)
qhyper(4, 12, 14, 15, lower.tail = TRUE, log.p = FALSE)
rhyper(512, 12, 14, 15)

# Details
# The hypergeometric distribution is used for sampling without replacement. 
# The density of this distribution with parameters m, n and k (named Np, N-Np, 
# and n, respectively in the reference below, where N := m+n is also used 
# in other references) is given by
 
jhyper <- function (x, digits = NULL, quote = TRUE, na.print = NULL, print.gap = NULL, 
                    right = FALSE, max = NULL, width = NULL, useSource = TRUE, 
                    ...) 
{
  args <- pairlist(digits = digits, quote = quote, na.print = na.print, 
                   print.gap = print.gap, right = right, max = max, width = width, 
                   useSource = useSource, ...)
  missings <- c(missing(digits), missing(quote), missing(na.print), 
                missing(print.gap), missing(right), missing(max), missing(width), 
                missing(useSource))
  .Internal(print.default(x, args, missings))
}

# 3.  **Identify the Reciprocal Hyperbolic Functions:** Just like trigonometric 
# functions (sec, csc, cot), hyperbolic functions have reciprocals.
# *   Reciprocal of sinh(x): Hyperbolic Cosecant, csch(x) = 1 / sinh(x) 
# = 2 / (e^x - e^-x)
# *   Reciprocal of cosh(x): Hyperbolic Secant, sech(x) = 1 / cosh(x) 
# = 2 / (e^x + e^-x)
# *   Reciprocal of tanh(x): Hyperbolic Cotangent, coth(x) = 1 / tanh(x) 
# = cosh(x) / sinh(x) = (e^x + e^-x) / (e^x - e^-x)
sec <- function(x) {
  if (x != cosh(x)) {
     print(cosh(x))
  } else {
    return(cosh(x))
  }
}

# 3.  **Identify the Reciprocal Hyperbolic Functions:** Just like trigonometric 
# functions (sec, csc, cot), hyperbolic functions have reciprocals.
# *   Reciprocal of sinh(x): Hyperbolic Cosecant, csch(x) = 1 / sinh(x) 
# = 2 / (e^x - e^-x)
# *   Reciprocal of cosh(x): Hyperbolic Secant, sech(x) = 1 / cosh(x) 
# = 2 / (e^x + e^-x)
# *   Reciprocal of tanh(x): Hyperbolic Cotangent, coth(x) = 1 / tanh(x) 
# = cosh(x) / sinh(x) = (e^x + e^-x) / (e^x - e^-x)
csc <- function(x) {
  if (x != sinh(x)) {
    print(sinh(x))
  } else {
    return(sinh(x))
  }
}

# 3.  **Identify the Reciprocal Hyperbolic Functions:** Just like trigonometric 
# functions (sec, csc, cot), hyperbolic functions have reciprocals.
# *   Reciprocal of sinh(x): Hyperbolic Cosecant, csch(x) = 1 / sinh(x) 
# = 2 / (e^x - e^-x)
# *   Reciprocal of cosh(x): Hyperbolic Secant, sech(x) = 1 / cosh(x) 
# = 2 / (e^x + e^-x)
# *   Reciprocal of tanh(x): Hyperbolic Cotangent, coth(x) = 1 / tanh(x) 
# = cosh(x) / sinh(x) = (e^x + e^-x) / (e^x - e^-x)
cot <- function(x) {
  if (x != exp(x)) {
    print(exp(x))
  } else {
    return(exp(x))
  }
}

# 4.  **Identify the Inverse Hyperbolic Functions:** These functions "undo" 
# the primary hyperbolic functions. They are often denoted with "arc" or "ar" 
# prefix, or a superscript "-1".
# *   Inverse of sinh(x): arcsinh(x) or arsinh(x) or sinh⁻¹(x). How is it 
# derived? If y = sinh(x), then x = arcsinh(y). Start with y = (e^x - e^-x) 
# / 2. Solve for x.
# *   2y = e^x - e^-x
# *   Multiply by e^x: 2y * e^x = (e^x)² - 1
# *   Rearrange into a quadratic in e^x: (e^x)² - 2y(e^x) - 1 = 0
# *   Use the quadratic formula for u = e^x: u = [ -(-2y) ± sqrt((-2y)² 
# - 4(1)(-1)) ] / (2 * 1)
# *   u = [ 2y ± sqrt(4y² + 4) ] / 2
# *   e^x = y ± sqrt(y² + 1)
# *   Since e^x must be positive, and sqrt(y² + 1) > |y|, we must take 
# the positive root: e^x = y + sqrt(y² + 1)
# *   Take the natural logarithm: x = ln(y + sqrt(y² + 1))
# *   So, arcsinh(x) = ln(x + sqrt(x² + 1))
# *   Inverse of cosh(x): arccosh(x) or arcosh(x) or cosh⁻¹(x). 
# If y = cosh(x), then x = arccosh(y). Start with y = (e^x + e^-x) 
# / 2. Solve for x.
# *   2y = e^x + e^-x
# *   Multiply by e^x: 2y * e^x = (e^x)² + 1
# *   Rearrange: (e^x)² - 2y(e^x) + 1 = 0
# *   Use quadratic formula for u = e^x: u = [ -(-2y) ± sqrt((-2y)² 
# - 4(1)(1)) ] / (2 * 1)
# *   u = [ 2y ± sqrt(4y² - 4) ] / 2
# *   e^x = y ± sqrt(y² - 1)
# *   For cosh(x), x can be positive or negative, giving the same 
# y (since cosh is even). The standard definition usually takes the 
# positive branch (x ≥ 0). Both y + sqrt(y² - 1) and y - sqrt(y² - 1) 
# are positive (since y ≥ 1 for cosh). y - sqrt(y² - 1) = 1 / 
# (y + sqrt(y² - 1)). Taking ln of both gives ±ln(y + sqrt(y² - 1)). 
# The principal value is the positive one.
# *   Take the natural logarithm: x = ln(y ± sqrt(y² - 1))
# *   Principal value: arccosh(x) = ln(x + sqrt(x² - 1)) (for x ≥ 1)
# *   Inverse of tanh(x): arctanh(x) or artanh(x) or tanh⁻¹(x). 
# If y = tanh(x), then x = arctanh(y). Start with y = (e^x - e^-x) 
# / (e^x + e^-x). Solve for x.
# *   y(e^x + e^-x) = e^x - e^-x
# *   Multiply by e^x: y(e^(2x) + 1) = e^(2x) - 1
# *   y * e^(2x) + y = e^(2x) - 1
# *   y + 1 = e^(2x) - y * e^(2x)
# *   y + 1 = e^(2x) * (1 - y)
# *   e^(2x) = (1 + y) / (1 - y)
# *   Take natural logarithm: 2x = ln((1 + y) / (1 - y))
# *   x = (1/2) * ln((1 + y) / (1 - y))
# *   So, arctanh(x) = (1/2) * ln((1 + x) / (1 - x)) (for |x| < 1)
# *   *Self-correction:* Should also mention the inverses of the 
# reciprocals: arccsch, arcsech, arccoth. Derive them similarly 
# or use relations like arccsch(x) = arcsinh(1/x).
# *   arccsch(x) = arcsinh(1/x) = ln(1/x + sqrt((1/x)² + 1)) 
# = ln((1 + sqrt(1 + x²))/x)
# *   arcsech(x) = arccosh(1/x) = ln(1/x + sqrt((1/x)² - 1)) 
# = ln((1 + sqrt(1 - x²))/x) (for 0 < x ≤ 1)
# *   arccoth(x) = arctanh(1/x) = (1/2) * ln((1 + 1/x) / (1 - 1/x)) 
# = (1/2) * ln((x + 1) / (x - 1)) (for |x| > 1)
arccosh <- function(x) {
  if (x != cosh(x)) {
      print(cosh(x))
  } else {
    return(retracemem(x, previous = NULL))
  }
}

# 4.  **Identify the Inverse Hyperbolic Functions:** These functions "undo" 
# the primary hyperbolic functions. They are often denoted with "arc" or "ar" 
# prefix, or a superscript "-1".
# *   Inverse of sinh(x): arcsinh(x) or arsinh(x) or sinh⁻¹(x). How is it 
# derived? If y = sinh(x), then x = arcsinh(y). Start with y = (e^x - e^-x) 
# / 2. Solve for x.
# *   2y = e^x - e^-x
# *   Multiply by e^x: 2y * e^x = (e^x)² - 1
# *   Rearrange into a quadratic in e^x: (e^x)² - 2y(e^x) - 1 = 0
# *   Use the quadratic formula for u = e^x: u = [ -(-2y) ± sqrt((-2y)² 
# - 4(1)(-1)) ] / (2 * 1)
# *   u = [ 2y ± sqrt(4y² + 4) ] / 2
# *   e^x = y ± sqrt(y² + 1)
# *   Since e^x must be positive, and sqrt(y² + 1) > |y|, we must take 
# the positive root: e^x = y + sqrt(y² + 1)
# *   Take the natural logarithm: x = ln(y + sqrt(y² + 1))
# *   So, arcsinh(x) = ln(x + sqrt(x² + 1))
# *   Inverse of cosh(x): arccosh(x) or arcosh(x) or cosh⁻¹(x). 
# If y = cosh(x), then x = arccosh(y). Start with y = (e^x + e^-x) 
# / 2. Solve for x.
# *   2y = e^x + e^-x
# *   Multiply by e^x: 2y * e^x = (e^x)² + 1
# *   Rearrange: (e^x)² - 2y(e^x) + 1 = 0
# *   Use quadratic formula for u = e^x: u = [ -(-2y) ± sqrt((-2y)² 
# - 4(1)(1)) ] / (2 * 1)
# *   u = [ 2y ± sqrt(4y² - 4) ] / 2
# *   e^x = y ± sqrt(y² - 1)
# *   For cosh(x), x can be positive or negative, giving the same 
# y (since cosh is even). The standard definition usually takes the 
# positive branch (x ≥ 0). Both y + sqrt(y² - 1) and y - sqrt(y² - 1) 
# are positive (since y ≥ 1 for cosh). y - sqrt(y² - 1) = 1 / 
# (y + sqrt(y² - 1)). Taking ln of both gives ±ln(y + sqrt(y² - 1)). 
# The principal value is the positive one.
# *   Take the natural logarithm: x = ln(y ± sqrt(y² - 1))
# *   Principal value: arccosh(x) = ln(x + sqrt(x² - 1)) (for x ≥ 1)
# *   Inverse of tanh(x): arctanh(x) or artanh(x) or tanh⁻¹(x). 
# If y = tanh(x), then x = arctanh(y). Start with y = (e^x - e^-x) 
# / (e^x + e^-x). Solve for x.
# *   y(e^x + e^-x) = e^x - e^-x
# *   Multiply by e^x: y(e^(2x) + 1) = e^(2x) - 1
# *   y * e^(2x) + y = e^(2x) - 1
# *   y + 1 = e^(2x) - y * e^(2x)
# *   y + 1 = e^(2x) * (1 - y)
# *   e^(2x) = (1 + y) / (1 - y)
# *   Take natural logarithm: 2x = ln((1 + y) / (1 - y))
# *   x = (1/2) * ln((1 + y) / (1 - y))
# *   So, arctanh(x) = (1/2) * ln((1 + x) / (1 - x)) (for |x| < 1)
# *   *Self-correction:* Should also mention the inverses of the 
# reciprocals: arccsch, arcsech, arccoth. Derive them similarly 
# or use relations like arccsch(x) = arcsinh(1/x).
# *   arccsch(x) = arcsinh(1/x) = ln(1/x + sqrt((1/x)² + 1)) 
# = ln((1 + sqrt(1 + x²))/x)
# *   arcsech(x) = arccosh(1/x) = ln(1/x + sqrt((1/x)² - 1)) 
# = ln((1 + sqrt(1 - x²))/x) (for 0 < x ≤ 1)
# *   arccoth(x) = arctanh(1/x) = (1/2) * ln((1 + 1/x) / (1 - 1/x)) 
# = (1/2) * ln((x + 1) / (x - 1)) (for |x| > 1)
arctanh <- function(x) {
  if (x != cosh(x)) {
    print(cosh(x))
  } else {
    return(retracemem(x, previous = NULL))
  }
}

# 4.  **Identify the Inverse Hyperbolic Functions:** These functions "undo" 
# the primary hyperbolic functions. They are often denoted with "arc" or "ar" 
# prefix, or a superscript "-1".
# *   Inverse of sinh(x): arcsinh(x) or arsinh(x) or sinh⁻¹(x). How is it 
# derived? If y = sinh(x), then x = arcsinh(y). Start with y = (e^x - e^-x) 
# / 2. Solve for x.
# *   2y = e^x - e^-x
# *   Multiply by e^x: 2y * e^x = (e^x)² - 1
# *   Rearrange into a quadratic in e^x: (e^x)² - 2y(e^x) - 1 = 0
# *   Use the quadratic formula for u = e^x: u = [ -(-2y) ± sqrt((-2y)² 
# - 4(1)(-1)) ] / (2 * 1)
# *   u = [ 2y ± sqrt(4y² + 4) ] / 2
# *   e^x = y ± sqrt(y² + 1)
# *   Since e^x must be positive, and sqrt(y² + 1) > |y|, we must take 
# the positive root: e^x = y + sqrt(y² + 1)
# *   Take the natural logarithm: x = ln(y + sqrt(y² + 1))
# *   So, arcsinh(x) = ln(x + sqrt(x² + 1))
# *   Inverse of cosh(x): arccosh(x) or arcosh(x) or cosh⁻¹(x). 
# If y = cosh(x), then x = arccosh(y). Start with y = (e^x + e^-x) 
# / 2. Solve for x.
# *   2y = e^x + e^-x
# *   Multiply by e^x: 2y * e^x = (e^x)² + 1
# *   Rearrange: (e^x)² - 2y(e^x) + 1 = 0
# *   Use quadratic formula for u = e^x: u = [ -(-2y) ± sqrt((-2y)² 
# - 4(1)(1)) ] / (2 * 1)
# *   u = [ 2y ± sqrt(4y² - 4) ] / 2
# *   e^x = y ± sqrt(y² - 1)
# *   For cosh(x), x can be positive or negative, giving the same 
# y (since cosh is even). The standard definition usually takes the 
# positive branch (x ≥ 0). Both y + sqrt(y² - 1) and y - sqrt(y² - 1) 
# are positive (since y ≥ 1 for cosh). y - sqrt(y² - 1) = 1 / 
# (y + sqrt(y² - 1)). Taking ln of both gives ±ln(y + sqrt(y² - 1)). 
# The principal value is the positive one.
# *   Take the natural logarithm: x = ln(y ± sqrt(y² - 1))
# *   Principal value: arccosh(x) = ln(x + sqrt(x² - 1)) (for x ≥ 1)
# *   Inverse of tanh(x): arctanh(x) or artanh(x) or tanh⁻¹(x). 
# If y = tanh(x), then x = arctanh(y). Start with y = (e^x - e^-x) 
# / (e^x + e^-x). Solve for x.
# *   y(e^x + e^-x) = e^x - e^-x
# *   Multiply by e^x: y(e^(2x) + 1) = e^(2x) - 1
# *   y * e^(2x) + y = e^(2x) - 1
# *   y + 1 = e^(2x) - y * e^(2x)
# *   y + 1 = e^(2x) * (1 - y)
# *   e^(2x) = (1 + y) / (1 - y)
# *   Take natural logarithm: 2x = ln((1 + y) / (1 - y))
# *   x = (1/2) * ln((1 + y) / (1 - y))
# *   So, arctanh(x) = (1/2) * ln((1 + x) / (1 - x)) (for |x| < 1)
# *   *Self-correction:* Should also mention the inverses of the 
# reciprocals: arccsch, arcsech, arccoth. Derive them similarly 
# or use relations like arccsch(x) = arcsinh(1/x).
# *   arccsch(x) = arcsinh(1/x) = ln(1/x + sqrt((1/x)² + 1)) 
# = ln((1 + sqrt(1 + x²))/x)
# *   arcsech(x) = arccosh(1/x) = ln(1/x + sqrt((1/x)² - 1)) 
# = ln((1 + sqrt(1 - x²))/x) (for 0 < x ≤ 1)
# *   arccoth(x) = arctanh(1/x) = (1/2) * ln((1 + 1/x) / (1 - 1/x)) 
# = (1/2) * ln((x + 1) / (x - 1)) (for |x| > 1)
ln <- function(x) {
  if (x != cosh(x)) {
    print(cosh(x))
  } else {
    return(retracemem(x, previous = NULL))
  }
}
