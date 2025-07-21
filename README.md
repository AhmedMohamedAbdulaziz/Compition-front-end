# Veented Construction Website

A professional, responsive construction company website built with HTML and Bootstrap 5.

## 🚀 Quick Start

### Option 1: Direct Download & Open
1. Download the `index.html` file
2. Double-click the file to open it in your default web browser
3. That's it! The website is ready to use.

### Option 2: Web Server Setup (Recommended for Production)

#### Using a Local Web Server:

**Python (if you have Python installed):**
```bash
# Navigate to the folder containing index.html
cd /path/to/your/website/folder

# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000

# Open browser to: http://localhost:8000
```

**Node.js (if you have Node.js installed):**
```bash
# Install live-server globally
npm install -g live-server

# Navigate to website folder
cd /path/to/your/website/folder

# Start server
live-server

# Browser will automatically open
```

**PHP (if you have PHP installed):**
```bash
# Navigate to website folder
cd /path/to/your/website/folder

# Start PHP server
php -S localhost:8000

# Open browser to: http://localhost:8000
```

## 📁 File Structure

```
website/
├── index.html          # Main website file
└── README.md          # This file
```

## 🌐 Features

- **Fully Responsive Design** - Works on desktop, tablet, and mobile
- **Modern UI/UX** - Professional construction industry design
- **Bootstrap 5** - Latest Bootstrap framework
- **Interactive Elements** - Smooth scrolling, hover effects, form validation
- **SEO Optimized** - Proper HTML structure and meta tags
- **Fast Loading** - Optimized code and CDN resources

## 📱 Sections Included

1. **Navigation** - Fixed top navigation with smooth scrolling
2. **Hero Section** - Eye-catching banner with call-to-action
3. **Services** - 6 professional service cards
4. **Statistics** - Company achievements and numbers
5. **About** - Company information and benefits
6. **Projects** - Featured project gallery
7. **Testimonials** - Client reviews and feedback
8. **Contact** - Contact form and company information
9. **Footer** - Social links and copyright

## 🛠️ Customization

### Changing Company Information:
1. Open `index.html` in any text editor
2. Search for "Veented Construction" and replace with your company name
3. Update contact information in the contact section
4. Modify services, testimonials, and other content as needed

### Changing Colors:
Find the CSS `:root` section and modify these variables:
```css
:root {
    --primary-color: #2c3e50;      /* Dark blue-gray */
    --secondary-color: #e74c3c;    /* Red */
    --accent-color: #f39c12;       /* Orange */
    --text-dark: #2c3e50;          /* Dark text */
    --text-light: #7f8c8d;         /* Light text */
    --bg-light: #f8f9fa;           /* Light background */
}
```

### Adding Images:
Replace the placeholder image areas with actual images:
1. Create an `images/` folder
2. Add your images to this folder
3. Replace the placeholder `<div>` elements with `<img>` tags

Example:
```html
<!-- Replace this -->
<div style="height: 250px; background: #e9ecef; display: flex; align-items: center; justify-content: center;">
    <i class="bi bi-image" style="font-size: 3rem; color: #adb5bd;"></i>
</div>

<!-- With this -->
<img src="images/your-image.jpg" alt="Description" class="img-fluid">
```

## 🌍 Deployment Options

### 1. GitHub Pages (Free)
1. Create a GitHub repository
2. Upload `index.html` to the repository
3. Go to Settings > Pages
4. Select source branch (usually `main`)
5. Your site will be available at `https://yourusername.github.io/repository-name`

### 2. Netlify (Free)
1. Go to [netlify.com](https://netlify.com)
2. Drag and drop your website folder
3. Get instant live URL

### 3. Vercel (Free)
1. Go to [vercel.com](https://vercel.com)
2. Import your project
3. Deploy with one click

### 4. Traditional Web Hosting
1. Purchase hosting from any provider (GoDaddy, Bluehost, SiteGround, etc.)
2. Upload `index.html` via FTP or hosting panel
3. Your site will be live at your domain

## 🔧 Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Internet Explorer 11+

## 📞 Support

For customization help or questions:
1. Check the code comments in `index.html`
2. Refer to [Bootstrap documentation](https://getbootstrap.com/docs/5.3/)
3. Search for HTML/CSS tutorials online

## 📄 License

This template is free to use for personal and commercial projects. No attribution required.

## 🎨 Technologies Used

- HTML5
- CSS3
- Bootstrap 5.3
- Bootstrap Icons
- Google Fonts (Inter)
- Vanilla JavaScript

---

**Ready to build your construction business online!** 🏗️