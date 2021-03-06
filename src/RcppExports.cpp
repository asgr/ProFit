// This file was generated by Rcpp::compileAttributes
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// profitDownsample
NumericMatrix profitDownsample(const NumericMatrix& IMG, const int DOWNSAMPLEFAC);
RcppExport SEXP ProFit_profitDownsample(SEXP IMGSEXP, SEXP DOWNSAMPLEFACSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< const NumericMatrix& >::type IMG(IMGSEXP);
    Rcpp::traits::input_parameter< const int >::type DOWNSAMPLEFAC(DOWNSAMPLEFACSEXP);
    __result = Rcpp::wrap(profitDownsample(IMG, DOWNSAMPLEFAC));
    return __result;
END_RCPP
}
// profitUpsample
NumericMatrix profitUpsample(const NumericMatrix& IMG, const int UPSAMPLEFAC);
RcppExport SEXP ProFit_profitUpsample(SEXP IMGSEXP, SEXP UPSAMPLEFACSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< const NumericMatrix& >::type IMG(IMGSEXP);
    Rcpp::traits::input_parameter< const int >::type UPSAMPLEFAC(UPSAMPLEFACSEXP);
    __result = Rcpp::wrap(profitUpsample(IMG, UPSAMPLEFAC));
    return __result;
END_RCPP
}
