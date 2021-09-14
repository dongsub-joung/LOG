@echo off

$TODAY= get-date -Format "yyyy/mm/dd"

# mozillaHistoryView
cd Desktop\LOG\Log_Tools\mozillahistoryview-x64
$H_path= $TODAY"_history"
mkdir $H_path
cd $H_path
$txt_fifle= $TODAY"_history"
.\mozillaHistoryView.exe /shtml $txt_fifle.html
.\mozillaHistoryView.exe /sxml $txt_fifle.XML

# mzcv(cookies)
cd ..\..\mzcv-x64
$C_psth= $TODAY"_mzcv"
mkdir $C_psth
cd $C_psth
$txt_fifle= $TODAY"_mzcv"
.\mzcv.exe /sxml $txt_fifle.XML
.\mzcv.exe/scookiestxt $txt_fifle.txt

# mzcacheview
cd ..\mzcacheview
$Ca_path= $TODAY"_cache"
mkdir $Ca_path
cd $Ca_path
$txt_fifle= $TODAY"_cache"
.\MZCacheView.exe /sxml $txt_fifle.XML
.\MZCacheView.exe /stabular $txt_fifle.txt 
EXIT