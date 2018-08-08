#Cargo los comandos de SharePoint para PowerShell
 if ((Get-PSSnapin "Microsoft.SharePoint.PowerShell" -ErrorAction SilentlyContinue) -eq $null) {
 Add-PSSnapin "Microsoft.SharePoint.PowerShell"
 } 

 Update-SPSolution -Identity MTEySS.GestionAdministrativa.wsp -LiteralPath C:\Users\LIRIARTE\Documents\MTEySS.GestionAdministrativa.wsp -GACDeployment