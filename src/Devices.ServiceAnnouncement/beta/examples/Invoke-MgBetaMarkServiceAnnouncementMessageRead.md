### Example 1: Code snippet

```powershell

Import-Module Microsoft.Graph.Beta.Devices.ServiceAnnouncement

$params = @{
	messageIds = @(
	"MC172851"
"MC167983"
)
}

Invoke-MgBetaMarkServiceAnnouncementMessageRead -BodyParameter $params

```
This example shows how to use the Invoke-MgBetaMarkServiceAnnouncementMessageRead Cmdlet.

