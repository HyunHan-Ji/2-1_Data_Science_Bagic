#1) Heart.csv 파일 열기
heart=read.csv("Heart.csv")

#3) 데이터 타입들, 상하위 5개 데이터 확인
head(heart,5)
tail(heart,5)

#5) AHD 변경, No=0, Yes=1 
#install.packages("dplyr")
#library(dplyr)
#require(dplyr)
heart <- heart %>%
  mutate(AHD = ifelse(AHD == "No",0,1))

#6) 통계요약
summary(heart)

#7) 누락된 값 있는 행삭제
na.omit(heart)

#8) 나이의 histogram(분포 확인)
hist(heart$Age)

#9) 성별에 대한 pie plot (백분율로 표시)
pie(prop.table(table(heart$Sex))*100,xlab=prop.table(table(heart$Sex))*100)

#10)ChestPain 에 대한 카운트 bar chart
barplot(table(heart$ChestPain))

#11)나이와  최대심박수, 나이와 혈압과의 관계 확인 (상관계수, scatter plot)
cor(heart$Age,heart$MaxHR)
cor(heart$Age,heart$RestBP)
plot(heart$Age,heart$MaxHR)
plot(heart$Age,heart$RestBP)

#12)속성중 상관관계가 높은 속성 4개만 선택하여 심장병과의 관계 분석 scatter_matrix()
cor(heart$AHD, heart[c(1,4,5,10)])
a=heart[c(1,4,5,10)]
pairs(a)

#13)4개 특징의 분포 확인 (boxplot)
boxplot(heart[c(1,4,5,10)])

#14)target(AHD)을 기준(groupby)으로 최대, 최소, 평균, 표준편차 계산
aggregate(heart[,c(1,4,5,8,10)],list(AHD=heart$AHD),max)
aggregate(heart[,c(1,4,5,8,10)],list(AHD=heart$AHD),min)
aggregate(heart[,c(1,4,5,8,10)],list(AHD=heart$AHD),mean)
aggregate(heart[,c(1,4,5,8,10)],list(AHD=heart$AHD),sd)