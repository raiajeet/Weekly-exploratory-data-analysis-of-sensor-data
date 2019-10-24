##BFA
rm(list=ls())

data= read.csv("C:\\Users\\AJIT\\Documents\\BFA\\combbfa.csv",header = TRUE
               ,stringsAsFactors = FALSE)
str(data)
#data$v0=as.factor(data$v0)
head(data)
data <- data[1:nrow(data),]
data=aggregate(.~v0, data=data, mean)

#data=data[order(as.Date(data$v0, format="%d%b%Y")),]
#data=aggregate(.~v0,data, mean)
head(data)
nrow(data)
e1=data[data$v0 >= "2015-06-04" & data$v0 <= "2015-07-04",]
e2=data[data$v0 >= "2015-07-07" & data$v0 <= "2015-08-07",]
e3=data[data$v0 >= "2015-09-28" & data$v0 <= "2015-10-28",]
e4=data[data$v0 >= "2016-02-13" & data$v0 <= "2016-03-13",]
e5=data[data$v0 >= "2016-06-23" & data$v0 <= "2016-07-23",]
e6=data[data$v0 >= "2016-09-28" & data$v0 <= "2016-10-28",]
e7=data[data$v0 >= "2017-11-01" & data$v0 <= "2017-12-01",]
e8=data[data$v0 >= "2017-03-21" & data$v0 <= "2017-04-21",]
e9=data[data$v0 >= "2017-06-29" & data$v0 <= "2017-07-29",]
e10=data[data$v0 >= "2017-09-23" & data$v0 <= "2017-10-23",]
e11=data[data$v0 >= "2017-12-31" & data$v0 <= "2018-01-31",]
e12=data[data$v0 >= "2015-03-22" & data$v0 <= "2015-04-22",]
e13=data[data$v0 >= "2015-05-07" & data$v0 <= "2015-06-07",]
e14=data[data$v0 >= "2015-05-10" & data$v0 <= "2015-06-10",]
e15=data[data$v0 >= "2015-12-23" & data$v0 <= "2016-01-23",]
e16=data[data$v0 >= "2016-03-28" & data$v0 <= "2016-04-28",]
e17=data[data$v0 >= "2016-10-07" & data$v0 <= "2016-11-07",]
e18=data[data$v0 >= "2016-09-14" & data$v0 <= "2016-10-14",]
e19=data[data$v0 >= "2017-11-01" & data$v0 <= "2017-12-01",]
e20=data[data$v0 >= "2017-11-04" & data$v0 <= "2017-12-04",]
e21=data[data$v0 >= "2017-06-26" & data$v0 <= "2017-07-26",]
e22=data[data$v0 >= "2017-09-26" & data$v0 <= "2017-10-26",]
e23=data[data$v0 >= "2017-12-31" & data$v0 <= "2018-01-31",]

###########################################################################
ne1=e1[e1$v0 >= "2015-06-21" & e1$v0 <= "2015-07-04",]
ne2=e2[e2$v0 >= "2015-07-23" & e2$v0 <= "2015-08-07",]
ne3=e3[e3$v0 >= "2015-10-13" & e3$v0 <= "2015-10-28",]
ne4=e4[e4$v0 >= "2016-02-27" & e4$v0 <= "2016-03-13",]
ne5=e5[e5$v0 >= "2016-07-08" & e5$v0 <= "2016-07-23",]
ne6=e6[e6$v0 >= "2016-10-13" & e6$v0 <= "2016-10-28",]
ne7=e7[e7$v0 >= "2017-11-16" & e7$v0 <= "2017-12-01",]
ne8=e8[e8$v0 >= "2017-04-06" & e8$v0 <= "2017-04-21",]
ne9=e9[e9$v0 >= "2017-07-14" & e9$v0 <= "2017-07-29",]
ne10=e10[e10$v0 >= "2017-10-08" & e10$v0 <= "2017-10-23",]
ne11=e11[e11$v0 >= "2018-01-16" & e11$v0 <= "2018-01-31",]
ne12=e12[e12$v0 >= "2015-04-07" & e12$v0 <= "2015-04-22",]
ne13=e13[e13$v0 >= "2015-05-23" & e13$v0 <= "2015-06-07",]
ne14=e14[e14$v0 >= "2015-05-26" & e14$v0 <= "2015-06-10",]
ne15=e15[e15$v0 >= "2016-01-08" & e15$v0 <= "2016-01-23",]
ne16=e16[e16$v0 >= "2016-04-13" & e16$v0 <= "2016-04-28",]
ne17=e17[e17$v0 >= "2016-10-23" & e17$v0 <= "2016-11-07",]
ne18=e18[e18$v0 >= "2016-09-30" & e18$v0 <= "2016-10-14",]
ne19=e19[e19$v0 >= "2017-11-17" & e19$v0 <= "2017-12-01",]
ne20=e20[e20$v0 >= "2017-11-20" & e20$v0 <= "2017-12-04",]
ne21=e21[e21$v0 >= "2017-07-11" & e21$v0 <= "2017-07-26",]
ne22=e22[e22$v0 >= "2017-10-11" & e22$v0 <= "2017-10-26",]
ne23=e23[e23$v0 >= "2018-01-16" & e23$v0 <= "2018-01-31",]

###########################################################################
library(plotly)
e6$t=1:nrow(e6)
e6$t <- as.numeric(e6$t)
plot=plot_ly(e6, x = ~t, y = ~v1,name = 'v1',mode = 'lines')%>%
  add_trace(y = ~v2, name = 'v1',mode = 'lines')%>%
  add_trace(y = ~v2, name = 'v2',mode = 'lines')%>%
  add_trace(y = ~v3,name = 'v3',mode = 'lines') %>%
  add_trace(y = ~v4,name = 'v4',mode = 'lines')%>%
  add_trace(y = ~v5,name = 'v5',mode = 'lines')%>%
  add_trace(y = ~v6,name = 'v6',mode = 'lines')%>%
  add_trace(y = ~v7,name = 'v7',mode = 'lines')%>%
  add_trace(y = ~v8,name = 'v8',mode = 'lines')%>%
  add_trace(y = ~v9,name = 'v9',mode = 'lines')%>%
  add_trace(y = ~v10,name = 'v10',mode = 'lines')%>%
  add_trace(y = ~v11,name = 'v11',mode = 'lines')%>%
  add_trace(y = ~v12,name = 'v12',mode = 'lines')%>%
  layout(title="Event 6")
plot

library(psych)
pairs.panels(e1,gap=0)
pairs.panels(e2,gap=0)



################################## weekly Analysis #########################
we1=data[data$v0 >= "2015-06-28" & data$v0 <= "2015-07-11",]
we2=data[data$v0 >= "2015-08-01" & data$v0 <= "2015-08-14",]
we3=data[data$v0 >= "2015-10-21" & data$v0 <= "2015-11-04",]
we4=data[data$v0 >= "2016-03-06" & data$v0 <= "2016-03-20",]
we5=data[data$v0 >= "2016-07-16" & data$v0 <= "2016-07-30",]
we6=data[data$v0 >= "2016-10-21" & data$v0 <= "2016-11-04",]
we7=data[data$v0 >= "2017-11-25" & data$v0 <= "2017-12-08",]
we8=data[data$v0 >= "2017-04-14" & data$v0 <= "2017-04-28",]
we9=data[data$v0 >= "2017-07-22" & data$v0 <= "2017-07-05",]
we10=data[data$v0 >= "2017-10-16" & data$v0 <= "2017-10-30",]
we11=data[data$v0 >= "2018-01-24" & data$v0 <= "2018-02-07",]
we12=data[data$v0 >= "2015-04-15" & data$v0 <= "2015-04-29",]
we13=data[data$v0 >= "2015-06-01" & data$v0 <= "2015-06-14",]
we14=data[data$v0 >= "2015-06-03" & data$v0 <= "2015-06-17",]
we15=data[data$v0 >= "2016-01-16" & data$v0 <= "2016-01-30",]
we16=data[data$v0 >= "2016-04-21" &data$v0 <= "2016-05-04",]
we17=data[data$v0 >= "2016-11-01" & data$v0 <= "2016-11-14",]
we18=data[data$v0 >= "2016-10-07" & data$v0 <= "2016-10-21",]
we19=data[data$v0 >= "2017-11-24" &data$v0 <= "2017-12-08",]
we20=data[data$v0 >= "2017-11-28" &data$v0 <= "2017-12-11",]
we21=data[data$v0 >= "2017-07-19" & data$v0 <= "2017-08-01",]
we22=data[data$v0 >= "2017-10-19" &data$v0 <= "2017-11-01",]
we23=data[data$v0 >= "2018-01-24" & data$v0 <= "2018-02-07",]

a <- list(
  title = "",
  showticklabels = TRUE,
  tickangle = 20,
  exponentformat = "E")
y <- list(title = "")
plot_ly(we20, x = ~v0, y = ~v1,name = 'v1',mode ='lines',type="scatter")%>%
  add_trace(y = ~v2, name = 'v2',mode = 'lines')%>%
  add_trace(y = ~v3,name = 'v3',mode = 'lines')%>%
  add_trace(y = ~v4,name = 'v4',mode = 'lines')%>%
  add_trace(y = ~v5,name = 'v5',mode = 'lines')%>%
  add_trace(y = ~v6,name = 'v6',mode = 'lines')%>%
  add_trace(y = ~v7,name = 'v7',mode = 'lines')%>%
  add_trace(y = ~v8,name = 'v8',mode = 'lines')%>%
  add_trace(y = ~v9,name = 'v9',mode = 'lines')%>%
  add_trace(y = ~v10,name = 'v10',mode = 'lines')%>%
  add_trace(y = ~v11,name = 'v11',mode = 'lines')%>%
  add_trace(y = ~v12,name = 'v12',mode = 'lines')%>%
  layout(title="Event 20: Weekly Analysis",xaxis=a,yaxis=y)


library(psych)
pairs.panels(we1,gap=0)
pairs.panels(we2,gap=0)
