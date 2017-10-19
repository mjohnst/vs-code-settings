$extension_out_file = ".\extensions.txt"
& code --list-extensions > $extension_out_file
Write-Host "Saved extensions:"
& Get-Content $extension_out_file