// Entry point for Express backend
import express from 'express';
import cors from 'cors';
import bodyParser from 'body-parser';

const app = express();
app.use(cors());
app.use(bodyParser.json());

// Placeholder routes
app.get('/', (req, res) => res.send('API Running'));

// TODO: Add routes for /api/products, /api/cart, /api/orders, /api/users

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
