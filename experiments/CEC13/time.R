for (i in all.varz) {
    print(paste(i,
                eval(parse(text=paste('mean(',i, '$Time)', sep=''))),
                eval(parse(text=paste('std(',i, '$Time)', sep='')))
                )
          )
}
