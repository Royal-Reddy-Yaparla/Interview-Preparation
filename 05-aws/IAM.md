we have given user credentials , by aws configure , account access and secret key which have permission
, here we can use the credentals not only for single purpose , there is chance to misuse or credential expose 
to avoid this , by using IAM roles to attach required resouce to access the another resources.

we can avoid credential expose , and role is only for specific requirement , may not useful for another purpose.

use-case: mysql-server requires password from SSM parameters, so mysql-server requires permissions to access 
ssm params , need a role to access SSM