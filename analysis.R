times = 0
times[1] = read.csv ("/home/morph/prakmp/color-exchange_1t_times", header=FALSE)
times[2] = read.csv ("/home/morph/prakmp/color-exchange_2t_times", header=FALSE)
## pdf("/home/morph/prakmp/gegl-port-docu/diag_2threads.pdf", height=3, width=7)
## (boxplot(times, xlab="Laufzeit in Sekunden", ylab="Anzahl OpenMP-Threads", horizontal = TRUE, log ="x", pars = list(boxwex = 0.5), names=list("1", "2")))
## dev.off()
times[3] = read.csv ("/home/morph/prakmp/color-exchange_3t_times", header=FALSE)
times[4] = read.csv ("/home/morph/prakmp/color-exchange_4t_times", header=FALSE)
## newTimes = sapply(times, as.numeric)

pdf("/home/morph/prakmp/gegl-port-docu/diag.pdf", height=3, width=7)
(boxplot(times, xlab="Laufzeit in Sekunden", ylab="Anzahl OpenMP-Threads", horizontal = TRUE, log ="x", pars = list(boxwex = 0.5), names=list("1", "2", "3", "4")))
dev.off()
