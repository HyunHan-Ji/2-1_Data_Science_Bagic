#iris 데이터를 이용하여 기술 통계값을 확인
data(iris)

#(1)iris의 종별 최소값, 최대값, 평균, 중간값, 표준편차, 최빈값
aggregate(iris[c(1:4)],list(Species=iris$Species),min)
aggregate(iris[c(1:4)],list(Species=iris$Species),max)
aggregate(iris[c(1:4)],list(Species=iris$Species),mean)
aggregate(iris[c(1:4)],list(Species=iris$Species),median)
aggregate(iris[c(1:4)],list(Species=iris$Species),sd)

#(2)각 종(setosa", "versicolor","virginica") 에 대한 Petal.Length의 밀도함수
a=split(iris,iris$Species)
plot(density(a$setosa$Petal.Length))
plot(density(a$versicolor$Petal.Length))
plot(density(a$virginica$Petal.Length))

#(3) 각 종(setosa", "versicolor","virginica") 에 대한 Petal.Length의  box plot
boxplot(a$setosa$Petal.Length)
boxplot(a$versicolor$Petal.Length)
boxplot(a$virginica$Petal.Length)

#(4)setosa의 Petal.Length에 대한 1사분위, 3사분위, IQR, lower whisker, upper whisker, 최빈값
x=a$setosa$Petal.Length
(q1=quantile(x,probs=0.25))
(q3=quantile(x,3/4))
(IQR=q3-q1)
(LW=q1-1.5*IQR)
(UW=q3+1.5*IQR)
(table(x)[which.max(table(x))])

#(5)setosa의 Petal.Length에 대한 boxplot , , boxplot.status 로 outlier 확인
boxplot(x)
boxplot.stats(x)$out

#(6)setosa의 Petal.Length에 대한 lower whisker, upper whisker로 outlier  확인
(outL=x[which(x<LW)])
(outU=x[which(x>UW)])

#(7)setosa의 Petal.Length에 대한 outlier , plot에서 표시
plot(x)
(outiL=which(x %in% outL))
(outiU=which(x %in% outU))
points(outiL,outL,pch="V",col="red")
points(outiU,outU,pch="V",col="red")
