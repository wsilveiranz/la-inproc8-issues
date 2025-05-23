# Use these cmdlets to retrieve outputs from prior steps
# oldActionOutput = Get-ActionOutput -ActionName <name of old action>
# oldTriggerOutput = Get-TriggerOutput

$customResponse =  [PSCustomObject]@{
Message = "Hello world!"
}

# Use Write-Host/ Write-Output/Write-Debug to log messages to application insights
# Write-Host/Write-Output/Write-Debug and 'returns' will not return an output to the workflow
# Write-Host "Sending to application insight logs"

# Use Push-WorkflowOutput to push outputs forward to subsequent actions
Push-WorkflowOutput -Output $customResponse