# install.packages("ggstream")
library(ggstream)
# install.packages("ggplot2")
library(ggplot2)
library(readr)
Streamplot <- read_csv("C:/Users/vf22a541/OneDrive - Universitaet Bern/PhD_VF/Dokumente/website/Streamplot.csv")

cols <- c("#593e5e","#7b49a0","#7a80c7","#8ab1ce","#ccd5dc","#e0cfcb","#d69983","#c1636f","#8e4070")

ggplot(Streamplot, aes(x = Date, y = Value, fill = Name)) +
  geom_stream(extra_span = 1.1, lwd = 0.25, bw = 0.7,color = "white") +
  theme_classic()+
  scale_fill_manual(values = cols)+
  theme(legend.position = "top",
        axis.line = element_blank(),
        axis.title = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank(),
        axis.text.x = element_text(size = 15))+
  guides(fill = guide_legend(title = ""))
