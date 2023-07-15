4.13

1. 不需要，因为被授予v上选择权限的用户可以只访问视图v中引用关系r的部分

2. 需要，因为视图v引用关系r，一个对视图v的有效更新必须更新引用的关系r才能满足更新要求

3. 举例，定义视图history_instructors

   ```sql
   create view history_instructors as
   select *
   from instructor
   where dept_name = 'history';
   ```

   其中关系instructor(ID, name, dept_name, salary)，则向history_instructors插入('1', 'White', 'Comp. Sci.', 10000)，视图history_instructors在select时因不满足where条件而不会出现该元组。



5.1

通过mgr查询表内dog的manager，以及manager的manager，以此类推，直到不再有manager——查询的就是这样一个关于dog的manager链条

实验验证如下：

mgr表内数据为：

![image-20230317231607190](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317231607190.png)

运行程序后输出为：

![image-20230317231654961](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317231654961.png)

输出满足期望。



5.7

```sql
create trigger delete_check after delete on account
referencing old row as orow
for each row
delete from depositor
where depositor.customer_name not in (
	select customer_name
    from depositor
    where depositor.account_number <> orow.account_number
)
```

验证：删除前account和depositor表内容如下：

![image-20230317110801334](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317110801334.png)![image-20230317111138772](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317111138772.png)

现在我们删除ACCOUNT_NUMBER为2的账户：

![image-20230317111332261](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317111332261.png)

删除后两张表如下，由于depositor表内Alice有1,2两个账户，则Alice不被删除：

![image-20230317111419952](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317111419952.png)![image-20230317111440859](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317111440859.png)

再删除ACCOUNT_NUMBER为1的账户：

![image-20230317111533750](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317111533750.png)

删除后两张表如下，由于depositor表内Alice有1,2两个账户，则Alice不被删除：

![image-20230317111555542](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317111555542.png)![image-20230317113811938](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317113811938.png)

现在我们删除ACCOUNT_NUMBER为3的账户：

![image-20230317114041919](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317114041919.png)

删除后两张表如下，由于depositor表内Bob只有一个账户，则Bob不被删除：

![image-20230317114059669](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317114059669.png)![image-20230317114118848](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317114118848.png)

可以看到查询结果正确



5.16

```sql
with recursive rec_subpart(part_id, subpart_id) as (
        select part_id, subpart_id 
        from subpart
    union
    	select rec_subpart.part_id, subpart.subpart_id
    	from rec_subpart, subpart
    	where rec_subpart.subpart_id = subpart.part_id
)

select part.name
from part, rec_subpart
where rec_subpart.part_id = 'P-100' and part.part_id = rec_subpart.subpart_id
```

我们的part和subpart表为：

![image-20230317115229703](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317115229703.png)![image-20230317115243421](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317115243421.png)

查询结果为：

![image-20230317115131070](C:\Users\Xsu1023\AppData\Roaming\Typora\typora-user-images\image-20230317115131070.png)

可以看到查询结果正确
