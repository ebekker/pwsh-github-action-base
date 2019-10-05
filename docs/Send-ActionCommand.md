# Send-ActionCommand
```

NAME
    Send-ActionCommand
    
SYNOPSIS
    Sends a command to the hosting Workflow/Action context.
    
    
SYNTAX
    Send-ActionCommand [-Command] <String> [-Properties] <Hashtable> [[-Message] <String>] [<CommonParameters>]
    
    Send-ActionCommand [-Command] <String> [[-Message] <String>] [<CommonParameters>]
    
    
DESCRIPTION
    Command Format:
      ::name key=value;key=value##message
    

PARAMETERS
    -Command <String>
        
        Required?                    true
        Position?                    1
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Properties <Hashtable>
        
        Required?                    true
        Position?                    2
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -Message <String>
        
        Required?                    false
        Position?                    3
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see
        about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216). 
    
INPUTS
    
OUTPUTS
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS > ::warning::This is the user warning message
    
    
    
    
    
    
    -------------------------- EXAMPLE 2 --------------------------
    
    PS > ::set-secret name=mypassword::definitelyNotAPassword!
    
    
    
    
    
    
    
RELATED LINKS

```

