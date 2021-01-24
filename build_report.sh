#!/bin/sh
/usr/bin/java -jar /usr/src/saxonhe/saxon-he-10.3.jar -s:/report/source/report.xml -xsl:/report/xslt/generate_report.xsl -o:/report/target/report.fop -xi
/usr/src/fop/fop-2.5/fop/fop /report/target/report.fop /report/target/latest_report.pdf
rm /report/target/report.fop
