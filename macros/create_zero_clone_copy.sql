{#* This macro is to create a clone from the ANALYTICS database inside Snowflake



   WAREHOUSE defaults to  transforming 

   USER_ROLE defaults to  DATAENGG

   Clone name defaults to DEV_transforming_hatim initials

   Any previous clones with this name will be replaced.



  dbt run-operation developer_clone_creation  --args '{INITIALS: WMM}'

*#}

{%- macro create_zero_clone_copy(INITIALS) -%}



  USE WAREHOUSE transforming;

  USE ROLE DATAENGG; -- or whatever roles need to use the clone



  CREATE OR REPLACE DATABASE DEV_ANALYTICS_{{INITIALS}} CLONE ANALYTICS;



  --Special grants for clone access

  GRANT USAGE ON DATABASE DEV_ANALYTICS_{{INITIALS}} TO ROLE DATAENGG ;

  {{ log('Granting all privileges to of select and view to schema ' ~ target.schema ~ ' for the role DATAENGG for the database ANALYTICS in warehouse transforming', info=true )}}

{%- endmacro %}
