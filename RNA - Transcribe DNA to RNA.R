#Transcribe DNA to RNA

DNA_Complement <- function(strand) {
    x <-  substring(strand, seq(1,nchar(strand),1), seq(1,nchar(strand),1))
    x <- rev(x)
    x <- gsub("T","@",x) # next three lines reverse T and A
    x <- gsub("A","T",x)
    x <- gsub("@","A",x)
    
    x <- gsub("C","@",x) # next three lines reverse C and G
    x <- gsub("G","C",x)
    x <- gsub("@","G",x)
    
    x <- paste(x, sep="", collapse='')
    return(x)    
    
}