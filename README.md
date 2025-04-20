<h1 align="center">🎉 Evently - Event Manager Platform</h1>

<p align="center">
  <strong>A complete event planning and management app built with Ruby on Rails & Tailwind CSS.</strong><br/>
  From user signups to event creation, RSVPs, tasks, and comments—Evently helps communities stay organized and connected.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Rails-7.x-red?style=flat-square" />
  <img src="https://img.shields.io/badge/TailwindCSS-3.x-blue?style=flat-square" />
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square" />
  <img src="https://img.shields.io/badge/PostgreSQL-Relational-blue?style=flat-square" />
</p>

<hr/>

<h2>📚 Table of Contents</h2>

<ul>
  <li><a href="#features">Features</a></li>
  <li><a href="#tech-stack">Tech Stack</a></li>
  <li><a href="#database-schema">Database Schema</a></li>
  <li><a href="#setup-instructions">Setup Instructions</a></li>
  <li><a href="#screenshots">Screenshots</a></li>
  <li><a href="#contributing">Contributing</a></li>
  <li><a href="#license">License</a></li>
</ul>

<hr/>

<h2 id="features">🚀 Features</h2>

<ul>
  <li>User sign up, login, logout, password reset and confirmation</li>
  <li>Event creation, editing, publishing, and deletion</li>
  <li>RSVP system: going, interested, or not attending</li>
  <li>Venue management for events</li>
  <li>Task management for event organizers</li>
  <li>Threaded comments for event discussions</li>
  <li>Role-based access control (admin, organizer, user)</li>
  <li>Responsive UI powered by Tailwind CSS</li>
  <li>Persistent sessions using cookies</li>
</ul>

<hr/>

<h2 id="tech-stack">🛠 Tech Stack</h2>

<table>
  <tr>
    <td><strong>Backend</strong></td>
    <td>Ruby on Rails 7, ActiveRecord, PostgreSQL</td>
  </tr>
  <tr>
    <td><strong>Frontend</strong></td>
    <td>HTML5, Tailwind CSS, ERB templates</td>
  </tr>
  <tr>
    <td><strong>Authentication</strong></td>
    <td>Custom session-based auth with encrypted cookies</td>
  </tr>
  <tr>
    <td><strong>Deployment</strong></td>
    <td>Heroku / Render / Fly.io (recommended)</td>
  </tr>
</table>

<hr/>

<h2 id="database-schema">🗂 Database Schema (ERD)</h2>

<p>
  <strong>Key Tables:</strong><br/>
  <code>users</code>, <code>events</code>, <code>venues</code>, <code>rsvps</code>, <code>tasks</code>, <code>comments</code>, <code>sessions</code>
</p>

<ul>
  <li><strong>Users</strong> - Has many events, RSVPs, comments</li>
  <li><strong>Events</strong> - Belongs to user, has many RSVPs, tasks, and comments</li>
  <li><strong>RSVPs</strong> - Belongs to user and event</li>
  <li><strong>Tasks</strong> - Belongs to event, assigned to user</li>
  <li><strong>Venues</strong> - Has many events</li>
  <li><strong>Comments</strong> - Belongs to user and event</li>
</ul>

<p>
  <em>A graphical ERD can be found in the <code>/docs</code> folder.</em>
</p>

<hr/>

<h2 id="setup-instructions">📦 Setup Instructions</h2>

<pre>
git clone https://github.com/your-username/evently.git
cd evently

# Install dependencies
bundle install
yarn install

# Set up database
rails db:setup

# Start the app
bin/dev
</pre>

<p>
  Tailwind is included via <code>tailwindcss-rails</code>. No extra setup needed.
</p>

<hr/>

<h2 id="screenshots">📸 Screenshots</h2>

<p align="center">
  <img src="https://via.placeholder.com/800x400?text=Dashboard" alt="Dashboard" />
  <br/>
  <em>Dashboard view for a logged-in user</em>
</p>

<p align="center">
  <img src="https://via.placeholder.com/800x400?text=Create+Event+Form" alt="Create Event" />
  <br/>
  <em>Create event form with Tailwind styles</em>
</p>

<hr/>

<h2 id="contributing">🤝 Contributing</h2>

<p>Pull requests are welcome! If you find a bug or have a suggestion, open an issue first to discuss what you'd like to change.</p>

<hr/>

<h2 id="license">📄 License</h2>

<p>This project is licensed under the <strong>MIT License</strong>. See the <code>LICENSE</code> file for more info.</p>

<hr/>

<p align="center">Made with ❤️ by <a href="https://github.com/your-username">Mohammad Mohsen Haidari</a></p>
