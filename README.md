# RentEase — Modern Full-Stack Rental House Vacancy Platform

**RentEase** is a modern, responsive digital rental platform connecting **Property Owners** who have vacant houses with **Tenants** looking for rental homes. Built as a full-stack Node.js + React SPA with zero-brokerage transparency, interactive Leaflet maps, multi-photo galleries, and an automated rental-request acceptance workflow.

---

## 🌟 Key Features

### 👤 Tenant Experience
- **Interactive Search & Multi-Facet Filtering**: Filter houses in real-time by City (Hyderabad, Bengaluru, Visakhapatnam, Vijayawada, Pune, Chennai), Rent range slider (₹5,000–₹100,000/mo), Bedrooms (1 BHK, 2 BHK, 3 BHK, 4+ BHK), Property Type (Apartment, Independent House, Villa, PG), Furnishing, Parking, and Amenities.
- **Detailed Property View**:
  - High-resolution image gallery with thumbnails
  - Key specification pills (Rent, Deposit, BHK, Baths, Sqft, Furnishing, Parking, Available Date)
  - Complete amenities checklist with icons
  - House rules & tenant preferences
  - Approximate Neighborhood Location Map with privacy radius (Leaflet / OpenStreetMap)
  - Verified Owner profile card (without revealing raw personal phone/email publicly)
  - Safety & Anti-Fraud Warnings
- **1-Click Rental Request**: Send request with move-in date, occupant count, occupation, and personalized message.
- **Tenant Dashboard**:
  - **My Requests**: Live status tracking table (`Pending`, `Accepted`, `Rejected`, `Closed`).
  - **Saved Favorites**: Grid of bookmarked properties.
  - **Profile & Preferences**: Set budget and preferred BHK to power smart recommendations.
- **Smart Matching ("Recommended for You")**: AI-style recommendations matching the tenant's profile.

### 🔑 Property Owner Experience
- **List & Manage Rental Properties**:
  - Full property creation wizard with multi-image URLs, location coordinates, pricing, specifications, amenities, and house rules.
  - Mark houses as `Available` or `Rented`.
  - Edit or delete listings anytime.
- **Rental Request Acceptance Workflow**:
  - Receive real-time tenant applications with tenant profile, occupation, move-in date, and message.
  - **Accept**: Request becomes `Accepted`, Property status automatically transitions to `Rented`, all other pending requests for the same house automatically transition to `Closed`, and the property is immediately hidden from public available searches.
  - **Reject**: Request becomes `Rejected`, Property remains `Available`, and tenant is notified.
- **Owner Dashboard**: Telemetry KPI cards (Total Properties, Available, Rented, Pending Requests).

### 🛡️ Admin Moderation Panel
- Platform KPI Telemetry (Total Users, Owners, Tenants, Properties, Requests, Reports).
- **User Moderation**: View all platform accounts and suspend/unblock accounts with 1-click.
- **Listings Moderation**: Feature or unlist properties across the platform.
- **Safety & Anti-Fraud Reports**: Review reported properties/users and resolve or dismiss flags.

---

## ⚡ Quick Demo Accounts

RentEase includes a **Demo Quick-Switcher Bar** at the top of the screen to test all user journeys instantly without manual registration:

| Role | Name | Email | Password | Pre-loaded Context |
| :--- | :--- | :--- | :--- | :--- |
| **Tenant** | Rahul Sharma | `rahul@rentease.com` | `password123` | Software Engineer in Hyderabad seeking 2 BHK |
| **Tenant** | Neha Verma | `neha@rentease.com` | `password123` | Designer in Bengaluru seeking 1 BHK |
| **Property Owner** | Priya Patel | `priya@rentease.com` | `password123` | 4 Properties in Hyderabad & Bengaluru |
| **Property Owner** | Suresh Kumar | `suresh@rentease.com` | `password123` | 4 Properties in Visakhapatnam & Vijayawada |
| **Super Admin** | Vikram Adityan | `admin@rentease.com` | `password123` | Platform-wide moderation & fraud safety |

---

## 🚀 Developing & Running with Node.js

### 1. Development Mode (Vite + Node Backend with Hot Reload)
Run frontend with Vite HMR dev server and Node API backend:

```bash
# Start backend API (Node.js on port 3000)
npm run dev:server

# Start frontend development server (Vite on port 5173 with proxy to backend)
npm run dev:client

# Or on Windows using 1-click dev launcher:
start-dev.bat
```

Open your browser at:
👉 **`http://localhost:5173`**

---

### 2. Production Build & Server
Compile the React SPA and serve both API and frontend from Node.js:

```bash
# Build React bundle to dist/
npm run build

# Start Node server
npm start

# Or on Windows:
start.bat
```

Open your browser at:
👉 **`http://localhost:3000`**

---

## 🏗️ Architecture & Tech Stack

- **Frontend**: React 18 SPA + Vite (Fast HMR & Bundler), Leaflet Maps, Context State Management (`src/`)
- **Backend**: Node.js HTTP Server (`server/server.js`)
- **Database**: SQLite with `node:sqlite` (`server/db.js`, `rentease.db`)
- **Authentication**: JWT & PBKDF2 Password Hashing (`server/auth.js`)
- **Seed Data**: 12+ verified houses across Indian tech hubs (`server/seedData.js`)

---

## 📋 REST API Reference

| Endpoint | Method | Description |
| :--- | :--- | :--- |
| `/api/auth/register` | `POST` | Register Tenant or Owner |
| `/api/auth/login` | `POST` | Authenticate user with JWT |
| `/api/auth/demo-login` | `POST` | Instant 1-click demo user login |
| `/api/auth/me` | `GET` | Get current user profile & counters |
| `/api/auth/profile` | `PUT` | Update profile preferences & budget |
| `/api/properties` | `GET` | Filter & search available properties |
| `/api/properties` | `POST` | Create a new property listing (Owners) |
| `/api/properties/:id` | `GET` | Get full property details, gallery & owner info |
| `/api/properties/:id` | `PUT` | Update property details |
| `/api/properties/:id/favorite`| `POST` | Toggle property favorite |
| `/api/properties/recommended` | `GET` | Smart recommendations matching tenant |
| `/api/requests` | `GET` | Get tenant's requests or owner's incoming requests |
| `/api/requests` | `POST` | Send rental request (Tenants) |
| `/api/requests/:id/status` | `PUT` | Accept or Reject request (Owners) |
| `/api/notifications` | `GET` | Get user in-app notifications |
| `/api/reports` | `POST` | Submit fraud/safety report |
| `/api/admin/stats` | `GET` | Get platform-wide KPIs (Admin) |
| `/api/admin/users/:id/toggle-block` | `PUT` | Suspend or unblock user (Admin) |
