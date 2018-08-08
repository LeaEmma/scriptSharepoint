# Cargo los comandos de SharePoint para PowerShell
 if ((Get-PSSnapin "Microsoft.SharePoint.PowerShell" -ErrorAction SilentlyContinue) -eq $null) {
 Add-PSSnapin "Microsoft.SharePoint.PowerShell"
 } 
 
# Creo la colección de sitios en la ubicación de destino. Este sitio estará vacío.
New-SPSite -Url http://gesadmdesa.trabajo.gob.ar/sitios/empleo -Language 3082 -Template STS#0 -Name "Secretaria de Empleo" -OwnerAlias TRABAJO\ramendez -SecondaryOwnerAlias TRABAJO\liriarte -HostHeaderWebApplication http://s1-dixx-sha01 -ContentDatabase MOSS_Intranet_Empleo_ContentDB
 
