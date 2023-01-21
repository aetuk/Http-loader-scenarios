java -Dlogging.level=ON -cp csvjdbc-1.0-37.jar;HashRelMap-0.0.1-SNAPSHOT-jar-with-dependencies.jar client.Ddsloader ^
-licensekey HloadPL6Z-5UKS-RVKY-FEH1-ZQEX-IIFH-ZWTR-OLIU ^
-sourcequery "SELECT CUSTID as CUSTIDTMP_dot_SAMP_, TRANSTYPE as TransType_dot_SAMP_, TRANSVALUE as TransValue_dot_SAMP_ FROM Sampleoutputforstreaming" ^
-sourcereadintervalinimillisecs 5000 ^
-targethttpmethod "POST" ^
-targetdataformat "JSON_ROOT" ^
-targetrootelement "message" ^
-tablekeys "tablekey[0][0]=return CUSTIDTMP;SAMP" ^
-sourcedburl "jdbc:relique:csv:." ^
-sourcedriver "org.relique.jdbc.csv.CsvDriver" ^
-sourceusername "jdbc_source_username" ^
-sourceuserpassword "jdbc_source_password" ^
-targetkeys CUSTIDTMP ^
-targeturl http://132.145.51.102:8080/bre/postdatajsonp ^
-targetdbtable data.ddstest_11b6429df8735b13d70808652d560be2 ^
-targetusername dnode_ext ^
-targetpassword dnode_ext ^
-dbfetchsize 1 ^
-bulkloaderthreads 1 ^
-setdatasources "top_ eq SAMP" ^
rem -setcolumnmappings "CUSTIDTMP eq customerid"
pause