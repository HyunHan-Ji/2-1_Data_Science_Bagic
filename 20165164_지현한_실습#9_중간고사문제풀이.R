#(1)data1.txt을 읽어  d1 대입, data2.txt를 읽어  d2 대입
d1=read.table("data1.txt",sep=",",head=T)
d2=read.table("data2.txt",head=T)

#(2)d1과 d2를 결합하여 d에 대입
d=merge(d1,d2)

#(3)d의 구조, 크기 확인, d의 상위 5개 확인
str(d)
dim(d)
head(d,n=5)

#(4)d의 location이 seoul인 id,temperature, humidity, season 확인
w1=which(d$location=="seoul")
d[w,-5]

#(5)d의 season이 summer인 humidity를 2씩 증가 (which 사용)
w2=which(d$season=="summer")
d[w2,3]=d[w2,3]+2

#(6)d의 temperature가 17~25범위 추출, location제외 , dg에 대입
w3=which(d$temperature>=17 & d$temperature<=25)
dg=d[w3,-5]

#(7)id가 factor이면 id를 character로 변환 (if 사용)
if(is.factor(d$id)){
  d$id=as.character(d$id)
}

#(8)d의 temperature, humidity에 대한 평균계산, temperature, humidity의 평균값만 m1에 대입
m1=sapply(d[,c(2:3)],mean)

#(9)d의 location별 temperature, humidity에 대한 중간값 m2에 대입
m2=aggregate(d[,c(2:3)],list(location=d$location),median)

#(10)습도순으로 정렬, 같은습도는 온도순으로 정렬(order 사용)
a=order(d$humidity,d$temperature)
d=d[a,]

#(11)"min10", 5.6, 30, "fall", "seoul" 데이터를 결합하여 d2에 대입
b=list(id="min10",temperature= 5.6,humidity= 30,season= "fall",location= "seoul")
d2=rbind(d,b)

#(12)계절별로 분리하여 d3에 대입
d3=split(d,d$season)

#(13)온도에 대한 히스토그램과 확률밀도 그래프 그리기 (y축 범위 설정 (0.0,0.5))
hist(d$temperature,freq=FALSE,ylim=c(0.0,0.05))
lines(density(d$temperature))
dev.copy(jpeg,file='13.jpg')
dev.off()

#(14)온도와 습도의 관계 그래프(제목,x,y축 범위, x,y축 이름 포함) / 온도, 습도의 평균값 수직, 수평선 추가
x=d$temperature
y=d$humidity
plot(x,y,title("Plot of temperature/humidity"),xlim=c(min(x),max(x)),ylim=c(min(y),max(y)),xlab="temperature",ylab="humidity")
abline(h=mean(y),lty=2,col="blue")
abline(v=mean(x),lty=2,col="red")

#(15)온도, 습도에대한 박스 그래프, 주제목, 박스 그래프의 이름 추가 
boxplot(x,y,title="Box Plot of temperature/humidity",names=c("temperature","humidity"))

#(16)(15)그래프를 15.jpg에 저장
dev.copy(jpeg,"15.jpg")
dev.off()

