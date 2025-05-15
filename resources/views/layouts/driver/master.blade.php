<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>beDriver - Ứng dụng tài xế</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Desktop Header */
        .desktop-header {
            display: none;
            background-color: white;
            border-bottom: 1px solid #e5e7eb;
            padding: 12px 24px;
            align-items: center;
            justify-content: space-between;
        }

        .desktop-logo {
            font-size: 20px;
            font-weight: 700;
            color: #2563eb;
        }

        .desktop-nav {
            display: flex;
            gap: 24px;
        }

        .desktop-nav-item {
            font-weight: 500;
            color: #6b7280;
            cursor: pointer;
        }

        .desktop-nav-item.active {
            color: #2563eb;
        }

        .desktop-user {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .desktop-balance {
            background-color: #f3f4f6;
            padding: 6px 12px;
            border-radius: 4px;
            font-weight: 500;
            font-size: 14px;
        }

        .desktop-profile {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .desktop-avatar {
            width: 32px;
            height: 32px;
            border-radius: 50%;
            overflow: hidden;
        }

        .desktop-avatar img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* Main Content */
        .main-content {
            flex: 1;
            display: flex;
            flex-direction: column;
            position: relative;
        }

        /* Desktop Layout */
        @media (min-width: 1024px) {
            .desktop-header {
                display: flex;
            }

            .main-content {
                flex-direction: row;
            }

            .bottom-nav {
                display: none;
            }

            .panel {
                display: none;
                width: 33.333%;
                border-left: 1px solid #e5e7eb;
                overflow-y: auto;
            }

            .map-container {
                width: 66.666%;
            }

            .map-container.full-width {
                width: 100%;
            }

            /* Hide mobile-specific controls on desktop */
            .status-bar, .balance-button {
                display: none;
            }

            /* Adjust map controls for desktop */
            .service-config {
                bottom: 24px;
                right: 24px;
            }

            .time-indicators {
                bottom: 24px;
                left: 24px;
                right: auto;
                width: auto;
            }

            .ride-options {
                bottom: 24px;
                left: 50%;
                transform: translateX(-50%);
                width: auto;
                min-width: 300px;
            }

            /* Detail panels should overlay on desktop too */
            .detail-panel {
                left: auto;
                width: 33.333%;
                border-left: 1px solid #e5e7eb;
            }
        }

        /* Map Container */
        .map-container {
            width: 100%;
            height: 100%;
            position: relative;
        }

        .map-container iframe {
            width: 100%;
            height: 100%;
            border: 0;
        }

        .status-bar {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            background-color: #f97316;
            color: white;
            padding: 4px 16px;
            text-align: center;
            z-index: 10;
        }

        .balance-button {
            position: absolute;
            top: 48px;
            left: 16px;
            right: 16px;
            background-color: rgba(31, 41, 55, 0.9);
            color: white;
            padding: 8px 16px;
            border-radius: 6px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 10;
        }

        .service-config {
            position: absolute;
            bottom: 80px;
            right: 16px;
            background-color: #2563eb;
            color: white;
            padding: 8px 16px;
            border-radius: 6px;
            z-index: 10;
        }

        .time-indicators {
            position: absolute;
            bottom: 80px;
            left: 16px;
            right: 16px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 10;
        }

        .time-indicator {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .time-icon {
            background-color: white;
            border-radius: 50%;
            width: 32px;
            height: 32px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .time-value {
            font-size: 12px;
            color: #4b5563;
        }

        .ride-options {
            position: absolute;
            bottom: 64px;
            left: 16px;
            right: 16px;
            background-color: white;
            border-radius: 6px;
            padding: 8px 16px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 10;
        }

        .scheduled-ride {
            background-color: #2563eb;
            color: white;
            padding: 4px 12px;
            border-radius: 4px;
            font-size: 14px;
        }

        .ride-type {
            display: flex;
            align-items: center;
            color: #2563eb;
            font-weight: 500;
        }

        .bottom-nav {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            background-color: #111827;
            color: #d1d5db;
            padding: 8px 0;
        }

        .nav-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            font-size: 12px;
        }

        .nav-item.active {
            color: #fbbf24;
        }

        .nav-icon {
            margin-bottom: 4px;
        }

        /* Detail Panel Styles */
        .detail-panel {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: white;
            z-index: 50;
            display: none;
            flex-direction: column;
            overflow-y: auto;
        }

        .detail-header {
            display: flex;
            align-items: center;
            padding: 16px;
            border-bottom: 1px solid #e5e7eb;
        }

        .back-button {
            margin-right: 16px;
        }

        .trip-detail-content {
            flex: 1;
            background-color: #f3f4f6;
            display: flex;
            flex-direction: column;
        }

        .trip-id-section {
            background-color: white;
            padding: 16px;
            border-bottom: 1px solid #e5e7eb;
        }

        .payment-section {
            background-color: white;
            padding: 16px;
            margin-top: 16px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .payment-method {
            display: flex;
            align-items: center;
        }

        .payment-icon {
            width: 32px;
            height: 32px;
            background-color: #e5e7eb;
            border-radius: 6px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 12px;
        }

        .payment-amount {
            font-size: 24px;
            font-weight: 700;
        }

        .cost-breakdown {
            background-color: white;
            padding: 16px;
            margin-top: 16px;
        }

        .cost-item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 16px;
        }

        .cost-item:last-child {
            margin-bottom: 0;
        }

        .locations-section {
            background-color: white;
            padding: 16px;
            margin-top: 16px;
        }

        .location-item {
            display: flex;
            margin-bottom: 16px;
        }

        .location-icon {
            width: 24px;
            height: 24px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 12px;
            margin-top: 4px;
        }

        .pickup-icon {
            background-color: #1f2937;
            color: white;
        }

        .dropoff-icon {
            background-color: #f59e0b;
            color: white;
        }

        .trip-metrics {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 16px;
            margin-top: 24px;
            text-align: center;
        }

        .metric-label {
            font-size: 10px;
            color: #6b7280;
            text-transform: uppercase;
        }

        .metric-value {
            font-weight: 500;
        }

        .support-button {
            margin: 16px;
            padding: 12px;
            background-color: white;
            border: 1px solid #d1d5db;
            border-radius: 6px;
            text-align: center;
            font-weight: 500;
        }

        .cancel-button {
            background-color: #d1d5db;
            border: none;
            border-radius: 6px;
            padding: 8px 24px;
            font-weight: 500;
            margin-top: 16px;
            display: block;
            width: 100px;
            margin: 16px auto;
        }

        /* Income Panel Styles */
        .panel-header {
            padding: 16px;
            border-bottom: 1px solid #e5e7eb;
        }

        .panel-title {
            font-size: 18px;
            font-weight: 500;
        }

        .tabs {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            border-bottom: 1px solid #e5e7eb;
        }

        .tab {
            padding: 12px;
            text-align: center;
            cursor: pointer;
        }

        .tab.active {
            border-bottom: 2px solid #f59e0b;
            font-weight: 500;
        }

        .tab-content {
            display: none;
        }

        .tab-content.active {
            display: block;
        }

        .income-summary {
            padding: 16px;
            border-bottom: 1px solid #e5e7eb;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .income-date {
            text-align: center;
        }

        .income-amount {
            font-size: 24px;
            font-weight: 700;
            color: #2563eb;
        }

        .income-note {
            font-size: 12px;
            color: #6b7280;
        }

        .service-summary {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            border-bottom: 1px solid #e5e7eb;
        }

        .service-item {
            padding: 16px;
            text-align: center;
        }

        .service-item:first-child {
            border-right: 1px solid #e5e7eb;
        }

        .history-header {
            padding: 16px;
            border-bottom: 1px solid #e5e7eb;
            font-weight: 500;
        }

        .history-item {
            padding: 16px;
            border-bottom: 1px solid #e5e7eb;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .history-time {
            font-size: 14px;
            color: #6b7280;
        }

        /* Profile Panel Styles */
        .profile-header {
            padding: 16px;
            border-bottom: 1px solid #e5e7eb;
            display: flex;
            align-items: center;
        }

        .profile-avatar {
            width: 64px;
            height: 64px;
            border-radius: 50%;
            overflow: hidden;
            margin-right: 16px;
        }

        .profile-avatar img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .profile-info {
            flex: 1;
        }

        .profile-name {
            font-size: 18px;
            font-weight: 500;
            display: flex;
            align-items: center;
        }

        .profile-rating {
            display: flex;
            align-items: center;
            margin-left: 8px;
        }

        .profile-badge {
            display: flex;
            align-items: center;
            margin-top: 4px;
        }

        .pro-badge {
            background-color: #f59e0b;
            color: white;
            font-size: 12px;
            padding: 2px 8px;
            border-radius: 9999px;
        }

        .qr-code {
            width: 24px;
            height: 24px;
            margin-left: 8px;
        }

        .menu-item {
            padding: 16px;
            border-bottom: 1px solid #e5e7eb;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .menu-badge {
            background-color: #ef4444;
            color: white;
            font-size: 12px;
            padding: 2px 4px;
            border-radius: 4px;
            margin-left: 8px;
        }

        /* Profile Detail Panel Styles */
        .profile-detail-content {
            flex: 1;
            background-color: #f3f4f6;
            display: flex;
            flex-direction: column;
        }

        .profile-detail-header {
            background-color: white;
            padding: 24px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .profile-detail-avatar {
            width: 96px;
            height: 96px;
            border-radius: 50%;
            overflow: hidden;
            margin-bottom: 16px;
        }

        .profile-detail-avatar img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .profile-detail-name {
            font-size: 20px;
            font-weight: 500;
            display: flex;
            align-items: center;
        }

        .profile-detail-id {
            color: #6b7280;
            margin-top: 4px;
        }

        .profile-detail-qr {
            width: 192px;
            height: 192px;
            margin-top: 16px;
        }

        .profile-detail-qr img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .profile-detail-item {
            background-color: white;
            padding: 16px;
            border-bottom: 1px solid #e5e7eb;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .profile-detail-label {
            font-size: 14px;
            color: #6b7280;
        }

        .profile-detail-value {
            font-weight: 500;
        }

        .edit-button {
            color: #6b7280;
        }

        /* Wallet Panel Styles */
        .wallet-content {
            flex: 1;
            background-color: #f3f4f6;
            display: flex;
            flex-direction: column;
        }

        .wallet-balance {
            background-color: #f59e0b;
            padding: 24px;
            text-align: center;
        }

        .wallet-balance-label {
            color: #1f2937;
            margin-bottom: 4px;
        }

        .wallet-balance-amount {
            font-size: 28px;
            font-weight: 700;
            color: #1f2937;
            margin-bottom: 16px;
        }

        .deposit-button {
            background-color: white;
            color: #1f2937;
            border: none;
            border-radius: 4px;
            padding: 8px 16px;
            font-weight: 500;
            display: inline-block;
        }

        .wallet-item {
            background-color: white;
            padding: 16px;
            border-bottom: 1px solid #e5e7eb;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .wallet-item-label {
            color: #6b7280;
        }

        .wallet-item-value {
            font-weight: 500;
        }

        .wallet-item-value.green {
            color: #10b981;
        }

        .wallet-note {
            padding: 16px;
        }

        .wallet-note p {
            font-size: 12px;
            color: #6b7280;
            margin-bottom: 4px;
        }

        .withdraw-button {
            background-color: #f59e0b;
            color: #1f2937;
            border: none;
            border-radius: 4px;
            padding: 12px;
            font-weight: 500;
            width: 100%;
            margin-top: auto;
        }

        /* Trip History Panel Styles */
        .trip-history-content {
            flex: 1;
            background-color: #f3f4f6;
            display: flex;
            flex-direction: column;
        }

        .trip-history-date {
            background-color: #e5e7eb;
            padding: 16px;
            font-weight: 500;
        }

        .trip-history-item {
            background-color: white;
            padding: 16px;
            border-bottom: 1px solid #e5e7eb;
        }

        .trip-history-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 8px;
        }

        .trip-history-time {
            font-size: 18px;
            font-weight: 500;
        }

        .trip-history-amount {
            font-size: 18px;
            font-weight: 500;
        }

        .trip-history-status {
            background-color: #e5e7eb;
            color: #6b7280;
            font-size: 12px;
            padding: 4px 8px;
            border-radius: 4px;
        }

        .trip-history-status.completed {
            background-color: #10b981;
            color: white;
        }

        .trip-history-status.delivered {
            background-color: #10b981;
            color: white;
        }

        .trip-history-locations {
            margin-top: 8px;
        }

        .trip-history-service {
            margin-top: 8px;
            font-weight: 500;
        }

        .trip-history-service.bike {
            color: #2563eb;
        }

        .trip-history-service.delivery {
            color: #10b981;
        }

        /* Services Panel Styles */
        .services-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 16px;
            padding: 16px;
        }

        .service-card {
            border: 1px solid #e5e7eb;
            border-radius: 8px;
            padding: 16px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .service-icon {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 8px;
        }

        .service-icon.blue {
            background-color: #dbeafe;
            color: #2563eb;
        }

        .service-icon.green {
            background-color: #d1fae5;
            color: #10b981;
        }

        .service-icon.purple {
            background-color: #ede9fe;
            color: #7c3aed;
        }

        .service-icon.orange {
            background-color: #ffedd5;
            color: #ea580c;
        }

        .service-name {
            font-weight: 500;
            margin-bottom: 4px;
        }

        .service-description {
            font-size: 14px;
            color: #6b7280;
            text-align: center;
        }

        .service-config-section {
            padding: 16px;
            margin-top: 16px;
        }

        .service-config-title {
            font-weight: 500;
            margin-bottom: 16px;
        }

        .service-config-item {
            background-color: #f9fafb;
            border-radius: 8px;
            padding: 16px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 16px;
        }

        .service-config-info h4 {
            font-weight: 500;
            margin: 0 0 4px 0;
        }

        .service-config-info p {
            font-size: 14px;
            color: #6b7280;
            margin: 0;
        }

        .toggle {
            position: relative;
            display: inline-block;
            width: 44px;
            height: 24px;
        }

        .toggle input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .toggle-slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #e5e7eb;
            transition: .4s;
            border-radius: 24px;
        }

        .toggle-slider:before {
            position: absolute;
            content: "";
            height: 20px;
            width: 20px;
            left: 2px;
            bottom: 2px;
            background-color: white;
            transition: .4s;
            border-radius: 50%;
        }

        input:checked + .toggle-slider {
            background-color: #2563eb;
        }

        input:checked + .toggle-slider:before {
            transform: translateX(20px);
        }

        /* Inbox Panel Styles */
        .inbox-tabs {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            border-bottom: 1px solid #e5e7eb;
        }

        .inbox-tab {
            padding: 12px;
            text-align: center;
            cursor: pointer;
        }

        .inbox-tab.active {
            border-bottom: 2px solid #2563eb;
            font-weight: 500;
        }

        .inbox-content {
            display: none;
        }

        .inbox-content.active {
            display: block;
        }

        .inbox-item {
            padding: 16px;
            border-bottom: 1px solid #e5e7eb;
        }

        .inbox-item.highlighted {
            background-color: #fef3c7;
        }

        .inbox-item-header {
            display: flex;
            justify-content: space-between;
            margin-bottom: 4px;
        }

        .inbox-item-time {
            font-size: 14px;
            color: #6b7280;
        }

        .inbox-item-indicator {
            width: 8px;
            height: 8px;
            background-color: #ef4444;
            border-radius: 50%;
        }

        .inbox-item-title {
            font-weight: 700;
            margin-bottom: 4px;
        }

        .inbox-item-subtitle {
            font-size: 14px;
        }

        /* Hide all panels by default */
        .panel {
            display: none;
        }

        /* Show map panel by default */
        #mapPanel {
            display: block;
        }
    </style>
    @yield('head')
</head>
<body>
    <!-- Desktop Header -->
    @include('partials.header')
    <!-- Main Content -->
    <main class="main-content">
        @yield('content')
    </main>
    <!-- Bottom Navigation -->
    @include('partials.bottomnav')
    @yield('modal')
    <script>
        // Function to show a specific panel
        function showPanel(panelId, isDesktop = false) {
            // Hide all panels
            document.querySelectorAll('.panel').forEach(panel => {
                panel.style.display = 'none';
            });
            
            // Show the selected panel
            document.getElementById(panelId).style.display = 'block';
            
            // Update active nav item
            const navItems = document.querySelectorAll('.nav-item');
            navItems.forEach(item => item.classList.remove('active'));
            
            // Find the nav item that was clicked and make it active
            const index = ['mapPanel', 'incomePanel', 'servicesPanel', 'inboxPanel', 'profilePanel'].indexOf(panelId);
            if (index >= 0 && !isDesktop) {
                navItems[index].classList.add('active');
            }
            
            // Update desktop nav items
            if (isDesktop) {
                const desktopNavItems = document.querySelectorAll('.desktop-nav-item');
                desktopNavItems.forEach(item => item.classList.remove('active'));
                
                const desktopIndex = ['mapPanel', 'incomePanel', 'servicesPanel', 'inboxPanel', 'profilePanel'].indexOf(panelId);
                if (desktopIndex >= 0) {
                    desktopNavItems[desktopIndex].classList.add('active');
                }
                
                // Adjust map container width based on panel visibility
                const mapContainer = document.getElementById('mapPanel');
                if (panelId === 'mapPanel') {
                    mapContainer.classList.add('full-width');
                } else {
                    mapContainer.classList.remove('full-width');
                    mapContainer.style.display = 'block'; // Always show map on desktop
                }
            }
        }
        
        // Function to show detail panel
        function showDetailPanel(panelId) {
            document.getElementById(panelId).style.display = 'flex';
        }
        
        // Function to close detail panel
        function closeDetailPanel(panelId) {
            document.getElementById(panelId).style.display = 'none';
        }
        
        // Function to switch tabs
        function switchTab(group, tabId) {
            // Hide all tab contents for this group
            const tabContents = document.querySelectorAll(`#${group}-day, #${group}-week, #${group}-month, #${group}-all, #${group}-important, #${group}-alerts`);
            tabContents.forEach(tab => {
                tab.classList.remove('active');
            });
            
            // Show the selected tab content
            const selectedTab = document.getElementById(`${group}-${tabId}`);
            if (selectedTab) {
                selectedTab.classList.add('active');
            }
            
            // Update active tab
            const tabs = document.querySelectorAll(`.${group === 'inbox' ? 'inbox-tab' : 'tab'}`);
            tabs.forEach(tab => {
                tab.classList.remove('active');
            });
            
            // Find the tab that was clicked and make it active
            const clickedTab = Array.from(tabs).find(tab => tab.textContent.toLowerCase().includes(tabId));
            if (clickedTab) {
                clickedTab.classList.add('active');
            }
        }
        
        // Check if desktop view
        function isDesktopView() {
            return window.innerWidth >= 1024;
        }
        
        // Initialize layout based on screen size
        function initLayout() {
            if (isDesktopView()) {
                // Desktop layout
                document.getElementById('mapPanel').style.display = 'block';
                document.getElementById('mapPanel').classList.add('full-width');
            } else {
                // Mobile layout
                showPanel('mapPanel');
            }
        }
        
        // Add event listeners
        document.addEventListener('DOMContentLoaded', function() {
            // Initialize layout
            initLayout();
            
            // Example: Show trip detail when clicking on a specific element in trip history
            document.querySelectorAll('.trip-history-item').forEach(item => {
                item.addEventListener('click', function() {
                    showDetailPanel('tripDetailPanel');
                });
            });
            
            // Example: Show wallet panel when clicking on balance button
            document.querySelector('.balance-button').addEventListener('click', function() {
                showDetailPanel('walletPanel');
            });
            
            // Handle window resize
            window.addEventListener('resize', function() {
                initLayout();
            });
            
            // Example: Show trip detail when clicking on service config button
            document.querySelector('.service-config').addEventListener('click', function() {
                showDetailPanel('tripDetailPanel');
            });
        });
    </script>
</body>
</html>
