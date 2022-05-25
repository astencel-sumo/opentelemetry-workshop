# The Coffee Bar

Italian Bar with delicious coffee and cakes. Built using multiple technologies like NodeJS, Ruby, Python and .Net Core. 
It's a simple application where you can order coffee or some cakes (`the-coffee-bar-frontend`). On order request is sent to 
`the-coffee-bar` service. Based on data, order is passed to `the-coffee-machine` which is preparing coffee using 
`machine-svc`, `coffee-svc` and `water-svc`. All money transactions are handled by `the-cashdesk` service which is 
communicating with `calculator-svc` and `postgres` database.

All services are instrumented using [OpenTelemetry](https://opentelemetry.io/) solution.

## Prerequisites
* [Docker](https://docs.docker.com/get-docker/)
* [Docker Compose](https://docs.docker.com/compose/install/)
* [Sumo Logic Free Trial Account](https://www.sumologic.com/)
* [Sumo Logic HTTP Traces URL](https://help.sumologic.com/Traces/01Getting_Started_with_Transaction_Tracing/HTTP_Traces_Source#create-an-http-traces-source)

## Deployment configuration
1. Create free trial Sumo Logic account. Visit https://www.sumologic.com/ and click on `Start free trial`.
2. Login to Sumo Logic and create your `HTTP Traces Source URL`. You will send there all generated OpenTelemetry traces. 
Please follow [the guide](https://help.sumologic.com/Traces/01Getting_Started_with_Transaction_Tracing/HTTP_Traces_Source#create-an-http-traces-source).
3. Copy `HTTP Traces Source URL` and set it as environment variable `SUMOLOGIC_HTTP_TRACES_URL`
    ```bash
    export SUMOLOGIC_HTTP_TRACES_URL=https://your-sumo-logic-http-traces-source-url-here
    ```
4. Run `docker-compose up`.
5. Open browser and navigate to `http://localhost:3000`.
6. Go to Sumo Logic Web App and find your order in [Traces view](https://help.sumologic.com/Traces/02Working_with_Tracing_data/03View_and_investigate_traces).
