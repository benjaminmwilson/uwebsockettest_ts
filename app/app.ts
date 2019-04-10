import uWS from 'uWebSockets.js';
const port = 9001;

const app = uWS.App({ })
    .get('/*', (res, req) => {
        res.writeHeader('Content-Type', 'application/json');
        res.end(JSON.stringify({ message: 'Hello World!' }));
    })
    .listen(port, () => {
        console.log('Listening to port ' + port);
    });
