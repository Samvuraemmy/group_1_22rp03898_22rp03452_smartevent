 Smart Event Management (PHP/USSD)

This is a simple PHP-based USSD application for event management. Users can register, view available events, and book events using their phone via USSD. The system also sends SMS notifications using Africa's Talking.

 Features

- User registration via USSD
- View available events
- Book events
- View your booked events
- SMS notifications for registration and bookings

 Requirements

- PHP 7.1 or higher
- Composer
- MySQL/MariaDB
- Africa's Talking account (for SMS)

 Setup

1. Clone the repository** and navigate to the project directory.

2. Install dependencies** using Composer:
   ```
   composer install
   ```

3. Database setup:**
   - Create a database named `events`.
   - Import the `events.sql` file to create the necessary tables and sample data:
     ```
     mysql -u root -p events < events.sql
     ```
   - Update `conn.php` with your database credentials if needed.

4. Configure Africa's Talking:**
   - In `sms.php`, set your Africa's Talking `username` and `apiKey`.

5. Run the application:**
   - Deploy on a web server (e.g., XAMPP, Apache).
   - Point your USSD gateway to `index.php`.

File Structure

- `index.php` - Main USSD handler
- `EventsManagement.php` - Core logic for registration, event viewing, and booking
- `sms.php` - Handles SMS sending via Africa's Talking
- `conn.php` - Database connection
- `events.sql` - Database schema and sample data

 Notes

- Make sure your server can accept HTTP POST requests from your USSD gateway.
- Africa's Talking sandbox credentials are used by default; use your live credentials for production.
