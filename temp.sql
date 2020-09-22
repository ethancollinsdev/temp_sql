INSERT INTO data_services_ethancollins.source_object
(source_object_id, object_type_id, source_object_name, source_local_file_path, source_file_name, source_file_type, source_hdfs_file_path, source_database, source_schema, source_bucket_name, source_bucket_folder, source_column_delimiter, source_object_connect, source_object_type, source_object_username, source_object_mappers, source_serde, source_header_line_count, source_footer_line_count, source_encoding, source_split_by_field, source_where_clause, transformed_query)
VALUES(53, 1, 'emr_kpi_metrics', '/devup/training', 'emr_kpi_metrics_20200922.csv', 'delimited', '/user/ethancollins/practice', 'ethancollins_raw_temp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL);


INSERT INTO data_services_ethancollins.source_object_columns
(source_object_id, source_object_col_id, source_column_name, source_column_data_type, source_column_desc, source_column_order, source_cdc_key, source_cdc_compare, source_trans_logic, source_partition_column, source_mask_indicator, source_column_start, source_column_end)
VALUES (53, 1, 'Risk Metric ID', 'string', '', 1, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 2, 'KPIMetricsReferenceID', 'int', '', 2, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 3, 'KPIMetricsCode', 'string', '', 3, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 4, 'KPIDescription', 'string', '', 4, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 5, 'DataType', 'string', '', 5, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 6, 'Entity', 'string', '', 6, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 7, 'MetricPercentage', 'float', '', 7, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 8, 'AsOfDate', 'date', '', 8, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 9, 'MetricVolume', 'float', '', 9, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 10, 'MetricPopulation', 'float', '', 10, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 11, 'TargetMitigationDate', 'date', '', 11, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 12, 'TriggerValue', 'float', '', 12, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 13, 'AppetiteValue', 'float', '', 13, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 14, 'PeriodEndDate', 'date', '', 14, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 15, 'Cadence', 'string', '', 15, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 16, 'DateCreateTime', 'timestamp', '', 16, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 17, 'DateEndTime', 'timestamp', '', 17, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 18, 'MetricAudience', 'string', '', 18, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 19, 'ProcessArea', 'string', '', 19, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 20, 'Process', 'string', '', 20, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 21, 'Line', 'string', '', 21, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 22, 'CurrentKPIScore', 'int', '', 22, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 23, 'Source_System_Code', 'string', '', 23, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 24, 'Create_Timestamp', 'timestamp', '', 24, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 25, 'Batch_ID', 'int', '', 25, 0, 0, NULL, 0, 0, NULL, NULL),
(53, 26, 'Batch_Process_Name', 'string', '', 26, 0, 0, NULL, 0, 0, NULL, NULL);


INSERT INTO data_services_ethancollins.target_object
(target_object_id, object_type_id, target_object_name, target_file_name, target_file_type, target_local_file_path, target_hdfs_file_path, target_database, target_schema, target_bucket_name, target_bucket_folder, target_column_delimiter, target_object_connect, target_object_type, target_object_username, target_object_mappers, target_object_ext_tbl_ind, target_header_line_count, target_footer_line_count, target_encoding, target_serde, is_bucketed, bucket_col_name, no_of_buckets, is_hashed, cdc_dim_dt)
VALUES(530, 1, 'ENT_NFRR_INFO_RISK_METRIC', NULL, 'parquet', NULL, '/user/ethancollins/practice', 'ethancollins_raw_zone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO data_services_ethancollins.target_object_columns
(target_object_id, target_object_col_id, target_column_name, target_column_data_type, target_column_desc, target_column_order, target_cdc_key, target_cdc_compare, target_trans_logic, target_partition_column, target_mask_indicator, target_pk, target_pi, target_column_constraint)
VALUES (530, 1, 'Risk_Metric_Identifier', 'string', '', 1, 0, 0, NULL, 0, 0, NULL, NULL, NULL), 
(530, 2, 'Risk_Metric_Reference_Identifier', 'int', '', 2, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 3, 'Risk_Metric_Code', 'string', '', 3, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 4, 'Risk_Metric_Description', 'string', '', 4, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 5, 'Metric_Data_Type', 'string', '', 5, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 6, 'Legal_Entity_Name', 'string', '', 6, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 7, 'Metric_Volume_Percentage', 'float', '', 7, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 8, 'As_of_Date', 'date', '', 8, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 9, 'Metric_Volume_Count', 'float', '', 9, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 10, 'Metric_Population_Count', 'float', '', 10, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 11, 'Target_Mitigation_Date', 'date', '', 11, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 12, 'Risk_Lower_Threshold', 'float', '', 12, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 13, 'Risk_Upper_Threshold', 'float', '', 13, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 14, 'Reporting_Month_End_Date', 'date', '', 14, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 15, 'Metric_Cadence', 'string', '', 15, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 16, 'Metric_Reporting_Start_Timestamp', 'timestamp', '', 16, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 17, 'Metric_Reporting_End_Timestamp', 'timestamp', '', 17, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 18, 'Metric_Audience', 'string', '', 18, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 19, 'Process_Area_Name', 'string', '', 19, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 20, 'Process_Name', 'string', '', 20, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 21, 'First_Line_of_Defense_Indicator', 'char', '', 21, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 22, 'Second_Line_of_Defense_Indicator', 'char', '', 22, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 23, 'Third_Line_of_Defense_Indicator', 'char', '', 23, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 24, 'Metric_Score', 'int', '', 24, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 25, 'Source_System_Code', 'string', '', 25, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 26, 'Create_Timestamp', 'timestamp', '', 26, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 27, 'Batch_Identifier', 'int', '', 27, 0, 0, NULL, 0, 0, NULL, NULL, NULL),
(530, 28, 'Batch_Process_Name', 'string', '', 28, 0, 0, NULL, 0, 0, NULL, NULL, NULL);
