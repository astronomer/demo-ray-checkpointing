FROM quay.io/astronomer/ap-airflow:2.1.0-buster-onbuild
USER root
RUN pip uninstall astronomer-airflow-version-check -y
RUN pip install airflow_provider_ray-0.2.1-py3-none-any.whl
USER astro
ENV AIRFLOW__CORE__XCOM_BACKEND=ray_provider.xcom.ray_backend.RayBackend

