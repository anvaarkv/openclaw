import http from "node:http";

const PORT = process.env.NODE_PORT || 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "application/json" });

  const response = {
    message: "🚀 Hello from Node 24 running in Docker!",
    method: req.method,
    url: req.url,
    time: new Date().toISOString(),
  };

  res.end(JSON.stringify(response, null, 2));
});

server.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
