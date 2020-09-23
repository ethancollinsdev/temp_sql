INSERT INTO ethancollins_raw_zone.ent_nfrr_info_risk_metric 
(Risk_Metric_Identifier,
Risk_Metric_Reference_Identifier,
Risk_Metric_Code,
Risk_Metric_Description,
Metric_Data_Type,
Legal_Entity_Name,
Metric_Volume_Percentage,
As_of_Date,
Metric_Volume_Count,
Metric_Population_Count,
Target_Mitigation_Date,
Risk_Lower_Threshold,
Risk_Upper_Threshold,
Reporting_Month_End_Date,
Metric_Cadence,
Metric_Reporting_Start_Timestamp,
Metric_Reporting_End_Timestamp,
Metric_Audience,
Process_Area_Name,
Process_Name,
value1,
value2,
value3,
Metric_Score,
Source_System_Code,
Create_Timestamp,
Batch_Identifier,
Batch_Process_Name)
SELECT
(RiskMetricID,
KPIMetricsReferenceID,
KPIMetricsCode,
KPIDescription,
DataType,
Entity,
(MetricPercentage * 100),
AsOfDate,
MetricVolume,
MetricPopulation,
TargetMitigationDate,
TriggerValue,
AppetiteValue,
PeriodEndDate,
Cadence,
DateCreateTime,
DateEndTime,
MetricAudience,
ProcessArea,
Process,
(CASE
    WHEN Line = "FLOD" THEN "Y"
    WHEN Line = "SLOD" THEN "Y"
    WHEN Line = "TLOD" THEN "Y"
    ELSE Line
END) as value1,
(CASE
    WHEN Line = "FLOD" THEN "Y"
    WHEN Line = "SLOD" THEN "Y"
    WHEN Line = "TLOD" THEN "Y"
    ELSE Line
END) as value2,
(CASE
    WHEN Line = "FLOD" THEN "Y"
    WHEN Line = "SLOD" THEN "Y"
    WHEN Line = "TLOD" THEN "Y"
    ELSE Line
END) as value3,
CurrentKPIScore,
Source_System_Code,
Create_Timestamp,
Batch_ID,
Batch_Process_Name) 
FROM  ethancollins_raw_temp;;
