#데이터 준비
(x = runif(10)) # 0-1사이의 10개 난수발생
(x = as.integer(x * 10)) # 0-10사이 정수 값으로 변경
# x를 파란색 점선타입으로 plot, 제목 설정
plot(x, main="0-10 random number plot", type="b", col="blue")

#비어있는 plot에 선, 점을 그리고 제목을 설정
plot(x, ann=FALSE, type = "n") #x,y축 라벨 없이, no plotting.
abline(h = 5, col = "gray") #gray 색상으로 y축 5에 선그리기
lines(x, col = "green4", lty = "dotted") # x값을 그린4 색상, 점선으로 그리기
points(x, bg = "limegreen", pch = 21) #x값을 limegreen색으로 채워진 원점으로 그리기
#주제목(main), x축 제목(xlab) 설정
title(main = "Simple Use of Color In a Plot", xlab = "Just a Whisper of a Label",
      col.main = "blue", col.lab = "gray", cex.main = 1.2, cex.lab = 1.0, font.main = 4,
      font.lab = 3)
plot.new () #plot 지우기, frame()

x = 1:5
y = seq(2,10,2)
plot(x)
plot(x,y)
plot(sin,-pi, 2*pi) #함수 그래프
curve(sin,-pi, 2*pi) #함수 그래프

#사용자 정의 함수 그래프 예
f1 = function(x){
  x^2
}
plot(f1, -3,3)
curve(f1(x), -3, 3)
#표준 정규 분포 함수
gauss.density=function(x){
  1/ sqrt(2*pi) * exp(-x^2 /2)
}
plot(gauss.density,-3, 3)

#함수 인수 2개 이상일 경우 함수 그래프 예
f2 = function(x,y){
  2*x*y + x^2+y^2
}
curve(f2(x, 4), -3,3)

y= c(1,3,2,4,8,5,7,6,9)
plot(y, main=" Simple Time Series")
plot(y, main=" Simple Time Series", ylim=c(0,10), type="l") #제목, y축 범위, type 선 설정
par(new = T) #그래프 겹쳐 그리기
z = c(6,5,8,4,2,9,3,1,7)
plot(z, ylim=c(0,10), type="b", ylab="", col="red") #type 선,점 선택, 색상 red

y= c(1,3,2,4,8,5,7,6,9)
z = c(6,5,8,4,2,9,3,1,7)
plot(y, ylim=c(0,10), ylab="", pch=1) # 원모양의 점 플롯
par(new = T)
plot(z, ylim=c(0,10), ylab="", pch=15, col="blue") #파란색 사각점 플롯

#조건에 따른 모양 설정
data(sleep)
plot( sleep$extra, col=ifelse(sleep$group == 1,"red","blue"))
plot( sleep$extra, pch=ifelse(sleep$extra < 0,"X","O"))

with (iris , {
  plot (NULL , xlim =c(0, 5) , ylim =c(0, 10) ,
        xlab =" width ", ylab =" length ", main =" iris ", type ="n")
  points ( Sepal.Width , Sepal.Length , pch =20)
  points ( Petal.Width , Petal.Length , pch="+", col="red")
})

#[0, 2π]까지 sin 그래프
x = seq (0, 2*pi , 0.1)
y = sin(x)
plot (x, y, cex=.5 , col ="red ") #점 크기를 작게(cex 디폴트 1)
lines (x, y)

data(cars)
plot (cars , xlim =c(0, 25) )
abline (a=-5, b=3.5 , col ="red ") #절편 -5, 기울기 b인 직선
abline (h= mean ( cars $ dist ), lty =2, col =" blue ") #dist 평균 수평선
abline (v= mean ( cars $ speed ), lty =2, col =" green ") #speed 평균 수직선

plot (cars$dist)
text(5, 100, "cars1", cex=2) #5,100위치에 크기 2, 문자
#20,100위치에 45도 각도로 빨간색 문자
text(20, 100, "cars45", srt=45, col='red')
#최대값의 위치에 문자와 빨간색 큰점 그리기
max = which.max(cars$dist)
text(max, cars$dist[max]-4, "carsMax", col='red')
points(max, cars$dist[max], pch=16, col='red', cex=2)

plot(sin, -pi, pi, xlab="x", ylab="y", lty=1)
plot(cos, -pi, pi, lty=2, add=T)
legend("bottomright", lty=1:2, c("sin", "cos"))

#x^1, x^2, x^3 그래프에 범례지정 예
square = function(x,y) x ^ y
curve(square(x, 1), xlim=c(-2,2), ylim=c(-4,4), ylab="x ^ y", col=1)
par(new=T) #겹쳐그리기
curve(square(x, 2), xlim=c(-2,2), ylim=c(-4,4), ylab="", col=2)
par(new=T) #겹쳐그리기
curve(square(x, 3), xlim=c(-2,2), ylim=c(-4,4), ylab="", col=3)
legend("top", lty = 1, col=1:3, c("x^1", "x^2", "x^3")) #범례

data(sleep)
plot( sleep$extra, col=ifelse(sleep$group == 1, "red","blue"), xlab="")
title(main = "Main title", xlab = "Sub title", col.main = "blue", col.lab = "red" )

# Normal Distribution
#평균 0, 표준편차 1인 정규분포를 따르는 임의수 7개 추출 하여 그리기
x = rnorm(7)
#축을 없애고 그리기
plot(1:7, x , main = "axis() examples", type = "s", ylim=c(-3, 3), axes = F, col = "red")
box() #테두리 그리기
#axis() 축 그리기, side : 1=below, 2=left, 3=above and 4=right
#아래축 라벨을 파란색으로 지정
axis(side=1, col.axis = "blue")
#왼쪽 축, -3~3까지 4개 눈금,파랑색 점선 굵기 0.5,
axis(side=2, yaxp=c(-3,3, 4), col = "blue", lty = 2, lwd = 0.5)
#위축, 1:7 범위를 A:G로 표기, 금색 점선 굵기 0.5,
axis(side=3, 1:7, LETTERS[1:7], col = "gold", lty = 2, lwd = 0.5)
#오른쪽축, 보라색 굵기2 선, 축라벨색 어두운 보라색
axis(side=4, col = "violet", col.axis = "dark violet", lwd = 2)

##정규분포함수 그래프를 파일에 저장
#파일디바이스를 열어서 그리기
pdf(file="nd1.pdf") #pdf 디바이스 열기
curve(dnorm, -4, 4, main="Normal Distribution") #그리기
dev.off() #디바이스 닫기
#그래프 디바이스에 그려진 그래프를 파일디바이스로 복사
curve(dnorm, -4, 4, main="Normal Distribution") # 그리기
dev.copy(jpeg, "nd2.jpg") #jpg 디바이스로 출력
dev.off() #디바이스 닫기
