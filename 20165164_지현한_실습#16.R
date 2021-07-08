#1. physicalfitness.txt을 이용한 선형회귀(Linear Regression) 예제 확인
pf = read.table('physicalfitness.txt', skip=3,header=T, sep=',') 
#상관계수확인
#install.packages("ggplot2")
#library(ggplot2)
cor(pf)
cor(pf$height, pf$weight)
#scatter plot
ggplot(pf,aes(x=height, y=weight)) + geom_point() + geom_smooth(method="lm") 

#Simple Linear Regression
# model fitting
# lm(y(결과) ~ x(원인),데이터) 
fit1=lm(weight~height,data=pf) 
summary(fit1)

#회귀선 그리기
plot(pf$height,pf$weight)
abline(fit1)
#예측, predict
coef(fit1)
predict(fit1,newdata=data.frame(height=182.8), interval="confidence")

#Multiple Linear Regression
#lm(y(결과) ~ x1+x2..(원인),데이터)
fit2=lm(weight~height+BMI,data=pf)
summary(fit2)

coef(fit2)

#입력변수 weight 그래프
barplot(fit2$coefficients)
predict(fit2, newdata = data.frame(height=182.8, BMI=26), interval="confidence")

#2. 보스톤 주택가격(1978) 데이터 집합을 이용한 선형회귀모델링
#feature(x) : 13  target(y) : 1
boston=read.table('boston.txt',head=T)
#(1)단순선형회귀 모델링
#x= lstat(저소득 주민 비율)
y=boston$lstat
#y= medv (주택가격)
x=boston$medv
#scatter plot에 선형회귀라인 그리기
plot(x,y)

fit3=lm(lstat~medv,data=boston)
abline(fit3)
#(2)다중선형회귀 모델링
#(2-1)전체 특징 사용
fit4=lm(lstat~crim+zn+indus+chas+nox+rm+age+dis+rad+tax+ptratio+black+medv,data=boston)
summary(fit4)

coef(fit4)
#(2-2)특징들의 weight를 막대그래프로 확인
barplot(fit4$coefficients)
#(2-3) weight 가 높은 4개만 사용하여 모델링
fit5=lm(lstat~nox+rm+dis+medv,data=boston)
barplot(fit5$coefficients)
#(2-4) 전체특징 이용한 모델과  4개 특징을 이용한 모델의 오차 확인
summary(fit4)
summary(fit5)
#전체 오차 : 3.823
#상위4개 오차: 4.095



