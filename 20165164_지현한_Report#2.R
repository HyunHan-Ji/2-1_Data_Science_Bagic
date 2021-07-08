name=c("John","Tom","Jackson","Alice","Emily")  #이름벡터
height=c(160,165,170,175,180) #키 벡터
weight=c(77,95,84,62,71)  #몸무게 벡터

hw=(cbind(height,weight)) #열단위로 벡터결합
rownames(hw)=name  #열이름설정
hw

mean(hw[,1])  #키의 평균값
sd(hw[,1])  #키의 표준편차
max(hw[,1]) #키의 최대값
min(hw[,1]) #키의 최소값
median(hw[,1])  #키의 중앙값

mean(hw[,2])  #몸무게의 평균값
sd(hw[,2])  #몸무게의 표준편차
max(hw[,2]) #몸무게의 최대값
min(hw[,2]) #몸무게의 최소값
median(hw[,2])  #몸무게의 중앙값