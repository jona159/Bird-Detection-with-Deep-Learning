replacing <- function(x){
  files <- list.files(pattern="*.xml")
  for(i in 1:418){
   txt<-readLines(files[i])
   txt<-sub(",",".",txt)
   writeLines(txt, files[i])
  }}

replacing_annotation <- function(x){
  files <- list.files(pattern="*.xml")
  for(i in 1:418){
    txt<-readLines(files[i])
    txt<-sub("ESRI ArcGIS Pro","Bird",txt)
    writeLines(txt, files[i])
  }}

replc<- function(x){
  files <- list.files(pattern="*.xml")
  for(i in 1:length(files)){
  doc <- xmlParse(files[i])
  nodes <- getNodeSet(doc, "//xmin")
  lapply(nodes, function(n) {
    xmlValue(n) <- sub("s",".",xmlValue(n))
  })
}}

               
replacing_first_character <- function(x){
    files <- list.files(pattern="*.txt")
             for(i in 1:1393){
                fileName <- files[i]
                conn <- file(fileName, open="r")
                linn <- readLines(conn)
                linn <- sub(substring(linn, 1, 1), "0", linn)
                writeLines(linn, files[i])
             }}
               