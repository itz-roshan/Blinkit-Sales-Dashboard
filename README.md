
<style>
  * { box-sizing: border-box; margin: 0; padding: 0; }
  .readme { background: #0d1117; color: #e6edf3; border-radius: 12px; padding: 2rem; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif; font-size: 14px; line-height: 1.7; }
  .center { text-align: center; }
  .logo-box { background: #F9C418; color: #1a1a1a; font-weight: 800; font-size: 26px; padding: 8px 22px; border-radius: 8px; display: inline-block; margin-bottom: 1rem; letter-spacing: -0.5px; }
  .main-title { font-size: 28px; font-weight: 700; color: #f0f6fc; margin-bottom: 0.4rem; }
  .subtitle { color: #8b949e; font-size: 14px; margin-bottom: 1.2rem; }
  .badges { display: flex; flex-wrap: wrap; gap: 6px; justify-content: center; margin-bottom: 1.5rem; }
  .badge { border-radius: 20px; font-size: 11px; font-weight: 700; padding: 4px 12px; }
  .b-yellow { background: #F9C418; color: #1a1a1a; }
  .b-green { background: #238636; color: #fff; }
  .b-blue { background: #1f6feb; color: #fff; }
  .b-purple { background: #8957e5; color: #fff; }
  .b-gray { background: #21262d; color: #8b949e; border: 1px solid #30363d; }
  .b-red { background: #da3633; color: #fff; }
  .divider { border: none; border-top: 1px solid #21262d; margin: 1.5rem 0; }
  .dash-img-wrap { background: #161b22; border: 1px solid #30363d; border-radius: 10px; overflow: hidden; margin: 1rem 0 1.5rem; }
  .dash-img-label { background: #161b22; padding: 8px 14px; font-size: 11px; color: #8b949e; border-bottom: 1px solid #30363d; display: flex; align-items: center; gap: 6px; }
  .dot { width: 10px; height: 10px; border-radius: 50%; display: inline-block; }
  .dash-img { width: 100%; display: block; border-radius: 0 0 10px 10px; }
  .section { margin: 1.5rem 0; }
  .sec-head { font-size: 17px; font-weight: 700; color: #f0f6fc; border-bottom: 1px solid #21262d; padding-bottom: 6px; margin-bottom: 1rem; }
  .about-p { color: #c9d1d9; font-size: 13.5px; line-height: 1.8; }
  .about-p strong { color: #F9C418; }
  .pipeline { display: flex; align-items: center; flex-wrap: wrap; gap: 4px; justify-content: center; margin: 1rem 0; }
  .pipe-box { background: #161b22; border: 1px solid #30363d; border-radius: 8px; padding: 10px 16px; text-align: center; min-width: 95px; }
  .pipe-icon { font-size: 18px; display: block; margin-bottom: 3px; }
  .pipe-lbl { color: #f0f6fc; font-weight: 600; font-size: 12px; display: block; }
  .pipe-sub { color: #8b949e; font-size: 10px; display: block; margin-top: 2px; }
  .arrow { color: #F9C418; font-size: 18px; font-weight: 700; }
  .stat-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 8px; margin: 0.75rem 0; }
  .stat { background: #161b22; border: 1px solid #30363d; border-radius: 8px; padding: 12px; text-align: center; }
  .stat-val { font-size: 22px; font-weight: 700; color: #F9C418; display: block; }
  .stat-lbl { font-size: 10px; color: #8b949e; margin-top: 3px; display: block; text-transform: uppercase; letter-spacing: 0.5px; }
  .insight-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 8px; }
  .insight { background: #161b22; border: 1px solid #30363d; border-radius: 8px; padding: 10px 14px; }
  .ins-q { color: #8b949e; font-size: 11px; margin-bottom: 4px; }
  .ins-a { color: #F9C418; font-size: 13px; font-weight: 600; }
  .tech-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 8px; }
  .tech { background: #161b22; border: 1px solid #30363d; border-radius: 8px; padding: 10px 12px; display: flex; align-items: center; gap: 8px; }
  .tech-dot { width: 8px; height: 8px; border-radius: 50%; flex-shrink: 0; }
  .tech-name { color: #c9d1d9; font-size: 12px; font-weight: 600; display: block; }
  .tech-use { color: #8b949e; font-size: 10px; }
  .tree { background: #161b22; border: 1px solid #30363d; border-radius: 8px; padding: 1rem; font-family: 'Courier New', monospace; font-size: 12px; }
  .t-root { color: #F9C418; font-weight: 700; }
  .t-dir { color: #79c0ff; }
  .t-file { color: #c9d1d9; }
  .t-cmt { color: #3d444d; }
  .contact { display: flex; align-items: center; justify-content: center; gap: 10px; flex-wrap: wrap; margin-top: 1rem; }
  .contact-chip { background: #161b22; border: 1px solid #30363d; border-radius: 20px; padding: 6px 14px; font-size: 12px; color: #c9d1d9; display: flex; align-items: center; gap: 6px; }
  .contact-chip a { color: #F9C418; text-decoration: none; }
  .footer-note { color: #8b949e; font-size: 12px; margin-top: 1.5rem; text-align: center; }
  .footer-note a { color: #F9C418; text-decoration: none; }
  .star-cta { background: linear-gradient(90deg, #F9C418 0%, #ffdb4d 100%); color: #1a1a1a; border-radius: 8px; padding: 10px 20px; font-weight: 700; font-size: 13px; display: inline-block; margin-top: 1rem; cursor: pointer; border: none; }
</style>

<div class="readme">

  <!-- HEADER -->
  <div class="center">
    <div class="logo-box">blinkit</div>
    <div class="main-title">🛒 Blinkit Grocery Sales — Data Analysis Project</div>
    <div class="subtitle">End-to-end analysis: Data Cleaning → SQL Insights → Power BI Dashboard</div>
    <div class="badges">
      <span class="badge b-yellow">Python 3.10+</span>
      <span class="badge b-blue">Pandas</span>
      <span class="badge b-purple">SQL</span>
      <span class="badge b-green">Power BI</span>
      <span class="badge b-red">Status: Complete</span>
    </div>
  </div>

  <hr class="divider">

  <!-- DASHBOARD IMAGE -->
  <div class="section">
    <div class="sec-head">📊 Dashboard Preview</div>
    <div class="dash-img-wrap">
      <div class="dash-img-label">
        <span class="dot" style="background:#ff5f56"></span>
        <span class="dot" style="background:#ffbd2e"></span>
        <span class="dot" style="background:#27c93f"></span>
        &nbsp; Blinkit Grocery Sales Dashboard — Power BI
      </div>
      <img class="dash-img" src="/mnt/user-data/uploads/1779702726629_Blinkit-Dashboard.png" alt="Blinkit Power BI Dashboard" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex'">
      <div style="display:none; background:#161b22; height:180px; align-items:center; justify-content:center; color:#8b949e; font-size:13px; border-radius:0 0 10px 10px;">
        <img src="Blinkit-Dashboard.png" alt="📊 Dashboard screenshot — add image to /assets/dashboard.png">
      </div>
    </div>
  </div>

  <!-- ABOUT -->
  <div class="section">
    <div class="sec-head">📌 About the Project</div>
    <div class="about-p">
      This project performs a complete data analysis lifecycle on <strong>Blinkit's grocery sales dataset</strong>.
      Raw data was cleaned and transformed using <strong>Pandas</strong>, meaningful business insights were extracted
      using <strong>SQL queries</strong>, and everything was visualized in a fully interactive
      <strong>Power BI Dashboard</strong> — covering outlet performance, item categories,
      fat content split, tier-wise sales, and outlet establishment trends.
    </div>
  </div>

  <!-- PIPELINE -->
  <div class="section">
    <div class="sec-head">⚙️ Project Workflow</div>
    <div class="pipeline">
      <div class="pipe-box">
        <span class="pipe-icon">📦</span>
        <span class="pipe-lbl">Raw Data</span>
        <span class="pipe-sub">CSV / Kaggle</span>
      </div>
      <span class="arrow">→</span>
      <div class="pipe-box">
        <span class="pipe-icon">🐼</span>
        <span class="pipe-lbl">Pandas</span>
        <span class="pipe-sub">Clean & Format</span>
      </div>
      <span class="arrow">→</span>
      <div class="pipe-box">
        <span class="pipe-icon">🗄️</span>
        <span class="pipe-lbl">SQL</span>
        <span class="pipe-sub">Insights</span>
      </div>
      <span class="arrow">→</span>
      <div class="pipe-box">
        <span class="pipe-icon">📊</span>
        <span class="pipe-lbl">Power BI</span>
        <span class="pipe-sub">Dashboard</span>
      </div>
    </div>
  </div>

  <!-- STATS -->
  <div class="section">
    <div class="sec-head">📈 Key Numbers from Dashboard</div>
    <div class="stat-grid">
      <div class="stat"><span class="stat-val">$1.20M</span><span class="stat-lbl">Total Sales</span></div>
      <div class="stat"><span class="stat-val">$141</span><span class="stat-lbl">Avg Sale</span></div>
      <div class="stat"><span class="stat-val">8,523</span><span class="stat-lbl">Total Items</span></div>
      <div class="stat"><span class="stat-val">3.9 ⭐</span><span class="stat-lbl">Avg Rating</span></div>
    </div>
  </div>

  <!-- SQL INSIGHTS -->
  <div class="section">
    <div class="sec-head">🔍 Business Insights via SQL</div>
    <div class="insight-grid">
      <div class="insight"><div class="ins-q">🏪 Top outlet by revenue</div><div class="ins-a">Supermarket Type 1 — $787.55K</div></div>
      <div class="insight"><div class="ins-q">📍 Best performing tier</div><div class="ins-a">Tier 3 — 472.13K in sales</div></div>
      <div class="insight"><div class="ins-q">🛍️ Most sold item category</div><div class="ins-a">Fruits & Snacks — $0.18M each</div></div>
      <div class="insight"><div class="ins-q">📅 Peak outlet year</div><div class="ins-a">2018 — $205K revenue</div></div>
      <div class="insight"><div class="ins-q">🥗 Fat content revenue split</div><div class="ins-a">Low Fat $776K vs Regular $425K</div></div>
      <div class="insight"><div class="ins-q">👁️ Best item visibility</div><div class="ins-a">Grocery Store — 0.10 score</div></div>
    </div>
  </div>

  <!-- TECH STACK -->
  <div class="section">
    <div class="sec-head">🛠️ Tech Stack</div>
    <div class="tech-grid">
      <div class="tech"><div class="tech-dot" style="background:#F9C418"></div><div><span class="tech-name">Python</span><span class="tech-use">Core language</span></div></div>
      <div class="tech"><div class="tech-dot" style="background:#150458"></div><div><span class="tech-name">Pandas</span><span class="tech-use">Data wrangling</span></div></div>
      <div class="tech"><div class="tech-dot" style="background:#336791"></div><div><span class="tech-name">MySQL</span><span class="tech-use">SQL queries</span></div></div>
      <div class="tech"><div class="tech-dot" style="background:#F2C811"></div><div><span class="tech-name">Power BI</span><span class="tech-use">Dashboard viz</span></div></div>
      <div class="tech"><div class="tech-dot" style="background:#F37726"></div><div><span class="tech-name">Jupyter</span><span class="tech-use">Notebooks</span></div></div>
      <!-- <div class="tech"><div class="tech-dot" style="background:#11557c"></div><div><span class="tech-name">Matplotlib</span><span class="tech-use">EDA charts</span></div></div> -->
    </div>
  </div>

  <!-- FILE STRUCTURE -->
  <div class="section">
    <div class="sec-head">📁 Project Structure</div>
    <div class="tree">
      <span class="t-root">📦 blinkit-analysis/</span><br>
      ├── <span class="t-dir">data/</span><br>
      │&nbsp;&nbsp; ├── <span class="t-file">blinkit_raw.csv</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="t-cmt">← original dataset</span><br>
      │&nbsp;&nbsp; └── <span class="t-file">blinkit_cleaned.csv</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="t-cmt">← after Pandas cleaning</span><br>
      ├── <span class="t-dir">notebooks/</span><br>
      │&nbsp;&nbsp; ├── <span class="t-file">01_data_cleaning.ipynb</span>&nbsp;&nbsp;<span class="t-cmt">← null handling, formatting</span><br>
      │&nbsp;&nbsp; └── <span class="t-file">02_eda_analysis.ipynb</span>&nbsp;&nbsp;&nbsp;<span class="t-cmt">← exploratory analysis</span><br>
      ├── <span class="t-dir">sql/</span><br>
      │&nbsp;&nbsp; └── <span class="t-file">insights_queries.sql</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="t-cmt">← all business queries</span><br>
      ├── <span class="t-dir">assets/</span><br>
      │&nbsp;&nbsp; └── <span class="t-file">blinkit_dashboard.pbix</span>&nbsp;&nbsp;<span class="t-cmt">← Power BI file</span><br>
      ├── <span class="t-file">README.md</span><br>
      └── <span class="t-file">requirements.txt</span>
    </div>
  </div>

  <hr class="divider">

  <!-- CONTACT -->
  <div class="center">
    <div class="sec-head" style="text-align:center; border:none;">🙋 Connect with Me</div>
    <div class="contact">
      <div class="contact-chip">📸 Instagram <a href="https://www.instagram.com/self_explore3?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==">@itz_roshansingh</a></div>
      <div class="contact-chip">💼 LinkedIn <a href="https://www.linkedin.com/in/itz-roshan/">Roshan</a></div>
      <div class="contact-chip">🐙 GitHub <a href="https://github.com/itz-roshan">@itz-roshan</a></div>
    </div>
    <div class="footer-note" style="margin-top:1rem;">
      Dataset from <a href="https://www.kaggle.com/">Kaggle</a> &nbsp;•&nbsp;
      Made with ❤️ by <strong style="color:#F9C418">@roshan</strong>
    </div>
    <div style="margin-top:0.75rem; color:#8b949e; font-size:13px;">⭐ If this helped you, please star the repo!</div>
  </div>

</div>
