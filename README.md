# MBDA Monitoring System

A comprehensive web-based monitoring system for incident management, account management, and real-time tracking.

## Features

- **Dashboard**: Monitor active incidents and safety issues
- **Map Tracker**: Real-time incident tracking with Bataan Province map
- **Incident Management**: Report, track, and manage incidents
- **Account Management**: User and role-based access control
- **Mobile Support**: Responsive design for mobile devices
- **Real-time Notifications**: Stay updated with incident alerts

## Technologies Used

- **Frontend**: HTML5, CSS3, JavaScript (Vanilla)
- **Mapping**: Leaflet.js with OpenStreetMap
- **Storage**: LocalStorage for client-side data persistence
- **Deployment**: Vercel (static hosting)

## Project Structure

```
MBDA WEBSITE/
├── index.html              # Main dashboard
├── login.html              # Authentication page
├── register.html           # User registration
├── vercel.json            # Vercel configuration
├── package.json           # Project metadata
├── .gitignore             # Git ignore rules
├── README.md              # Project documentation
├── Bataan Province (SEAL) 2026.png
└── MBDA LOGO.jpg
```

## Getting Started

### Local Development

1. Clone the repository
2. Navigate to the project directory
3. Install dependencies (optional):
   ```bash
   npm install
   ```
4. Start the development server:
   ```bash
   npm run dev
   ```
5. Open http://localhost:3000 in your browser

### Direct File Access

Simply open `index.html` in your web browser. No build process required.

## Deployment

### Vercel Deployment

1. Push this project to GitHub
2. Go to [Vercel New Project](https://vercel.com/new)
3. Import your GitHub repository
4. Vercel will automatically detect it as a static site
5. Click "Deploy"

The site will be live in seconds with a URL like: `https://mbda-monitoring-system.vercel.app`

### Manual Deployment

1. Create a Vercel account
2. Install Vercel CLI:
   ```bash
   npm i -g vercel
   ```
3. Deploy:
   ```bash
   vercel
   ```

## Default Credentials

- **Username**: admin
- **Password**: admin123
- **Email**: admin@mbda.gov.ph

## Features Overview

### Dashboard
- View active incidents
- Quick incident reporting
- Real-time statistics
- Notification center

### Incident Management
- Report new incidents with location tracking
- Attach images and evidence
- Track incident status (Open → Investigating → Resolved)
- Response time monitoring

### Account Management
- User registration and authentication
- Role-based access control (Admin, Viewer, etc.)
- Mobile number integration
- Account status management

### Map Tracker
- Bataan Province focused map
- Real-time incident markers
- Location-based incident filtering
- Interactive map controls

## Configuration

### Map Coordinates
The map is centered on Bataan Province:
- **Latitude**: 14.7925
- **Longitude**: 120.4662

### Storage
All data is stored in the browser's LocalStorage for this demo version. For production, consider:
- Backend database integration
- Cloud storage for images
- API authentication

## Browser Support

- Chrome (recommended)
- Firefox
- Safari
- Edge
- Mobile browsers

## Mobile Access

For local mobile testing:
1. Enable Windows Mobile Hotspot
2. Connect mobile device to hotspot
3. Access via local IP address

## Security Notes

This is a demonstration version. For production use:
- Implement proper backend authentication
- Use secure database storage
- Add HTTPS/SSL certificates
- Implement rate limiting
- Add CSRF protection
- Regular security audits

## License

MIT License - See LICENSE file for details

## Support

For issues or questions, please contact the MBDA development team.

---

**MBDA Monitoring System** - Making incident management efficient and accessible.
