library(ggplot2)

#So let's work on iris dataset
ggplot(iris)

#Add some aesthetics to it
myplot <- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width))
myplot
myplot <- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species, alpha=0.4))
myplot

#Where are the points?
myplot <- myplot + geom_point()
myplot

#Some facets
myplot <- myplot + facet_grid(. ~ Species)
myplot

#Statistics is what it is all about
myplot <- myplot + stat_smooth(method="lm")
myplot

#Theme
myplot + theme_bw()
