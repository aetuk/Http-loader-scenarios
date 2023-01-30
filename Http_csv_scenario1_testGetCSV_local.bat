java -Dlogging.level=ON -cp csvjdbc-1.0-37.jar;HashRelMap-0.0.1-SNAPSHOT-jar-with-dependencies.jar client.Ddsloader ^
-licensekey HloadD216-YPET-2FH3-PM64-YIPT-89YM-OSUX-HZYB ^
-sourcequery "SELECT userid as userid_dot_SAMP_, age as age_dot_SAMP_, EventId as EventId_dot_SAMP_, channel as channel_dot_SAMP_, breuserid as breuserid_dot_SAMP_, brecontext as brecontext_dot_SAMP_ FROM GetNextBestContent" ^
-sourcereadintervalinimillisecs 5000 ^
-targethttpmethod "GET" ^
-targetdataformat "XML2" ^
-restresponsefileloc "test.csv" ^
-restresponsefileformat "CSV" ^
-tablekeys "tablekey[0][0]=return userid;SAMP" ^
-sourcedburl "jdbc:relique:csv:." ^
-sourcedriver "org.relique.jdbc.csv.CsvDriver" ^
-targetkeys userid ^
-targeturl "http://132.145.51.102:8080/bre/getdata?userid=[userid]&age=[age]&breuserid=[breuserid]&channel=[channel]&brecontext=[brecontext]" ^
-dbfetchsize 1 ^
-bulkloaderthreads 1 ^
-setdatasources "top_ eq SAMP" ^
-setcolumnmappings "userid eq USERID;age eq AGE;channel eq CHANNEL;breuserid eq BREUSERID;brecontext eq BRECONTEXT"
pause