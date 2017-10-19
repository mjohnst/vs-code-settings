$req_extensions = Get-Content -Path "./extensions.txt" | Where-Object {$_ -notmatch '^\s+$'}
$my_extensions = & code --list-extensions | Where-Object {$_ -notmatch '^\s+$'}

foreach ($extension in $req_extensions) 
{
  if (!$my_extensions.Contains($extension))
  {
    Write-Host "Installing vscode extension $extension"
    & code --install-extension $extension
  }
  else
  {
    Write-Host "Extension $extension already installed."
  }
}