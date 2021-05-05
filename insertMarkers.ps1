
get-childItem -path w3css -Filter "*.tmpl.partial" -Recurse -File | ForEach-Object {
  $fn = (Resolve-Path $_ -Relative).Replace(".\w3css\", "")

  @("<!-- $fn -->") + (Get-Content $_) + @("<!-- /$fn -->") | Set-Content $_
  
}