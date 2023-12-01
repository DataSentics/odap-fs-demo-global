-- Databricks notebook source
-- MAGIC %md
-- MAGIC
-- MAGIC ## Social class feature

-- COMMAND ----------

create widget text timestamp default "2020-12-12"

-- COMMAND ----------

select
  id as person_id,
  timestamp(getargument("timestamp")) as timestamp,
  salary
from fs_demo_data.people

-- COMMAND ----------

-- MAGIC %python
-- MAGIC metadata = {
-- MAGIC     "table": "features",
-- MAGIC     "category": "social",
-- MAGIC     "features": {
-- MAGIC         "salary": {
-- MAGIC             "description": "Salary of a person",
-- MAGIC         }
-- MAGIC     }
-- MAGIC }
