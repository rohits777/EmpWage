echo "Welcome to Employee Wage Computation Program"
#!/bin/bash
MonthlyWage=0
WagePerHour=20
FullTimeHours=8
HalfTimeHours=4
WorkingDays=20
hours=0
days=1
WorkHours() {
	local randomCheck=$1
	case $randomCheck in 
		"0") echo 0 ;;
		"1") echo $HalfTimeHours ;;
		"2") echo $FullTimeHours ;;
	esac
}
while [[ $days -le 20 && $hours -le 100 ]]
do
	randomCheck=`echo $((RANDOM%3))`
	DayHours="$( WorkHours $randomCheck )"
	DailyWage=$(( $DayHours * $WagePerHour ))
	hours=$(( $hours + $DayHours ))
	MonthlyWage=$(( $MonthlyWage + $DailyWage ))
        echo -e "Day:$days       DailyWage:$DailyWage       TotalWage:$MonthlyWage    Hours:$hours" 

days=$(( $days + 1 ))
done
