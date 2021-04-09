# ATM_using_verilog
Using Verilog 
In this resiporatory having following-
(1) INPUT SIGNALS:--------------------------------------------------------------------------------------------

![image](https://user-images.githubusercontent.com/72481400/114233985-c17b5c80-999b-11eb-8d8c-949c5d43d7c7.png)


(2) OUTPUT SIGNALS:------------------------------------------------------------------------------------------

![image](https://user-images.githubusercontent.com/72481400/114235169-6b0f1d80-999d-11eb-860e-d9be4741b6a0.png)


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#OPERATION DISCRIPTION:----------------------------------------------------------------------------
1) ip --

![image](https://user-images.githubusercontent.com/72481400/114235579-030d0700-999e-11eb-9c60-1edc833db790.png)


2) when wen ==1 then record is store and required input are ip and locn and ren=0.or store the data of account holder.
3) when ren ==1 then necessary to wen ==0 when not required ip and locan signal so these inputs also have 0. 
4) useractno== it is hold the account no. for any operation like balance enquary and withdrwal.
5) useramt == how much amount withdrawl is stored in this signal. but here have limit for withdrawll max. amount is 3999.
6) ch== is used for select the operation which is required ch==0-----performing balance enquary
                                                            ch==1---performing amount withdrwl
7) lang == choose the language in which user is easy to operate but here  have only one option lang===0;
8) tr=0; means only performing one transaction if tr==1 its mean repeat the transaction but here


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#OUTPUTS:-----------------------------------------------------------------------------------------------------------------------------

Console output when balance enquary:-


![image](https://user-images.githubusercontent.com/72481400/114230688-15377700-9997-11eb-9306-16c9b6dea08f.png)

Simulation when Doing balance enquary:-

![image](https://user-images.githubusercontent.com/72481400/114230842-40ba6180-9997-11eb-82f5-e851f80c7128.png)


Console output when doing withdrawl:-

![image](https://user-images.githubusercontent.com/72481400/114230970-6e070f80-9997-11eb-83b9-9d1636527b04.png)


Simulation output when doing withdrawl:-
![image](https://user-images.githubusercontent.com/72481400/114231019-80814900-9997-11eb-9ba5-b42a781859a6.png)
