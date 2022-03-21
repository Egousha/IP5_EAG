


dataset=read.csv('Self Awareness Dataset.csv')
colSums(is.na(dataset))

dataset$ï..Date<- NULL
dataset$X<- NULL
dataset$X.1<- NULL
dataset$X.2<- NULL


colSums(is.na(dataset))

set.seed(123)
split=sample.split(dataset$End.of.the.day.Feeling..0.to.10.,SplitRatio = 0.25)
training_set=subset(dataset,split==TRUE)
testing_set=subset(dataset,split==FALSE)

regressor<-lm(formula=End.of.the.day.Feeling..0.to.10.~.,data = training_set)
summary(regressor)



new<-data.frame(Day='Sunday',Sleep.Hour=8,Exercise.Hour=0, Study.Hour=3, StudyDS.Hour=0, Work.Hour=3)
predict(regressor,new)
new1<-data.frame(Day='Thursday',Sleep.Hour=8,Exercise.Hour=0, Study.Hour=2, StudyDS.Hour=0, Work.Hour=2)
predict(regressor,new1)
new2<-data.frame(Day='Wednesday',Sleep.Hour=5,Exercise.Hour=4, Study.Hour=1, StudyDS.Hour=1, Work.Hour=0)
predict(regressor,new2)
new3<-data.frame(Day='Monday',Sleep.Hour=8,Exercise.Hour=4, Study.Hour=2, StudyDS.Hour=0, Work.Hour=0)
predict(regressor,new3)
new4<-data.frame(Day='Tuesday',Sleep.Hour=8,Exercise.Hour=2, Study.Hour=2, StudyDS.Hour=2, Work.Hour=0)
predict(regressor,new4)
