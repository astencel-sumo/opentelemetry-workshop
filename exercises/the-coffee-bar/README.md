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
* [Sumo Logic Installation Token](https://help.sumologic.com/Manage/Security/Installation_Tokens#manage%C2%A0installation%C2%A0tokens)

## Deployment configuration
1. Create free trial Sumo Logic account. Visit https://www.sumologic.com/ and click on `Start free trial`.
2. Login to Sumo Logic and create your `Install Token`. 
Please follow [the guide](https://help.sumologic.com/Manage/Security/Installation_Tokens#manage%C2%A0installation%C2%A0tokens).
3. Copy generated `Install Token` and set it as environment variable `SUMOLOGIC_TOKEN`
    ```bash
    export SUMOLOGIC_TOKEN=your-sumologic-token
    ```
4. Run `docker-compose up`.
5. Navigate to `http://localhost:3000` and make some order.
6. Go to Sumo Logic Web App and find your order in [Traces view](https://help.sumologic.com/Traces/02Working_with_Tracing_data/03View_and_investigate_traces).
7. View application logs in [Logs view](https://help.sumologic.com/05Search/Get-Started-with-Search/Search-Basics/About-Search-Basics) 
or drill down to the specific service log directly from `Trace view` [clicking on the span details](https://help.sumologic.com/Traces/02Working_with_Tracing_data/03View_and_investigate_traces#details-pane) and `Open logs tagged with ...`.
