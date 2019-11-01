# Defined in - @ line 1
function center_text
	set termwidth (tput cols)
    set padding (printf '%0.1s' ={1..500})
    printf '%*.*s %s %*.*s\n' 0 "(((termwidth-2-{#1})/2))" "$padding" "$1" 0 "(((termwidth-1-{#1})/2))" "$padding"
end
