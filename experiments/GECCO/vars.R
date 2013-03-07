for (i in all.varz) {
  if ( length(grep('5.8.+cs256',i)) ) {
    print(paste(i,
                eval(parse(text=paste('mean(',i, '$Played)', sep=''))),
                eval(parse(text=paste('std(',i, '$Played)', sep='')))
                )
          )
  }
}
