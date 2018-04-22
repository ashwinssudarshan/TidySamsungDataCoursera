This code that i have given cleans the Samsung Data  that was obtained from the Peer Group assignment of Week 4. The final data that was obtained was a Tidy Data because:-
1) Each column contains only one Variable, i.e the mean for the various parameters.
2) There is a different observation for each row of the Data Table. (180 observation because 30 people who take part in 6 different activites giving us the number 180)
3) There is only one tabular column in the final result as there was only one kind of "Variable".
 
 My code works in the following way:-
 1) First I extracted the data from the given text files and used rbind and cbind to join the data together to create the base for the final Tidy Data.
 2) I used the file features.txt to get the name of all the columns in the data and stored this in a variable table_values. 
 3) Then I used the codebook to locate the variables which involved mean and standard deviation and noted them down(This I had to do manually as i could not think of another method. If you had any better idea, Please share it in your comments.).
 4) From the variable table_values, I selected only the columns necessary for the final data and stored it in table_values2.
 5) Now, I removed the Unwanted Columns and retained only the ones that were required for the final Tidy data.
 6) The second column which contained the name of the Activites were converted to characters and using a for loop, I changed the values to the Actual Names for convenience.
 7) Now, I changed the names of the columns for the convenience of the user. From the default v1, v2, v3 I changed them to their respective names from the variable table_values2. Refer to the codebook for how the data was collected and to see the names of the different columns in the final clean data.
 8) Finally, I used the aggregate function to get the means for the different Variables(The Columns) for each of the different cases obtained from the combination of Test Cases and the Activities.
 9) This I finally store in a Text File called "Coursera Tidy Data" which contains the Tidy Data required.
 
 Since the Question was a bit ambigous, there are certain things that i would like to clarify to the person who is evaluating my code:-
 1) I did not consider the variables where the word "mean" was used in vectors to find the Angles as these aren't exactly mean values but angular values. Therefore, if there is any discrepancy in the final number of columns, this is probably the likely cause of the problem.
 2) I had saved the file "getdata%2Fprojectfiles%2FUCI HAR Dataset"  in my Working Directory  and extracted values for which the address began from this file in the Working Directory. If there is any problem with missing File, this is the most probable reason.
 3) My table is grouped based on Activities where a particular activity is taken and the 30 Test cases come under each activity. Since there is no mention of how the Table should be arranged, this is my interpretation of the final result.
 4) The codebook for the columns is given in this repository. Please view the codebook to see how the data was collected, the source of the data and to view the columns in the final clean data that was made.
 
 Also, I would like to thank you for taking the time to evaluate my work.
 
 Cheers.

# TidySamsungDataCoursera
This repository contains the code that i used to create the Tidy Samsung data for the Week 4 assignment of Getting and Cleaning Data Course
