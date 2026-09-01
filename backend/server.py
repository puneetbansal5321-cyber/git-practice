from http.server import BaseHTTPRequestHandler, HTTPServer

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        message = b"Hello from Backend Container!"

        self.send_response(200)
        self.send_header("Content-type", "text/plain")
        self.end_headers()

        self.wfile.write(message)

server = HTTPServer(("0.0.0.0", 5000), Handler)

print("Backend server running on port 5000")

server.serve_forever()
