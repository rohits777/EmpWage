echo "Welcome to Employee Wage Computation Program"
#!/bin/bash
isPresent=1
DailyWage=0
WagePerHour=20
FullTimeHours=8
HalfTimeHours=4
randomCheck=$(( RANDOM%2 ))

if [ $isPresent -eq $randomCheck ]
   then
       DailyWage=$(( $WagePerHour * $FullTimeHours )) 
        echo "Employee is present full day"
   elif [[ $RandomCheck -eq $IsPresent ]]
     then
	DailyWage=$(( $WagePerHour * $HalfTimeHours ))
	echo "Employee is present for half day"
     else
        echo "Employee is Not present"
fi
echo "Daily wage of the employee is $DailyWage"
