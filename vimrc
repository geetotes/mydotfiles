:set number
set term=ansi
syntax on
command ResetAutoIncrement %s/AUTO_INCREMENT=[0-9]*/AUTO_INCREMENT=1/g
command RemoveAutoIncrement %s/AUTO_INCREMENT=[0-9]*//g
