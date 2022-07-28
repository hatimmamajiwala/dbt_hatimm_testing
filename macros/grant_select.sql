{% macro grant_select(schema=target.schema, usr_role='DATAENGG') %}

   {% set query %}
       GRANT USAGE ON DATABASE ANALYTICS to role {{ usr_role }}; 
       grant usage on schema {{ schema }} to role {{ usr_role }};
       grant select on all tables in schema {{ schema }} to role {{ usr_role }};
       grant select on all views in schema {{ schema }} to role {{ usr_role }};
   {% endset %}
   
   {{ log('Granting all privileges to of select and view to schema ' ~ schema ~ ' for the role ' ~ usr_role ~ ' for the database ANALYTICS', info=true )}}
   
   {% do run_query(query) %}

{% endmacro %}