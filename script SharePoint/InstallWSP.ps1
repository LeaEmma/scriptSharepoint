# Cargo los comandos de SharePoint para PowerShell
 if ((Get-PSSnapin "Microsoft.SharePoint.PowerShell" -ErrorAction SilentlyContinue) -eq $null) {
 Add-PSSnapin "Microsoft.SharePoint.PowerShell"
 } 
 
 
 Uninstall-SPFeature -Identity "MTEySS.ImpresionAgenda.webpart_Feature1"