const EventEmitter = require('events');

// Create class
class MyEmitter extends EventEmitter {};

// Int object
const myEmitter = new MyEmitter();

// Event lisdtener
myEmitter.on('event', () => console.log('Event Fired!'));

// Init event
myEmitter.emit('event');
myEmitter.emit('event');
myEmitter.emit('event');
myEmitter.emit('event');




