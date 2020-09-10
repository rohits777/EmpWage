echo "Welcome to Employee Wage Computation Program"
#!/bin/bash
isPresent=1
DailyWage=0
WagePerHour=20
FullTimeHours=8
randomCheck=$(( RANDOM%2 ))

if [ $isPresent -eq $randomCheck ]
   then
       DailyWage=$(( $WagePerHour * $FullTimeHours )) 
        echo "Employee is present"
   else
        echo "Employee is Not present"
fi
echo "Daily wage of the employee is $DailyWage"
