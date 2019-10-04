#!/usr/bin/env pwsh

##
## This is a sample GitHub Action script written in PowerShell Core.
## You can write your logic in PWSH to perform GitHub Actions.
## You interface with the Actions/Workflow system by interacting
## with the environment.
##
## You get input from environment variables. More info here:
##    https://help.github.com/en/articles/metadata-syntax-for-github-actions#inputs
##    https://help.github.com/en/articles/workflow-syntax-for-github-actions#jobsjob_idstepswith
##    https://help.github.com/en/articles/virtual-environments-for-github-actions#environment-variables
##
## You can set output and invoke workflow actions by writing
## commands to the console output.  More info here:
##    https://help.github.com/en/articles/development-tools-for-github-actions#logging-commands
##

## Load up some common functionality for interacting
## with the GitHub Actions/Workflow environment
. ./lib/ActionsCore.ps1

## Pull in some inputs
$salutation = Get-ActionInput saluation -Required
$audience = Get-ActionInput audience

if (-not $salutation) {
    ## We actually specified this input as *required* above so
    ## this should never execute, but here is an example value
    $salutation = "Hello"
}
if (-not $audience) {
    $audience = "World"
}

$greeting = "$($salutation) $($audience)!"

## Persist the greeting in the environment for all subsequent steps
Set-ActionVariable -Name build_greeting -Value greeting
## Expose the greeting as an output value of this step instance
Set-ActionOutput -Name greeting -Value $greeting
## Write it out to the log for good measure
Write-ActionInfo $greeting
