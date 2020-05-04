RANK=feature_ranking


# Define the directories we will use in the script
SEARCH_DIR=data/temp
FINAL_DIR=data/processle

# 1. Keep the first line of File0 and remove the first line of all the other files (File[0-99]) and
#		output it to the FINAL_DIR location
cp $SEARCH_DIR/L2_Logistic_Regression_"$RANK"_1.tsv $FINAL_DIR/combined_L2_Logistic_Regression_"$RANK".tsv


#	2. Append the other files to the end, but we want to be sure to ignore the 0 file since we don't
#		want it printed twice
#        "tail -n +2" makes tail print lines from 2nd line to the end
#        "-q" tells it to not print the header with the file name
#        ">>" adds all the tail stuff from every file to the combined file
tail -n +2 -q $SEARCH_DIR/L2_Logistic_Regression_"$RANK"_{2..100}.tsv >> $FINAL_DIR/combined_L2_Logistic_Regression_"$RANK".tsv
