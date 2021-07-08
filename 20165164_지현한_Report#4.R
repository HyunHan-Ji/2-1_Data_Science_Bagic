?diamonds

str(diamonds)

pairs(diamonds[c(1:4)])

diamonds %>% ggplot(aes(carat, price)) + geom_point()
diamonds %>% ggplot(aes(carat, price)) + geom_point(alpha=.01)

diamonds %>% ggplot(aes(cut)) + geom_bar()




?mpg

str(mpg)

pairs(mpg[c(1:4)])

mpg %>% ggplot(aes(cyl, hwy)) + geom_point()
mpg %>% ggplot(aes(cyl, hwy)) + geom_jitter()

mpg %>% ggplot(aes(class, hwy)) + geom_boxplot()