cd ..
git pull
start "Serwer" start.bat
cd SERWER_FUNCS
start "Ngrok" run_ngrok.bat
start "Server Sync" sync_timeout.bat