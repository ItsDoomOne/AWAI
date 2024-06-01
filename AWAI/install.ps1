$old_var = "$env:variableselect2x" 
$new_var = $old_var.Replace(" ", ".")
winget install $new_var