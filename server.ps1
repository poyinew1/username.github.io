$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:8080/")
$listener.Start()
Write-Host "Server started at http://localhost:8080"
Write-Host "Press Ctrl+C to stop"

$baseDir = "C:\Users\sonny\Desktop\MBDAWEB"

while ($listener.IsListening) {
    $context = $listener.GetContext()
    $request = $context.Request
    $response = $context.Response
    $url = $request.Url.LocalPath
    
    # Handle root request
    if ($url -eq "/" -or $url -eq "") {
        $filePath = Join-Path $baseDir "index.html"
    } else {
        $filePath = Join-Path $baseDir ($url -replace '^/', '')
    }
    
    if (Test-Path $filePath) {
        $content = [System.IO.File]::ReadAllBytes($filePath)
        
        # Set content type based on file extension
        $extension = [System.IO.Path]::GetExtension($filePath)
        switch ($extension) {
            ".html" { $response.ContentType = "text/html" }
            ".css" { $response.ContentType = "text/css" }
            ".js" { $response.ContentType = "application/javascript" }
            ".jpg" { $response.ContentType = "image/jpeg" }
            ".png" { $response.ContentType = "image/png" }
            default { $response.ContentType = "text/plain" }
        }
        
        $response.ContentLength64 = $content.Length
        $response.OutputStream.Write($content, 0, $content.Length)
    } else {
        $response.StatusCode = 404
        $errorBody = "404 - File not found: $url"
        $errorBytes = [System.Text.Encoding]::UTF8.GetBytes($errorBody)
        $response.ContentType = "text/plain"
        $response.ContentLength64 = $errorBytes.Length
        $response.OutputStream.Write($errorBytes, 0, $errorBytes.Length)
    }
    
    $response.Close()
}
