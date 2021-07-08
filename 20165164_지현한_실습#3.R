#3명의 성명 키 몸무게를 키로하는 데이터를 벡터로 
#만들어 리스트를 생성
name=c('john','annie','tom')
h=c(169,167,176)
w=c(68,54,86)

x=list(name,h,w)

#3명의 혈액형 벡터를 리스트에 추가
(x&bt=c('A','O','B'))

#두번째 키 값을 169.5로 수정
x[[3]][2]=169.5

#앞에서 2개만 추출
x[1:2]

#첫번째와 세번째 성분만 추출
x[c(T,F,T,F)]
x[c(1,3)]

#아래 그림을 참고로 5명의 두 개의 데이터프레임을
#생성하고,결합하여 다음 조건을 처리
id=c('qwer','asdf','tyui','ghjk','zxcv')
pw=c(1234,1324,1423,1432,2134)
nm=c('john','annie','tom','kim','lee')
ag=c(21,22,18,17,19)
ml=c(170,180,190,200,210)

d1=data.frame(id,pw,nm)
d2=data.frame(id,ag,ml)

(d3=merge(d1,d2))

#나이가 20미만만 추출
d3[d3$ag<20,]

#Mileage가 100~200 사이만 추출
d3[d3$ml>100&d3$ml<200,]

#나이와 마일리지의 평균
(mean=sapply(d3[4:5],mean))

#혈액형과 성별 추가
d3$bt=c('O','A','B','AB','A')
d3$gender=c('m','F','m','m','F')
d3
