# Cargo los comandos de SharePoint para PowerShell
 if ((Get-PSSnapin "Microsoft.SharePoint.PowerShell" -ErrorAction SilentlyContinue) -eq $null) {
 Add-PSSnapin "Microsoft.SharePoint.PowerShell"
 } 
 
 Add-SPSolution -LiteralPath C:\Users\LIRIARTE\Documents\MTEySS.ImpresionAgenda.webpart.wsp