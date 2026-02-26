# Function to fetch Django commands
function __fish_django_commands
    # Only run if manage.py exists in the current directory
    if test -f manage.py
        python manage.py help --commands 2>/dev/null
    end
end

# The completion rule
complete -c python -n "string match -r 'manage.py\$' (commandline -opc)[2]" -f -a "(__fish_django_commands)"
