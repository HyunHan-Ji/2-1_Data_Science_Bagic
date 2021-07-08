data(sleep)
str(sleep)

g= split(sleep, sleep$group) #group로 분리하여 리스트로 반환 
str(g)

g$'1'

names(g)=c("G1","G2")



tapply(sleep$extra, sleep$group,mean ) #그룹별 초과시간의 평균 

d1=read.table("data1.txt", header=T)
str(d1)



aggregate(d1[,c(3:5)], list(btype=d1$btype), mean)#혈액형별 키,몸무게,나이의 평균 



which(d1$name=="park")  #조건을 만족하는 위치 값   

i1 = which(d1$btype =="B") 
d1[i1,] #혈액형이 B인 d1목록 확인 

i3 = which(d1$btype =="B" & d1$name =="park")  # 여러 조건 만족 위치값
d1[i3,] 

i4 = which(d1$age >= 25 | d1$height >= 170)  # 나이가 25세 이상이거나  키가 170이상
d1[i4,] 

maxa=which.max(d1$age)       #최대나이  
d1[maxa,] 



d1$age

sort(d1$age)

ageA=order(d1$age)
d1[ageA,]

ageHA=order(d1$age,d1$height)
d1[ageHA,]



set.seed(1)
x=1:10
sample(x,size=10,replace=TRUE)
sample(x,size=10,replace=FALSE)


data(iris)
str(iris)
#1  Sepal.width가  평균보다 큰 것 확인 
i11=which(iris$Sepal.Width>mean(iris$Sepal.Width))
iris[i11,]

#2  Petal.Length가   3~5범위  확인 
i22=which(iris$Petal.Length>=3 & iris$Petal.Length<=5)
iris[i22,]

#3  Petal.width가  중간값보다 작은 것 확인 
i33=which(iris$Petal.Width<median(iris$Petal.Width))
iris[i33,]

#4   Species 별로  최대, 최소, 평균, 표준편차  계산 
aggregate(iris[ ,c(1:4)],list(Species=iris$Species),max)
aggregate(iris[ ,c(1:4)],list(Species=iris$Species),min)
aggregate(iris[ ,c(1:4)],list(Species=iris$Species),mean)
aggregate(iris[ ,c(1:4)],list(Species=iris$Species),sd)

#5  Sepal.width 의  order 확인 
order(iris$Sepal.Width)

#6  Petal.Length 로 정렬,  같으면 Petal.Width 로 정렬 
index=order(iris$Petal.Length,iris$Petal.Width)
iris[index,]

#7 Species(종)로 분리 
s=split(iris,iris$Species)
s

#8  Species(종) 별로 상위10개씩  추출
h1=head(s$setosa,10)
h2=head(s$versicolor,10)
h3=head(s$virginica,10)

#9  (8)에서 추출된 것을  iris2로 결
(iris2=rbind(h1,h2,h3))