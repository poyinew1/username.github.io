# MBDA Monitoring System

A comprehensive road safety incident tracking and monitoring system with mobile app-like design for the Metro Bataan Development Authority.

## 🚀 Features

### Mobile App-Like Design
- **Bottom Navigation Bar**: App-style navigation on mobile devices
- **Floating Action Button**: Quick access to add incidents
- **Touch-Optimized**: Native app-like touch interactions
- **Card-Based Layouts**: Mobile-friendly card interfaces
- **Sticky Headers**: Glass-morphism headers with blur effects

### Core Functionality
- **Dashboard**: Real-time statistics and incident overview
- **Incident Management**: Report, track, and resolve road incidents
- **Map Tracking**: Live incident locations on interactive map
- **User Management**: Role-based access control (Admin, Supervisor, Patrol, Viewer)
- **Account System**: Registration and authentication
- **Notifications**: Real-time alerts and updates

### Responsive Design
- **Desktop**: Full sidebar navigation
- **Tablet**: Hamburger menu with overlay
- **Mobile**: Bottom navigation bar with FAB
- **Automatic**: Seamless transitions between layouts

## 📱 Mobile Features

- Bottom navigation with icons (Dashboard, Map, Incidents, Accounts, Logout)
- Floating action button for quick incident reporting
- Touch-friendly interface with 44px minimum tap targets
- Card-based layouts instead of tables on mobile
- Smooth animations and micro-interactions
- iOS and Android optimized

## 🛠️ Technology Stack

- **Frontend**: Pure HTML, CSS, JavaScript
- **Maps**: Leaflet.js for interactive mapping
- **Storage**: LocalStorage for data persistence
- **Deployment**: Vercel for hosting
- **Version Control**: Git and GitHub

## 📋 Prerequisites

- Modern web browser (Chrome, Firefox, Safari, Edge)
- JavaScript enabled
- LocalStorage support

## 🚀 Quick Start

### Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/mbda-monitoring-system.git
   cd mbda-monitoring-system
   ```

2. **Start local server**
   ```bash
   # Windows
   start-server.bat
   
   # Or with Python
   python -m http.server 8080
   ```

3. **Open in browser**
   ```
   http://localhost:8080
   ```

### Default Credentials

- **Username**: `admin`
- **Password**: `admin123`

## 📁 Project Structure

```
MBDAWEB/
├── index.html              # Main application
├── login.html              # Login page
├── register.html           # Registration page
├── vercel.json             # Vercel configuration
├── .gitignore              # Git ignore rules
├── README.md               # This file
├── DEPLOYMENT_GUIDE.md     # Deployment instructions
├── start-server.bat        # Local development server
├── MBDA LOGO.jpg          # Main logo
└── Bataan Province (SEAL) 2026.png  # Province seal
```

## 🌐 Deployment

### Vercel Deployment

1. **Push to GitHub**
   ```bash
   git add .
   git commit -m "Update MBDA Monitoring System"
   git push origin main
   ```

2. **Deploy to Vercel**
   - Go to [Vercel](https://vercel.com)
   - Import your GitHub repository
   - Set Output Directory to `./`
   - Click Deploy

### Custom Domain

After deployment, configure custom domain in Vercel settings.

## 👥 User Roles

- **Administrator**: Full access to all features and user management
- **Supervisor**: Can manage incidents and teams
- **Patrol Officer**: Can report and respond to incidents
- **Viewer**: Read-only access to incident data

## 📊 Features Overview

### Dashboard
- Real-time statistics cards
- Active incident tracking
- Response time metrics
- Recent incidents table

### Incident Management
- Add new incidents with GPS coordinates
- Upload incident photos
- Track incident status
- Assign severity levels
- Monitor response times

### Map Tracking
- Live incident locations
- Color-coded severity markers
- Interactive map controls
- Location search and filtering

### Account Management
- User registration and authentication
- Role-based permissions
- Account status management
- Activity tracking

## 🔧 Configuration

### Vercel Settings
- **Framework Preset**: Other
- **Root Directory**: `./`
- **Build Command**: (empty)
- **Output Directory**: `./`

### Mobile Detection
The application automatically detects screen size and adjusts layout:
- Desktop (>1024px): Full sidebar
- Tablet (768-1024px): Hamburger menu
- Mobile (<480px): Bottom navigation

## 🐛 Troubleshooting

### 404 Error on Vercel
- Set Output Directory to `./` in Vercel settings
- Redeploy the project
- Verify `index.html` is in repository root

### Mobile Features Not Working
- Check browser console for JavaScript errors
- Ensure LocalStorage is enabled
- Test by resizing browser window

### Data Not Persisting
- Check LocalStorage is enabled
- Clear browser cache and cookies
- Verify browser supports LocalStorage

## 📱 Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## 🔒 Security

- Client-side authentication
- LocalStorage data persistence
- Role-based access control
- No sensitive data in code

## 📈 Performance

- Optimized CSS and JavaScript
- Minimal external dependencies
- Fast loading times
- Mobile-optimized assets

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

## 📄 License

This project is developed for the Metro Bataan Development Authority.

## 📞 Support

For technical support:
- Email: support@mbda.euzch
- Documentation: See DEPLOYMENT_GUIDE.md

## 🎯 Roadmap

- [ ] Backend API integration
- [ ] Real-time notifications
- [ ] Mobile app (React Native)
- [ ] Advanced analytics
- [ ] Integration with emergency services

---

**Developed for Metro Bataan Development Authority**  
*Patrolling Bataan's roads and highways 24/7, ensuring safety and responding to incidents to keep our communities secure.*