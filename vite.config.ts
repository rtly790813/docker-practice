import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    // needed for the Docker Container port mapping to work，這樣 Vite 伺服器會在 0.0.0.0 地址上運行，允許外部訪問
    host: true, 
  },
})
