# Retrieves all Intune managed devices using Microsoft Graph API

Connect-MgGraph -Scopes "DeviceManagementManagedDevices.Read.All"

$devices = Get-MgDeviceManagementManagedDevice

$devices | Select-Object DeviceName, OperatingSystem, ComplianceState, UserPrincipalName
