#벡터생성방법
c(10,20,30,40,50) #요소나열로 벡터 생성
c(T,T,F,F,T)
c('a','b','c')
1:5 #1씩 증가하는 연속값
10:20
seq(1,5)
seq(1,10, 2) #1부터 10까지 2씩 증가
rep(1:3, 2) #1-3까지 2회 반복
rep(c('a','b','c'), 3) #'a''b''c' 3회 반복
rep(1:2, each=3) #1:2 각각 3회 반복
(a = 1:5) # a벡터 생성, ()로 결과 확인


#벡터 생성, x에 저장
x<-c('a','b','c')
#벡터요소 접근
x[1]
x[3]
#벡터요소 제외 접근
x[-1]
x[-2]
#여러 요소 접근
x[c(1,2)]
x[c(1,3)]
x[1:2]
x[1]="e"
#벡터 결합
(y=c(x,'d'))  #단일값 결합
(z=c(x,c('d','e','f'))) #벡터
#중복제거
unique(z)


#벡터 산술 연산 예
(a = 1: 5)
(b = 11:15)
(a1 = a - 1 ) #a벡터의 각 요소에서 1을 뺀 연산
(sum = a + b) #a벡터와 b벡터의 각 요소 연산
(sub = a - b)
(mul = a * b)
(div = b / a)
round(div) #div벡터의 각 요소 반올림


#벡터 비교연산
(a > 4) #a의 요소가 4보다 큰 값인가
(eq = (a == b)) #a와 b의 요소가 같은가
(neq = (a != b)) #a와 b의?요소가 다른가
(l = (a < b)) #a의 요소가 b의 요소보다 작은가
(g = (a > b)) #a의 요소가 b의 요소보다 큰가

#벡터 집합연산
(u = union(a,b)) #합집합
(intersect(u,b)) #교집합
(d=setdiff(u,b)) #차집합
setequal(a,d)#같은 집합인가

#요소 k는 집합 a에 속하는가
k=3
is.element(k, a)
k %in% a

#연습문제2
#짝수,홀수 처리
odd=seq(1,10,2)
even=seq(0,10,2)
total=c(odd,even)
stotal=sort(total)
stotal=setdiff(stotal,even)

#5명의 BMI 처리
height=c(1.6,1.65,1.7,1.75,1.8)
weight=c(77,95,84,62,71)
mean(height)  #키 평균
sd(height)  #키 표준편차
max(height) #키 최대값
min(height) #키 최소값
median(height)  #키 중앙값
mean(weight)  #몸무게 평균
sd(weight)  #몸무게 표준편차
max(weight) #몸무게 최대값
min(weight) #몸무게 최소값
median(weight)  #몸무게 중앙값
BMI=weight/(height^2) #5명의 BMI
BMI>=23


#1, 2, 3, 4, 5, 6, 7, 8, 9로 구성된 3행 3열의 열 우선 행렬 생성
matrix (c(1, 2, 3, 4, 5, 6, 7, 8, 9) , nrow =3)
matrix (c(1, 2, 3, 4, 5, 6, 7, 8, 9) , ncol =3)
#행 우선 생성
matrix (c(1, 2, 3, 4, 5, 6, 7, 8, 9) , nrow =3, byrow =T)

#값이 없는(NA) 3행 1열 행렬
matrix (, nrow =3)
#제로 행렬 (4X3)
matrix(0, nrow=4, ncol=3)
#1:4값 4X3 열 우선 행렬, 값 반복
matrix(1:4,nrow=4, ncol=3)

#행렬의 각 요소는 ‘행렬이름[행인덱스, 열인덱스]’로 접근
(x = matrix (c(1, 2, 3, 4, 5, 6, 7, 8, 9) , nrow =3, byrow =T))
x[1,2] #1행 2열 요소
x[1:2,2] #1-2행 2열 요소
x[,2] #모든 행의 2열 요소
x[3,] #3행 모든 열 요소
x[3,2:3] #3행 2-3열 요소
x[-2,] #2행 제외한 모든 3열 요소
x[c(T,F,T), 2] #1행, 3행에 대한 2열 요소
x[c(1,3), 2] #1행, 3행에 대한 2열 요소
x[1:5] #행렬을 벡터로 변환하고 1-5번째 요소 추출

#행렬연산
x+5 #x 요소에 5를 더한 결과
x*2 #x요소에 2를 곱한 결과
(y = x) #x행렬로 y행렬 생성

x+y #x와 y 행렬 각 요소 더하기
x-y #x와 y 행렬 각 요소 빼기
x*y #x와 y 행렬 각 요소 곱하기
x %*% y #x와 y 행렬곱

#행렬결합
(rx= rbind(1:3, 4:6, c(7,8,9))) #rbind() : 행단위로 결합
(cx= cbind(1:3, 4:6, c(7,8,9))) #crbind() : 열단위로 결합

#행렬함수 예
(x = matrix (1:9 , nrow =3, byrow =T))
dim(x) #x행렬의 크기
nrow(x) #x행렬의 행의 개수
ncol(x) #x행렬의 열의 개수
t(x) #x행렬의 전치행렬
diag(x) #x행렬의 대각성분만 추출
diag(x) = 4 #x행렬의 대각성분을 4로 설정
diag(1, 5) #대각성분1인 단위행렬

#행렬 이름(label)
#성적처리 예
rnames = c("hong", "min","kim") #행 이름 벡터
cnames = c("kor","eng","mat") #열 이름 벡터
(score = rbind(c(100,80,90),c(50,70,80),c(90,99,96))) #점수벡터 생성
rownames(score) = rnames #행 이름 설정
colnames(score) = cnames #열 이름 설정
score
score["hong","eng"] #"hong'행의 "eng"열 요소
rownames(score) = NULL #행 이름 제거
colnames(score) = NULL #열 이름 제거
dimnames(score) = NULL #행열 이름 모두 제거

#과목별 총점 평균 최대 최소
(sum = apply(score, 2 ,sum))
(avg=apply(score, 2 ,mean))
(max=apply(score, 2, max))
(min=apply(score, 2, min))
#개인별 총점 평균 최대 최소
(sum = apply(score, 1 ,sum))
avg=apply(score, 1 ,mean)
(max=apply(score, 1, max))
(min=apply(score, 1, min))


#배열
# 3X4 array
matrix (1:12 , ncol =4)
array (1:12 , dim=c(3, 4))
(x = array (1:12 , dim=c(2, 2, 3))) #2X2X3 array
x[1,1,1] #1행 1열 1면
x[1,,] #1행의 모든 열, 모든면
x[,,1] #1면의 모든 행열