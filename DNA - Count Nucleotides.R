# Counting DNA Nucleotides
# Count the respective number of times that the symbols 'A', 'C', 'G', and 'T' occur
# in a DNA string

countChars <- function(char= c("A","C","G","T"), s) {
    
    x <- vector(mode="integer", length=4)
    
    for (i in 1:length(char)) {
        s2 <- gsub(char[i],"",s)
        x[i] <- (nchar(s)-nchar(s2))
    }
    return (x)
}