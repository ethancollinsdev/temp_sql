DROP TABLE IF EXISTS ethancollins_raw_zone.ent_nfrr_info_risk_metric;

CREATE TABLE ethancollins_raw_zone.ENT_NFRR_INFO_RISK_METRIC (
	Risk_Metric_Identifier VARCHAR(50) NOT NULL,
	Risk_Metric_Reference_Identifier NUMERIC NOT NULL,
	Risk_Metric_Code VARCHAR(50) NOT NULL,
	Risk_Metric_Description VARCHAR(500) NOT NULL,
	Metric_Data_Type VARCHAR(25) NOT NULL,
	Legal_Entity_Name VARCHAR(250) NOT NULL,
	Metric_Volume_Percentage FLOAT,
	As_of_Date DATE NOT NULL,
	Metric_Volume_Count FLOAT,
	Metric_Population_Count FLOAT,
	Target_Mitigation_Date DATE NOT NULL,
	Risk_Lower_Threshold FLOAT NOT NULL,
	Risk_Upper_Threshold FLOAT NOT NULL,
	Reporting_Month_End_Date DATE NOT NULL,
	Metric_Cadence VARCHAR(250) NOT NULL,
	Metric_Reporting_Start_Timestamp TIMESTAMP NOT NULL,
	Metric_Reporting_End_Timestamp TIMESTAMP,
	Metric_Audience VARCHAR(25),
	Process_Area_Name VARCHAR(100) NOT NULL,
	Process_Name VARCHAR(100) NOT NULL,
	First_Line_of_Defense_Indicator CHAR(1) NOT NULL,
	Second_Line_of_Defense_Indicator CHAR(1) NOT NULL,
	Third_Line_of_Defense_Indicator CHAR(1) NOT NULL,
	Metric_Score NUMERIC,
	Source_System_Code VARCHAR(50) NOT NULL,
	Create_Timestamp TIMESTAMP NOT NULL,
	Batch_Identifier NUMERIC NOT NULL,
	Batch_Process_Name VARCHAR(100) NOT NULL
);

INSERT INTO
  ethancollins_raw_zone.ent_nfrr_info_risk_metric (
    Risk_Metric_Identifier,
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
    First_Line_of_Defense_Indicator,
    Second_Line_of_Defense_Indicator,
    Third_Line_of_Defense_Indicator,
    Metric_Score,
    Source_System_Code,
    Create_Timestamp,
    Batch_Identifier,
    Batch_Process_Name
  )
SELECT
    coalesce(RiskMetricID,0),
    coalesce(KPIMetricsReferenceID, "0"),
    coalesce(KPIMetricsCode, "default_metric_code_0"),
    coalesce(KPIDescription, "default description"),
    coalesce(DataType, "Number"),
    coalesce(Entity, "Default Entity"),
    "value" = CASE WHEN DataType="Percentage" THEN (100 * MetricPercentage) ELSE 0 END,
    coalesce(AsOfDate, "2020-09-22"),
    MetricVolume,
    MetricPopulation,
    coalesce(TargetMitigationDate, "2020-09-22"),
    coalesce(TriggerValue, 0),
    coalesce(AppetiteValue, 0),
    coalesce(PeriodEndDate, "2020-09-22"),
    coalesce(Cadence, "fast"),
    coalesce(DateCreateTime, CURRENT_TIMESTAMP),
    DateEndTime,
    MetricAudience,
    coalesce(ProcessArea, "Default process area"),
    coalesce(Process, "Default process"),
    "value1" = CASE WHEN Line = "FLOD" THEN "Y" WHEN Line = "SLOD" THEN "Y" WHEN Line = "TLOD" THEN "Y" ELSE "N" END,
    "value2" = CASE WHEN Line = "FLOD" THEN "Y" WHEN Line = "SLOD" THEN "Y" WHEN Line = "TLOD" THEN "Y" ELSE "N" END,
    "value3" = CASE WHEN Line = "FLOD" THEN "Y" WHEN Line = "SLOD" THEN "Y" WHEN Line = "TLOD" THEN "Y" ELSE "N" END,
    CurrentKPIScore,
    "EMR",
    CURRENT_TIMESTAMP,
    1,
    "Batch1"
FROM
  ethancollins_raw_temp.emr_kpi_metrics;;
