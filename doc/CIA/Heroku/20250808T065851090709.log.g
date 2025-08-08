2025-08-08T06:58:51.090709+00:00 app[web.1]: Loaded concordance with 14176 entries
2025-08-08T06:58:51.185566+00:00 app[web.1]: Loaded Luther 1912 Strong with 66 books
2025-08-08T06:58:51.287721+00:00 app[web.1]: INFO:     Application startup complete.
2025-08-08T06:58:51.593828+00:00 heroku[web.1]: State changed from starting to up
2025-08-08T06:58:53.547493+00:00 app[web.1]: INFO:     45.134.142.196:0 - "GET / HTTP/1.1" 200 OK
2025-08-08T06:58:53.550240+00:00 heroku[router]: at=info method=GET path="/" host=www.123-bibel.de request_id=407b828f-ec16-bfef-cff3-25e749e57945 fwd="45.134.142.196" dyno=web.1 connect=7001ms service=459ms status=200 bytes=15225 protocol=http1.1 tls=true tls_version=tls1.3
2025-08-08T06:58:55.979211+00:00 app[web.1]: Loaded concordance with 14176 entries
2025-08-08T06:58:55.986633+00:00 app[web.1]: INFO:     Application startup complete.
2025-08-08T06:59:08.589963+00:00 heroku[web.1]: Process running mem=870M(170.1%)
2025-08-08T06:59:08.592108+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T06:59:10.459738+00:00 heroku[router]: at=info method=GET path="/static/favicon.ico" host=www.123-bibel.de request_id=cdd1eda6-56a2-9872-ef16-69a5ad74ca3f fwd="185.195.232.163" dyno=web.1 connect=0ms service=438ms status=200 bytes=15406 protocol=http1.1 tls=true tls_version=tls1.3
2025-08-08T06:59:10.454637+00:00 app[web.1]: INFO:     185.195.232.163:0 - "GET /static/favicon.ico HTTP/1.1" 200 OK
2025-08-08T06:59:25.322727+00:00 heroku[router]: at=info method=GET path="/" host=www.123-bibel.de request_id=51d7b5ba-b65e-7a9f-b996-b55b2dd6028a fwd="84.183.36.173" dyno=web.1 connect=0ms service=49ms status=200 bytes=15225 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T06:59:25.321360+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET / HTTP/1.1" 200 OK
2025-08-08T06:59:25.631315+00:00 heroku[router]: at=info method=GET path="/static/favicon.ico" host=www.123-bibel.de request_id=d5dc97a1-df29-38c9-04d8-441a5c51ec9f fwd="84.183.36.173" dyno=web.1 connect=0ms service=70ms status=200 bytes=15406 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T06:59:25.630702+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /static/favicon.ico HTTP/1.1" 200 OK
2025-08-08T06:59:29.656954+00:00 heroku[web.1]: Process running mem=871M(170.3%)
2025-08-08T06:59:29.658448+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T06:59:50.478444+00:00 heroku[web.1]: Process running mem=871M(170.3%)
2025-08-08T06:59:50.480952+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T07:00:07.972370+00:00 heroku[router]: at=info method=GET path="/" host=www.123-bibel.de request_id=18ffaf9f-5206-216e-ad84-d2814a691687 fwd="84.183.36.173" dyno=web.1 connect=0ms service=1ms status=200 bytes=15225 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:00:08.007393+00:00 heroku[router]: at=info method=GET path="/css/style.css" host=www.123-bibel.de request_id=e4675f1d-a2c4-4b7a-d18c-0633f8c2bb5a fwd="84.183.36.173" dyno=web.1 connect=0ms service=36ms status=404 bytes=22 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:00:08.144698+00:00 heroku[router]: at=info method=GET path="/static/favicon.ico" host=www.123-bibel.de request_id=bae7bf2f-bec2-8fe5-b36e-a87c3a2a1a01 fwd="84.183.36.173" dyno=web.1 connect=0ms service=2ms status=200 bytes=15406 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:00:07.971727+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET / HTTP/1.1" 200 OK
2025-08-08T07:00:08.005826+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /css/style.css HTTP/1.1" 404 Not Found
2025-08-08T07:00:08.143613+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /static/favicon.ico HTTP/1.1" 200 OK
2025-08-08T07:00:11.744613+00:00 heroku[web.1]: Process running mem=871M(170.1%)
2025-08-08T07:00:11.747647+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T07:00:13.767484+00:00 heroku[router]: at=info method=GET path="/read.html" host=www.123-bibel.de request_id=77c184d7-55a7-118e-c3c3-18a64b8d85a6 fwd="84.183.36.173" dyno=web.1 connect=0ms service=6ms status=200 bytes=24111 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:00:13.865024+00:00 heroku[router]: at=info method=GET path="/api/translations" host=www.123-bibel.de request_id=7383f5c9-2239-5214-6d36-c24278b35b23 fwd="84.183.36.173" dyno=web.1 connect=0ms service=4ms status=200 bytes=116 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:00:13.766752+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /read.html HTTP/1.1" 200 OK
2025-08-08T07:00:13.864711+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /api/translations HTTP/1.1" 200 OK
2025-08-08T07:00:16.470875+00:00 heroku[router]: at=info method=GET path="/api/Schlachter 1951/books" host=www.123-bibel.de request_id=4b0adc25-f648-c9c5-0b09-537cc99a4b84 fwd="84.183.36.173" dyno=web.1 connect=0ms service=3ms status=200 bytes=2256 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:00:16.470566+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /api/Schlachter%201951/books HTTP/1.1" 200 OK
2025-08-08T07:00:17.593982+00:00 heroku[router]: at=info method=GET path="/read.html" host=www.123-bibel.de request_id=6bd82c51-0f9d-2d4e-4226-705fc8671969 fwd="66.249.81.71" dyno=web.1 connect=0ms service=1ms status=200 bytes=24111 protocol=http1.1 tls=true tls_version=tls1.3
2025-08-08T07:00:17.593634+00:00 app[web.1]: INFO:     66.249.81.71:0 - "GET /read.html HTTP/1.1" 200 OK
2025-08-08T07:00:17.856104+00:00 heroku[router]: at=info method=GET path="/api/Schlachter 1951/Richter/chapters" host=www.123-bibel.de request_id=125735d3-ca98-21f5-0df7-fe14c72f834f fwd="84.183.36.173" dyno=web.1 connect=0ms service=1ms status=200 bytes=621 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:00:17.871726+00:00 heroku[router]: at=info method=GET path="/read.html" host=www.123-bibel.de request_id=3112cdf7-fd69-61ed-e77d-a039a83f1c47 fwd="66.249.81.72" dyno=web.1 connect=0ms service=2ms status=200 bytes=24111 protocol=http1.1 tls=true tls_version=tls1.3
2025-08-08T07:00:18.063610+00:00 heroku[router]: at=info method=GET path="/read.html" host=www.123-bibel.de request_id=0b10378e-abc4-312b-78b3-cb87758962ff fwd="66.249.83.37" dyno=web.1 connect=0ms service=1ms status=200 bytes=24111 protocol=http1.1 tls=true tls_version=tls1.3
2025-08-08T07:00:17.855801+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /api/Schlachter%201951/Richter/chapters HTTP/1.1" 200 OK
2025-08-08T07:00:17.870483+00:00 app[web.1]: INFO:     66.249.81.72:0 - "GET /read.html HTTP/1.1" 200 OK
2025-08-08T07:00:18.063108+00:00 app[web.1]: INFO:     66.249.83.37:0 - "GET /read.html HTTP/1.1" 200 OK
2025-08-08T07:00:18.458386+00:00 heroku[router]: at=info method=GET path="/api/translations" host=www.123-bibel.de request_id=a1be5d8b-dd6c-7d5d-b3c5-662f0839d2f9 fwd="66.249.83.34" dyno=web.1 connect=0ms service=26ms status=200 bytes=116 protocol=http1.1 tls=true tls_version=tls1.3
2025-08-08T07:00:18.458004+00:00 app[web.1]: INFO:     66.249.83.34:0 - "GET /api/translations HTTP/1.1" 200 OK
2025-08-08T07:00:19.812308+00:00 heroku[router]: at=info method=GET path="/api/Schlachter 1951/Richter/9" host=www.123-bibel.de request_id=d09e8197-62fc-d910-3590-afc15bc4e492 fwd="84.183.36.173" dyno=web.1 connect=0ms service=10ms status=200 bytes=9273 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:00:19.811889+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /api/Schlachter%201951/Richter/9 HTTP/1.1" 200 OK
2025-08-08T07:00:21.586221+00:00 heroku[router]: at=info method=GET path="/api/Schlachter 1951/Richter/9" host=www.123-bibel.de request_id=3476e193-0d4e-a416-61af-e06b6a3c75ca fwd="84.183.36.173" dyno=web.1 connect=0ms service=1ms status=200 bytes=9273 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:00:21.585792+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /api/Schlachter%201951/Richter/9 HTTP/1.1" 200 OK
2025-08-08T07:00:25.627247+00:00 heroku[router]: at=info method=GET path="/strong.html" host=www.123-bibel.de request_id=b419b24f-3d15-c69f-6e9f-f2e262284227 fwd="84.183.36.173" dyno=web.1 connect=0ms service=13ms status=200 bytes=57507 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:00:25.750151+00:00 heroku[router]: at=info method=GET path="/api/Luther1912/books" host=www.123-bibel.de request_id=fe8224e6-4883-a6c3-cceb-dfd5e51a48b7 fwd="84.183.36.173" dyno=web.1 connect=0ms service=1ms status=200 bytes=2251 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:00:25.626199+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /strong.html HTTP/1.1" 200 OK
2025-08-08T07:00:25.749816+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /api/Luther1912/books HTTP/1.1" 200 OK
2025-08-08T07:00:32.844813+00:00 heroku[web.1]: Process running mem=871M(170.2%)
2025-08-08T07:00:32.846184+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T07:00:49.159526+00:00 heroku[router]: at=info method=GET path="/api/strong/Kezia/all" host=www.123-bibel.de request_id=329c36fd-069c-3413-8161-4993127f017f fwd="84.183.36.173" dyno=web.1 connect=0ms service=6681ms status=200 bytes=292 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:00:49.158925+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /api/strong/Kezia/all HTTP/1.1" 200 OK
2025-08-08T07:00:53.891824+00:00 heroku[web.1]: Process running mem=894M(174.6%)
2025-08-08T07:00:53.893515+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T07:01:02.479755+00:00 heroku[router]: at=info method=GET path="/api/Luther1912/Hiob/chapters" host=www.123-bibel.de request_id=02ebf2d5-0ecb-f0f1-c323-060c572bfdee fwd="84.183.36.173" dyno=web.1 connect=0ms service=3ms status=200 bytes=1179 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:01:02.537606+00:00 heroku[router]: at=info method=GET path="/api/Luther1912/Hiob/42" host=www.123-bibel.de request_id=c225a9b4-0037-6a99-dc52-ac8faec70015 fwd="84.183.36.173" dyno=web.1 connect=0ms service=10ms status=200 bytes=5781 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:01:02.479386+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /api/Luther1912/Hiob/chapters HTTP/1.1" 200 OK
2025-08-08T07:01:02.537296+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /api/Luther1912/Hiob/42 HTTP/1.1" 200 OK
2025-08-08T07:01:13.791685+00:00 app[web.1]: INFO:     84.183.36.173:0 - "GET /api/concordance HTTP/1.1" 200 OK
2025-08-08T07:01:14.997177+00:00 heroku[web.1]: Process running mem=939M(183.6%)
2025-08-08T07:01:14.999135+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T07:01:36.067121+00:00 heroku[web.1]: Process running mem=912M(178.2%)
2025-08-08T07:01:36.068561+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T07:01:40.849298+00:00 heroku[router]: at=info method=GET path="/api/concordance" host=www.123-bibel.de request_id=14fd60ac-2485-aed2-72fa-4e82122bbe7e fwd="84.183.36.173" dyno=web.1 connect=0ms service=38264ms status=200 bytes=28054625 protocol=http2.0 tls=true tls_version=tls1.3
2025-08-08T07:01:56.663569+00:00 heroku[web.1]: Process running mem=912M(178.2%)
2025-08-08T07:01:56.664875+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T07:02:18.033391+00:00 heroku[web.1]: Process running mem=912M(178.2%)
2025-08-08T07:02:18.034886+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T07:02:38.461802+00:00 heroku[web.1]: Process running mem=912M(178.2%)
2025-08-08T07:02:38.463407+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T07:02:44.822085+00:00 heroku[router]: at=info method=HEAD path="/" host=www.123-bibel.de request_id=cf49180a-a144-4daa-eb9c-0958926ced95 fwd="146.70.185.32" dyno=web.1 connect=0ms service=2ms status=405 bytes=0 protocol=http1.1 tls=true tls_version=tls1.3
2025-08-08T07:02:44.820915+00:00 app[web.1]: INFO:     146.70.185.32:0 - "HEAD / HTTP/1.1" 405 Method Not Allowed
2025-08-08T07:02:59.564051+00:00 heroku[web.1]: Process running mem=912M(178.2%)
2025-08-08T07:02:59.565827+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T07:03:20.731408+00:00 heroku[web.1]: Process running mem=912M(178.2%)
2025-08-08T07:03:20.733352+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T07:03:41.828540+00:00 heroku[web.1]: Process running mem=912M(178.2%)
2025-08-08T07:03:41.830499+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T07:04:02.667788+00:00 heroku[web.1]: Process running mem=912M(178.2%)
2025-08-08T07:04:02.669708+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T07:04:23.338755+00:00 heroku[web.1]: Process running mem=912M(178.2%)
2025-08-08T07:04:23.349757+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)
2025-08-08T07:04:44.713973+00:00 heroku[web.1]: Process running mem=912M(178.2%)
2025-08-08T07:04:44.717440+00:00 heroku[web.1]: Error R14 (Memory quota exceeded)

