const express = require('express');
const path = require('path');
const app = express();

// Serve static files from the build output folder (adjust if needed)
app.use(express.static(path.join(__dirname, 'reactapp')));

// Fallback: serve your main HTML file for all routes
app.get('*', (req, res) => {
    res.sendFile(path.join(__dirname, 'reactapp', 'my-index.ejs'));
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
