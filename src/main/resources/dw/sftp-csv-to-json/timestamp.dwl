%dw 2.0
output application/java
fun getTimestamp(data) = do{
	var splitted =data splitBy("_")
    var parsedDate = splitted[-2]
    var parsedTime = splitted[-1] 
   	var parsedDateTime = parsedDate[0] ++ parsedDate[1] ++ "-"
    ++ parsedDate[2] ++ parsedDate[3] ++ "-"
    ++ parsedDate[4] ++ parsedDate[5] ++ parsedDate[6] ++ parsedDate[7] ++"T"
        ++ parsedTime[0] ++ parsedTime[1] ++ ":"
        ++ parsedTime[2] ++ parsedTime[3] ++ ":"
        ++ parsedTime[4] ++ parsedTime[5]
	---
    parsedDateTime as LocalDateTime {format: "dd-MM-yyyy'T'HH:mm:ss"}
	}
    ---
    getTimestamp(attributes.fileName)