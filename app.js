import bodyParser from 'body-parser';
import { config } from 'dotenv';
import express from 'express';
config();

import eventRoutes from './routes/events.js';

const app = express();

app.use(bodyParser.json());

app.use(eventRoutes);

app.listen(process.env.PORT);
