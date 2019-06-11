module.exports = {
  apps: [{
    name: "app",
    script: "./dist/src/server.js",
    env: {
      NODE_ENV: "production",
    },
  }]
}