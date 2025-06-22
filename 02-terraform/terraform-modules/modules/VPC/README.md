1. create vpc - done
2. subenets
    - public - done
    - private - done
    - database - done
3. igt -done
4. igt attach to vpc

4. public-route-table
5. public-route routes igt
6. public-route-table associate to public subnet

7. create elatic_ip for nat
8. create nat-gateway and allocate elasticip


9. private-route-table
10. private-route routes nat-gateway
11. private-route-table associate to private subnet

12. database-route-table
13. database-route routes nat-gateway
14. database-route-table associate to database subnet

15. vpc peering
