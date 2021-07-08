a=read.csv("c:/data/Mall_Customers.csv",header=T)
#이 파일에는 고객에 대한 기본 정보
#(ID, 연령, 성별, 수입, 지출 점수)가 들어 있습니다.

#CustomerID	고객의 고유 ID
#Gender		고객의 성별
#Age		고객의 나이
#Annual income(k$)고객의 연간수입
#Spending Score	지출 점수 (1-100) 고객 행동 및 지출 성격에 따라 쇼핑몰에 의해 할당 된 점수

class(a)  #객체타입

object.size(a) #크기

str(a)  #구조

head(a,10)  #상위10개