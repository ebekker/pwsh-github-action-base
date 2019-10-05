# Set-ActionVariable
```

NAME
    Set-ActionVariable
    
SYNOPSIS
    Sets env variable for this action and future actions in the job.
    
    
SYNTAX
    Set-ActionVariable [-Name] <String> [-Value] <String> [-SkipLocal] [<CommonParameters>]
    
    
DESCRIPTION
    

PARAMETERS
    -Name <String>
        The name of the variable to set
        
        Required?                    true
        Position?                    1
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Value <String>
        The value of the variable
        
        Required?                    true
        Position?                    2
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -SkipLocal [<SwitchParameter>]
        Do not set variable in current action's/step's environment.
        
        Required?                    false
        Position?                    named
        Default value                False
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
INPUTS
    
OUTPUTS
    
    
RELATED LINKS

```

