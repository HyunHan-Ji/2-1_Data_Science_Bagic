#dataframe , vector로 생성
n=c("hong","min","kim") #성명
h=c(172.6,155.7,180.9) #키
a = c(20,50,19) #나이
(d1 = data.frame(name=n,height=h,age=a))

#dataframe matrix로 생성
#같은 데이터형으로 구성된 번호, 키, 나이 행렬
dv=c(1,173,20,2,156,50,3,181,19)
#행렬로 데이터프레임 생성
m =matrix(dv, nrow=3, byrow=T)
(d2= data.frame(m))

cn = c("id", "height", "age")
names(d2) = cn; # 열이름 지정
d2

n=c("hong","min","kim", "jin")  #성명
h=c(172.6,155.7,180.9, 170.5) #키
a = c(20,50,19,23)  #나이
d1 = data.frame(name=n,height=h,age=a)
d1$name #d1 name접근, factor로 처리됨
d3 = data.frame(name=I(n),height=h,age=a)#I()사용
d3$name #d3 name접근, vector로 처리됨

#데이터프레임 수정
d3[1,] = c("song", 160.5, 33)
d3$height = c(166, 177,188,178)
d3[1,3] = 22

#데이터프레임 요소 추가
w = c(55.6, 70.4, 54.6, 80.4)
d1$weight = w
d1
#데이터프레임 요소 삭제
d1$weight = NULL
d1

(d4= rbind(d1,d3)) #행으로 결합
(d5= cbind(d1,d3)) #열로 결합

(df= data.frame(d1[, c(1,3)],d3[,c(1,2)])) 
(mg= merge(d1[, c(1,3)],d3[,c(1,2)])) 