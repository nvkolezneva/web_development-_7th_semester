

# Django
DEBUG=True <br>
SECRET_KEY=CHANGEME!!! <br>

DOMAIN=http://localhost:8001 <br>
ALLOWED_HOSTS=* <br>

# Email settings
#EMAIL_PORT=25 <br>
#EMAIL_HOST=localhost <br>

# PostgreSQL
POSTGRES_DB=project <br>
POSTGRES_PASSWORD=mysecretpass <br>
POSTGRES_USER=postgresuser <br>

# APOLLO
APOLLO_KEY=service:NAME_PROJECT:PtPTFuaXYUq2-YUk53OmuQ <br>
APOLLO_GRAPH_ID=NAME_PROJECT <br>
APOLLO_GRAPH_VARIANT=current <br>
APOLLO_SCHEMA_REPORTING=true <br>
VUE_APP_GRAPHQL_HTTP=http://HOST/api/ <br>

# CELERY
CELERY_BROKER=redis://redis:6379/0 <br>
CELERY_BACKEND=redis://redis:6379/0 <br>
FLOWER_PORT=8888 <br>