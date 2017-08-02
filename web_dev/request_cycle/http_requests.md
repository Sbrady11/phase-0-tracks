1.) Top 5 according to globo.tech-

5 types, 1xx (informational), 2xx (success), 3xx (redirection), 4xx (client error), 5xx (server error).

404 Not Found- requested resource is no longer available, most likely caused by incorrect domain names, or the link is no longer 'active'.

403 Forbidden- Another client side error code, not a 401 (meaning unauthorized), but instead meaning that your computer fails the check against a master white list of machines that "can access the system".

500 Internal Server Error- Server side issue, catchall. Doesn't specify the correct cause, just letting the user know that there is an issue on the host server.

503 Service Unavailable- Server side, means the server is currently unavailable to be accessed, yet may just be in the process of restarting. Sounds like an incomplete connection to me.

504 Gateway Timeout- Server side, does what it sounds like. "[the] proxy sderver needs to communicate with a secondary web server... and access to that server has timed out."

2.) A GET request is "used to retrieve remote data", while a POST request updates or inserts remote data. POST is the more general request, letting you do anything.

3.) (BONUS) Cookies are a way to store user information or "state info". Mostly used for login information these days. It passes as a header in HTTP, and can potentially expire (cool! didnt know that!)



