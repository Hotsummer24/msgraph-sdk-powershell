### Example 1: Code snippet

```powershellImport-Module Microsoft.Graph.Applications

$params = @{
	principalId = "9028d19c-26a9-4809-8e3f-20ff73e2d75e"
	resourceId = "8fce32da-1246-437b-99cd-76d1d4677bd5"
	appRoleId = "498476ce-e0fe-48b0-b801-37ba7e2685c6"
}

New-MgServicePrincipalAppRoleAssignment -ServicePrincipalId $servicePrincipalId -BodyParameter $params
```
This example shows how to use the New-MgServicePrincipalAppRoleAssignment Cmdlet.
To learn about permissions for this resource, see the [permissions reference](/graph/permissions-reference).

