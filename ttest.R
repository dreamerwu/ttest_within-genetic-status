#t.test to measure mutation or CNV effect on YAP pathway-related genes' dependency
input2=read.delim("D:/demo/demo.txt",head=T,sep="\t")
y=input2$TEAD3
i=6
l=1
matrix=matrix(,ncol=2,nrow=ncol(input2)-5)
while (i<ncol(input2)+1) {
  ttest=t.test(y~input2[,i:i])
  p_value=ttest$p.value
  matrix[l:l,2:2]=p_value
  i=i+1
  l=l+1
}
write.csv(matrix,"D:/demo/TEAD3.csv")






