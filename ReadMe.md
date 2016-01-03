# Sparse Gauss-Hermite quadrature rule

### Ref:
   B. Jia, M. Xin, and Y. Cheng, "Sparse-grid quadrature nonlinear filtering," Automatica, vol. 48, no.2, pp. 327-341, 2012.
   B. Jia, M. Xin, and Y. Cheng, "Sparse Gauss-Hermite quadrature filter with an application to spacecraft attitude estimation," Journal of Guidance, Control, and Dynamics, vol. 34, no. 2, pp. 367-379, March-April 2011.


* This script will generate points and weights for the sparse Gauss-Hermite quadrature rule. The entry point is 'generate_md_points'.

* Example:   [pt, w]=generate_md_points(2,2,2);