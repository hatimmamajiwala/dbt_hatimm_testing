{#* This macro is to create a clone from the DEV_FIVETRAN database inside Snowflake



   WAREHOUSE defaults to  transforming 

   USER_ROLE defaults to  DATAENGG

   Clone name defaults to DEV_transforming_hatim initials

   Any previous clones with this name will be replaced.



  dbt run-operation developer_clone_creation  --args '{INITIALS: WMM}'

*#}

{%- macro developer_clone_creation (INITIALS) -%}



  USE WAREHOUSE transforming;

  USE ROLE DATAENGG; -- or whatever roles need to use the clone



  CREATE OR REPLACE DATABASE DEV_ANALYTICS_{{[INITIALS]}} CLONE ANALYTICS;



  --Special grants for clone access

  GRANT USAGE ON DATABASE DEV_ANALYTICS_{{[INITIALS]}} TO ROLE DATAENGG ;



{%- endmacro %}
