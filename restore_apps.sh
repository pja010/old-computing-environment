while read -r line
do
    app=$(echo $line | awk '{print $3}')
    command=$(pgrep -fl "$app" | awk '{print $2}')
    ($command) &
done < ~/.config/awesome/running_apps

