<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My App Store</title>

  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
    }

    body {
      background: #f5f7f9;
      color: #202124;
    }

    /* HEADER */
    header {
      background: white;
      padding: 15px 25px;
      display: flex;
      align-items: center;
      gap: 25px;
      border-bottom: 1px solid #ddd;
      position: sticky;
      top: 0;
      z-index: 10;
    }

    .logo {
      font-size: 25px;
      font-weight: bold;
      color: #0f9d58;
      white-space: nowrap;
    }

    .search {
      flex: 1;
      max-width: 600px;
      padding: 13px 18px;
      border: none;
      background: #f1f3f4;
      border-radius: 30px;
      outline: none;
      font-size: 16px;
    }

    /* NAVIGATION */
    nav {
      background: white;
      padding: 12px 25px;
      display: flex;
      gap: 12px;
      overflow-x: auto;
      border-bottom: 1px solid #ddd;
    }

    nav button {
      border: none;
      background: #eef5f0;
      color: #087f45;
      padding: 9px 18px;
      border-radius: 20px;
      cursor: pointer;
      white-space: nowrap;
    }

    nav button:hover {
      background: #d7eddf;
    }

    /* MAIN */
    main {
      max-width: 1200px;
      margin: auto;
      padding: 30px 20px;
    }

    .welcome {
      background: linear-gradient(120deg, #0f9d58, #34a853);
      color: white;
      padding: 35px;
      border-radius: 18px;
      margin-bottom: 30px;
    }

    .welcome h1 {
      font-size: 30px;
      margin-bottom: 10px;
    }

    .welcome p {
      opacity: 0.9;
    }

    .section-title {
      margin: 25px 0 15px;
      font-size: 22px;
    }

    /* APP GRID */
    .apps {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
      gap: 20px;
    }

    .app-card {
      background: white;
      border-radius: 15px;
      padding: 18px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.08);
      transition: 0.2s;
    }

    .app-card:hover {
      transform: translateY(-3px);
      box-shadow: 0 5px 15px rgba(0,0,0,0.12);
    }

    .app-icon {
      width: 75px;
      height: 75px;
      border-radius: 18px;
      object-fit: cover;
      margin-bottom: 12px;
    }

    .app-name {
      font-size: 18px;
      font-weight: bold;
      margin-bottom: 5px;
    }

    .developer {
      color: #777;
      font-size: 14px;
      margin-bottom: 8px;
    }

    .rating {
      color: #f4b400;
      margin-bottom: 12px;
    }

    .download {
      width: 100%;
      padding: 11px;
      border: none;
      border-radius: 25px;
      background: #0f9d58;
      color: white;
      font-size: 15px;
      cursor: pointer;
    }

    .download:hover {
      background: #087f45;
    }

    .details {
      display: none;
      margin-top: 12px;
      font-size: 14px;
      color: #555;
    }

    .details-btn {
      border: none;
      background: none;
      color: #087f45;
      cursor: pointer;
      margin-bottom: 10px;
    }

    /* FOOTER */
    footer {
      text-align: center;
      padding: 30px;
      margin-top: 40px;
      color: #777;
    }

    @media (max-width: 600px) {
      header {
        flex-direction: column;
        align-items: stretch;
        gap: 10px;
      }

      .search {
        max-width: none;
      }

      .welcome h1 {
        font-size: 24px;
      }
    }
  </style>
</head>

<body>

  <!-- HEADER -->
  <header>
    <div class="logo">▶ My App Store</div>

    <input
      type="text"
      id="search"
      class="search"
      placeholder="Search apps..."
      onkeyup="searchApps()"
    >
  </header>

  <!-- CATEGORIES -->
  <nav>
    <button onclick="filterApps('All')">All</button>
    <button onclick="filterApps('Games')">Games</button>
    <button onclick="filterApps('Education')">Education</button>
    <button onclick="filterApps('Music')">Music</button>
    <button onclick="filterApps('Social')">Social</button>
    <button onclick="filterApps('Tools')">Tools</button>
  </nav>

  <main>

    <!-- WELCOME -->
    <section class="welcome">
      <h1>Welcome to My App Store 👋</h1>
      <p>Discover apps and games you love.</p>
    </section>

    <h2 class="section-title">Popular Apps</h2>

    <section class="apps" id="appList">

      <!-- APP 1 -->
      <div class="app-card" data-category="Social" data-name="Chat App">
        <img
          class="app-icon"
          src="https://placehold.co/150x150/4285F4/FFFFFF?text=Chat"
          alt="Chat App"
        >

        <div class="app-name">Chat App</div>
        <div class="developer">My Company</div>
        <div class="rating">★★★★★ 4.8</div>

        <button class="details-btn" onclick="showDetails(this)">
          About app
        </button>

        <div class="details">
          Chat with your friends and family using this simple messaging app.
        </div>

        <button class="download" onclick="downloadApp('Chat App')">
          Download
        </button>
      </div>


      <!-- APP 2 -->
      <div class="app-card" data-category="Games" data-name="Super Game">
        <img
          class="app-icon"
          src="https://placehold.co/150x150/EA4335/FFFFFF?text=Game"
          alt="Super Game"
        >

        <div class="app-name">Super Game</div>
        <div class="developer">Game Studio</div>
        <div class="rating">★★★★☆ 4.5</div>

        <button class="details-btn" onclick="showDetails(this)">
          About app
        </button>

        <div class="details">
          A fun game where you complete levels and collect points.
        </div>

        <button class="download" onclick="downloadApp('Super Game')">
          Download
        </button>
      </div>


      <!-- APP 3 -->
      <div class="app-card" data-category="Education" data-name="Learn Now">
        <img
          class="app-icon"
          src="https://placehold.co/150x150/FBBC05/FFFFFF?text=Learn"
          alt="Learn Now"
        >

        <div class="app-name">Learn Now</div>
        <div class="developer">Education Team</div>
        <div class="rating">★★★★★ 4.9</div>

        <button class="details-btn" onclick="showDetails(this)">
          About app
        </button>

        <div class="details">
          Learn mathematics, science, languages and other subjects.
        </div>

        <button class="download" onclick="downloadApp('Learn Now')">
          Download
        </button>
      </div>


      <!-- APP 4 -->
      <div class="app-card" data-category="Music" data-name="Music Player">
        <img
          class="app-icon"
          src="https://placehold.co/150x150/34A853/FFFFFF?text=Music"
          alt="Music Player"
        >

        <div class="app-name">Music Player</div>
        <div class="developer">My Music</div>
        <div class="rating">★★★★☆ 4.6</div>

        <button class="details-btn" onclick="showDetails(this)">
          About app
        </button>

        <div class="details">
          Listen to music stored on your device.
        </div>

        <button class="download" onclick="downloadApp('Music Player')">
          Download
        </button>
      </div>


      <!-- APP 5 -->
      <div class="app-card" data-category="Tools" data-name="Calculator">
        <img
          class="app-icon"
          src="https://placehold.co/150x150/673AB7/FFFFFF?text=Calc"
          alt="Calculator"
        >

        <div class="app-name">Calculator</div>
        <div class="developer">Tools Team</div>
        <div class="rating">★★★★★ 4.7</div>

        <button class="details-btn" onclick="showDetails(this)">
          About app
        </button>

        <div class="details">
          A simple calculator for everyday calculations.
        </div>

        <button class="download" onclick="downloadApp('Calculator')">
          Download
        </button>
      </div>

    </section>

  </main>

  <footer>
    © 2026 My App Store
  </footer>


  <script>

    /* SEARCH */
    function searchApps() {

      const search =
        document.getElementById("search")
        .value
        .toLowerCase();

      const apps =
        document.querySelectorAll(".app-card");

      apps.forEach(app => {

        const name =
          app.dataset.name.toLowerCase();

        if (name.includes(search)) {
          app.style.display = "";
        } else {
          app.style.display = "none";
        }

      });
    }


    /* CATEGORY FILTER */
    function filterApps(category) {

      const apps =
        document.querySelectorAll(".app-card");

      apps.forEach(app => {

        if (
          category === "All" ||
          app.dataset.category === category
        ) {
          app.style.display = "";
        } else {
          app.style.display = "none";
        }

      });

      document.getElementById("search").value = "";
    }


    /* SHOW DETAILS */
    function showDetails(button) {

      const details =
        button.nextElementSibling;

      if (details.style.display === "block") {

        details.style.display = "none";
        button.textContent = "About app";

      } else {

        details.style.display = "block";
        button.textContent = "Hide details";

      }
    }


    /* DOWNLOAD */
    function downloadApp(appName) {

      alert(
        "Starting download for " +
        appName +
        "..."
      );

      /*
        IMPORTANT:

        Replace this alert with the real
        download URL for your application.

        Example:

        window.location.href =
        "apps/myapp.apk";
      */
    }

  </script>

</body>
</html>
