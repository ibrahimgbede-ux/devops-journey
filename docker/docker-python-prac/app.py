from http.server import HTTPServer, BaseHTTPRequestHandler
class MyHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.end_headers()
        self.wfile.write(b"I am an aspiring DevOps engineer and this is the 4th version of my Docker CD app!")
        
server = HTTPServer(("0.0.0.0", 8000), MyHandler)
print("Server running on port 8000", flush=True)
server.serve_forever()
