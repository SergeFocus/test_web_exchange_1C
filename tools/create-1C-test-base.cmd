# Create new localhost test 1C Base

CHCP 1251

"C:\Program Files (x86)\1cv8\8.3.10.2252\bin\1cv8.exe" CREATEINFOBASE  File=E:\Work\Skurskiy\test /AddInList "test" /UseTemplate "E:\git-s\kurs\004.cf"

#
#"C:\Program Files (x86)\1cv8\8.3.10.2252\bin\1cv8.exe" CREATEINFOBASE Srvr="localhost";Ref='test-bu';DBMS=MSSQLServer;DBSrvr="localhost";DB=test-bu;DBUID="sa";DBPwd="Qwe123$%^";CrSQLDB="Y";Locale=ru;SQLYOffs=2000 /AddInList "test-bu" /UseTemplate "\\DC-FM\1c_modules$\1C-tests\DemoUkr2.dt"
#"C:\Program Files (x86)\1cv8\8.3.10.2252\bin\1cv8.exe" CREATEINFOBASE Srvr="localhost";Ref="test4";DBMS=MSSQLServer;DBSrvr="localhost";DB=test4;DBUID="sa";DBPwd="Qwe123$%^";CrSQLDB="Y" /AddInList test4 /Out create.log"