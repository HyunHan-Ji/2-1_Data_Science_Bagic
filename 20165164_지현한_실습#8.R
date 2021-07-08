# 1. 정규분포를 따르는 난수 5개를 색별로 막대 그래프 그리기
r = rnorm(5)
barplot(r, col = c(1,2,3,4,5))


# 2. iris 데이터셋의 Petal.Length의 종별 중간값에 대한 막대 그래프 그리기
data(iris)
pps = tapply(iris$Petal.Length, iris$Species, median)

barplot(pps, col = c('red', 'hotpink', 'pink'))


# 3. iris 데이터셋의 Petal.Length의 확률밀도 히스토그램과 확률밀도그래프를 그리기
hist(iris$Petal.Length, main = '확률밀도 히스토그램')
hist(iris$Petal.Length, freq = FALSE, main = '확률밀도 히스토그램')
lines(density(iris$Petal.Length), main = '같이 출력')
plot(density(iris$Petal.Length), main = '그래프만 출력')


# 4. iris 데이터셋의 박스 플롯 그리기
boxplot(iris)


# 5. iris 데이터셋의 Petal.Length, Petal.Width의 박스 플롯 그리기
with(iris, {
  boxplot(Petal.Length, Sepal.Width)
})


# 6. iris 데이터셋의 setosa만 Petal.Length, Petal.Width의 박스 플롯 그리기
is = subset(iris, Species == 'setosa')
with(is, {
  boxplot(Petal.Length, Petal.Width)
})


# 7. iris 데이터셋의 종별, Sepal.Length의 박스 플롯 그리기
g = split(iris, iris$Species)
with(iss, {
  boxplot(setosa$Sepal.Length, versicolor$Sepal.Length, virginica$Sepal.Length)
})


# 8. iris 데이터셋의 Sepal.Length에 대한 Petal.Length의 플롯 그리기
plot(iris$Sepal.Length, iris$Petal.Length)


# 9.  iris 데이터셋의"setosa"종에 대한 Petal.Length, Petal.Width를 matrix로 만들어 plot

mm = matrix(c(g$setosa$Petal.Length, g$setosa$Petal.Width), ncol = 2)
matplot(mm, pch = 'o')


# 10.  iris 데이터셋의 Petal.Length, Petal.Width, Sepal.Length, Sepal.Width의 density 그래프를 2행, 2열로 plot
with(iris, {
  pp = par(mfrow = c(2, 2))
  plot(density(Petal.Length))
  plot(density(Petal.Width))
  plot(density(Sepal.Length))
  plot(density(Sepal.Width))
  par(pp)
})

