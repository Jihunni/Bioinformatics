#sound
library(beepr)
beep() # alarm function

#Basic command key in Rstudio
Comment command : Ctrl + shift + C
(consol) Ctrl + C

#library
library(readr)
library(ggplot2)
library(tidyverse)
library(readxl)
library("Hmisc") #correlation matrix with p-value
library(corrplot) #visualizing correlation matrix
library(beepr) #beep() : alarm function
library(DESeq2)
library("apeglm")
library(ggraph)
library(igraph)

#variable
class(variable)
dim()
"AsIs" : dataframe class, which does not allow to modify it
rm(variable)
length(list)
ls() : show all variable names
rm(list = ls())
rm()

a <-1 : assignment
a < -1 : boolian

# assign the variable name with for loop
Ref: https://stackoverflow.com/questions/35084427/how-to-change-column-names-in-dataframe-in-the-loop
e.g. I have 10 (for example) dataframes with similar names like df1,df2,df3,... with 10 columns I'd like to give names for 10th column in each dataframe like dataframe name(10th column in df1 must has "df1" name, in df2 -- "df2" and etc)
  commands <- sprintf('names(df%d)[10] <- "df%d"', 1:10, 1:10)
  eval(parse(text = commands))


# object identification
typeof(obj)
class(obj)
is.vector(object)

sapply(obj, class)
sapply(obj, attributes)
attributes(obj)
names(obj)

<boolian operation>
vector %in% vector
e.g. 1 %in% c(1,2,3) #TRUE

duplicated(vector, data.frame)
e.g. duplicated(data.frame)
#random selection
sample(vector, the number of selection)
e.g. sample(c(1,2,3,4,5,6), 2))

<factor>
#create vector containing factor type
vector = factor(c(v1, v2, ))

#change the name of factor
library(plyr)
new.vector = revalue(vector, c(name1_old = name1_new, name2_old = name2_new)) #change name of factor

<conversion of data type>
#list -> matrix -> data.frame
data.frame = data.frame(matrix = matrix(unlist(input_list), nrow=length(list), ncol=2, byrow=TRUE) 
                        
#transpose data.frame into matrix
matrix = t(data.frame)

#dataframe row -> vector
vector = as.numeric(dataframe)
#dataframe column -> vector
vector = as.vector(dataframe)
vector = dataframe$colname
                        
<string>
#example
LETTERS[1:5]

#select the substring
new string= substr(data.frame$column, start = 6, stop = 7)

# concatenate a list of string into one string
paste(list_of_string, collapse = '')
e.g. (c('1', '2', '3'), collapse=';')
                        
#find and change in string
conversion_vector = gsub("[.]","-", input_vector) #change '.' into '-'
e.g. conversion = gsub("[.]","-", GTEx_sample_id$conversion)
e.g. TCGA id converter

new_string = gsub('.{1}$', '', old_strong)  #remove last character ')'

data.frame$col = lapply(data.frame$col, function(x){
  gsub('\\|', '/', x)
}) # to change a special character '|' ino non-special char '/'

\^$.?*|+()[ : special character in R

list = strsplit(data.frame$column, 'string')  #convert dataframe into list            
list = strsplit(data.frame$column, '[.]')  #convert dataframe by dlim '.' into list            
<vector>
#random samples
e.g. sample(x=1:30, size = 5)
        
#merge vector
nerged_vectir = c(vector1, vector2)

#make a vector with null space
vector <- rep(NA, length)
e.g. a <- rep(NA, 10)

#count the number of TRUE element
length(vector[vector == condition])
e.g.length(z[z == TRUE])

#named numeric vector
names(vector) = ("name1", "name2")

# find a location of specific value
where(vector == "name")

<data frame>
#initialize new dataframe                        
new_df = data.frame(matrix(nrow=3, ncol=4))                        
new_df = data.frame(matrix(0, nrow=3, ncol=4))   
                        
#data frame indexing
dataframe[] #data frame
dataframe[[]] #vector
                       

#Explore data frame
head( dataframe )
str(datafrane) #structure of dataframe 
rowData( dataframe )
colData( sdataframe )
           
#drop a column
new.data.frame = subset(data.frame, select = -c(1))

#drop a NA in specified column
new.dataframe=drop_na(old.dataframe, specified column name) 
ex. new.dataframe=drop_na(old.dataframe, Sex) 
# merge by row & add single observation into data.frame
new_df = rbind(old_df, add_df)
merged_df = merge(dataframe1, dataframe2, by=0) #merge data according to row naems

# drop a row with NA
new.data.frame = na.omit(data.frame)

# drop a row whose sum is zero
table_without_RowSumZero = table[apply(table, 1, function(x) !all(x==0)),] 
           
#change name of column
rename.variable(df, old name of column, new name of column)
e.g. iris <- rename.variable(iris, "Species", "especes")

colnames(data.frame) = c("name1", "name2")
rownames(data.frame) = c("name1", "name2")

#add new column at the most front 
new_column = data.frame(sample = rownames(GTEx_liver))
merged_df = cbind(new_column, data.frame) #add sample column at first


#find out wheter the specific substring exists in data.frame (version 1)
    #detect mathces
function_name = function(input_char){
    for(i in 1:4){
        if(TRUE){
            execution line
        }
        else if{
            exeuction line
        }
        else{
            execution line
        }
    }
    
    while(TRUE){
        execution line
    }
    return(str_detect(input_char, "stiring needed to be detected"))
}
result = sapply(HMR$EQUATION, function_name) #HMR$EQUATION : vector

# select top_n or button_n
df = data.frame(score=x, target=y)
button10 =  dplyr::top_n(df, -dim(df)[1]*0.1, target) #lowest
button10['group'] = 'button'
top10 = dplyr::top_n(df, dim(df)[1]*0.1,target) #highest
top10['group'] = 'top'
plot_df = rbind(button10, top10)
                      
#find out wheter the specific substring exists in data.framee (version 2)
Boolian list = str_detect(data,frame, 'string need to be detected') #find the index (boolian)

#split the dataframe into two group by 'string'
list = strsplit(data.frame$column, 'string')  #convert dataframe into list 
vector = unlist(list) # convert list into vector

#change the order of column
new data.frame = old data.frame[,c(sequence)]
e.g. df2[,c(1,3,2,4)]

#merge dataframe
bind_rows(df1, df2)
bind_cols(df1,df2)

new.dataFrame = left_join(x=left_df, y=right_df, by = c('merged_left_df_column' ='merged_right_df_column'))

#convert char dataframe into numeric data.frame
numeric_data.frame = data.frame(lapply(char_data.frame, as.numeric))
data.frame$column = unlist(lapply(data.frame$column, as.numeric))

#the result of lapply is a list
vector = unlist(list) #convert vector into list
    #convert char dataframe into numeric dataframe.
rownames(numeric_data.frame) = rownames(char_data.frame)

#summary
table(vector or data.frame)


#multiply column by column with vector v
data.frame(mapply('*',df,v))

# To filter the row with rowSums
df_filter = df[rowSums(df) != 0,]
df_filter = df[rowSums(df) > 5,]

#sort
data.frame[order(vector / df$colnames),] #sort row

#correlation
matrix = cor(correlation_prepared_data.frame, "complete.obs") 
    row : gene
    column : sampple
    "complete.obs" : without NA           
           
<matrix>
#the number of column and row
nrow(vector, array, dataframe, matrix)
ncol(vector, array, dataframe, matrix)

#merge two matrinx into one matrix
merged_matrix = merge(matrix_left, matrix_right, by = "row.names", all = TRUE)

<function>
??functioin_name
help(function_nam)


<File I/O>
#load the data
read_delim()
read_tsv(filename) #readr package
df <- read.csv(file="my.large.file.csv",nrows=2000)

## excel file
library("readxl")
hmr = read_excel("fileName.xlsx")

    
#save and load in rda file
save(variable, file = "mydata.rda")
load(file = "mydata.rda")

#save and load of dataframe in txt format
write(vector, "filename.txt") #export vector into txt file

input_data = read.table("C:/R/default_working_directory/Secretome/BRCA Project/output/dataDEGs.txt", header =TRUE, sep="")

write.table(result, paste0(getwd(), "/conversion.txt"), quote=FALSE, append=FALSE, row.names = FALSE)

write.table(dataframe, file = "male_tumor_only.txt", sep = "\t", col.names = TRUE, row.names = TRUE, quote=FALSE, append=FALSE)

# iterative
files <- list.files(path="/file-directory", pattern="*_summits.bed", full.names=TRUE, recursive=FALSE)
lapply(files, function(x) {
  peak_data = read_tsv(x, col_names=FALSE)
  colnames(peak_data) = c('name', 'start', 'end', 'peak', 'score')
  
  # 1. Open jpeg file
  jpeg(filename= paste0(substr(x, start=3, stop=15), "_summits_peakDistribution.jpg"), width = 800, height = 400, pointsize = 20, quality = 100,)
  # 2. Create the plot
  hist(peak_data$score, xlim = c(0, 400), breaks = 1000, main = substr(x, start=3, stop=15))
  # 3. Close the file
  dev.off()
})

# To creaste a proejct folder in working space
  folder <- paste0('TCGA-', project_name)
  if (file.exists(folder)) {
    cat("The folder already exists")
  } 
  else {
    dir.create(folder)
  }
 
# Progress Bar
pb = txtProgressBar(min = 1, max = dim(input_data_frame)[1], initial = 0, style = 3) 
for (iter in 1:dim(input_data_frame)[1]){
  something....
  setTxtProgressBar(pb,iter)
}
close(pb)
