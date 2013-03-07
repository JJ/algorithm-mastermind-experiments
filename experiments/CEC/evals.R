for (i in all.varz) {
    print(paste(i,
                eval(parse(text=paste('mean(',i, '$Evaluations)', sep=''))),
                eval(parse(text=paste('std(',i, '$Evaluations)', sep='')))
                )
          )
}
