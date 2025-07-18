---
layout: default
title: Tiation GitHub Pages Theme
---

<button class="theme-toggle" onclick="toggleTheme()">
  <span id="theme-icon">🌙</span> <span id="theme-text">Dark</span>
</button>

<div class="particles" id="particles"></div>

<nav class="fun-menu">
  <div class="menu-container">
    <a href="#features" class="menu-item active">🚀 Features</a>
    <a href="#quick-start" class="menu-item">⚡ Quick Start</a>
    <a href="#configuration" class="menu-item">⚙️ Config</a>
    <a href="#examples" class="menu-item">💡 Examples</a>
    <a href="#support" class="menu-item">🆘 Support</a>
  </div>
</nav>

<div class="hero-section">
  <div class="hero-content">
    <h1 class="glitch" data-text="Tiation GitHub Pages Theme">🚀 Tiation GitHub Pages Theme</h1>
    <p class="hero-subtitle">⚡ Lightning-fast Jekyll theme that turns boring documentation into stunning experiences</p>
    <div class="hero-buttons">
      <a href="#features" class="btn btn-primary pulse">🔥 Explore Features</a>
      <a href="#quick-start" class="btn btn-secondary">⚡ Quick Start</a>
    </div>
  </div>
  <div class="hero-animation">
    <div class="floating-icons">
      <div class="icon">🎨</div>
      <div class="icon">⚡</div>
      <div class="icon">🚀</div>
      <div class="icon">✨</div>
    </div>
    <!-- Cute whale mascot -->
    <div class="whale-mascot" onclick="whaleClick()">
      <img src="docs/images/cute-whale.svg" alt="Cute whale mascot" class="whale-image" id="whale-img">
      <div class="whale-speech" id="whale-speech">Welcome to Tiation! 🌊</div>
    </div>
  </div>
</div>

<div class="screenshot-section">
  <h2>Live Preview</h2>
  <div class="screenshot-container">
    <img src="docs/images/theme-screenshot.jpg" alt="Tiation GitHub Pages Theme Screenshot" class="theme-screenshot">
    <div class="screenshot-overlay">
      <div class="screenshot-text">
        <h3>🌈 Vibrant & Interactive</h3>
        <p>See the theme in action with cyan fluorescent gradients, smooth animations, and responsive design!</p>
      </div>
    </div>
  </div>
</div>

<style>
:root {
  --primary-cyan: #00f5ff;
  --secondary-cyan: #00bfff;
  --accent-pink: #ff00ff;
  --accent-lime: #00ff00;
  --dark-bg: #0a0a0a;
  --dark-surface: #1a1a1a;
  --light-bg: #ffffff;
  --light-surface: #f8f9fa;
  --text-light: #ffffff;
  --text-dark: #333333;
}

[data-theme="dark"] {
  --bg-color: var(--dark-bg);
  --surface-color: var(--dark-surface);
  --text-color: var(--text-light);
  --menu-bg: rgba(26, 26, 26, 0.95);
  --menu-text: var(--text-light);
}

[data-theme="light"] {
  --bg-color: var(--light-bg);
  --surface-color: var(--light-surface);
  --text-color: var(--text-dark);
  --menu-bg: rgba(255, 255, 255, 0.95);
  --menu-text: var(--text-dark);
}

body {
  background: var(--bg-color);
  color: var(--text-color);
  transition: all 0.3s ease;
}

.theme-toggle {
  position: fixed;
  top: 20px;
  right: 20px;
  z-index: 2000;
  background: linear-gradient(45deg, var(--primary-cyan), var(--secondary-cyan));
  border: none;
  border-radius: 50px;
  padding: 12px 20px;
  color: white;
  font-weight: bold;
  cursor: pointer;
  transition: all 0.3s ease;
  box-shadow: 0 4px 15px rgba(0, 245, 255, 0.4);
}

.theme-toggle:hover {
  transform: scale(1.05);
  box-shadow: 0 6px 20px rgba(0, 245, 255, 0.6);
}

.hero-section {
  background: linear-gradient(135deg, 
    var(--primary-cyan) 0%, 
    var(--secondary-cyan) 25%, 
    var(--accent-pink) 50%, 
    var(--accent-lime) 75%, 
    var(--primary-cyan) 100%);
  background-size: 400% 400%;
  animation: gradientShift 8s ease infinite;
  color: white;
  padding: 4rem 2rem;
  text-align: center;
  border-radius: 2rem;
  margin-bottom: 3rem;
  position: relative;
  overflow: hidden;
  box-shadow: 0 20px 40px rgba(0, 245, 255, 0.3);
}

@keyframes gradientShift {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}

.glitch {
  font-size: 3rem;
  font-weight: bold;
  text-transform: uppercase;
  position: relative;
  display: inline-block;
  animation: glitch 2s infinite, neonGlow 3s ease-in-out infinite;
  text-shadow: 0 0 10px rgba(0, 245, 255, 0.8);
}

@keyframes glitch {
  0%, 100% { transform: translate(0); }
  10% { transform: translate(-2px, -2px); }
  20% { transform: translate(2px, 2px); }
  30% { transform: translate(-2px, 2px); }
  40% { transform: translate(2px, -2px); }
  50% { transform: translate(-2px, -2px); }
  60% { transform: translate(2px, 2px); }
  70% { transform: translate(-2px, 2px); }
  80% { transform: translate(2px, -2px); }
  90% { transform: translate(-2px, -2px); }
}

@keyframes neonGlow {
  0%, 100% { text-shadow: 0 0 10px rgba(0, 245, 255, 0.8), 0 0 20px rgba(0, 245, 255, 0.6), 0 0 30px rgba(0, 245, 255, 0.4); }
  50% { text-shadow: 0 0 20px rgba(255, 0, 255, 0.8), 0 0 30px rgba(255, 0, 255, 0.6), 0 0 40px rgba(255, 0, 255, 0.4); }
}

.hero-subtitle {
  font-size: 1.5rem;
  margin: 1rem 0 2rem;
  opacity: 0.9;
  text-shadow: 0 0 5px rgba(0, 245, 255, 0.5);
}

.hero-buttons {
  display: flex;
  gap: 1rem;
  justify-content: center;
  flex-wrap: wrap;
}

.btn {
  display: inline-block;
  padding: 1rem 2rem;
  text-decoration: none;
  border-radius: 50px;
  font-weight: bold;
  transition: all 0.3s ease;
  border: none;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  text-transform: uppercase;
  letter-spacing: 1px;
}

.btn-primary {
  background: linear-gradient(45deg, var(--primary-cyan), var(--accent-pink));
  color: white;
  box-shadow: 0 0 20px rgba(0, 245, 255, 0.5);
}

.btn-secondary {
  background: transparent;
  color: white;
  border: 2px solid var(--primary-cyan);
  box-shadow: 0 0 20px rgba(0, 245, 255, 0.3);
}

.btn:hover {
  transform: translateY(-3px) scale(1.05);
  box-shadow: 0 15px 30px rgba(0, 245, 255, 0.6);
}

.btn-primary:hover {
  background: linear-gradient(45deg, var(--accent-lime), var(--primary-cyan));
}

.btn-secondary:hover {
  background: linear-gradient(45deg, var(--primary-cyan), var(--accent-pink));
  border-color: var(--accent-pink);
}

.pulse {
  animation: pulse 2s infinite;
}

@keyframes pulse {
  0% { box-shadow: 0 0 0 0 rgba(0, 245, 255, 0.7); }
  70% { box-shadow: 0 0 0 10px rgba(0, 245, 255, 0); }
  100% { box-shadow: 0 0 0 0 rgba(0, 245, 255, 0); }
}

.floating-icons {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  pointer-events: none;
}

.icon {
  position: absolute;
  font-size: 2rem;
  animation: float 6s ease-in-out infinite;
  filter: drop-shadow(0 0 10px rgba(0, 245, 255, 0.8));
}

.icon:nth-child(1) { top: 20%; left: 10%; animation-delay: 0s; }
.icon:nth-child(2) { top: 60%; left: 20%; animation-delay: 2s; }
.icon:nth-child(3) { top: 40%; right: 20%; animation-delay: 4s; }
.icon:nth-child(4) { top: 80%; right: 10%; animation-delay: 6s; }

@keyframes float {
  0%, 100% { transform: translateY(0px) rotate(0deg); }
  50% { transform: translateY(-20px) rotate(180deg); }
}

.fun-menu {
  position: sticky;
  top: 0;
  background: var(--menu-bg);
  backdrop-filter: blur(20px);
  border-bottom: 1px solid rgba(0, 245, 255, 0.3);
  z-index: 1000;
  padding: 1rem 0;
  margin-bottom: 2rem;
}

.menu-container {
  display: flex;
  justify-content: center;
  gap: 2rem;
  flex-wrap: wrap;
}

.menu-item {
  padding: 0.8rem 1.5rem;
  text-decoration: none;
  color: var(--menu-text);
  border-radius: 25px;
  transition: all 0.3s ease;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 1px;
  position: relative;
  border: 2px solid transparent;
}

.menu-item:hover, .menu-item.active {
  background: linear-gradient(45deg, var(--primary-cyan), var(--accent-pink));
  color: white;
  transform: translateY(-2px);
  box-shadow: 0 8px 25px rgba(0, 245, 255, 0.4);
  border-color: var(--primary-cyan);
}

.menu-item:before {
  content: '';
  position: absolute;
  top: -2px;
  left: -2px;
  right: -2px;
  bottom: -2px;
  background: linear-gradient(45deg, var(--primary-cyan), var(--accent-pink), var(--accent-lime));
  border-radius: 25px;
  z-index: -1;
  opacity: 0;
  transition: opacity 0.3s ease;
}

.menu-item:hover:before {
  opacity: 1;
}

.feature-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin: 3rem 0;
}

.feature-card {
  background: var(--surface-color);
  padding: 2rem;
  border-radius: 1rem;
  border: 2px solid transparent;
  transition: all 0.3s ease;
  position: relative;
  overflow: hidden;
}

.feature-card:hover {
  transform: translateY(-10px);
  border-color: var(--primary-cyan);
  box-shadow: 0 20px 40px rgba(0, 245, 255, 0.3);
}

.feature-card:before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(0, 245, 255, 0.1), transparent);
  transition: left 0.5s ease;
}

.feature-card:hover:before {
  left: 100%;
}

@media (max-width: 768px) {
  .glitch { font-size: 2rem; }
  .menu-container { gap: 1rem; }
  .feature-grid { grid-template-columns: 1fr; }
}

.particles {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  pointer-events: none;
  z-index: -1;
}

.particle {
  position: absolute;
  width: 2px;
  height: 2px;
  background: var(--primary-cyan);
  border-radius: 50%;
  animation: particle-float 20s linear infinite;
}

@keyframes particle-float {
  0% { transform: translateY(100vh) rotate(0deg); opacity: 0; }
  10% { opacity: 1; }
  90% { opacity: 1; }
  100% { transform: translateY(-100vh) rotate(360deg); opacity: 0; }
}

.screenshot-section {
  margin: 3rem 0;
  text-align: center;
}

.screenshot-section h2 {
  color: var(--text-color);
  font-size: 2.5rem;
  margin-bottom: 2rem;
  background: linear-gradient(45deg, var(--primary-cyan), var(--accent-pink));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  text-shadow: none;
}

.screenshot-container {
  position: relative;
  display: inline-block;
  border-radius: 1rem;
  overflow: hidden;
  box-shadow: 0 20px 40px rgba(0, 245, 255, 0.3);
  transition: all 0.3s ease;
}

.screenshot-container:hover {
  transform: scale(1.02);
  box-shadow: 0 25px 50px rgba(0, 245, 255, 0.5);
}

.theme-screenshot {
  width: 100%;
  max-width: 800px;
  height: auto;
  border-radius: 1rem;
  display: block;
}

.screenshot-overlay {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: linear-gradient(135deg, 
    rgba(0, 245, 255, 0.1) 0%, 
    rgba(255, 0, 255, 0.1) 50%, 
    rgba(0, 255, 0, 0.1) 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  opacity: 0;
  transition: opacity 0.3s ease;
}

.screenshot-container:hover .screenshot-overlay {
  opacity: 1;
}

.screenshot-text {
  text-align: center;
  color: white;
  text-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
  padding: 2rem;
  background: rgba(0, 0, 0, 0.7);
  border-radius: 1rem;
  backdrop-filter: blur(10px);
}

.screenshot-text h3 {
  font-size: 2rem;
  margin-bottom: 1rem;
  color: white;
  text-shadow: 0 0 15px rgba(0, 245, 255, 0.8);
}

.screenshot-text p {
  font-size: 1.2rem;
  opacity: 0.9;
  color: white;
}

/* Fix text visibility issues */
h1, h2, h3, h4, h5, h6 {
  color: var(--text-color);
}

p, li, td, th {
  color: var(--text-color);
}

/* Ensure code blocks are readable */
code {
  background: var(--surface-color);
  color: var(--text-color);
  padding: 2px 4px;
  border-radius: 3px;
}

pre {
  background: var(--surface-color);
  color: var(--text-color);
  padding: 1rem;
  border-radius: 8px;
  border: 1px solid rgba(0, 245, 255, 0.3);
}

/* Fix blockquote visibility */
blockquote {
  color: var(--text-color);
  border-left: 4px solid var(--primary-cyan);
  padding-left: 1rem;
  margin: 1rem 0;
  background: var(--surface-color);
  border-radius: 0 8px 8px 0;
}

/* Fix table visibility */
table {
  background: var(--surface-color);
  color: var(--text-color);
  border-collapse: collapse;
  width: 100%;
  margin: 1rem 0;
  border-radius: 8px;
  overflow: hidden;
}

th, td {
  padding: 0.8rem;
  text-align: left;
  border-bottom: 1px solid rgba(0, 245, 255, 0.3);
}

th {
  background: linear-gradient(45deg, var(--primary-cyan), var(--accent-pink));
  color: white;
  font-weight: bold;
}

/* Fix link colors */
a {
  color: var(--primary-cyan);
  text-decoration: none;
  transition: all 0.3s ease;
}

a:hover {
  color: var(--accent-pink);
  text-shadow: 0 0 5px rgba(0, 245, 255, 0.5);
}

/* Fix list item colors */
ul li, ol li {
  color: var(--text-color);
  margin-bottom: 0.5rem;
}

/* Fix strong/bold text */
strong, b {
  color: var(--text-color);
  font-weight: bold;
}

/* Fix emphasis text */
em, i {
  color: var(--text-color);
  font-style: italic;
}

/* Whale mascot styles */
.whale-mascot {
  position: absolute;
  top: 50%;
  right: 5%;
  transform: translateY(-50%);
  z-index: 10;
  pointer-events: none;
}

.whale-image {
  width: 200px;
  height: 150px;
  opacity: 0.9;
  animation: whaleFloat 4s ease-in-out infinite, whaleGlow 3s ease-in-out infinite alternate;
  transition: all 0.3s ease;
  filter: drop-shadow(0 5px 15px rgba(0, 245, 255, 0.4));
}

@keyframes whaleFloat {
  0%, 100% { 
    transform: translateY(-50%) rotate(0deg) scale(1);
  }
  25% { 
    transform: translateY(-60%) rotate(2deg) scale(1.05);
  }
  50% { 
    transform: translateY(-40%) rotate(0deg) scale(1);
  }
  75% { 
    transform: translateY(-55%) rotate(-2deg) scale(1.05);
  }
}

@keyframes whaleGlow {
  0% { 
    filter: drop-shadow(0 5px 15px rgba(0, 245, 255, 0.4)) drop-shadow(0 0 20px rgba(74, 144, 226, 0.3));
  }
  100% { 
    filter: drop-shadow(0 8px 25px rgba(0, 245, 255, 0.8)) drop-shadow(0 0 30px rgba(74, 144, 226, 0.6));
  }
}

/* Whale interaction on hover */
.hero-section:hover .whale-image {
  animation: whaleExcited 1s ease-in-out infinite, whaleGlow 3s ease-in-out infinite alternate;
  transform: translateY(-50%) scale(1.1);
}

@keyframes whaleExcited {
  0%, 100% { 
    transform: translateY(-50%) scale(1.1) rotate(0deg);
  }
  25% { 
    transform: translateY(-55%) scale(1.15) rotate(5deg);
  }
  50% { 
    transform: translateY(-45%) scale(1.1) rotate(0deg);
  }
  75% { 
    transform: translateY(-55%) scale(1.15) rotate(-5deg);
  }
}

/* Responsive whale */
@media (max-width: 768px) {
  .whale-mascot {
    right: 2%;
    top: 60%;
  }
  
  .whale-image {
    width: 120px;
    height: 90px;
  }
}

@media (max-width: 480px) {
  .whale-mascot {
    display: none; /* Hide on very small screens */
  }
}

/* Fun whale tooltip */
.whale-mascot:before {
  content: "Click me! 🐳";
  position: absolute;
  top: -40px;
  left: 50%;
  transform: translateX(-50%);
  background: linear-gradient(45deg, var(--primary-cyan), var(--accent-pink));
  color: white;
  padding: 8px 12px;
  border-radius: 20px;
  font-size: 12px;
  font-weight: bold;
  opacity: 0;
  pointer-events: none;
  animation: tooltipBounce 2s ease-in-out infinite;
  box-shadow: 0 4px 15px rgba(0, 245, 255, 0.4);
}

.whale-mascot:hover:before {
  opacity: 1;
  animation: tooltipBounce 0.5s ease-in-out infinite;
}

@keyframes tooltipBounce {
  0%, 100% { transform: translateX(-50%) translateY(0px); }
  50% { transform: translateX(-50%) translateY(-5px); }
}

/* Whale speech bubble */
.whale-speech {
  position: absolute;
  top: -80px;
  left: 50%;
  transform: translateX(-50%);
  background: white;
  color: var(--text-dark);
  padding: 15px 20px;
  border-radius: 20px;
  font-size: 14px;
  font-weight: 500;
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
  opacity: 0;
  pointer-events: none;
  transition: all 0.3s ease;
  z-index: 100;
  max-width: 200px;
  text-align: center;
  line-height: 1.4;
}

.whale-speech:after {
  content: '';
  position: absolute;
  bottom: -10px;
  left: 50%;
  transform: translateX(-50%);
  width: 0;
  height: 0;
  border-left: 10px solid transparent;
  border-right: 10px solid transparent;
  border-top: 10px solid white;
}

.whale-speech.show {
  opacity: 1;
  animation: speechBubble 3s ease-in-out;
}

@keyframes speechBubble {
  0%, 100% { transform: translateX(-50%) scale(1); }
  10% { transform: translateX(-50%) scale(1.1); }
  20% { transform: translateX(-50%) scale(1); }
}

/* Splash effect styles */
.splash-effect {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  pointer-events: none;
  z-index: 5;
}

.splash-particle {
  position: absolute;
  width: 6px;
  height: 6px;
  background: linear-gradient(45deg, var(--primary-cyan), var(--secondary-cyan));
  border-radius: 50%;
  animation: splashParticle 1s ease-out forwards;
  box-shadow: 0 0 10px rgba(0, 245, 255, 0.8);
}

@keyframes splashParticle {
  0% {
    transform: translateY(0) scale(1);
    opacity: 1;
  }
  50% {
    transform: translateY(-30px) scale(1.2);
    opacity: 0.8;
  }
  100% {
    transform: translateY(-60px) scale(0.5);
    opacity: 0;
  }
}

.splash-particle:nth-child(1) { transform: rotate(0deg) translateX(20px); }
.splash-particle:nth-child(2) { transform: rotate(45deg) translateX(20px); }
.splash-particle:nth-child(3) { transform: rotate(90deg) translateX(20px); }
.splash-particle:nth-child(4) { transform: rotate(135deg) translateX(20px); }
.splash-particle:nth-child(5) { transform: rotate(180deg) translateX(20px); }
.splash-particle:nth-child(6) { transform: rotate(225deg) translateX(20px); }
.splash-particle:nth-child(7) { transform: rotate(270deg) translateX(20px); }
.splash-particle:nth-child(8) { transform: rotate(315deg) translateX(20px); }

</style>

## Features

- **🚀 Quick Setup**: Transform your README.md into a professional GitHub Pages site
- **🎨 Clean Design**: Modern, visually appealing styles optimized for technical documentation
- **📱 Responsive**: Works perfectly on desktop, tablet, and mobile devices
- **🔧 Customizable**: Easy to customize colors, fonts, and layout
- **⚡ Fast Loading**: Optimized for performance and speed
- **🎯 SEO Optimized**: Built-in SEO features for better search visibility

## Quick Start

1. **Enable GitHub Pages** in your repository settings
2. **Create `_config.yml`** in your repository root:
   ```yaml
   remote_theme: tiation/tiation-github-pages-theme
   ```
3. **That's it!** Your site will be available at `https://yourusername.github.io/yourrepository`

## Configuration

### Basic Configuration

```yaml
# _config.yml
remote_theme: tiation/tiation-github-pages-theme
title: Your Project Name
description: Your project description
author:
  name: Your Name
  email: tiatheone@protonmail.com
```

### Advanced Configuration

```yaml
# _config.yml
remote_theme: tiation/tiation-github-pages-theme
title: Your Project Name
description: Your project description
lang: en-US
bg_color: auto  # dark, light, or auto
theme_color: azure  # red, blue, green, purple, etc.

# SEO
keywords: "your, project, keywords"
gtag: G-XXXXXXXXXX  # Google Analytics

# Navigation
header_pages:
  - index.md
  - about.md
  - docs.md
```

## Available Theme Colors

- `red` - Bold red accent
- `blue` - Professional blue
- `green` - Natural green
- `purple` - Creative purple
- `orange` - Energetic orange
- `azure` - Modern azure (default)
- `grey` - Neutral grey

## Customization

### Custom CSS

Create `assets/css/custom.css` in your repository:

```css
/* Custom styles */
.site-header {
  background-color: #your-color;
}

.site-title {
  color: #your-title-color;
}
```

### Custom Favicon

Place your favicon at `assets/img/favicon.png`

### Ignoring Content

To hide content from the site but keep it in README.md:

```html
<p class="ignore">
  This content will not appear on the GitHub Pages site
</p>
```

## Examples

### Basic Project Site

```markdown
# My Awesome Project

This is a great project that does amazing things.

## Features

- Feature 1
- Feature 2
- Feature 3

## Installation

```bash
npm install my-awesome-project
```

## Usage

```javascript
const project = require('my-awesome-project');
project.doSomething();
```
```

### Documentation Site

```markdown
# API Documentation

## Getting Started

Welcome to our API documentation.

## Authentication

All API requests require authentication.

## Endpoints

### GET /api/users

Returns a list of users.
```

## Best Practices

1. **Use Clear Headers**: Structure your content with H1, H2, H3 headers
2. **Add Code Examples**: Include syntax-highlighted code blocks
3. **Include Images**: Add screenshots and diagrams to illustrate concepts
4. **Write Good Descriptions**: Use the description field in _config.yml
5. **Test Locally**: Use Jekyll locally to test before publishing

## Support

- **Issues**: [GitHub Issues](https://github.com/tiation/tiation-github-pages-theme/issues)
- **Documentation**: [Theme Documentation](https://github.com/tiation/tiation-github-pages-theme/wiki)
- **Examples**: [Live Examples](https://github.com/tiation/tiation-github-pages-theme/examples)

## Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for details.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<div align="center">
  Made with ❤️ by <a href="https://github.com/tiation">Tiation</a>
</div>

<script>
// Theme toggle functionality
function toggleTheme() {
  const body = document.body;
  const themeIcon = document.getElementById('theme-icon');
  const themeText = document.getElementById('theme-text');
  
  const currentTheme = body.getAttribute('data-theme') || 'light';
  const newTheme = currentTheme === 'light' ? 'dark' : 'light';
  
  body.setAttribute('data-theme', newTheme);
  localStorage.setItem('theme', newTheme);
  
  if (newTheme === 'dark') {
    themeIcon.textContent = '☀️';
    themeText.textContent = 'Light';
  } else {
    themeIcon.textContent = '🌙';
    themeText.textContent = 'Dark';
  }
}

// Initialize theme on page load
document.addEventListener('DOMContentLoaded', function() {
  const savedTheme = localStorage.getItem('theme') || 'light';
  document.body.setAttribute('data-theme', savedTheme);
  
  const themeIcon = document.getElementById('theme-icon');
  const themeText = document.getElementById('theme-text');
  
  if (savedTheme === 'dark') {
    themeIcon.textContent = '☀️';
    themeText.textContent = 'Light';
  } else {
    themeIcon.textContent = '🌙';
    themeText.textContent = 'Dark';
  }
  
  // Create floating particles
  createParticles();
  
  // Smooth scrolling for menu items
  const menuItems = document.querySelectorAll('.menu-item');
  menuItems.forEach(item => {
    item.addEventListener('click', function(e) {
      e.preventDefault();
      const targetId = this.getAttribute('href').substring(1);
      const targetElement = document.getElementById(targetId);
      
      if (targetElement) {
        targetElement.scrollIntoView({ behavior: 'smooth' });
      }
      
      // Update active state
      menuItems.forEach(nav => nav.classList.remove('active'));
      this.classList.add('active');
    });
  });
  
  // Intersection Observer for menu highlighting
  const sections = document.querySelectorAll('h2[id]');
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        const id = entry.target.getAttribute('id');
        menuItems.forEach(nav => nav.classList.remove('active'));
        const activeNav = document.querySelector(`[href="#${id}"]`);
        if (activeNav) activeNav.classList.add('active');
      }
    });
  }, { threshold: 0.5 });
  
  sections.forEach(section => observer.observe(section));
  
  // Make whale clickable
  const whaleMascot = document.querySelector('.whale-mascot');
  if (whaleMascot) {
    whaleMascot.style.pointerEvents = 'auto';
    whaleMascot.style.cursor = 'pointer';
  }
});

// Whale click functionality
let whaleClickCount = 0;
const whaleMessages = [
  'Welcome to Tiation! 🌊',
  'Hope you like our theme! 🎨',
  'I\'m a friendly whale! 🐳',
  'This theme is whale-y awesome! 🚀',
  'Thanks for clicking me! ✨',
  'Ready to dive into coding? 💻',
  'Whale, whale, whale... what do we have here? 😄',
  'You\'re really whale-come here! 🎉',
  'I sea you like interactive elements! 👀',
  'This is fin-tastic! 🌟'
];

function whaleClick() {
  const speechBubble = document.getElementById('whale-speech');
  const whaleImg = document.getElementById('whale-img');
  
  // Get random message
  const randomMessage = whaleMessages[Math.floor(Math.random() * whaleMessages.length)];
  
  // Update message
  speechBubble.textContent = randomMessage;
  
  // Show speech bubble
  speechBubble.classList.add('show');
  
  // Add excited animation to whale
  whaleImg.style.animation = 'whaleExcited 0.6s ease-in-out, whaleGlow 3s ease-in-out infinite alternate';
  
  // Create splash effect
  createSplashEffect();
  
  // Hide speech bubble after 3 seconds
  setTimeout(() => {
    speechBubble.classList.remove('show');
    whaleImg.style.animation = 'whaleFloat 4s ease-in-out infinite, whaleGlow 3s ease-in-out infinite alternate';
  }, 3000);
  
  // Increment click count
  whaleClickCount++;
  
  // Special message after 5 clicks
  if (whaleClickCount === 5) {
    setTimeout(() => {
      speechBubble.textContent = 'You really love clicking me! 😍';
      speechBubble.classList.add('show');
      
      setTimeout(() => {
        speechBubble.classList.remove('show');
      }, 2000);
    }, 3500);
  }
  
  // Reset click count after 10 clicks
  if (whaleClickCount >= 10) {
    whaleClickCount = 0;
  }
}

// Create splash effect when whale is clicked
function createSplashEffect() {
  const whale = document.querySelector('.whale-mascot');
  const splashContainer = document.createElement('div');
  splashContainer.className = 'splash-effect';
  
  // Create multiple splash particles
  for (let i = 0; i < 8; i++) {
    const splash = document.createElement('div');
    splash.className = 'splash-particle';
    splash.style.left = Math.random() * 100 + '%';
    splash.style.animationDelay = Math.random() * 0.2 + 's';
    splashContainer.appendChild(splash);
  }
  
  whale.appendChild(splashContainer);
  
  // Remove splash effect after animation
  setTimeout(() => {
    whale.removeChild(splashContainer);
  }, 1000);
}

// Create floating particles
function createParticles() {
  const particlesContainer = document.getElementById('particles');
  const particleCount = 50;
  
  for (let i = 0; i < particleCount; i++) {
    const particle = document.createElement('div');
    particle.className = 'particle';
    particle.style.left = Math.random() * 100 + '%';
    particle.style.animationDelay = Math.random() * 20 + 's';
    particle.style.animationDuration = (Math.random() * 10 + 10) + 's';
    particlesContainer.appendChild(particle);
  }
}

// Add some interactive effects
document.addEventListener('mousemove', function(e) {
  const particles = document.querySelectorAll('.particle');
  const mouseX = e.clientX / window.innerWidth;
  const mouseY = e.clientY / window.innerHeight;
  
  particles.forEach((particle, index) => {
    const speed = (index % 5 + 1) * 0.1;
    const x = (mouseX - 0.5) * speed * 20;
    const y = (mouseY - 0.5) * speed * 20;
    particle.style.transform = `translate(${x}px, ${y}px)`;
  });
});
</script>
