# Shopping Cart Web Application

## Stack
- **Frontend:** React.js + TypeScript (Vite)
- **Backend:** Node.js + Express (TypeScript)
- **Database:** PostgreSQL (Docker, persistent volumes)
- **Authentication:** JWT
- **Orchestration:** Docker Compose
- **Codespaces:** Compatible, with port forwarding

## Services
- Frontend: http://localhost:3000
- Backend API: http://localhost:5000
- PostgreSQL: localhost:5432 (user: devuser, pass: devpass, db: shoppingdb)

## Development
- `docker-compose up --build` to start all services
- Frontend code: `/` (root)
- Backend code: `/backend`
- Database seed: `/db/init.sql`

## API Endpoints
- `/api/products` - Product listing
- `/api/cart` - Cart management
- `/api/orders` - Order management
- `/api/users` - User management & auth

## Notes
- Ports 3000 (frontend) and 5000 (backend) are exposed for Codespaces port forwarding.
- Database data persists via Docker volume `pgdata`.
- Update `.env` files as needed for secrets.

# React + TypeScript + Vite

This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react) uses [Babel](https://babeljs.io/) for Fast Refresh
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react-swc) uses [SWC](https://swc.rs/) for Fast Refresh

## Expanding the ESLint configuration

If you are developing a production application, we recommend updating the configuration to enable type-aware lint rules:

```js
export default tseslint.config({
  extends: [
    // Remove ...tseslint.configs.recommended and replace with this
    ...tseslint.configs.recommendedTypeChecked,
    // Alternatively, use this for stricter rules
    ...tseslint.configs.strictTypeChecked,
    // Optionally, add this for stylistic rules
    ...tseslint.configs.stylisticTypeChecked,
  ],
  languageOptions: {
    // other options...
    parserOptions: {
      project: ['./tsconfig.node.json', './tsconfig.app.json'],
      tsconfigRootDir: import.meta.dirname,
    },
  },
})
```

You can also install [eslint-plugin-react-x](https://github.com/Rel1cx/eslint-react/tree/main/packages/plugins/eslint-plugin-react-x) and [eslint-plugin-react-dom](https://github.com/Rel1cx/eslint-react/tree/main/packages/plugins/eslint-plugin-react-dom) for React-specific lint rules:

```js
// eslint.config.js
import reactX from 'eslint-plugin-react-x'
import reactDom from 'eslint-plugin-react-dom'

export default tseslint.config({
  plugins: {
    // Add the react-x and react-dom plugins
    'react-x': reactX,
    'react-dom': reactDom,
  },
  rules: {
    // other rules...
    // Enable its recommended typescript rules
    ...reactX.configs['recommended-typescript'].rules,
    ...reactDom.configs.recommended.rules,
  },
})
```
