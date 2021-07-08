#install.packages('dplyr')
library(dplyr)
data(iris)

#파이프사용
iris %>% head
iris %>% head(10)

#행정렬
arrange(iris,-Sepal.Length)
iris %>% arrange(Sepal.Length,Sepal.Width)

#열 선택
select (iris,Sepal.Length,Sepal.Width )
iris %>% select(Sepal.Length,Sepal.Width )

#조건에 따른 데이터 선택
d1 = filter(iris, Species == 'setosa')

#속성값을 변환하거나 새로운 속성 설정
iris %>%
  mutate(SepalRatio = Sepal.Width/Sepal.Length,
         PetalRatio = Petal.Width/Petal.Length)

#랜덤샘플링
sample_n(iris, 10)
sample_frac(iris, 0.01)

#고유행 검색
distinct(select(iris, Sepal.Width))

#데이터를 그룹으로 나눈후 연산 적용
#group_by + summarize
iris %>%
  group_by(Species) %>%
  summarize(median(Sepal.Width,),
            median(Petal.Width))
iris %>%  #전체를 계산
  group_by(Species) %>%
  summarize_all(median)

#연습문제
# 4 Species 별로 최대, 최소, 평균, 표준편차 계산
iris %>%
  group_by(Species) %>%
  summarize_all(max)
iris %>%
  group_by(Species) %>%
  summarize_all(min)
iris %>%
  group_by(Species) %>%
  summarize_all(mean)
iris %>%
  group_by(Species) %>%
  summarize_all(sd)

# 6 Petal.Length 로 정렬, 같으면 Petal.Width 로 정렬
iris %>% arrange(Petal.Length,Petal.Width)