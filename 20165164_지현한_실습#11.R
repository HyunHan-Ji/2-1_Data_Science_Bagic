#1.Anscombe's quartet 데이터 시각화
#(1)평균,표준편차,상관계수 확인
apply(anscombe,2,mean)
apply(anscombe,2,sd)

cor(anscombe$x1,anscombe$y1)
cor(anscombe$x2,anscombe$y2)
cor(anscombe$x3,anscombe$y3)
cor(anscombe$x4,anscombe$y4)
#(2)각 데이터 셋에 대한 scatter plot
# (x1-y1,x2-y2,x3-y3,x4-y4)
pairs(anscombe[c(1:8)])

#2. boston 데이터 시각화 (수량형 데이터)
#(1)Boston House Prices dataset 사용
boston=read.table("boston.txt",header=T)

#(2)데이터의  구조 확인
str(boston)

#(3)기초통계요약 확인
summary(boston)

#(4)모든 특징들에 대한 상관계수 확인
cor(boston)

#(5)주택가격(medv)과 다른 특징들과의  상관계수
cor(boston$medv,boston)

#(6) rm,ptratio, lstat, medv 4개 특징만 사용
(a=boston[(c("rm","ptratio","lstat","medv"))])

#(7)4 특징들에 대한 scatter plot (산점도 행렬 : Scatterplot Matrices)
pairs(a)

#(8)4 특징들의 분포(histogram) 확인
par(mfrow=c(2,2))
hist(a$rm)
hist(a$ptratio)
hist(a$lstat)
hist(a$medv)
