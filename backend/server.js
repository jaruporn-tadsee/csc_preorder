require('rootpath')();
const express = require('express');
const app = express();
const cors = require('cors');
const bodyParser = require('body-parser');
const swagger = require('swagger-ui-express');
const yaml = require('yamljs');

const errorHandler = require('middleware/error-handler');
const swaggerDocument = yaml.load('./swagger.yaml');

app.use('/docs', swagger.serve, swagger.setup(swaggerDocument));

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cors());

// global error handler
app.use(errorHandler);

const port = process.env.NODE_ENV === 'production' ? (process.env.PORT || 80) : 4000;
app.listen(port, () => console.log('Server listening on port ' + port));