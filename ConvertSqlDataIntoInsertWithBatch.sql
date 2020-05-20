 --ramramesh1374@gmail.com
 select
 concat('Insert Into RDB.thread_two(EID ,Name ,Address ,Age,Gender,Aadhar ) 
 VALUES ', group_concat( '("',EID,'","',Name,'","',Address,'","',Age,'","',Gender,'","',Aadhar,'")' ),';') as query, @i:=@i+1 AS batch,(@i div 1000 )+1 AS batchnum 
 from ( select @i:=0 as i) i,( select EID ,Name ,Address ,Age,Gender,Aadhar  from  RDB.thread_one)databoss group by  @i div 1000
 
 
 --postgres without batch
  select concat('Insert Into commodities_crop_master(crop_name ,category_id ) 
 VALUES ',
 '(''',crop_name,''',''',category_id,''');')
 from commodities_crop_master 
 where    id>73
 order by id
