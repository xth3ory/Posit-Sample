Set-Location "C:\Users\dcox\Projects\Posit Sample"
Write-Output "Loading python env"
C:\PythonEnv\monitoring\Scripts\Activate.ps1
Write-Output "Running script"
python updateData.py | Out-File -FilePath script.log 
git add *.csv
git commit -am "made changes"
git push
