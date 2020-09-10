echo "Welcome to Employee Wage Computation Program"
#!/bin/bash

DailyWage=0
WagePerHour=20
FullTimeHours=8
HalfTimeHours=4
randomCheck=`echo $(( RANDOM%3 ))`
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
echo "Daily wage of the employee is $DailyWage"
