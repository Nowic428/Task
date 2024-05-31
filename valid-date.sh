leap_year() {
  year=$(date '+%Y')
    if (( year % 400 == 0 )); then
        echo "True"
    elif (( year % 100 == 0 )); then
        echo "False"
    elif (( year % 4 == 0 )); then
        echo "True"
    else
        echo "False"
    fi
}