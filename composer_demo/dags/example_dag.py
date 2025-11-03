from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime

def hello_world():
    print("Hello Composer CI/CD Demo!")

with DAG(
    dag_id='example_hello_world',
    start_date=datetime(2025, 11, 3),
    schedule_interval='@daily',
    catchup=False
) as dag:
    task1 = PythonOperator(
        task_id='print_hello',
        python_callable=hello_world
    )
