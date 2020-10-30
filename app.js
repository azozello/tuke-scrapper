const http = require('http')


const PORT = 8080


const onRequest = (request, response) => {
  response.end('<h1>Hello from the other side!</h1>')
}


const server = http.createServer(onRequest)

server.listen(PORT, () => console.log('Server started'))
