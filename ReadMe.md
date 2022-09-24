## Terraform Quick notes -
`Reference` - [Terraform Registry](https://registry.terraform.io/)

#### Type of terraform providers
1. `Official` - Managed by terraform.
2. `Verified` - Managed by terraform partners.
3. `Community` - Managed by users.

#### Various files can be created
1. `main.tf` - Main configuration file containing resource definition.
2. `variables.tf` - Contains variable declarations.
3. `outputs.tf` - Contains outputs from resources.
4. `provider.tf` - Contains provider derfinition.

#### Terraform Variables
1. `string` - a sequence of Unicode characters representing some text, like "hello".
2. `number` - a numeric value. The number type can represent both whole numbers like 15 and fractional values like 6.283185.
3. `bool` - a boolean value, either true or false. bool values can be used in conditional logic.
4. `list (or tuple)` - a sequence of values, like ["one", "two"]. Elements in a list or tuple are identified by consecutive whole numbers, starting with zero.
5. `map (or object)` - a group of values identified by named labels, like {name = "Mabel", age = 52}.

#### Terraform loads variables in the following order, with later sources taking precedence over earlier ones:
> - Environment variables
> - The terraform.tfvars file, if present.
> - The terraform.tfvars.json file, if present.
> - Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.
> - Any -var and -var-file options on the command line, in the order they are provided. (This includes > variables set by a Terraform Cloud workspace.)

#### Specify explicit dependeny
- `depends_on` - `depends_on = [(Resource type).(Resource name)]`

#### Lifecycle block
The arguments available within a `lifecycle` block are `create_before_destroy`, `prevent_destroy`, `ignore_changes`, and `replace_triggered_by`
- `create_before_destroy` - bool
- `prevent_destroy` - bool
- `ignore_changes` - list of attribute names
- `replace_triggered_by` - list of resource or attribute references

#### Main commands:
- `init` - Prepare your working directory for other commands
- `validate` - Check whether the configuration is valid
- `plan` - Show changes required by the current configuration
- `apply` - Create or update infrastructure
- `destroy` - Destroy previously-created infrastructure

#### All other commands:
- `console` - Try Terraform expressions at an interactive command prompt
- `fmt` - Reformat your configuration in the standard style
- `force-unlock` - Release a stuck lock on the current workspace
- `get` - Install or upgrade remote Terraform modules
- `graph` - Generate a Graphviz graph of the steps in an operation
- `import` - Associate existing infrastructure with a Terraform resource
- `login` - Obtain and save credentials for a remote host
- `logout` - Remove locally-stored credentials for a remote host
- `output` - Show output values from your root module
- `providers` - Show the providers required for this configuration
- `refresh` - Update the state to match remote systems
- `show` - Show the current state or a saved plan
- `state` - Advanced state management
- `taint` - Mark a resource instance as not fully functional
- `test` - Experimental support for module integration testing
- `untaint` - Remove the 'tainted' state from a resource instance
- `version` - Show the current Terraform version
- `workspace` - Workspace management



