log_file = open("um-server-01.txt")
#open the "um_server-01.txt"

def sales_reports(log_file):
    #def that mark the start of function sales_reports
    for line in log_file:
    # loop through all data from "um_server-01.txt"
        line = line.rstrip()
        #Remove any white spaces at the end of all the line in "um_server-01.txt"
        day = line[0:3]
        #this line will generate a sub list (a slice) of your lines list which begins from index 0 and finish  at index 3
        if day == "Mon":
            print(line)
            # if the day = Monday , print all lines

sales_reports(log_file)
#call function sales_reports
