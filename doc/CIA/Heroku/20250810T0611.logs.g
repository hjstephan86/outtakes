2025-08-10T04:05:28.273983+00:00 heroku[router]: at=info method=GET path="/api/Schlachter 1951/books" host=www.123-bibel.de request_id=bf6476e1-ab1b-20f1-b4b8-dcb74b959e3d fwd="61.8.139.252" dyno=web.1 connect=0ms service=74ms status=200 bytes=2256 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:05:30.160501+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/Schlachter%201951/Richter/chapters HTTP/1.1" 200 OK
2025-08-10T04:05:30.160918+00:00 heroku[router]: at=info method=GET path="/api/Schlachter 1951/Richter/chapters" host=www.123-bibel.de request_id=268d64ba-6461-e3f6-411c-8292c7eb7c41 fwd="61.8.139.252" dyno=web.1 connect=0ms service=9ms status=200 bytes=621 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:05:32.140505+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/Schlachter%201951/Richter/8 HTTP/1.1" 200 OK
2025-08-10T04:05:32.140884+00:00 heroku[router]: at=info method=GET path="/api/Schlachter 1951/Richter/8" host=www.123-bibel.de request_id=8ccbf8cb-feee-758d-cf68-23ddb10586ab fwd="61.8.139.252" dyno=web.1 connect=0ms service=31ms status=200 bytes=5570 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:05:38.767737+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /strong.html HTTP/1.1" 200 OK
2025-08-10T04:05:38.768738+00:00 heroku[router]: at=info method=GET path="/strong.html" host=www.123-bibel.de request_id=1b20995c-c17d-76bd-021a-b3e2d6b02f09 fwd="61.8.139.252" dyno=web.1 connect=0ms service=1ms status=200 bytes=57510 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:05:38.997786+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/Luther%201912/books HTTP/1.1" 200 OK
2025-08-10T04:05:38.998089+00:00 heroku[router]: at=info method=GET path="/api/Luther 1912/books" host=www.123-bibel.de request_id=0c9f6e9a-6108-56c8-1fb2-f882787678fb fwd="61.8.139.252" dyno=web.1 connect=0ms service=1ms status=200 bytes=2252 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:05:45.233646+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/Luther%201912/Ruth/chapters HTTP/1.1" 200 OK
2025-08-10T04:05:45.233947+00:00 heroku[router]: at=info method=GET path="/api/Luther 1912/Ruth/chapters" host=www.123-bibel.de request_id=7a107b3e-2cde-2d0f-034d-e3a8678b584e fwd="61.8.139.252" dyno=web.1 connect=0ms service=6ms status=200 bytes=160 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:05:47.806795+00:00 heroku[web.1]: Process running mem=903M(176.1%)
2025-08-10T04:05:47.807951+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:05:49.159565+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/Luther%201912/Ruth/4 HTTP/1.1" 200 OK
2025-08-10T04:05:49.159986+00:00 heroku[router]: at=info method=GET path="/api/Luther 1912/Ruth/4" host=www.123-bibel.de request_id=a9aac042-690b-1fe7-49a3-f554c4c41797 fwd="61.8.139.252" dyno=web.1 connect=0ms service=11ms status=200 bytes=8560 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:06:04.644534+00:00 app[web.1]: INFO:     Waiting for child process [10]
2025-08-10T04:06:04.656085+00:00 app[web.1]: INFO:     Child process [10] died
2025-08-10T04:06:05.731213+00:00 app[web.1]: INFO:     Started server process [21]
2025-08-10T04:06:05.731256+00:00 app[web.1]: INFO:     Waiting for application startup.
2025-08-10T04:06:06.160345+00:00 app[web.1]: Loaded Schlachter 1951 with 66 books
2025-08-10T04:06:06.547913+00:00 app[web.1]: Loaded Chinese Union with 66 books
2025-08-10T04:06:06.991533+00:00 app[web.1]: Loaded Elberfelder 1905 with 66 books
2025-08-10T04:06:07.422680+00:00 app[web.1]: Loaded World English Bible with 66 books
2025-08-10T04:06:07.846108+00:00 app[web.1]: Loaded Synodal with 66 books
2025-08-10T04:06:09.264297+00:00 heroku[web.1]: Process running mem=742M(144.0%)
2025-08-10T04:06:09.266156+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:06:09.993539+00:00 app[web.1]: Loaded Luther 1912 Strong with 66 books
2025-08-10T04:06:12.306883+00:00 app[web.1]: Loaded concordance with 14176 entries
2025-08-10T04:06:12.318154+00:00 app[web.1]: INFO:     Application startup complete.
2025-08-10T04:06:13.637050+00:00 heroku[router]: at=error code=H13 desc="Connection closed without response" method=GET path="/api/concordance" host=www.123-bibel.de request_id=5c594461-6acc-e0d9-a254-7445c37806dd fwd="61.8.139.252" dyno=web.1 connect=0ms service=24183ms status=503 bytes=567 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:06:13.738127+00:00 app[web.1]: INFO:     Waiting for child process [16]
2025-08-10T04:06:13.746383+00:00 app[web.1]: INFO:     Child process [16] died
2025-08-10T04:06:14.861288+00:00 app[web.1]: INFO:     Started server process [24]
2025-08-10T04:06:14.861337+00:00 app[web.1]: INFO:     Waiting for application startup.
2025-08-10T04:06:15.287932+00:00 app[web.1]: Loaded Schlachter 1951 with 66 books
2025-08-10T04:06:15.671826+00:00 app[web.1]: Loaded Chinese Union with 66 books
2025-08-10T04:06:16.088599+00:00 app[web.1]: Loaded Elberfelder 1905 with 66 books
2025-08-10T04:06:16.543123+00:00 app[web.1]: Loaded World English Bible with 66 books
2025-08-10T04:06:16.986321+00:00 app[web.1]: Loaded Synodal with 66 books
2025-08-10T04:06:19.176049+00:00 app[web.1]: Loaded Luther 1912 Strong with 66 books
2025-08-10T04:06:24.112963+00:00 app[web.1]: Loaded concordance with 14176 entries
2025-08-10T04:06:24.123537+00:00 app[web.1]: INFO:     Application startup complete.
2025-08-10T04:06:30.100589+00:00 heroku[web.1]: Process running mem=861M(168.1%)
2025-08-10T04:06:30.102143+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:06:39.548746+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/Luther%201912/Ruth/4 HTTP/1.1" 200 OK
2025-08-10T04:06:39.549760+00:00 heroku[router]: at=info method=GET path="/api/Luther 1912/Ruth/4" host=www.123-bibel.de request_id=00a4e2ec-84c6-0c74-ed87-1746af7a6c7d fwd="61.8.139.252" dyno=web.1 connect=0ms service=22ms status=200 bytes=8560 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:06:46.121803+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/concordance HTTP/1.1" 200 OK
2025-08-10T04:06:50.844355+00:00 heroku[router]: at=info method=GET path="/api/concordance" host=www.123-bibel.de request_id=b67ea395-0abe-f18d-718d-ca0550f5334e fwd="61.8.139.252" dyno=web.1 connect=0ms service=11067ms status=200 bytes=28054625 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:06:51.211549+00:00 heroku[web.1]: Process running mem=882M(172.2%)
2025-08-10T04:06:51.213676+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:07:11.993413+00:00 heroku[web.1]: Process running mem=882M(172.2%)
2025-08-10T04:07:11.995351+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:07:33.003256+00:00 heroku[web.1]: Process running mem=882M(172.2%)
2025-08-10T04:07:33.005029+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:07:53.921473+00:00 heroku[web.1]: Process running mem=882M(172.2%)
2025-08-10T04:07:53.922967+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:08:15.257367+00:00 heroku[web.1]: Process running mem=882M(172.2%)
2025-08-10T04:08:15.258765+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:08:35.817656+00:00 heroku[web.1]: Process running mem=882M(172.2%)
2025-08-10T04:08:35.819545+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:08:57.205722+00:00 heroku[web.1]: Process running mem=882M(172.2%)
2025-08-10T04:08:57.207156+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:09:18.145281+00:00 heroku[web.1]: Process running mem=882M(172.2%)
2025-08-10T04:09:18.147333+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:09:39.174455+00:00 heroku[web.1]: Process running mem=882M(172.2%)
2025-08-10T04:09:39.175888+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:09:59.988038+00:00 heroku[web.1]: Process running mem=882M(172.3%)
2025-08-10T04:09:59.989811+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:10:16.470778+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /search.html HTTP/1.1" 200 OK
2025-08-10T04:10:16.471420+00:00 heroku[router]: at=info method=GET path="/search.html" host=www.123-bibel.de request_id=23f35c66-0706-771e-9709-44789eebd0a2 fwd="61.8.139.252" dyno=web.1 connect=0ms service=40ms status=200 bytes=26162 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:10:16.593625+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/translations HTTP/1.1" 200 OK
2025-08-10T04:10:16.593914+00:00 heroku[router]: at=info method=GET path="/api/translations" host=www.123-bibel.de request_id=dfec6e25-dbbb-59ed-b749-411274fe90b1 fwd="61.8.139.252" dyno=web.1 connect=0ms service=3ms status=200 bytes=117 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:10:16.659105+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/translations HTTP/1.1" 200 OK
2025-08-10T04:10:16.659354+00:00 heroku[router]: at=info method=GET path="/api/translations" host=www.123-bibel.de request_id=71930bf1-05a2-d093-a763-cedc88309b20 fwd="61.8.139.252" dyno=web.1 connect=0ms service=1ms status=200 bytes=117 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:10:16.815663+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/World%20English%20Bible/books HTTP/1.1" 200 OK
2025-08-10T04:10:16.816063+00:00 heroku[router]: at=info method=GET path="/api/World English Bible/books" host=www.123-bibel.de request_id=ea9ceb6c-cca1-da0a-ab19-2efe88083b7f fwd="61.8.139.252" dyno=web.1 connect=0ms service=2ms status=200 bytes=2258 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:10:21.072917+00:00 heroku[web.1]: Process running mem=883M(172.3%)
2025-08-10T04:10:21.074422+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:10:25.811726+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /parallel.html HTTP/1.1" 200 OK
2025-08-10T04:10:25.812511+00:00 heroku[router]: at=info method=GET path="/parallel.html" host=www.123-bibel.de request_id=74f3449c-d1e0-caae-e1cc-5c10f433c186 fwd="61.8.139.252" dyno=web.1 connect=0ms service=6ms status=200 bytes=24113 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:10:26.006651+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/translations HTTP/1.1" 200 OK
2025-08-10T04:10:26.006970+00:00 heroku[router]: at=info method=GET path="/api/translations" host=www.123-bibel.de request_id=c9f4b50f-ca53-bbab-aab8-91c7a27cb6d3 fwd="61.8.139.252" dyno=web.1 connect=0ms service=1ms status=200 bytes=117 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:10:26.066869+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/World%20English%20Bible/books HTTP/1.1" 200 OK
2025-08-10T04:10:26.067136+00:00 heroku[router]: at=info method=GET path="/api/World English Bible/books" host=www.123-bibel.de request_id=7b9b55bb-30c7-ac34-cf52-504daa2aecd7 fwd="61.8.139.252" dyno=web.1 connect=0ms service=1ms status=200 bytes=2258 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:10:35.282423+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/World%20English%20Bible/Josua/chapters HTTP/1.1" 200 OK
2025-08-10T04:10:35.282829+00:00 heroku[router]: at=info method=GET path="/api/World English Bible/Josua/chapters" host=www.123-bibel.de request_id=e4826430-02e9-fc7f-9437-7b6708b7ca58 fwd="61.8.139.252" dyno=web.1 connect=0ms service=1ms status=200 bytes=703 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:10:41.986403+00:00 heroku[web.1]: Process running mem=883M(172.3%)
2025-08-10T04:10:41.987639+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:10:42.410501+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/Luther%201912/Josua/8 HTTP/1.1" 200 OK
2025-08-10T04:10:42.411108+00:00 heroku[router]: at=info method=GET path="/api/Luther 1912/Josua/8" host=www.123-bibel.de request_id=1623da5b-bacd-c462-dcb9-ac4e40088748 fwd="61.8.139.252" dyno=web.1 connect=0ms service=9ms status=200 bytes=16011 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:10:42.834588+00:00 app[web.1]: INFO:     61.8.139.252:0 - "GET /api/Synodal/Josua/8 HTTP/1.1" 200 OK
2025-08-10T04:10:42.840422+00:00 heroku[router]: at=info method=GET path="/api/Synodal/Josua/8" host=www.123-bibel.de request_id=fa8ef3a3-9b07-b5a5-eb66-a39f4f2d936a fwd="61.8.139.252" dyno=web.1 connect=0ms service=439ms status=200 bytes=9262 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-10T04:11:03.445785+00:00 heroku[web.1]: Process running mem=884M(172.6%)
2025-08-10T04:11:03.448290+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:11:23.922593+00:00 heroku[web.1]: Process running mem=884M(172.6%)
2025-08-10T04:11:23.924218+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:11:45.425372+00:00 heroku[web.1]: Process running mem=884M(172.6%)
2025-08-10T04:11:45.427381+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-10T04:12:05.789927+00:00 heroku[web.1]: Process running mem=884M(172.6%)
2025-08-10T04:12:05.792553+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
