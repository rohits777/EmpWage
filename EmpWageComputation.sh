echo "Welcome to Employee Wage Computation Program"
#!/bin/bash

MonthlyWage=0
WagePerHour=20
FullTimeHours=8
HalfTimeHours=4
WorkingDays=20
for(( day=1; day<=$WorkingDays; day++ ))
do
   randomCheck=`echo $(( RANDOM%3 ))`
      echo -e "\nDay: $day"
	DailyWage=0
case $randomCheck in
	"0")echo "Employee is absent" ;;
	"1")
	DailyWage=$(( $HalfTimeHours * $WagePerHour ))
	echo "Employee is present for halfday" 
	;;
	"2")
	DailyWage=$(( $FullTimeHours * $WagePerHour ))
	echo "Employee is present for full day" 
	;;
esac
   MonthlyWage=$(( $MonthlyWage + $DailyWage ))
	echo -e "DailyWage: $DailyWage     MonthlyWage: $MonthlyWage"
done
