for (i in all.varz) {
    print(paste(i,
                eval(parse(text=paste('mean(',i, '$Played)', sep=''))),
                eval(parse(text=paste('std(',i, '$Played)', sep='')))
                )
          )
}
