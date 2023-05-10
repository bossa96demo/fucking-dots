bspwm_data=$(bspc query -T -n)
parsed_json=$(echo $bspwm_data | jq ".client" | jq ".className")
fixed_output=$(echo $parsed_json | tr -d '"' | tr [:upper:] [:lower:])
$fixed_output
