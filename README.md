<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Blinkit Grocery Sales — Data Analysis Project</title>
  <link href="https://fonts.googleapis.com/css2?family=Space+Mono:wght@400;700&family=Syne:wght@400;600;700;800&display=swap" rel="stylesheet">
  <style>
    :root {
      --yellow: #F9C418;
      --yellow-dim: #c49a10;
      --bg: #0d1117;
      --surface: #161b22;
      --surface2: #21262d;
      --border: #30363d;
      --text: #e6edf3;
      --muted: #8b949e;
      --soft: #c9d1d9;
    }
    * { box-sizing: border-box; margin: 0; padding: 0; }
    body {
      background: var(--bg);
      color: var(--text);
      font-family: 'Syne', sans-serif;
      font-size: 14px;
      line-height: 1.7;
      padding: 2.5rem 1rem;
    }
    .wrap { max-width: 820px; margin: 0 auto; }

    /* HEADER */
    .header { text-align: center; margin-bottom: 2.5rem; }
    .logo-box {
      background: var(--yellow);
      color: #1a1a1a;
      font-weight: 800;
      font-size: 28px;
      padding: 8px 24px;
      border-radius: 8px;
      display: inline-block;
      margin-bottom: 1rem;
      letter-spacing: -0.5px;
      font-family: 'Space Mono', monospace;
    }
    .main-title { font-size: 26px; font-weight: 700; color: #f0f6fc; margin-bottom: 0.4rem; }
    .subtitle { color: var(--muted); font-size: 13px; margin-bottom: 1.2rem; }
    .badges { display: flex; flex-wrap: wrap; gap: 6px; justify-content: center; }
    .badge {
      border-radius: 20px; font-size: 11px; font-weight: 700;
      padding: 4px 12px; font-family: 'Space Mono', monospace;
    }
    .b-y  { background: var(--yellow); color: #1a1a1a; }
    .b-b  { background: #1f6feb; color: #fff; }
    .b-p  { background: #8957e5; color: #fff; }
    .b-g  { background: #238636; color: #fff; }
    .b-r  { background: #da3633; color: #fff; }
    .b-db { background: #336791; color: #fff; }

    hr.div { border: none; border-top: 1px solid var(--border); margin: 2rem 0; }

    /* SECTION */
    .section { margin: 2rem 0; }
    .sec-head {
      font-size: 16px; font-weight: 700; color: #f0f6fc;
      border-bottom: 1px solid var(--border);
      padding-bottom: 6px; margin-bottom: 1rem;
    }

    /* DASHBOARD IMAGE */
    .dash-wrap {
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: 12px; overflow: hidden;
    }
    .dash-bar {
      background: var(--surface); padding: 8px 14px;
      font-size: 11px; color: var(--muted);
      border-bottom: 1px solid var(--border);
      display: flex; align-items: center; gap: 6px;
      font-family: 'Space Mono', monospace;
    }
    .dot { width: 10px; height: 10px; border-radius: 50%; display: inline-block; }
    .dash-wrap img { width: 100%; display: block; }
    .dash-placeholder {
      height: 200px; display: flex;
      align-items: center; justify-content: center;
      color: var(--muted); font-size: 13px;
      font-family: 'Space Mono', monospace;
    }

    /* PIPELINE */
    .pipeline {
      display: flex; align-items: center;
      flex-wrap: wrap; gap: 6px;
      justify-content: center; margin: 1rem 0;
    }
    .pipe-box {
      background: var(--surface); border: 1px solid var(--border);
      border-radius: 10px; padding: 12px 18px;
      text-align: center; min-width: 100px;
      transition: border-color 0.2s;
    }
    .pipe-box:hover { border-color: var(--yellow); }
    .pipe-icon { font-size: 20px; display: block; margin-bottom: 4px; }
    .pipe-lbl { color: #f0f6fc; font-weight: 700; font-size: 12px; display: block; }
    .pipe-sub { color: var(--muted); font-size: 10px; display: block; margin-top: 2px; }
    .arrow { color: var(--yellow); font-size: 20px; font-weight: 700; }

    /* STATS */
    .stat-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 10px; }
    .stat {
      background: var(--surface); border: 1px solid var(--border);
      border-radius: 10px; padding: 14px; text-align: center;
      transition: border-color 0.2s;
    }
    .stat:hover { border-color: var(--yellow); }
    .stat-val { font-size: 24px; font-weight: 800; color: var(--yellow); display: block; font-family: 'Space Mono', monospace; }
    .stat-lbl { font-size: 10px; color: var(--muted); margin-top: 4px; display: block; text-transform: uppercase; letter-spacing: 0.6px; }

    /* INSIGHT GRID */
    .insight-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 8px; }
    .insight {
      background: var(--surface); border: 1px solid var(--border);
      border-radius: 10px; padding: 12px 16px;
      transition: border-color 0.2s;
    }
    .insight:hover { border-color: var(--yellow); }
    .ins-q { color: var(--muted); font-size: 11px; margin-bottom: 5px; }
    .ins-a { color: var(--yellow); font-size: 13px; font-weight: 700; font-family: 'Space Mono', monospace; }

    /* TECH STACK */
    .tech-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 8px; }
    .tech {
      background: var(--surface); border: 1px solid var(--border);
      border-radius: 10px; padding: 12px 14px;
      display: flex; align-items: center; gap: 10px;
      transition: border-color 0.2s;
    }
    .tech:hover { border-color: var(--yellow); }
    .tech-dot { width: 10px; height: 10px; border-radius: 50%; flex-shrink: 0; }
    .tech-name { color: var(--soft); font-size: 13px; font-weight: 700; display: block; }
    .tech-use { color: var(--muted); font-size: 10px; }

    /* FILE TREE */
    .tree {
      background: var(--surface); border: 1px solid var(--border);
      border-radius: 10px; padding: 1.2rem;
      font-family: 'Space Mono', monospace; font-size: 12px; line-height: 2;
    }
    .t-root { color: var(--yellow); font-weight: 700; }
    .t-dir { color: #79c0ff; }
    .t-file { color: var(--soft); }
    .t-cmt { color: #3d444d; }

    /* ABOUT */
    .about-p { color: var(--soft); font-size: 13.5px; line-height: 1.9; }
    .about-p strong { color: var(--yellow); }

    /* CONTACT */
    .contact {
      display: flex; align-items: center;
      justify-content: center; gap: 10px; flex-wrap: wrap; margin-top: 1rem;
    }
    .chip {
      background: var(--surface); border: 1px solid var(--border);
      border-radius: 20px; padding: 7px 16px; font-size: 12px;
      color: var(--soft); display: flex; align-items: center; gap: 6px;
      transition: border-color 0.2s;
    }
    .chip:hover { border-color: var(--yellow); }
    .chip a { color: var(--yellow); text-decoration: none; }
    .footer { color: var(--muted); font-size: 12px; margin-top: 1.5rem; text-align: center; }
    .footer a { color: var(--yellow); text-decoration: none; }
    .footer strong { color: var(--yellow); }
    .star-note { color: var(--muted); font-size: 13px; margin-top: 0.6rem; }

    @media (max-width: 600px) {
      .stat-grid { grid-template-columns: repeat(2, 1fr); }
      .tech-grid { grid-template-columns: repeat(2, 1fr); }
      .insight-grid { grid-template-columns: 1fr; }
      .pipeline { flex-direction: column; }
    }
  </style>
</head>
<body>
<div class="wrap">

  <!-- HEADER -->
  <div class="header">
    <div class="logo-box">blinkit</div>
    <div class="main-title">🛒 Blinkit Grocery Sales — Data Analysis Project</div>
    <div class="subtitle">End-to-end analysis: Data Cleaning → SQL Insights → Power BI Dashboard</div>
    <div class="badges">
      <span class="badge b-y">Python 3.10+</span>
      <span class="badge b-b">Pandas</span>
      <span class="badge b-db">SQL</span>
      <span class="badge b-g">Power BI</span>
      <span class="badge b-r">Status: Complete</span>
    </div>
  </div>

  <hr class="div">

  <!-- DASHBOARD -->
  <div class="section">
    <div class="sec-head">📊 Dashboard Preview</div>
    <div class="dash-wrap">
      <div class="dash-bar">
        <span class="dot" style="background:#ff5f56"></span>
        <span class="dot" style="background:#ffbd2e"></span>
        <span class="dot" style="background:#27c93f"></span>
        &nbsp; Blinkit Grocery Sales Dashboard — Power BI
      </div>
      <img src="assets/Blinkit-Dashboard.png" alt="Blinkit Power BI Dashboard"
        onerror="this.style.display='none';this.nextElementSibling.style.display='flex'">
      <div class="dash-placeholder" style="display:none;">📊 Add Blinkit-Dashboard.png to /assets/</div>
    </div>
  </div>

  <!-- ABOUT -->
  <div class="section">
    <div class="sec-head">📌 About the Project</div>
    <p class="about-p">
      This project performs a complete data analysis lifecycle on <strong>Blinkit's grocery sales dataset</strong>.
      Raw data was cleaned and transformed using <strong>Pandas</strong>, meaningful business insights were extracted
      using <strong>SQL queries</strong>, and everything was visualized in a fully interactive
      <strong>Power BI Dashboard</strong> — covering outlet performance, item categories,
      fat content split, tier-wise sales, and outlet establishment trends.
    </p>
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
      <div class="insight"><div class="ins-q">📍 Best performing tier</div><div class="ins-a">Tier 3 — $472.13K in sales</div></div>
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
      <div class="tech"><div class="tech-dot" style="background:#F37726"></div><div><span class="tech-name">Jupyter</span><span class="tech-use">EDA notebooks</span></div></div>
    </div>
  </div>

  <!-- FILE TREE -->
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

  <hr class="div">

  <!-- CONTACT -->
  <div style="text-align:center;">
    <div class="sec-head" style="border:none; text-align:center;">🙋 Connect with Me</div>
    <div class="contact">
      <div class="chip">📸 Instagram <a href="https://www.instagram.com/self_explore3">@itz_roshansingh</a></div>
      <div class="chip">💼 LinkedIn <a href="https://www.linkedin.com/in/itz-roshan/">Roshan</a></div>
      <div class="chip">🐙 GitHub <a href="https://github.com/itz-roshan">@itz-roshan</a></div>
    </div>
    <div class="footer">
      Dataset from <a href="https://www.kaggle.com/">Kaggle</a> &nbsp;•&nbsp;
      Made with ❤️ by <strong>@roshan</strong>
    </div>
    <div class="star-note">⭐ If this helped you, please star the repo!</div>
  </div>

</div>
</body>
</html>
