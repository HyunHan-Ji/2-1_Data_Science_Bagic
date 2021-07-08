#1)R에서 제공하는 iris 데이터셋 특징, 통계요약 확인
str(iris) #데이터 셋의 특징 확인
summary(iris)#데이터셋의 통계 요약

#2)데이터 살펴보기
#2-1상위 , 하위 6줄 살펴보기
head(iris) #상위 6줄 출력
tail(iris) #하위 6줄 출력
#2-2행의이름 살펴보기
rownames(iris)
#2-3iris의 Species 속성값확인
iris$Species

#3)데이터 추출, 결합
#3-1)Species(종)이 setosa만추출
a=iris[iris$Species=='setosa',]
#3-2꽃받침길이가 5이하인 데이터만 추출
b=iris[iris$Sepal.Length<-5,]
#3-3 폭 속성, 길이 속성만 추출
s_l=iris[,c(1)] #꽃받침의 길이속성
s_w=iris[,c(2)] #꽃받침의 폭속성
p_l=iris[,c(3)] #꽃잎의 길이속성
p_w=iris[,c(4)] #꽃잎의 폭속성
#3-4(3)에서 추출한 폭,길이 속성을 결합
s=cbind(s_l,s_w)
p=cbind(p_l,p_w)
