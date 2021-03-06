setDCF <- function(evaluation, prior=0.5, cfa=1, cmiss=1) {
    if (!missing(evaluation))
        if (evaluation == "nist")
            DCFp <- DCF.p.nist.pre10
        else if (evaluation == "evalita")
            DCFp <- DCF.p.evalita
        else if (evaluation == "nist10")
            DCFp <- DCF.p.nist.10
        else if (evaluation == "nist12")
            DCFp <- DCF.p.nist.12
        else
            stop("Unknown dcf parameter set")
    else
        DCFp <- list(prior=prior, cfa=cfa, cmiss=cmiss)
    assign("DCF.p", DCFp, envir=.sretoolsEnv)
}
