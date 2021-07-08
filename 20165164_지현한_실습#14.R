pf=read.table('physicalFitness.txt',header=T,sep=',',skip=3)
#(1) 나이그룹별 평균키에 대한 막대그래프
barplot(tapply(pf$height,pf$ageGroup,mean))

#(2) 성별에 대한 평균몸무게 원그래프
sw=aggregate(pf$weight,list(sex=pf$sex),mean)
pie(sw$sex,sw$x)

#(3)10대의 키와 몸무게에 대한 평균, 표준편차, 변동계수를 확인
m=mean(subset(pf$height,pf$ageGroup==1))
sd=sd(subset(pf$height,pf$ageGroup==1))
cv = sd/m * 100

m2=mean(subset(pf$weight,pf$ageGroup==1))
sd2=sd(subset(pf$weight,pf$ageGroup==1))
cv2 = sd2/m2 * 100

#(4)10대의  키와 몸무게에 대한  산점도(scater plot)와 상관계수 확인
#(산점도 주제목에 상관계수 표시)
plot(subset(pf$height,pf$ageGroup==1),subset(pf$weight,pf$ageGroup==1))
title(main=cor(subset(pf$height,pf$ageGroup==1),subset(pf$weight,pf$ageGroup==1)))

#(5)전체 데이터의  키와 몸무게에 대한  산점도와 상관계수 확인
#(산점도 주제목에 상관계수 표시)
plot(pf$height,pf$weight)
title(main=cor(pf$height,pf$weight))

#(6)전체 데이터의  몸무게와 BMI에 대한  산점도와 상관계수 확인
#(산점도 주제목에 상관계수 표시)
plot(pf$weight,pf$BMI)
title(main=cor(pf$weight,pf$BMI))

#(7)height weight BMI bodyFat에 대한  산점도 행렬 그리기
pairs(pf[3:6])
