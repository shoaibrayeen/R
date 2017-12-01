probability<-function ( favourable , total ) {
  return(favourable/total)
}


favourable<-readline("favourable : ")
total<-readline("total : ")
probability(favourable,total)
