echo off
cd Data/db
certutil -hashfile daily.cvd
wget https://ant.qxn110.com/db/ -O dailytmp.cvd 
copy dailytmp.cvd daily.cvd  
del dailytmp.cvd
cd ../../
cocorun
certutil -hashfile daily.cvd