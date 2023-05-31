#!/bin/bash

name=$1

mkdir $name
cd $name
git init .
npm init -y

npm install express typescript ts-node @types/node @types/express

tsc --init

touch .gitignore
touch index.ts
touch README.md

echo "import express from 'express';" >> index.ts
echo "const app = express();" >> index.ts
echo "app.get('/', (req, res) => {" >> index.ts
echo "  res.send('Hello World');" >> index.ts
echo "});" >> index.ts
echo "app.listen(3000, () => {" >> index.ts
echo "  console.log('Server running on port 3000');" >> index.ts
echo "});" >> index.ts

echo "node_modules" >> .gitignore

echo "# $name" >> README.md
echo "## Description" >> README.md
echo "To start running type in" >> README.md
echo "\`\`\`" >> README.md
echo "ts-node index.ts" >> README.md
echo "\`\`\`" >> README.md
