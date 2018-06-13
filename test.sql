select br.id,br.bronto_subaccount, concat(br.bronto_subaccount,br.bronto_start_date) subaccount_and_date, num_sends,num_deliveries, num_bounces, uniq_opens, num_opens, uniq_clicks, num_clicks, num_unsubscribes_by_prefs, num_unsubscribes_by_complaint, email_Action_device_type, bronto_start_date, 
bronto_end_date, br.bronto_delivery_name,

(case 
when br.id=5188257 or br.bronto_subaccount='''' or br.bronto_subaccount='max=11453071360 for co'  or br.bronto_subaccount='Nations Info Corp'  or br.bronto_subaccount='rent2owninc2' or br.bronto_subaccount is null then 0
else brand.id_brand
end
) as id_brand,

(CASE email_action_device_type
when null then 'NA'
else email_action_device_type
END ) as device_type, 

(CASE 
WHEN br.isp IS NOT NULL THEN br.isp
ELSE 'Other'
END ) as ISP, 

if(brand.ip is null,'NA',ip) as ip,
(CASE 
WHEN br.bronto_delivery_name IN ('EM00A','EM00B','EM00C')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('EM00A','EM00B','EM00C')) then 'EM00'
WHEN br.bronto_delivery_name like 'EM%'  and br.bronto_start_date<'2018-03-24' like 'EM%' THEN left(br.bronto_delivery_name,4)
WHEN  (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name) like 'EM%' THEN left(br.bronto_campaign_name,4)
WHEN br.bronto_delivery_name IN ('R2 EM00A','R2 EM00B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM00A','R2 EM00B')) then 'R2 EM00'
WHEN br.bronto_delivery_name IN ('R2 EM01A','R2 EM01B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM01A','R2 EM01B')) then 'R2 EM01'
WHEN br.bronto_delivery_name IN ('R2 EM02A','R2 EM02B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM02A','R2 EM02B')) then 'R2 EM02'
WHEN br.bronto_delivery_name IN ('R2 EM03A','R2 EM03B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM03A','R2 EM03B')) then 'R2 EM03'
WHEN br.bronto_delivery_name IN ('R2 EM04A','R2 EM04B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM04A','R2 EM04B')) then 'R2 EM04'
WHEN br.bronto_delivery_name IN ('R2 EM05A','R2 EM05B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM05A','R2 EM05B')) then 'R2 EM05'
WHEN br.bronto_delivery_name IN ('R2 EM06A','R2 EM06B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM06A','R2 EM06B')) then 'R2 EM06'
WHEN br.bronto_delivery_name IN ('R2 EM07A','R2 EM07B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM07A','R2 EM07B')) then 'R2 EM07'
WHEN br.bronto_delivery_name IN ('R2 EM08A','R2 EM08B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM08A','R2 EM08B')) then 'R2 EM08'
WHEN br.bronto_delivery_name IN ('R2 EM09A','R2 EM09B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM09A','R2 EM09B')) then 'R2 EM09'
WHEN br.bronto_delivery_name IN ('R2 EM10A','R2 EM10B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM10A','R2 EM10B')) then 'R2 EM10'
WHEN br.bronto_delivery_name IN ('R2 EM11A','R2 EM11B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM11A','R2 EM11B')) then 'R2 EM11'
WHEN br.bronto_delivery_name IN ('R2 EM12A','R2 EM12B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM12A','R2 EM12B')) then 'R2 EM12'
WHEN br.bronto_delivery_name IN ('R2 EM13A','R2 EM13B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM13A','R2 EM13B')) then 'R2 EM13'
WHEN br.bronto_delivery_name IN ('R2 EM14A','R2 EM14B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM14A','R2 EM14B')) then 'R2 EM14'
WHEN br.bronto_delivery_name IN ('R2 EM15A','R2 EM15B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM15A','R2 EM15B')) then 'R2 EM15'
WHEN br.bronto_delivery_name IN ('R2 EM16A','R2 EM16B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM16A','R2 EM16B')) then 'R2 EM16'
WHEN br.bronto_delivery_name IN ('R2 EM17A','R2 EM17B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM17A','R2 EM17B')) then 'R2 EM17'
WHEN br.bronto_delivery_name IN ('R2 EM18A','R2 EM18B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM18A','R2 EM18B')) then 'R2 EM18'
WHEN br.bronto_delivery_name IN ('R2 EM19A','R2 EM19B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 EM19A','R2 EM19B')) then 'R2 EM19'
WHEN br.bronto_delivery_name IN ('YSAM_EM00A','YSAM_EM00B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('YSAM_EM00A','YSAM_EM00B')) then 'YSAM_EM00'
WHEN br.bronto_delivery_name IN ('YSAM_EM01A','YSAM_EM01B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('YSAM_EM01A','YSAM_EM01B')) then 'YSAM_EM01'
WHEN br.bronto_delivery_name IN ('YSAM_EM02A','YSAM_EM02B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('YSAM_EM02A','YSAM_EM02B')) then 'YSAM_EM02'
WHEN br.bronto_delivery_name IN ('YSAM_EM03A','YSAM_EM03B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('YSAM_EM03A','YSAM_EM03B')) then 'YSAM_EM03'
WHEN br.bronto_delivery_name IN ('YSAM_EM04A','YSAM_EM04B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('YSAM_EM04A','YSAM_EM04B')) then 'YSAM_EM04'
WHEN br.bronto_delivery_name IN ('YSAM_EM05A','YSAM_EM05B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('YSAM_EM05A','YSAM_EM05B')) then 'YSAM_EM05'
WHEN br.bronto_delivery_name IN ('CSRC_EM00A','CSRC_EM00B','CSRC_EM00')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('CSRC_EM00A','CSRC_EM00B','CSRC_EM00')) then 'CSRC_EM0'
WHEN br.bronto_delivery_name IN ('CSRC_EM01A','CSRC_EM01B','CSRC_EM01')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('CSRC_EM01A','CSRC_EM01B','CSRC_EM01')) then 'CSRC_EM01'
WHEN br.bronto_delivery_name IN ('CSRC_EM02A','CSRC_EM02B','CSRC_EM02')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('CSRC_EM02A','CSRC_EM02B','CSRC_EM02')) then 'CSRC_EM02'
WHEN br.bronto_delivery_name IN ('CSRC_EM03A','CSRC_EM03B','CSRC_EM03')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('CSRC_EM03A','CSRC_EM03B','CSRC_EM03')) then 'CSRC_EM03'
WHEN br.bronto_delivery_name IN ('CSRC_EM04A','CSRC_EM04B','CSRC_EM04')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('CSRC_EM04A','CSRC_EM04B','CSRC_EM04')) then 'CSRC_EM04'
WHEN br.bronto_delivery_name IN ('CSRC_EM05A','CSRC_EM05B','CSRC_EM05')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('CSRC_EM05A','CSRC_EM05B','CSRC_EM05')) then 'CSRC_EM05'
WHEN br.bronto_delivery_name IN ('YSAM_W0A','YSAM_W0B','YSAM_W0')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('YSAM_W0A','YSAM_W0B','YSAM_W0')) then 'YSAM_W0'
WHEN br.bronto_delivery_name IN ('YSAM_W1A','YSAM_W1B','YSAM_W1')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('YSAM_W1A','YSAM_W1B','YSAM_W1')) then 'YSAM_W1'
WHEN br.bronto_delivery_name IN ('YSAM_W2A','YSAM_W2B','YSAM_W2')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('YSAM_W2A','YSAM_W2B','YSAM_W2')) then 'YSAM_W2'
WHEN br.bronto_delivery_name IN ('YSAM_W3A','YSAM_W3B','YSAM_W3')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('YSAM_W3A','YSAM_W3B','YSAM_W3')) then 'YSAM_W3'
WHEN br.bronto_delivery_name IN ('YSAM_W4A','YSAM_W4B','YSAM_W4')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('YSAM_W4A','YSAM_W4B','YSAM_W4')) then 'YSAM_W4'
WHEN br.bronto_delivery_name IN ('YSAM_W5A','YSAM_W5B','YSAM_W5')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('YSAM_W5A','YSAM_W5B','YSAM_W5')) then 'YSAM_W5'
WHEN br.bronto_delivery_name IN ('CSRC_W0A','CSRC_W0B','CSRC_W0')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('CSRC_W0A','CSRC_W0B','CSRC_W0')) then 'CSRC_W0'
WHEN br.bronto_delivery_name IN ('CSRC_W1A','CSRC_W1B','CSRC_W1')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('CSRC_W1A','CSRC_W1B','CSRC_W1')) then 'CSRC_W1'
WHEN br.bronto_delivery_name IN ('CSRC_W2A','CSRC_W2B','CSRC_W2')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('CSRC_W2A','CSRC_W2B','CSRC_W2')) then 'CSRC_W2'
WHEN br.bronto_delivery_name IN ('CSRC_W3A','CSRC_W3B','CSRC_W3')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('CSRC_W3A','CSRC_W3B','CSRC_W3')) then 'CSRC_W3'
WHEN br.bronto_delivery_name IN ('CSRC_W4A','CSRC_W4B','CSRC_W4')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('CSRC_W4A','CSRC_W4B','CSRC_W4')) then 'CSRC_W4'
WHEN br.bronto_delivery_name IN ('CSRC_W5A','CSRC_W5B','CSRC_W5')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('CSRC_W5A','CSRC_W5B','CSRC_W5')) then 'CSRC_W5'
WHEN br.bronto_delivery_name IN ('Monthly Email A','Monthly Email B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('Monthly Email A','Monthly Email B')) then 'Monthly_Email'
WHEN br.bronto_delivery_name IN ('Weekly Email A','Weekly Email B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('Weekly Email A','Weekly Email B')) then 'Weekly_Email'
WHEN br.bronto_delivery_name IN ('R2 Monthly Email A','R2 Monthly Email B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 Monthly Email A','R2 Monthly Email B')) then 'R2 Monthly Email'
WHEN br.bronto_delivery_name IN ('R2 Weekly Email A','R2 Weekly Email B')  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name IN ('R2 Weekly Email A','R2 Weekly Email B')) then 'R2 Weekly Email'
WHEN br.bronto_delivery_name = '1A Modern Template'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name = '1A Modern Template') then '1_Modern_Template'
WHEN br.bronto_delivery_name = '1 Text Mostly'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name = '1 Text Mostly') then '1_Text_Mostly'
WHEN br.bronto_delivery_name = '1 Newsletter'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name = '1 Newsletter') then '1_Newsletter'
WHEN br.bronto_delivery_name = '1 Newsletter A'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name = '1 Newsletter A') then '1_Newsletter_A'
WHEN br.bronto_delivery_name = '1 Newsletter B'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name = '1 Newsletter B') then '1_Newsletter_B'
WHEN br.bronto_delivery_name LIKE 'GRTO Cancellation Confirmation'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name LIKE 'GRTO Cancellation Confirmation') then 'GRTO Cancellation Confirmation'
WHEN br.bronto_delivery_name = '1 WB60 30'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name = '1 WB60 30') then '1 WB60 30'
WHEN br.bronto_delivery_name = '1 WB80 30'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name = '1 WB80 30') then '1 WB80 30'
WHEN br.bronto_delivery_name = '1 WB90 30'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name = '1 WB90 30') then '1 WB90 30'
WHEN br.bronto_delivery_name = '1 WB60 90'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name = '1 WB60 90') then '1 WB60 90'
WHEN br.bronto_delivery_name = '1 WB80 90'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name = '1 WB80 90') then '1 WB80 90'
WHEN br.bronto_delivery_name = '1 WB90 90'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name = '1 WB90 90') then '1 WB90 90'
when br.bronto_delivery_name like 'RE%'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name like 'RE%') then bronto_delivery_name
When br.bronto_delivery_name like '%EQX%'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name like '%EQX%') then bronto_delivery_name
When br.bronto_delivery_name like 'GM%'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name like 'GM%') then bronto_delivery_name
When br.bronto_delivery_name like 'FDR%' or br.bronto_delivery_name like 'Genesis%' or br.bronto_delivery_name like 'Equifax%'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name like 'FDR%' or  br.bronto_campaign_name like 'Genesis%' or  br.bronto_campaign_name like 'Equifax%') then bronto_delivery_name
When br.bronto_delivery_name like 'Trio%'  and br.bronto_start_date<'2018-03-24' or (br.bronto_start_date>='2018-03-24' and br.bronto_campaign_name like 'Trio%') then 'Trio'
ELSE 'NA'
END



) as email_message,
(
case
WHEN br.bronto_delivery_name like '%A' THEN 'Control A'
WHEN br.bronto_delivery_name like '%B' or br.bronto_delivery_name like  THEN 'Challenger B'
WHEN br.bronto_delivery_name like '%C' THEN 'Challenger C'
Else 'Other'
end
) as split_test_type, bronto_campaign_name


from db03_reporting.bronto_remarketing_stats br 
left join nic_reporting.ips_by_brand brand   on br.bronto_subaccount=brand.subaccount_name  and br.bronto_start_date between start_date and end_date
