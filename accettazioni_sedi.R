install.packages("openxlsx")
library("openxlsx")


#### estrai i dati con la query accettazioni nonsmart

#lancia tutto questo in una shell R, e lanciaci anche il programma delle telefonate

file <-"/mnt/c/Users/benedetta.cerruti/Desktop/efficienza/accettazioni_nonsmart_nov2021.csv"
accettazioni_nov <- read.csv(file, header = TRUE, sep = ",")
require(dplyr)
accettazioni_nov %>% count(nome_sede) 

nomi_sedi <- unique(sort(accettazioni_nov$nome_sede)) # tutti i nomi delle sedi
nomi<-c('Barona','Bicocca','Bologna','Brescia','Buccinasco','Cadorna','Cairoli','Cernusco','Cimiano','Città Studi','Corvetto A+B','Corvetto (no dati)','Vercelli','Domiciliare','Foppa','Loreto','Missori','Monumentale','Monza','Nembro','Palazzo di Giustizia','Castaldi','Porta Romana','Porta Venezia','Portello','Rho Esselunga','Roma Cavour','Sesto 1','Sesto 2','Santagostino 1','Santagostino 18','Santa Sofia','Via Larga','Videoterapia Online','Vigevano')


data <- as.POSIXct(accettazioni_nov$CreateDate, tz = "UTC", format = "%Y-%m-%d %H:%M:%S")
as.integer(format(data,"%d"))-> giorno

#divido a mano per le varie settimane di novembre


tmedio_acc <- .1  #il tempo medio di accettazione sono 6 minuti, ovvero 1 decimo di ora

#carico la lunghezza media della telefonata
file_l <-"/mnt/c/Users/benedetta.cerruti/Desktop/efficienza/lunghezza_media_telefonata.csv"
zzz <- read.csv(file_l, header = TRUE, sep = ",")
lunghezza_media_telefonata <- zzz[,2]
lunghezza_media_telefonata <-1


#carico i file delle telefonate
telf <-"/mnt/c/Users/benedetta.cerruti/Desktop/efficienza/telefonate_25_30_ottobre2021.csv"
zzz <- read.csv(telf, header = TRUE, sep = ",")
telefonate_25_30_ottobre2021 <- zzz[,2]

telf <-"/mnt/c/Users/benedetta.cerruti/Desktop/efficienza/telefonate_1_6_novembre2021.csv"
zzz <- read.csv(telf, header = TRUE, sep = ",")
telefonate_1_6_novembre2021 <- zzz[,2]

telf <-"/mnt/c/Users/benedetta.cerruti/Desktop/efficienza/telefonate_8_13_novembre2021.csv"
zzz <- read.csv(telf, header = TRUE, sep = ",")
telefonate_8_13_novembre2021 <- zzz[,2]

telf <-"/mnt/c/Users/benedetta.cerruti/Desktop/efficienza/telefonate_15_20_novembre2021.csv"
zzz <- read.csv(telf, header = TRUE, sep = ",")
telefonate_15_20_novembre2021 <- zzz[,2]

accettazioni_1_6novembre2021 <- accettazioni_nov[which(giorno<7),]
accettazioni_8_13novembre2021 <- accettazioni_nov[which(giorno>7 & giorno<14),]


accettazioni_1_6novembre2021 %>% count(nome_sede) ->accXsede_1_6novembre2021
accettazioni_8_13novembre2021 %>% count(nome_sede) ->accXsede_8_13novembre2021

######## carico i database delle telefonate






#################################################################### terza di novembre

file <-"/mnt/c/Users/benedetta.cerruti/Desktop/efficienza/accettazioni_nonsmart_nov2021_3.csv"
accettazioni_nov <- read.csv(file, header = TRUE, sep = ",")
require(dplyr)
accettazioni_nov %>% count(nome_sede) 

nomi_sedi <- unique(sort(accettazioni_nov$nome_sede)) # tutti i nomi delle sedi
nomi<-c('Barona','Bicocca','Bologna','Brescia','Buccinasco','Cadorna','Cairoli','Cernusco','Cimiano','Città Studi','Corvetto A+B','Corvetto (no dati)','Vercelli','Domiciliare','Foppa','Loreto','Missori','Monumentale','Monza','Nembro','Palazzo di Giustizia','Castaldi','Porta Romana','Porta Venezia','Portello','Rho Esselunga','Roma Cavour','Sesto 1','Sesto 2','Santagostino 1','Santagostino 18','Santa Sofia','Via Larga','Videoterapia Online','Vigevano')


data <- as.POSIXct(accettazioni_nov$CreateDate, tz = "UTC", format = "%Y-%m-%d %H:%M:%S")
as.integer(format(data,"%d"))-> giorno

#divido a mano per le varie settimane di novembre


accettazioni_15_20novembre2021 <- accettazioni_nov[which(giorno>14 & giorno<21),]
accettazioni_15_20novembre2021 %>% count(nome_sede) ->accXsede_15_20novembre2021



#################################################################################################################
file <-"/mnt/c/Users/benedetta.cerruti/Desktop/efficienza/accettazioni_nonsmart_ott2021.csv"
accettazioni_ott <- read.csv(file, header = TRUE, sep = ",")
require(dplyr)
accettazioni_ott %>% count(nome_sede) 

nomi_sedi <- unique(sort(accettazioni_ott$nome_sede)) # tutti i nomi delle sedi


data <- as.POSIXct(accettazioni_ott$CreateDate, tz = "UTC", format = "%Y-%m-%d %H:%M:%S")
as.integer(format(data,"%d"))-> giorno

#divido a mano per le varie settimane di ottobre


accettazioni_25_30ottobre2021 <- accettazioni_ott[which(giorno>24 & giorno<31),]
accettazioni_18_23ottobre2021 <- accettazioni_ott[which(giorno>17 & giorno<24),]

accettazioni_25_30ottobre2021 %>% count(nome_sede) ->accXsede_25_30ottobre2021
accettazioni_18_23ottobre2021 %>% count(nome_sede) ->accXsede_18_23ottobre2021

#################################################################### quarta di novembre

file <-"/mnt/c/Users/benedetta.cerruti/Desktop/efficienza/accettazioni_nonsmart_nov2021_4.csv"
accettazioni_nov <- read.csv(file, header = TRUE, sep = ",")
require(dplyr)
accettazioni_nov %>% count(nome_sede) 

nomi_sedi <- unique(sort(accettazioni_nov$nome_sede)) # tutti i nomi delle sedi
nomi<-c('Barona','Bicocca','Bologna','Brescia','Buccinasco','Cadorna','Cairoli','Cernusco','Cimiano','Città Studi','Corvetto A+B','Corvetto (no dati)','Vercelli','Domiciliare','Foppa','Loreto','Missori','Monumentale','Monza','Nembro','Palazzo di Giustizia','Castaldi','Porta Romana','Porta Venezia','Portello','Rho Esselunga','Roma Cavour','Sesto 1','Sesto 2','Santagostino 1','Santagostino 18','Santa Sofia','Via Larga','Videoterapia Online','Vigevano')


data <- as.POSIXct(accettazioni_nov$CreateDate, tz = "UTC", format = "%Y-%m-%d %H:%M:%S")
as.integer(format(data,"%d"))-> giorno

#divido a mano per le varie settimane di novembre


accettazioni_22_27novembre2021 <- accettazioni_nov[which(giorno>21 & giorno<28),]
accettazioni_22_27novembre2021 %>% count(nome_sede) ->accXsede_22_27novembre2021



##########################################################################################
#################################################################################################################
#conto ore uomo 1-6 novembre 2021

a <- vector()
a[1]<- 8+8+8+8+6.5+5.5 # barona
a[2]<- 24           # bicocca
a[3]<- 4*8+3*7+6.5+5.5           # bologna
a[4]<-  0          #BRESCIA-SOLFERINO
a[5]<- 7+7+7*3+6.5+5.5         #BUCCINASCO
a[6]<-          0           #CADORNA
a[7]<-  (8+6.5+8+8)*3+2*8+6+(6.5+8+7)*3+6+8+7+8+5+8+8+41   #CAIROLI le ultime 41 sono di gente prestata da loreto
a[8]<-  4*8+7*3+6.5+5.5    #CERNUSCO
a[9]<-	4*8+7*3+6.5+5.5+2*8	#CIMIANO
a[10]<-	(7+4+8)*4+5+5.5+7*4	#CITTASTUDI/ ABRUZZI
a[11]<-  241.5        #corvetto A+B, sono insieme
a[12]<- 0            #corvetto B
a[13]<- (6.5*2+8*5)*2+(6.5+6+8*5)*2+8+8+5         #corso vercelli
a[14]<-0	#domiciliare
a[15]<-	4*8+7+6+6+6+8	#foppa
a[16]<- 8+7+8+(7+8+6+8)*3+5+8-41         #loreto 41 le tolgo perché le presta a cairoli
a[17]<-     0  			#missori
a[18]<-	16		# monumentale
a[19]<-	5.5+3+8+8+3+8+5+6+8+5+4+3	#monza esselunga
a[20]<-	(8+8)*5			#nembro esselunga
a[21]<-	51.5	#palazzo di giustizia  ha vari prestiti in giro
a[22]<-	295			#panfilo castaldi
a[23]<-	69			#porta romana
a[24]<-	0			#porta venezia
a[25]<-	16			#portello
a[26]<-	8*3+8*3+7.5+20-1			#rho esselunga
a[27]<-	5*4+5*4			#roma cavour
a[28]<-	(3+7+8+8)*2+3+6.5+8+8+2.5+7+8+8+5.5*2		# sesto san giovanni 1
a[29]<-	(8+7)*3+8+6.5+5.5		# sesto san giovanni 2
a[30]<-209			#santa1
a[31]<-46			#santa18
a[32]<-	94			#santa sofia
a[33]<-	103.5			#via larga
a[34]<-	0		#videoterapia- online
a[35]<- (6.5+8)*3+5.5+7+8-1.5		#vigevano esselunga formazione per un'ora e mezza

b<-nomi_sedi

oreuomo_1_6novembre2021<-a
turniXsede_1_6novembre2021<-list()
cbind.data.frame(a,b)->turniXsede_1_6novembre2021
colnames(turniXsede_1_6novembre2021)<-c('ore', 'sede')


#################################################################################################################
#conto ore uomo 8-13 novembre 2021
a <- vector()
a[1]<-  80# barona
a[2]<-  24         # bicocca
a[3]<-  80          # bologna
a[4]<-  0          #BRESCIA-SOLFERINO
a[5]<-  72        #BUCCINASCO
a[6]<-  0           #CADORNA
a[7]<- 160+120+13    #CAIROLI 
a[8]<- 80    #CERNUSCO
a[9]<- 125	#CIMIANO
a[10]<-	100	#CITTASTUDI/ ABRUZZI
a[11]<- 292       #corvetto A+B, sono insieme
a[12]<- 0            #corvetto B
a[13]<- 336          #corso vercelli
a[14]<-0	#domiciliare
a[15]<-	80	#foppa
a[16]<- 160.5        #loreto 41 le tolgo perché le presta a cairoli
a[17]<- 0  			#missori
a[18]<-	16		# monumentale
a[19]<-	80+18.5	#monza esselunga
a[20]<-	80+12			#nembro esselunga
a[21]<-	40+38-16	#palazzo di giustizia 
a[22]<-	383+4			#panfilo castaldi
a[23]<-	80			#porta romana
a[24]<-	0			#porta venezia
a[25]<-	20			#portello
a[26]<- 100.5				#rho esselunga
a[27]<-	50			#roma cavour
a[28]<-	119		# sesto san giovanni 1
a[29]<-	79.5		# sesto san giovanni 2
a[30]<-	252.5		#santa1
a[31]<-	60		#santa18
a[32]<-	120-3			#santa sofia
a[33]<-	129.5			#via larga
a[34]<-	0		#videoterapia- online
a[35]<- 80		#vigevano esselunga 
b<-nomi_sedi


oreuomo_8_13novembre2021<-a
turniXsede_8_13novembre2021<-list()
cbind.data.frame(a,b)->turniXsede_8_13novembre2021
colnames(turniXsede_8_13novembre2021)<-c('ore', 'sede')


#################################################################################################################
#conto ore uomo 25-30 ottobre 2021
a <- vector()
a[1]<-  80 # barona MANU
a[2]<-  24     # bicocca
a[3]<-  80         # bologna
a[4]<-  0       #BRESCIA-SOLFERINO
a[5]<-  80       #BUCCINASCO MANU
a[6]<-  0               #CADORNA
a[7]<-  160+120-8   #CAIROLI iris
a[8]<-  81    #CERNUSCO manu
a[9]<-	160-6*8	#CIMIANO manu
a[10]<-	105.5	#CITTASTUDI/ ABRUZZI iris
a[11]<- 248        #corvetto A+B, sono insieme manu
a[12]<- 0            #corvetto B
a[13]<- 304      #corso vercelli iris
a[14]<- 0	#domiciliare
a[15]<-	80	#foppa
a[16]<- 162+16         #loreto iris
a[17]<- 0  			#missori
a[18]<-	20		# monumentale
a[19]<-	85	#monza esselunga
a[20]<-	94.5		#nembro esselunga
a[21]<-	40+36.5-7-7-6.5+8+8+8	#palazzo di giustizia  MANU
a[22]<-	410.5			#panfilo castaldi
a[23]<-	80			#porta romana
a[24]<-	0			#porta venezia
a[25]<-	20			#portello
a[26]<-	95			#rho esselunga
a[27]<-	52		#roma cavour
a[28]<-	136.15	# sesto san giovanni 1  IRIS
a[29]<-	80		# sesto san giovanni 2  IRIS
a[30]<-	271		#santa1
a[31]<-	78		#santa18
a[32]<-	120-8			#santa sofia
a[33]<-	117		#via larga
a[34]<-	0		#videoterapia- online
a[35]<- 79		#vigevano esselunga 

b<-nomi_sedi

oreuomo_25_30ottobre2021<-a
turniXsede_25_30ottobre2021<-list()
cbind.data.frame(a,b)->turniXsede_25_30ottobre2021
colnames(turniXsede_25_30ottobre2021)<-c('ore', 'sede')
##################################################################################################


##############################################################################################

#################################################################################################################
#conto ore uomo 15-20 novembre 2021
a <- vector()
a[1]<- 80-16+14 # barona
a[2]<-  24     # bicocca
a[3]<-  80         # bologna
a[4]<-  0       #BRESCIA-SOLFERINO
a[5]<-  80       #BUCCINASCO
a[6]<-  0               #CADORNA
a[7]<- 280.5+40    #CAIROLI le ultime 41 sono di gente prestata da loreto
a[8]<- 44+14+16     #CERNUSCO
a[9]<-120.5-14-3*8		#CIMIANO
a[10]<-	100	#CITTASTUDI/ ABRUZZI
a[11]<- 292        #corvetto A+B, sono insieme
a[12]<- 0            #corvetto B
a[13]<- 40*8-8      #corso vercelli
a[14]<-0	#domiciliare
a[15]<- 80		#foppa
a[16]<- 120         #loreto 41 le tolgo perché le presta a cairoli
a[17]<-     0  			#missori
a[18]<-	16		# monumentale
a[19]<-	90	#monza esselunga
a[20]<-	112-16		#nembro esselunga
a[21]<-	5.5+16+42	#palazzo di giustizia  
a[22]<-	402			#panfilo castaldi
a[23]<-	43+40-4			#porta romana
a[24]<-	0			#porta venezia
a[25]<-	20			#portello
a[26]<-	100-8			#rho esselunga
a[27]<-	50		#roma cavour
a[28]<-	138.5	# sesto san giovanni 1
a[29]<-	40		# sesto san giovanni 2
a[30]<-	239.5		#santa1
a[31]<-	64		#santa18
a[32]<-	104			#santa sofia
a[33]<-	125		#via larga
a[34]<-	0		#videoterapia- online
a[35]<- 82		#vigevano esselunga 

b<-nomi_sedi

oreuomo_15_20novembre2021<-a
turniXsede_15_20novembre2021<-list()
cbind.data.frame(a,b)->turniXsede_15_20novembre2021
colnames(turniXsede_15_20novembre2021)<-c('ore', 'sede')

#################################################################################################################
#conto ore uomo 22-27 novembre 2021
#a <- vector()
#a[1]<- 80-7+8  # barona
#a[2]<- 20      # bicocca
#a[3]<- 80          # bologna
#a[4]<-  0       #BRESCIA-SOLFERINO
#a[5]<- 80        #BUCCINASCO
#a[6]<-  0               #CADORNA
#a[7]<- 280-40-6.5-6    #CAIROLI 
#a[8]<- 80-7+16     #CERNUSCO
#a[9]<-	120-7-8	#CIMIANO
#a[10]<- 100		#CITTASTUDI/ ABRUZZI
#a[11]<- 310        #corvetto A+B, sono insieme
#a[12]<- 0            #corvetto B
#a[13]<- 335.5      #corso vercelli
#a[14]<-0	#domiciliare
#a[15]<-54+24		#foppa
#a[16]<- 164-8         #loreto 
#a[17]<-    0  			#missori
#a[18]<- 16			# monumentale
#a[19]<- 92		#monza esselunga
#a[20]<- 100-16			#nembro esselunga
#a[21]<- 80-5.5		#palazzo di giustizia  
#a[22]<- 347.5				#panfilo castaldi
#a[23]<- 77				#porta romana
#a[24]<- 0			#porta venezia
#a[25]<- 20				#portello
#a[26]<- 100				#rho esselunga
#a[27]<- 40			#roma cavour
#a[28]<- 148		# sesto san giovanni 1
#a[29]<- 79			# sesto san giovanni 2
#a[30]<- 276			#santa1
#a[31]<- 67			#santa18
#a[32]<- 84.5			#santa sofia
#a[33]<- 90			#via larga
#a[34]<- 0		#videoterapia- online
#a[35]<- 62		#vigevano esselunga 

b<-nomi_sedi

turniXsede_22_27novembre2021<-list()
cbind.data.frame(a,b)->turniXsede_22_27novembre2021
colnames(turniXsede_22_27novembre2021)<-c('ore', 'sede')


#################################################################################################################
#conto ore uomo 29-4 novembre-dicembre 2021
#a <- vector()
#a[1]<- 80  # barona
#a[2]<- 22.5      # bicocca
#a[3]<-  80         # bologna
#a[4]<-  0       #BRESCIA-SOLFERINO
#a[5]<-  80       #BUCCINASCO
#a[6]<-  0               #CADORNA
#a[7]<- 253    #CAIROLI 
#a[8]<-  68+8    #CERNUSCO
#a[9]<-	66+8	#CIMIANO
#a[10]<- 100		#CITTASTUDI/ ABRUZZI
#a[11]<-  307       #corvetto A+B, sono insieme
#a[12]<- 0            #corvetto B
#a[13]<- 359.5       #corso vercelli
#a[14]<-0	#domiciliare
#a[15]<-78		#foppa
#a[16]<- 160.5-8         #loreto 
#a[17]<-     0  			#missori
#a[18]<- 17.5			# monumentale
#a[19]<- 96		#monza esselunga
#a[20]<- 100-18			#nembro esselunga
#a[21]<- 8+80-24   #palazzo di giustizia 
#a[22]<- 307				#panfilo castaldi
#a[23]<- 80				#porta romana
#a[24]<- 0			#porta venezia
#a[25]<- 20				#portello
#a[26]<- 97				#rho esselunga
#a[27]<- 54			#roma cavour
#a[28]<- 133		# sesto san giovanni 1
#a[29]<- 78			# sesto san giovanni 2
#a[30]<- 254			#santa1
#a[31]<- 80			#santa18
#a[32]<- 117				#santa sofia
#a[33]<- 120			#via larga
#a[34]<- 0		#videoterapia- online
#a[35]<- 80-2-4		#vigevano esselunga 

#turniXsede_29_4dicembre2021<-list()
#cbind.data.frame(a,b)->turniXsede_29_4dicembre2021
#colnames(turniXsede_29_4dicembre2021)<-c('ore', 'sede')

###########  grafico 1-6 novembre


kpi <- accXsede_1_6novembre2021[,2]*tmedio_acc/turniXsede_1_6novembre2021[,1]
kpi[c(4,6,12,14,17,24,32,34)]<-rep(0,8)   #metto a 0 quelli che sarebbero infiniti
pdf('efficienza1-6novembre2021.pdf')
par(mar=c(11,6,4,4))
barplot(names=nomi,height=kpi,las=2,cex.names=.8,ylab='accettazioni/ore uomo')
dev.off()

###########  grafico 8-13 novembre

kpi <- accXsede_8_13novembre2021[,2]*tmedio_acc/turniXsede_8_13novembre2021[,1]
kpi[c(4,6,12,14,17,24,32,34)]<-rep(0,8)   #metto a 0 quelli che sarebbero infiniti
pdf('efficienza8-13novembre2021.pdf')
par(mar=c(11,6,4,4))
barplot(names=nomi,height=kpi,las=2,cex.names=.8,ylab='accettazioni/ore uomo')
dev.off()
###########  grafico 15-20 novembre

colnames(turniXsede_15_20novembre2021)<-c('ore', 'sede')
kpi <- accXsede_15_20novembre2021[,2]*tmedio_acc/turniXsede_15_20novembre2021[,1]
kpi[c(4,6,12,14,17,24,32,34)]<-rep(0,8)   #metto a 0 quelli che sarebbero infiniti
pdf('efficienza15-20novembre2021.pdf')
par(mar=c(11,6,4,4))
barplot(names=nomi,height=kpi,las=2,cex.names=.8,ylab='accettazioni/ore uomo')
dev.off()
###########  grafico 25-30 ottobre

kpi <- accXsede_25_30ottobre2021[,2]*tmedio_acc/turniXsede_25_30ottobre2021[,1]
kpi[c(4,6,12,14,17,24,32,34)]<-rep(0,8)   #metto a 0 quelli che sarebbero infiniti
pdf('efficienza25-30ottobre2021.pdf')
par(mar=c(11,6,4,4))
barplot(names=nomi,height=kpi,las=2,cex.names=.8,ylab='accettazioni/ore uomo')
dev.off()
################ grafici completi di telefonate, prova

#25 30 ottobre

kpi2 <- (accXsede_25_30ottobre2021[,2]*tmedio_acc+lunghezza_media_telefonata*telefonate_25_30_ottobre2021)/turniXsede_25_30ottobre2021[,1]
kpi_a <- (accXsede_25_30ottobre2021[,2]*tmedio_acc)/turniXsede_25_30ottobre2021[,1]
kpi_t <- (lunghezza_media_telefonata*telefonate_25_30_ottobre2021)/turniXsede_25_30ottobre2021[,1]

kpi2[c(4,6,12,14,17,24,34)]<-rep(0,7)
kpi_a[c(4,6,12,14,17,24,34)]<-rep(0,7)
kpi_t[c(4,6,12,14,17,24,34)]<-rep(0,7)

mean(kpi2)->medi

kpi2[-c(4,6,12,14,17,24,34)]->kpi2
kpi_a[-c(4,6,12,14,17,24,34)]->kpi_a
kpi_t[-c(4,6,12,14,17,24,34)]->kpi_t
nomi[-c(4,6,12,14,17,24,34)]->nomi



returns=c(0,0.2,0.4,0.6,0.8,1)
pdf('efficienza25-30ottobre2021_telefonate.pdf')
par(mar=c(11,6,4,4))
barplot(names=nomi, las=2, height=rep(1,length(kpi_t)),yaxt='n',col='white',cex.names=.8,main='25-30 ottobre 2021',ylim=c(0,1.4))
barplot(height=kpi2,las=2,add=TRUE,ylim=c(0,1),yaxt='n',col='red')
barplot(height=kpi_t,yaxt='n', add=TRUE,col='blue')
abline(h=medi, lty = "dashed", col = "black", lwd=2)
legend(21, 1.4, legend=c("pazienti fisici","telefonate","altro","media settimanale"),
       lty=c(NA,NA,NA,2), lwd=c(NA,NA,NA,2), cex=0.8, pt.bg = c('red', 'blue','white',NA),pch=c(22,22,22,NA))

axis(2, at=pretty(returns), lab=paste0(pretty(returns) * 100, " %"), las=TRUE)
dev.off()

oreuomo_25_30ottobre2021[-c(4,6,12,14,17,24,34)]->oreuomo

dati25_30ottobre <- cbind.data.frame(nomi,oreuomo,kpi_a,kpi_t,1-kpi_a-kpi_t)
colnames(dati25_30ottobre)<-c("sede","ore uomo","pazienti fisici","telefonate","altro")

###################################################################
#1 6 novembre

kpi2 <- (accXsede_1_6novembre2021[,2]*tmedio_acc+lunghezza_media_telefonata*telefonate_1_6_novembre2021)/turniXsede_1_6novembre2021[,1]
#kpi2[c(4,6,12,14,17,24,32,34)]<-rep(0,8)   #metto a 0 quelli che sarebbero infiniti
kpi2[c(4,6,12,14,17,24,34)]<-rep(0,7)
mean(kpi2)->medi

#returns=c(0,0.2,0.4,0.6,0.8,1)
#pdf('efficienza1-6novembre2021_telefonate.pdf')
#par(mar=c(11,6,4,4))
#barplot(names=nomi,height=kpi2,las=2,cex.names=.8,main='1-6 novembre 2021',ylim=c(0,1),yaxt='n')
#abline(h=medi, lty = "dashed", col = "red")
#legend(25, 1, legend=c("media settimanale"),
#       col="red", lty=2, cex=0.8)
#axis(2, at=pretty(returns), lab=paste0(pretty(returns) * 100, " %"), las=TRUE)
#dev.off()


kpi2 <- (accXsede_1_6novembre2021[,2]*tmedio_acc+lunghezza_media_telefonata*telefonate_1_6_novembre2021)/turniXsede_1_6novembre2021[,1]
kpi_a <- (accXsede_1_6novembre2021[,2]*tmedio_acc)/turniXsede_1_6novembre2021[,1]
kpi_t <- (lunghezza_media_telefonata*telefonate_1_6_novembre2021)/turniXsede_1_6novembre2021[,1]

kpi2[c(4,6,12,14,17,24,34)]<-rep(0,7)
kpi_a[c(4,6,12,14,17,24,34)]<-rep(0,7)
kpi_t[c(4,6,12,14,17,24,34)]<-rep(0,7)

mean(kpi2)->medi

kpi2[-c(4,6,12,14,17,24,34)]->kpi2
kpi_a[-c(4,6,12,14,17,24,34)]->kpi_a
kpi_t[-c(4,6,12,14,17,24,34)]->kpi_t
#nomi[-c(4,6,12,14,17,24,34)]->nomi

returns=c(0,0.2,0.4,0.6,0.8,1)
pdf('efficienza1-6novembre2021_telefonate.pdf')
par(mar=c(11,6,4,4))
barplot(names=nomi, las=2, height=rep(1,length(kpi_t)),yaxt='n',col='white',cex.names=.8,main='1-6 novembre 2021',ylim=c(0,1.4))
barplot(height=kpi2,las=2,add=TRUE,ylim=c(0,1),yaxt='n',col='red')
barplot(height=kpi_t,yaxt='n', add=TRUE,col='blue')
abline(h=medi, lty = "dashed", col = "black", lwd=2)
legend(21, 1.4, legend=c("pazienti fisici","telefonate","altro","media settimanale"),
       lty=c(NA,NA,NA,2), lwd=c(NA,NA,NA,2), cex=0.8, pt.bg = c('red', 'blue','white',NA),pch=c(22,22,22,NA))

axis(2, at=pretty(returns), lab=paste0(pretty(returns) * 100, " %"), las=TRUE)
dev.off()


oreuomo_1_6novembre2021[-c(4,6,12,14,17,24,34)]->oreuomo

dati1_6novembre <- cbind.data.frame(nomi,oreuomo,kpi_a,kpi_t,1-kpi_a-kpi_t)
colnames(dati1_6novembre)<-c("sede","ore uomo","pazienti fisici","telefonate","altro")
###################################################################
#8 13 novembre

#kpi2 <- (accXsede_8_13novembre2021[,2]*tmedio_acc+lunghezza_media_telefonata*telefonate_8_13_novembre2021)/turniXsede_8_13novembre2021[,1]
##kpi2[c(4,6,12,14,17,24,32,34)]<-rep(0,8)   #metto a 0 quelli che sarebbero infiniti
#kpi2[c(4,6,12,14,17,24,34)]<-rep(0,7)
#mean(kpi2)->medi
#
#returns=c(0,0.2,0.4,0.6,0.8,1)
#pdf('efficienza8-13novembre2021_telefonate.pdf')
#par(mar=c(11,6,4,4))
#barplot(names=nomi,height=kpi2,las=2,cex.names=.8,main='8-13 novembre 2021',ylim=c(0,1),yaxt='n')
#abline(h=medi, lty = "dashed", col = "red")
#legend(25, 1, legend=c("media settimanale"),
#       col="red", lty=2, cex=0.8)
#axis(2, at=pretty(returns), lab=paste0(pretty(returns) * 100, " %"), las=TRUE)
#dev.off()




kpi2 <- (accXsede_8_13novembre2021[,2]*tmedio_acc+lunghezza_media_telefonata*telefonate_8_13_novembre2021)/turniXsede_8_13novembre2021[,1]
kpi_a <- (accXsede_8_13novembre2021[,2]*tmedio_acc)/turniXsede_8_13novembre2021[,1]
kpi_t <- (lunghezza_media_telefonata*telefonate_8_13_novembre2021)/turniXsede_8_13novembre2021[,1]

kpi2[c(4,6,12,14,17,24,34)]<-rep(0,7)
kpi_a[c(4,6,12,14,17,24,34)]<-rep(0,7)
kpi_t[c(4,6,12,14,17,24,34)]<-rep(0,7)

mean(kpi2)->medi

kpi2[-c(4,6,12,14,17,24,34)]->kpi2
kpi_a[-c(4,6,12,14,17,24,34)]->kpi_a
kpi_t[-c(4,6,12,14,17,24,34)]->kpi_t
#nomi[-c(4,6,12,14,17,24,34)]->nomi


returns=c(0,0.2,0.4,0.6,0.8,1)
pdf('efficienza8-13novembre2021_telefonate.pdf')
par(mar=c(11,6,4,4))
barplot(names=nomi, las=2, height=rep(1,length(kpi_t)),yaxt='n',col='white',cex.names=.8,main='8-13 novembre 2021',ylim=c(0,1.4))
barplot(height=kpi2,las=2,add=TRUE,ylim=c(0,1),yaxt='n',col='red')
barplot(height=kpi_t,yaxt='n', add=TRUE,col='blue')
abline(h=medi, lty = "dashed", col = "black", lwd=2)
legend(21, 1.4, legend=c("pazienti fisici","telefonate","altro","media settimanale"),
       lty=c(NA,NA,NA,2), lwd=c(NA,NA,NA,2), cex=0.8, pt.bg = c('red', 'blue','white',NA),pch=c(22,22,22,NA))

axis(2, at=pretty(returns), lab=paste0(pretty(returns) * 100, " %"), las=TRUE)
dev.off()


oreuomo_8_13novembre2021[-c(4,6,12,14,17,24,34)]->oreuomo

dati8_13novembre <- cbind.data.frame(nomi,oreuomo,kpi_a,kpi_t,1-kpi_a-kpi_t)
colnames(dati8_13novembre)<-c("sede","ore uomo","pazienti fisici","telefonate","altro")


#dati8_13novembre <- cbind.data.frame(nomi,kpi_a,kpi_t,1-kpi_a-kpi_t)
#colnames(dati8_13novembre)<-c("sede","pazienti fisici","telefonate","altro")

###################################################################
#15 20 novembre

#kpi2 <- (accXsede_15_20novembre2021[,2]*tmedio_acc+lunghezza_media_telefonata*telefonate_15_20_novembre2021)/turniXsede_15_20novembre2021[,1]
##kpi2[c(4,6,12,14,17,24,32,34)]<-rep(0,8)   #metto a 0 quelli che sarebbero infiniti
#kpi2[c(4,6,12,14,17,24,34)]<-rep(0,7)
#mean(kpi2)->medi
#
#returns=c(0,0.2,0.4,0.6,0.8,1)
#pdf('efficienza15-20novembre2021_telefonate.pdf')
#par(mar=c(11,6,4,4))
#barplot(names=nomi,height=kpi2,las=2,cex.names=.8,main='15-20 novembre 2021',ylim=c(0,1),yaxt='n')
#abline(h=medi, lty = "dashed", col = "red")
#legend(25, 1, legend=c("media settimanale"),
#       col="red", lty=2, cex=0.8)
#axis(2, at=pretty(returns), lab=paste0(pretty(returns) * 100, " %"), las=TRUE)
#dev.off()

kpi2 <- (accXsede_15_20novembre2021[,2]*tmedio_acc+lunghezza_media_telefonata*telefonate_15_20_novembre2021)/turniXsede_15_20novembre2021[,1]
kpi_a <- (accXsede_15_20novembre2021[,2]*tmedio_acc)/turniXsede_15_20novembre2021[,1]
kpi_t <- (lunghezza_media_telefonata*telefonate_15_20_novembre2021)/turniXsede_15_20novembre2021[,1]

kpi2[c(4,6,12,14,17,24,34)]<-rep(0,7)
kpi_a[c(4,6,12,14,17,24,34)]<-rep(0,7)
kpi_t[c(4,6,12,14,17,24,34)]<-rep(0,7)

mean(kpi2)->medi

kpi2[-c(4,6,12,14,17,24,34)]->kpi2
kpi_a[-c(4,6,12,14,17,24,34)]->kpi_a
kpi_t[-c(4,6,12,14,17,24,34)]->kpi_t
#nomi[-c(4,6,12,14,17,24,34)]->nomi


returns=c(0,0.2,0.4,0.6,0.8,1)
pdf('efficienza15-20novembre2021_telefonate.pdf')
par(mar=c(11,6,4,4))
barplot(names=nomi, las=2, height=rep(1,length(kpi_t)),yaxt='n',col='white',cex.names=.8,main='15-20 novembre 2021',ylim=c(0,1.4))
barplot(height=kpi2,las=2,add=TRUE,ylim=c(0,1),yaxt='n',col='red')
barplot(height=kpi_t,yaxt='n', add=TRUE,col='blue')
abline(h=medi, lty = "dashed", col = "black", lwd=2)
legend(21, 1.4, legend=c("pazienti fisici","telefonate","altro","media settimanale"),
       lty=c(NA,NA,NA,2), lwd=c(NA,NA,NA,2), cex=0.8, pt.bg = c('red', 'blue','white',NA),pch=c(22,22,22,NA))

axis(2, at=pretty(returns), lab=paste0(pretty(returns) * 100, " %"), las=TRUE)
dev.off()

#list_of_datasets <- list("VALORE PRIMA PER MEDICO" = ris_df, "N PRIME VISITE (tas conv 1 KPI)" = nPV, "VALOR MEDIO PREV ACC (2 KPI)"= vmpa, "PERCENT EROG PER MEDICO (3 KPI)"= pepm, "Tasso conversione 1 visite"= tasso_v, "Erogato medico"=erogato, "% preventivi medio (4+7 KPI)"=medioni, "% primeVis su oreAg(6 KPI)"=KPI6, "% e prezzo subappaltato(8 KPI)"=KPI8)  #"% preventivi esteso"=preventi,  #questo lo tolgo che fa casino
#write.xlsx(list_of_datasets, file = "valore_I_visita_exc.xlsx", overwrite=T)





#dati15_20novembre <- cbind.data.frame(nomi,kpi_a,kpi_t,1-kpi_a-kpi_t)
#colnames(dati15_20novembre)<-c("sede","pazienti fisici","telefonate","altro")

oreuomo_15_20novembre2021[-c(4,6,12,14,17,24,34)]->oreuomo

dati15_20novembre <- cbind.data.frame(nomi,oreuomo,kpi_a,kpi_t,1-kpi_a-kpi_t)
colnames(dati15_20novembre)<-c("sede","ore uomo","pazienti fisici","telefonate","altro")



list_of_datasets <- list("25-30ottobre"=dati25_30ottobre,"1-6novembre"=dati1_6novembre,"8-13novembre"=dati8_13novembre,"15-20novembre" = dati15_20novembre)
write.xlsx(list_of_datasets, file = "efficienze.xlsx", overwrite=T)
























########################################################## CIMITERO COSE VECCHIE

#pdf('efficienza25-30ottobre2021.pdf')
#par(mar=c(12,4,1,1))
#kpi <- accXsede_25_30ottobre2021[,2]*.1/turniXsede_25_30ottobre2021[,1]
#kpi[c(4,6,12,14,17,24,32,34)]<-rep(0,8)   #metto a 0 quelli che sarebbero infiniti
#barplot(kpi,ylab='accettazioni/ore uomo',xaxt='n',xlab='',main='settimana 25-30 ottobre 2021')
#axis(1, at=1, labels='Barona',cex.axis=1.,las=2, at = midpts)
#axis(1, at=2, labels='Bicocca',cex.axis=1.,las=2)
#axis(1, at=3, labels='Bologna',cex.axis=1.,las=2)
#axis(1, at=4, labels='Brescia',cex.axis=1.,las=2)
#axis(1, at=5, labels='Buccinasco',cex.axis=1.,las=2)
#axis(1, at=6, labels='Cadorna',cex.axis=1.,las=2)
#axis(1, at=7, labels='Cairoli',cex.axis=1.,las=2)
#axis(1, at=8, labels='Cernusco',cex.axis=1.,las=2)
#axis(1, at=9, labels='Cimiano',cex.axis=1.,las=2)
#axis(1, at=10, labels='Città Studi',cex.axis=1.,las=2)
#axis(1, at=11, labels='CorvettoA+B',cex.axis=1.,las=2)
#axis(1, at=12, labels='Corvetto(no dati)',cex.axis=1.,las=2)
#axis(1, at=13, labels='Vercelli',cex.axis=1.,las=2)
#axis(1, at=14, labels='Domiciliare',cex.axis=1.,las=2)
#axis(1, at=15, labels='Foppa',cex.axis=1.,las=2)
#axis(1, at=16, labels='Loreto',cex.axis=1.,las=2)
#axis(1, at=17, labels='Missori',cex.axis=1.,las=2)
#axis(1, at=18, labels='Monumentale',cex.axis=1.,las=2)
#axis(1, at=19, labels='Monza',cex.axis=1.,las=2)
#axis(1, at=20, labels='Nembro',cex.axis=1.,las=2)
#axis(1, at=21, labels='Palazzo di Giustizia',cex.axis=1.,las=2)
#axis(1, at=22, labels='Castaldi',cex.axis=1.,las=2)
#axis(1, at=23, labels='Porta Romana',cex.axis=1.,las=2)
#axis(1, at=24, labels='Porta Venezia',cex.axis=1.,las=2)
#axis(1, at=25, labels='Portello',cex.axis=1.,las=2)
#axis(1, at=26, labels='Rho',cex.axis=1.,las=2)
#axis(1, at=27, labels='Roma Cavour',cex.axis=1.,las=2)
#axis(1, at=28, labels='Sesto 1',cex.axis=1.,las=2)
#axis(1, at=29, labels='Sesto 2',cex.axis=1.,las=2)
#axis(1, at=30, labels='SantAgostino 1',cex.axis=1.,las=2)
#axis(1, at=31, labels='SantAgostino 18',cex.axis=1.,las=2)
#axis(1, at=32, labels='Santa Sofia',cex.axis=1.,las=2)
#axis(1, at=33, labels='Via Larga',cex.axis=1.,las=2)
#axis(1, at=34, labels='Video-terapia online',cex.axis=1.,las=2)
#axis(1, at=35, labels='Vigevano',cex.axis=1.,las=2)
#dev.off()


#################################################################################################################
#conto ore uomo 25-30 ottobre 2021
#a <- vector()
#a[1]<- 80-16  # barona
#a[2]<-       # bicocca
#a[3]<-           # bologna
#a[4]<-  0       #BRESCIA-SOLFERINO
#a[5]<-         #BUCCINASCO
#a[6]<-  0               #CADORNA
#a[7]<-     #CAIROLI le ultime 41 sono di gente prestata da loreto
#a[8]<-      #CERNUSCO
#a[9]<-		#CIMIANO
#a[10]<-		#CITTASTUDI/ ABRUZZI
#a[11]<-         #corvetto A+B, sono insieme
#a[12]<- 0            #corvetto B
#a[13]<-       #corso vercelli
#a[14]<-0	#domiciliare
#a[15]<-		#foppa
#a[16]<-          #loreto 41 le tolgo perché le presta a cairoli
#a[17]<-     0  			#missori
#a[18]<-			# monumentale
#a[19]<-		#monza esselunga
#a[20]<-			#nembro esselunga
#a[21]<-		#palazzo di giustizia  ha vari prestiti in giro
#a[22]<-				#panfilo castaldi
#a[23]<-				#porta romana
#a[24]<-	0			#porta venezia
#a[25]<-				#portello
#a[26]<-				#rho esselunga
#a[27]<-			#roma cavour
#a[28]<-		# sesto san giovanni 1
#a[29]<-			# sesto san giovanni 2
#a[30]<-			#santa1
#a[31]<-			#santa18
#a[32]<-				#santa sofia
#a[33]<-			#via larga
#a[34]<-	0		#videoterapia- online
#a[35]<- 		#vigevano esselunga formazione per un'ora e mezza

#b<-nomi_sedi

#turniXsede_25_30ottobre2021<-list()
#cbind.data.frame(a,b)->turniXsede_25_30ottobre2021
#colnames(turniXsede_55_30ottobre2021)<-c('ore', 'sede')


#pdf('efficienza25-30ottobre2021.pdf')
#par(mar=c(12,4,1,1))
#plot(accXsede_25_30ottobre2021[,2]*.1/turniXsede_25_30ottobre2021[,1],ylab='accettazioni/ore uomo',xaxt='n',xlab='',main='settimana 25-30 ottobre 2021')
#axis(1, at=1, labels='Barona',cex.axis=1.,las=2)
#axis(1, at=2, labels='Bicocca',cex.axis=1.,las=2)
#axis(1, at=3, labels='Bologna',cex.axis=1.,las=2)
#axis(1, at=4, labels='Brescia',cex.axis=1.,las=2)
#axis(1, at=5, labels='Buccinasco',cex.axis=1.,las=2)
#axis(1, at=6, labels='Cadorna',cex.axis=1.,las=2)
#axis(1, at=7, labels='Cairoli',cex.axis=1.,las=2)
#axis(1, at=8, labels='Cernusco',cex.axis=1.,las=2)
#axis(1, at=9, labels='Cimiano',cex.axis=1.,las=2)
#axis(1, at=10, labels='Città Studi',cex.axis=1.,las=2)
#axis(1, at=11, labels='CorvettoA+B',cex.axis=1.,las=2)
#axis(1, at=12, labels='Corvetto(no dati)',cex.axis=1.,las=2)
#axis(1, at=13, labels='Vercelli',cex.axis=1.,las=2)
#axis(1, at=14, labels='Domiciliare',cex.axis=1.,las=2)
#axis(1, at=15, labels='Foppa',cex.axis=1.,las=2)
#axis(1, at=16, labels='Loreto',cex.axis=1.,las=2)
#axis(1, at=17, labels='Missori',cex.axis=1.,las=2)
#axis(1, at=18, labels='Monumentale',cex.axis=1.,las=2)
#axis(1, at=19, labels='Monza',cex.axis=1.,las=2)
#axis(1, at=20, labels='Nembro',cex.axis=1.,las=2)
#axis(1, at=21, labels='Palazzo di Giustizia',cex.axis=1.,las=2)
#axis(1, at=22, labels='Castaldi',cex.axis=1.,las=2)
#axis(1, at=23, labels='Porta Romana',cex.axis=1.,las=2)
#axis(1, at=24, labels='Porta Venezia',cex.axis=1.,las=2)
#axis(1, at=25, labels='Portello',cex.axis=1.,las=2)
#axis(1, at=26, labels='Rho',cex.axis=1.,las=2)
#axis(1, at=27, labels='Roma Cavour',cex.axis=1.,las=2)
#axis(1, at=28, labels='Sesto 1',cex.axis=1.,las=2)
#axis(1, at=29, labels='Sesto 2',cex.axis=1.,las=2)
#axis(1, at=30, labels='SantAgostino 1',cex.axis=1.,las=2)
#axis(1, at=31, labels='SantAgostino 18',cex.axis=1.,las=2)
#axis(1, at=32, labels='Santa Sofia',cex.axis=1.,las=2)
#axis(1, at=33, labels='Via Larga',cex.axis=1.,las=2)
#axis(1, at=34, labels='Video-terapia online',cex.axis=1.,las=2)
#axis(1, at=35, labels='Vigevano',cex.axis=1.,las=2)
#dev.off()




#pdf('efficienza8-13novembre2021.pdf')
#par(mar=c(12,4,1,1))
#plot(accXsede_8_13novembre2021[,2]*.1/turniXsede_8_13novembre2021[,1],ylab='accettazioni/ore uomo',xaxt='n',xlab='',main='settimana 8-13 novembre 2021')
#axis(1, at=1, labels='Barona',cex.axis=1.,las=2)
#axis(1, at=2, labels='Bicocca',cex.axis=1.,las=2)
#axis(1, at=3, labels='Bologna',cex.axis=1.,las=2)
#axis(1, at=4, labels='Brescia',cex.axis=1.,las=2)
#axis(1, at=5, labels='Buccinasco',cex.axis=1.,las=2)
#axis(1, at=6, labels='Cadorna',cex.axis=1.,las=2)
#axis(1, at=7, labels='Cairoli',cex.axis=1.,las=2)
#axis(1, at=8, labels='Cernusco',cex.axis=1.,las=2)
#axis(1, at=9, labels='Cimiano',cex.axis=1.,las=2)
#axis(1, at=10, labels='Città Studi',cex.axis=1.,las=2)
#axis(1, at=11, labels='CorvettoA+B',cex.axis=1.,las=2)
#axis(1, at=12, labels='Corvetto(no dati)',cex.axis=1.,las=2)
#axis(1, at=13, labels='Vercelli',cex.axis=1.,las=2)
#axis(1, at=14, labels='Domiciliare',cex.axis=1.,las=2)
#axis(1, at=15, labels='Foppa',cex.axis=1.,las=2)
#axis(1, at=16, labels='Loreto',cex.axis=1.,las=2)
#axis(1, at=17, labels='Missori',cex.axis=1.,las=2)
#axis(1, at=18, labels='Monumentale',cex.axis=1.,las=2)
#axis(1, at=19, labels='Monza',cex.axis=1.,las=2)
#axis(1, at=20, labels='Nembro',cex.axis=1.,las=2)
#axis(1, at=21, labels='Palazzo di Giustizia',cex.axis=1.,las=2)
#axis(1, at=22, labels='Castaldi',cex.axis=1.,las=2)
#axis(1, at=23, labels='Porta Romana',cex.axis=1.,las=2)
#axis(1, at=24, labels='Porta Venezia',cex.axis=1.,las=2)
#axis(1, at=25, labels='Portello',cex.axis=1.,las=2)
#axis(1, at=26, labels='Rho',cex.axis=1.,las=2)
#axis(1, at=27, labels='Roma Cavour',cex.axis=1.,las=2)
#axis(1, at=28, labels='Sesto 1',cex.axis=1.,las=2)
#axis(1, at=29, labels='Sesto 2',cex.axis=1.,las=2)
#axis(1, at=30, labels='SantAgostino 1',cex.axis=1.,las=2)
#axis(1, at=31, labels='SantAgostino 18',cex.axis=1.,las=2)
#axis(1, at=32, labels='Santa Sofia',cex.axis=1.,las=2)
#axis(1, at=33, labels='Via Larga',cex.axis=1.,las=2)
#axis(1, at=34, labels='Video-terapia online',cex.axis=1.,las=2)
#axis(1, at=35, labels='Vigevano',cex.axis=1.,las=2)
#dev.off()


#pdf('efficienza_tutte2021.pdf')
#par(mar=c(12,4,1,1))
#plot(accXsede_1_6novembre2021[,2]*.1/turniXsede_1_6novembre2021[,1],ylab='accettazioni/ore uomo',xaxt='n',xlab='',main='settimana 8-13 novembre 2021',ylim=c(0,0.9))
#points(accXsede_8_13novembre2021[,2]*.1/turniXsede_8_13novembre2021[,1],ylab='accettazioni/ore uomo',xaxt='n',xlab='',col='red')
#axis(1, at=1, labels='Barona',cex.axis=1.,las=2)
#axis(1, at=2, labels='Bicocca',cex.axis=1.,las=2)
#axis(1, at=3, labels='Bologna',cex.axis=1.,las=2)
#axis(1, at=4, labels='Brescia',cex.axis=1.,las=2)
#axis(1, at=5, labels='Buccinasco',cex.axis=1.,las=2)
#axis(1, at=6, labels='Cadorna',cex.axis=1.,las=2)
#axis(1, at=7, labels='Cairoli',cex.axis=1.,las=2)
#axis(1, at=8, labels='Cernusco',cex.axis=1.,las=2)
#axis(1, at=9, labels='Cimiano',cex.axis=1.,las=2)
#axis(1, at=10, labels='Città Studi',cex.axis=1.,las=2)
#axis(1, at=11, labels='CorvettoA+B',cex.axis=1.,las=2)
#axis(1, at=12, labels='Corvetto(no dati)',cex.axis=1.,las=2)
#axis(1, at=13, labels='Vercelli',cex.axis=1.,las=2)
#axis(1, at=14, labels='Domiciliare',cex.axis=1.,las=2)
#axis(1, at=15, labels='Foppa',cex.axis=1.,las=2)
#axis(1, at=16, labels='Loreto',cex.axis=1.,las=2)
#axis(1, at=17, labels='Missori',cex.axis=1.,las=2)
#axis(1, at=18, labels='Monumentale',cex.axis=1.,las=2)
#axis(1, at=19, labels='Monza',cex.axis=1.,las=2)
#axis(1, at=20, labels='Nembro',cex.axis=1.,las=2)
#axis(1, at=21, labels='Palazzo di Giustizia',cex.axis=1.,las=2)
#axis(1, at=22, labels='Castaldi',cex.axis=1.,las=2)
#axis(1, at=23, labels='Porta Romana',cex.axis=1.,las=2)
#axis(1, at=24, labels='Porta Venezia',cex.axis=1.,las=2)
#axis(1, at=25, labels='Portello',cex.axis=1.,las=2)
#axis(1, at=26, labels='Rho',cex.axis=1.,las=2)
#axis(1, at=27, labels='Roma Cavour',cex.axis=1.,las=2)
#axis(1, at=28, labels='Sesto 1',cex.axis=1.,las=2)
#axis(1, at=29, labels='Sesto 2',cex.axis=1.,las=2)
#axis(1, at=30, labels='SantAgostino 1',cex.axis=1.,las=2)
#axis(1, at=31, labels='SantAgostino 18',cex.axis=1.,las=2)
#axis(1, at=32, labels='Santa Sofia',cex.axis=1.,las=2)
#axis(1, at=33, labels='Via Larga',cex.axis=1.,las=2)
#axis(1, at=34, labels='Video-terapia online',cex.axis=1.,las=2)
#axis(1, at=35, labels='Vigevano',cex.axis=1.,las=2)
#dev.off()



#pdf('efficienza1-6novembre2021.pdf')
#par(mar=c(12,4,1,1))
#plot(accXsede_1_6novembre2021[,2]*.1/turniXsede_1_6novembre2021[,1],ylab='accettazioni/ore uomo',xaxt='n',xlab='',main='settimana 1-6 novembre 2021')
#axis(1, at=1, labels='Barona',cex.axis=1.,las=2)
#axis(1, at=2, labels='Bicocca',cex.axis=1.,las=2)
#axis(1, at=3, labels='Bologna',cex.axis=1.,las=2)
#axis(1, at=4, labels='Brescia',cex.axis=1.,las=2)
#axis(1, at=5, labels='Buccinasco',cex.axis=1.,las=2)
#axis(1, at=6, labels='Cadorna',cex.axis=1.,las=2)
#axis(1, at=7, labels='Cairoli',cex.axis=1.,las=2)
#axis(1, at=8, labels='Cernusco',cex.axis=1.,las=2)
#axis(1, at=9, labels='Cimiano',cex.axis=1.,las=2)
#axis(1, at=10, labels='Città Studi',cex.axis=1.,las=2)
#axis(1, at=11, labels='CorvettoA+B',cex.axis=1.,las=2)
#axis(1, at=12, labels='Corvetto(no dati)',cex.axis=1.,las=2)
#axis(1, at=13, labels='Vercelli',cex.axis=1.,las=2)
#axis(1, at=14, labels='Domiciliare',cex.axis=1.,las=2)
#axis(1, at=15, labels='Foppa',cex.axis=1.,las=2)
#axis(1, at=16, labels='Loreto',cex.axis=1.,las=2)
#axis(1, at=17, labels='Missori',cex.axis=1.,las=2)
#axis(1, at=18, labels='Monumentale',cex.axis=1.,las=2)
#axis(1, at=19, labels='Monza',cex.axis=1.,las=2)
#axis(1, at=20, labels='Nembro',cex.axis=1.,las=2)
#axis(1, at=21, labels='Palazzo di Giustizia',cex.axis=1.,las=2)
#axis(1, at=22, labels='Castaldi',cex.axis=1.,las=2)
#axis(1, at=23, labels='Porta Romana',cex.axis=1.,las=2)
#axis(1, at=24, labels='Porta Venezia',cex.axis=1.,las=2)
#axis(1, at=25, labels='Portello',cex.axis=1.,las=2)
#axis(1, at=26, labels='Rho',cex.axis=1.,las=2)
#axis(1, at=27, labels='Roma Cavour',cex.axis=1.,las=2)
#axis(1, at=28, labels='Sesto 1',cex.axis=1.,las=2)
#axis(1, at=29, labels='Sesto 2',cex.axis=1.,las=2)
#axis(1, at=30, labels='SantAgostino 1',cex.axis=1.,las=2)
#axis(1, at=31, labels='SantAgostino 18',cex.axis=1.,las=2)
#axis(1, at=32, labels='Santa Sofia',cex.axis=1.,las=2)
#axis(1, at=33, labels='Via Larga',cex.axis=1.,las=2)
#axis(1, at=34, labels='Video-terapia online',cex.axis=1.,las=2)
#axis(1, at=35, labels='Vigevano',cex.axis=1.,las=2)
#dev.off()









