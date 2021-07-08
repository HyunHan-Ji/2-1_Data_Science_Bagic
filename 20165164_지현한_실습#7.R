#1. 정규분포 데이터 그래프
#1)50개의 정규분포를 따르는 랜덤값을 이용하여 x, y 벡터를 생성
(x=rnorm(50))
(y=rnorm(50))
#2)x, y의 최대,최소로 그래프 범위 설정
xlim(min(x),max(x))
ylim(min(y),max(y))
#3)x,y를 이용하여 plot
plot(x,y)
#4)x의 평균값은 빨강, y의 평균값은 파랑으로 점선 그리기
abline(v=mean(x),lty=2,col="red")
abline(h=mean(y),lty=2,col="blue")
#5)1.pdf로 저장
dev.copy(png,"1.png")
dev.off()

#2. iris 데이터 그래프 
#1)iris$Species에 따라 분리
data(iris)
g=split(iris,iris$Species)
#2)iris$Petal.Width, iris$Petal.Length의 최대,최소로 그래프 범위 설정
pw=iris$Petal.Width
pl=iris$Petal.Length
plot (NULL , xlim=c(min(pw),max(pw)) , ylim=c(min(pl),max(pl)) ) 
#3)분리된 3종류에 대한 Petal.Width와 Petal.Length 그래프 그리기
#points() 이용, 종류별 색이 다른 채워진 작은 원으로 그리기
points ( g$setosa$Petal.Width , g$setosa$Petal.Length , pch=20, col="red")
points ( g$versicolor$Petal.Width , g$versicolor$Petal.Length , pch=20, col="blue")
points ( g$virginica$Petal.Width , g$virginica$Petal.Length , pch=20, col="green")
#4)제목, 부제목, 범례 지정
title(main="iris plot", xlab="width\n(Petal)",ylab="length")
#5)2.jpg로 저장
dev.copy(jpeg,"2.jpeg")
dev.off()



#3. "[실습6]데이터사이언스기초_DataVisualization"  23-30 쪽 예제 확인
##정규분포를 따르는 난수 10개에 대한 막대그래프 예
(b = rnorm(10))
barplot(b)

#iris 데이터셋의 Sepal.Width의 종별 평균에 대한 막대 그래프 예
m = tapply ( iris $ Sepal.Width , iris $ Species , mean )
barplot (m , main="Mean(iris$Sepal.width)", col=c(1,2,3), legend.text= c(m)) 

#히스토그ㄹ
hist ( iris $ Sepal.Width )

hist ( iris $ Sepal.Width , freq = FALSE )
lines ( density ( iris $ Sepal.Width ))

plot ( density ( iris $ Sepal.Width )) 

#box plot
x = rnorm(50)
y = rnorm(50)
z = rnorm(50)
boxplot(x,y,z)
summary(x)
summary(y)
summary(z)
plot.new()
plot(density(x), col="red")
plot(density(y), col="blue")
plot(density(z), col="green") 

#pi
x = 1:10
pie(x, radius=1, labels=LETTERS[x], clockwise=T, main="Pie graph(1:10)") 

#행렬데이터그리기
x = seq (-2*pi , 2*pi , 0.01 )
y = matrix (c( cos (x), sin (x)), ncol =2)
matplot (x, y, col=c(" red ", " black "), cex =.2, main="sin/cos")
abline (h=0, v =0, lty=2) 

#그래프의 배열
oldp = par(mfrow=c(2,2)) #이전설정 저장
plot(iris$Sepal.Length , iris$Sepal.Width)
x = 1:10
pie(x, radius=1, labels=LETTERS[x], clockwise=T, main="Pie")
data(sleep)
plot(sleep$group,sleep$extra) #factor기준으로 박스플롯
plot(sleep$extra) #factor기준으로 박스플롯
par(oldp) #이전 설정 되돌리기 

