## Terraform Quick notes -
Reference: [Terraform Registry](https://registry.terraform.io/)

#### Type of terraform providers
1. Official: Managed by terraform.
2. Verified: Managed by terraform partners.
3. Community: Managed by users.

#### Various files can be created
1. main.tf
    > Main configuration file containing resource definition.
2. variables.tf
    > Contains variable declarations.
3. outputs.tf
    > Contains outputs from resources.
4. provider.tf
    > Contains provider derfinition.

#### Main commands:
- init          
    > Prepare your working directory for other commands
- validate      
    > Check whether the configuration is valid
- plan          
    >Show changes required by the current configuration
- apply         
    > Create or update infrastructure
- destroy       
    > Destroy previously-created infrastructure

#### All other commands:
- console       
    > Try Terraform expressions at an interactive command prompt
- fmt           
    > Reformat your configuration in the standard style
- force-unlock  
    > Release a stuck lock on the current workspace
- get           
    > Install or upgrade remote Terraform modules
- graph         
    > Generate a Graphviz graph of the steps in an operation
- import        
    > Associate existing infrastructure with a Terraform resource
- login         
    > Obtain and save credentials for a remote host
- logout        
    > Remove locally-stored credentials for a remote host
- output        
    > Show output values from your root module
- providers     
    > Show the providers required for this configuration
- refresh       
    > Update the state to match remote systems
- show          
    > Show the current state or a saved plan
- state         
    > Advanced state management
- taint         
    > Mark a resource instance as not fully functional
- test          
    > Experimental support for module integration testing
- untaint       
    > Remove the 'tainted' state from a resource instance
- version       
    > Show the current Terraform version
- workspace     
    > Workspace management



