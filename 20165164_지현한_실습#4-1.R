#5명에 대한 두 개의 데이터프레임을 생성하고 결합하여 다음 조건을  처리
#(1)ID, password, name 데이터프레임 생성,  범주형이  아님
id=c('qwer','asdf','tyui','ghjk','zxcv')
pw=c(1234,1324,1423,1432,2134)
nm=c('john','annie','tom','kim','lee')
d1=data.frame(id,pw,nm)

#(2)ID, age, mileage 데이터프레임 생성
ag=c(21,32,48,37,39)
ml=c(170,180,190,200,210)
d2=data.frame(id,ag,ml)

#(3)(1),(2)  결합
(d3=merge(d1,d2))

#나이와 마일리지의 평균
(sapply(d3[4:5],mean))

#(5)혈액형과 성별 추가
bt=c('A','O','B','AB','A')
se=c('F','M','F','F','M')
d3=cbind(d3,bt)
d3=cbind(d3,se)
d3

#(6)여성의 마일리지의 합 확인
sum1=sapply(subset(d3,se=='F',c(ml)),sum)
sum1

#(7)30대의 평균 마일리지 확인
mean1=sapply(subset(d3,ag>=30 & ag<40,c(ml)),mean)
mean1

#(8)혈액형 A, B의 평균 나이확인
mean2=sapply(subset(d3,bt=='A'|bt=='B',c(ag)),mean)
mean2
