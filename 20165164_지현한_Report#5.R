#스코프예제
x=10 #전역변수 x
myfun = function(y){
  x1 = x + y #지역변수 x1
  x = x + y #지역변수 x에 대입
  x <<- (x + y) #전역변수x에 대입
  cat("x1=", x1, " x=", x) #지역변수 우선 접근
  return(x)
}
x2 = myfun(100)
cat("x1=", x1) #지역변수 접근 불가
cat("x=", x)
cat("x2=", x2) 

#학점 처리 함수 예제
grade=function(m){
  if (!is.numeric(m)) {
    warning("숫자입력오류")
    return(NA)
  }
  if (m < 0 | m > 100){
    warning("점수범위(0-100)입력오류")
    return(NA)
  }
  if (m >= 90)
    return ("A")
  else if (m >= 80)
    return ("B")
  else if (m >= 70)
    return ("C")
  else if (m >= 60)
    return ("D")
  else
    return ("F")
} 

grade("A")
grade(-70)
grade(100)
grade(85)
grade(50)

#점수벡터로 학점벡터를 생성하여 두 벡터로 데이터프레임 생성
mlist = c(100,-97,88,65,74,30) #점수벡터
glist=NULL #학점벡터
for(m in mlist){ #점수벡터를 하나씩 꺼내어 학점 처리하여 학점벡터에 결합
  g = grade(m) #학점처리함수 호출
  glist = c(glist,g) #학점벡터에 결합
}
score= data.frame(mlist,glist) #점수벡터와 학점벡터를 사용하여 데이터프레임생성
names(score) = c("score","grade")

score

#(1)두수(x,y)의 곱을 구하여 반환하는  mul  함수 작성
#-두수가  숫자가 아니면 경고메시지 처리 후 NA반환
#-두 인수의 초기값은 1로 설정
#-지역변수 (z)에 계산 결과를 저장하여 반환
#-반환은 x,y, z의 리스트로  처리
mul=function(x=1,y=1){
  if ((!is.numeric(x)) | (!is.numeric(y))){
    warning("not numeric!")
    return(NA)
  }
  z=x*y
  return(list(x,y,z))
}


(mul(2,5))
(mul('a',5))
(mul())

#(2)나이를 입력하여 20대,30대,40대, 기타를 반환하는 함수 작성
#-나이가 숫자가 아니면 경고메시지, NA반환
#-나이가 1-200범위가 아니면 범위 경고메시지, NA반환
#-나이벡터를 이용하여 반복처리
agef=function(age){
  if (!is.numeric(age)){
    warning("not numeric")
    return(NA)
  }
  
  if (!(age>=1&age<=200)){
    warning("범위 오류")
    return(NA)
  }
  
  if (age>=20 & age<30) {
    return ("20대")
  }else if (age>=30 & age<40){
    return ("40대")
  }else if (age>=40 & age<50){
    return ("50대")
  }else{
    return ("기타")
  }
}
agelist=c(46,135,39,15,63,23)
nlist=NULL
for (age in agelist){
  a=agef(age)
  nlist=c(nlist,a)
}
(df=data.frame(agelist,nlist))
