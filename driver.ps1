Set-Location "C:\Users\dcox\Projects\Posit Sample"
C:\PythonEnv\monitoring\Scripts\Activate.ps1
python updateData.py | Out-File -FilePath script.log 
git add *.csv
git commit -am "made changes"
git push
