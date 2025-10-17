# Start from the official Playwright image
FROM mcr.microsoft.com/playwright:v1.47.0-jammy

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install project dependencies
RUN npm ci

# Copy the rest of your application code
COPY . .

# Set default command (optional)
CMD ["npx", "playwright", "test"]