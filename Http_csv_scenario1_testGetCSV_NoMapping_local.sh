java -Dlogging.level=ON -cp csvjdbc-1.0-37.jar:HashRelMap-0.0.1-SNAPSHOT-jar-with-dependencies.jar client.Ddsloader \
-licensekey HloadTrial7dayDCH2C2IICB4G242I1I8F48A38AD5CC81 \
-sourcequery "SELECT propid as propid_dot_TEST_, propname as propname_dot_TEST_ FROM test" \
-sourcereadintervalinimillisecs 5000 \
-targethttpmethod "POST" \
-targetdataformat "XML2" \
-restresponsefileloc "test.json" \
-restresponsefileformat "CSV" \
-tablekeys "tablekey[0][0]=return propid;TEST" \
-sourcedburl "jdbc:relique:csv:." \
-sourcedriver "org.relique.jdbc.csv.CsvDriver" \
-targetkeys propid \
-targeturl "https://gbd365388febb7f-zdr9drz43pwp3x7u.adb.uk-london-1.oraclecloudapps.com/ords/admin/test1/" \
-dbfetchsize 1 \
-bulkloaderthreads 1 \
-setdatasources "top_ eq TEST" \