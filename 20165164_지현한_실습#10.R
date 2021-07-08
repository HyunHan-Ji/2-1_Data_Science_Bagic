install.packages("ggplot2")
library(ggplot2)

ggplot(data = iris,
       mapping = aes(x = Sepal.Length, y = Sepal.Width))
# data = 데이터
# mapping = aes(x = x축변수, y = y축변수)


ggplot(data = iris,
       mapping = aes(x = Sepal.Length, y = Sepal.Width))+ geom_point(colour = "red", pch = 2, size = 2)

# Species(종)에 따른 색상지정
ggplot(iris, aes(Sepal.Length, Sepal.Width)) + geom_point(aes(colour = Species))
# Species(종)에 따른 색상지정, Petal.Width 로 크기로 설정
ggplot(iris, aes(Sepal.Length, Sepal.Width)) + geom_point(aes(colour = Species,
                                                              size=Petal.Width))
# 팔레트로 색상 지정하여 그리기
ggplot(iris, aes(x=Petal.Width, y=Petal.Length, fill=Species)) +
  geom_point(colour="white" , shape=21, size=5) +
  scale_fill_brewer(palette="Reds")

#iris 데이터셋의 종별 Petal.Length 박스 플롯 그리기
ggplot(iris, aes(Species,Petal.Length)) +
  geom_boxplot() +
  ggtitle("Box Plot (iris)")

#라벨링 포함
ggplot(data = iris,
       mapping = aes(x = Sepal.Length, y = Sepal.Width)) + geom_point(colour = "red") +
  labs(title = "제목", subtitle = "부제목", caption = "주석", x = "x축 이름", y = "y축 이름")

ggplot(iris, aes(Sepal.Length, Sepal.Width)) + geom_point(aes(colour = Species))+
  geom_hline(yintercept=mean(iris$Sepal.Width), colour="black", lty="dashed", size=1) +
  geom_vline(xintercept=mean(iris$Sepal.Length), colour="black", lty="dashed", size=1)

install.packages("dplyr")
install.packages("gapminder")
library(gapminder)
library(dplyr)
str(gapminder)

library(ggplot2)

gapminder %>% filter(continent=="Asia") %>%
  ggplot(aes(gdpPercap,lifeExp)) +
  geom_point(aes(size=pop, col=country)) + scale_x_log10()+
  ggtitle("Gapminder data for asia")