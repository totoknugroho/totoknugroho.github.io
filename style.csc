```css
@import url(
  'https://fonts.googleapis.com/css2?family=DM+Mono:wght@400;500&family=Manrope:wght@400;500;600;700;800&display=swap'
);


/* =========================================================
   VARIABLES
========================================================= */

:root {

  --bg: #f3f0e9;
  --paper: #faf9f5;

  --text: #181818;
  --muted: #77736b;

  --line: #d8d3c8;

  --accent: #d75c38;

  --dark: #181818;

}


/* =========================================================
   RESET
========================================================= */

* {
  box-sizing: border-box;
}

html {
  scroll-behavior: smooth;
}

body {

  margin: 0;

  background: var(--bg);

  color: var(--text);

  font-family: "Manrope", sans-serif;

  line-height: 1.7;

  -webkit-font-smoothing: antialiased;

}

a {
  color: inherit;
}

.container {

  width: min(1120px, calc(100% - 48px));

  margin: 0 auto;

}


/* =========================================================
   HEADER
========================================================= */

.header {

  position: sticky;

  top: 0;

  z-index: 100;

  background: rgba(243, 240, 233, .9);

  backdrop-filter: blur(15px);

  border-bottom: 1px solid var(--line);

}

.nav {

  height: 72px;

  display: flex;

  align-items: center;

  justify-content: space-between;

}

.logo {

  text-decoration: none;

  font-size: 1.25rem;

  font-weight: 800;

  letter-spacing: -.06em;

}

.logo span {
  color: var(--accent);
}

.nav-links {

  display: flex;

  gap: 30px;

}

.nav-links a {

  text-decoration: none;

  font-family: "DM Mono", monospace;

  font-size: .65rem;

  text-transform: uppercase;

  letter-spacing: .08em;

}

.nav-links a:hover {
  color: var(--accent);
}


/* =========================================================
   COMMON LABELS
========================================================= */

.chapter-label,
.story-number,
.story-location {

  font-family: "DM Mono", monospace;

  font-size: .65rem;

  letter-spacing: .12em;

}

.chapter-label {

  color: var(--muted);

}


/* =========================================================
   HOMEPAGE HERO
========================================================= */

.hero {

  min-height: calc(100vh - 72px);

  padding-top: 100px;

  padding-bottom: 100px;

  display: flex;

  flex-direction: column;

  justify-content: center;

}

.hero-small {

  margin-bottom: 35px;

  color: var(--accent);

  font-family: "DM Mono", monospace;

  font-size: .65rem;

  line-height: 1.7;

  letter-spacing: .13em;

}

.hero h1 {

  max-width: 1050px;

  margin: 0;

  font-size: clamp(4rem, 8.5vw, 8.5rem);

  font-weight: 800;

  line-height: .88;

  letter-spacing: -.08em;

}

.hero h1 em {

  color: var(--accent);

  font-style: normal;

}

.hero-bottom {

  margin-top: 70px;

  display: flex;

  justify-content: space-between;

  align-items: end;

  gap: 50px;

}

.hero-bottom p {

  max-width: 430px;

  margin: 0;

  color: #5d5a53;

  font-size: 1rem;

}

.route {

  display: flex;

  align-items: center;

  gap: 14px;

  white-space: nowrap;

  font-family: "DM Mono", monospace;

  font-size: .62rem;

  letter-spacing: .08em;

}

.route i {

  color: var(--accent);

  font-style: normal;

}


/* =========================================================
   INTRO
========================================================= */

.intro {

  padding-top: 120px;

  padding-bottom: 140px;

  border-top: 1px solid var(--line);

}

.intro-grid {

  display: grid;

  grid-template-columns: 1fr 1fr;

  gap: 110px;

  margin-top: 50px;

}

.intro h2 {

  margin: 0;

  font-size: clamp(2.8rem, 5vw, 5rem);

  line-height: .98;

  letter-spacing: -.065em;

}

.intro-text {

  max-width: 540px;

  color: #55524b;

}

.intro-text p {

  margin: 0 0 25px;

}

.intro-text .emphasis {

  color: var(--text);

  font-weight: 700;

}


/* =========================================================
   CHAPTERS
========================================================= */

.chapters {

  padding: 120px 0;

  background: var(--paper);

  border-top: 1px solid var(--line);

}

.chapters > .container > h2 {

  margin: 45px 0 75px;

  font-size: clamp(3rem, 5vw, 5rem);

  line-height: .95;

  letter-spacing: -.065em;

}

.chapter-list {

  border-top: 1px solid var(--line);

}

.chapter {

  display: grid;

  grid-template-columns: 90px 1fr 40px;

  gap: 30px;

  align-items: start;

  padding: 45px 0;

  border-bottom: 1px solid var(--line);

  text-decoration: none;

  transition: padding .25s ease;

}

.chapter:hover {

  padding-left: 12px;

  padding-right: 12px;

}

.chapter-number {

  color: var(--accent);

  font-family: "DM Mono", monospace;

  font-size: .72rem;

}

.chapter-meta {

  margin: 0 0 12px;

  color: var(--muted);

  font-family: "DM Mono", monospace;

  font-size: .62rem;

  letter-spacing: .1em;

}

.chapter h3 {

  margin: 0 0 20px;

  font-size: clamp(1.8rem, 3vw, 3rem);

  line-height: 1;

  letter-spacing: -.05em;

}

.chapter-main > p:last-child {

  max-width: 650px;

  margin: 0;

  color: var(--muted);

  font-size: .9rem;

}

.chapter-arrow {

  font-size: 1.4rem;

  text-align: right;

}


/* =========================================================
   RESEARCH
========================================================= */

.research {

  padding-top: 120px;

  padding-bottom: 140px;

}

.research-grid {

  display: grid;

  grid-template-columns: 1fr 1fr;

  gap: 110px;

  margin-top: 55px;

}

.research-grid h2 {

  margin: 0;

  font-size: clamp(2.8rem, 5vw, 5rem);

  line-height: .98;

  letter-spacing: -.065em;

}

.research-grid p {

  color: #55524b;

}

.research-tags {

  display: flex;

  flex-wrap: wrap;

  gap: 8px;

  margin-top: 35px;

}

.research-tags span {

  padding: 7px 10px;

  border: 1px solid var(--line);

  font-family: "DM Mono", monospace;

  font-size: .6rem;

}


/* =========================================================
   QUOTE
========================================================= */

.quote-section {

  padding: 130px 0;

  background: var(--dark);

  color: white;

}

.quote-mark {

  margin: 0 0 25px;

  color: var(--accent);

  font-size: 5rem;

  line-height: .5;

}

.quote-section blockquote {

  max-width: 1000px;

  margin: 0;

  font-size: clamp(2.4rem, 5vw, 5rem);

  font-weight: 600;

  line-height: 1.05;

  letter-spacing: -.06em;

}

.quote-caption {

  margin-top: 40px;

  color: #999;

  font-family: "DM Mono", monospace;

  font-size: .62rem;

  letter-spacing: .1em;

}


/* =========================================================
   RESEARCH HISTORY
========================================================= */

.research-history {

  padding-top: 120px;

  padding-bottom: 130px;

}

.research-history-grid {

  display: grid;

  grid-template-columns: repeat(3, 1fr);

  gap: 30px;

  margin-top: 60px;

}

.year-big {

  margin: 0 0 20px;

  color: var(--accent);

  font-family: "DM Mono", monospace;

  font-size: .8rem;

}

.research-history h3 {

  margin: 0 0 12px;

  font-size: 1.35rem;

  line-height: 1.15;

  letter-spacing: -.03em;

}

.research-history p:last-child {

  color: var(--muted);

  font-size: .88rem;

}


/* =========================================================
   ABOUT
========================================================= */

.about {

  padding: 120px 0;

  background: var(--paper);

  border-top: 1px solid var(--line);

}

.about-grid {

  display: grid;

  grid-template-columns: 1fr 1fr;

  gap: 110px;

}

.about h2 {

  margin-top: 35px;

  font-size: clamp(3rem, 5vw, 5rem);

  line-height: .95;

  letter-spacing: -.065em;

}

.about-text {

  max-width: 540px;

  color: #55524b;

}

.about-text p:first-child {
  margin-top: 0;
}

.social-links {

  display: flex;

  flex-wrap: wrap;

  gap: 22px;

  margin-top: 45px;

}

.social-links a {

  border-bottom: 1px solid var(--text);

  text-decoration: none;

  font-family: "DM Mono", monospace;

  font-size: .65rem;

}

.social-links a:hover {

  color: var(--accent);

  border-color: var(--accent);

}


/* =========================================================
   FOOTER
========================================================= */

.footer {

  padding: 28px 0;

  border-top: 1px solid var(--line);

}

.footer-inner {

  display: flex;

  justify-content: space-between;

  gap: 30px;

  color: var(--muted);

  font-family: "DM Mono", monospace;

  font-size: .58rem;

  letter-spacing: .06em;

}


/* =========================================================
   STORY PAGE HERO
========================================================= */

.story-hero {

  padding-top: 130px;

  padding-bottom: 150px;

}

.story-number {

  margin: 0 0 15px;

  color: var(--accent);

}

.story-location {

  margin: 0 0 60px;

  color: var(--muted);

}

.story-hero h1 {

  max-width: 950px;

  margin: 0;

  font-size: clamp(4rem, 8vw, 8rem);

  font-weight: 800;

  line-height: .88;

  letter-spacing: -.08em;

}

.story-hero h1 em {

  color: var(--accent);

  font-style: normal;

}

.story-intro {

  max-width: 620px;

  margin: 60px 0 0;

  color: #5a5750;

  font-size: 1.1rem;

}


/* =========================================================
   STORY BODY
========================================================= */

.story-body {

  display: grid;

  grid-template-columns: 180px 1fr;

  gap: 80px;

  padding-top: 110px;

  padding-bottom: 120px;

  border-top: 1px solid var(--line);

}

.story-side {

  padding-top: 8px;

  color: var(--muted);

  font-family: "DM Mono", monospace;

  font-size: .62rem;

  letter-spacing: .1em;

}

.story-body article {

  max-width: 720px;

  font-size: 1.05rem;

  color: #4f4d47;

}

.story-body article p {

  margin: 0 0 30px;

}

.story-body .dropcap::first-letter {

  float: left;

  margin: 8px 12px 0 0;

  color: var(--accent);

  font-size: 5rem;

  font-weight: 700;

  line-height: .75;

}

.story-body .emphasis {

  color: var(--text);

  font-size: 1.2rem;

  font-weight: 700;

}

.story-break {

  margin: 70px 0;

  padding: 45px 0;

  border-top: 1px solid var(--line);

  border-bottom: 1px solid var(--line);

}

.story-break span {

  color: var(--accent);

}

.story-break p {

  margin: 15px 0 0 !important;

  color: var(--text);

  font-size: 2rem;

  font-weight: 700;

  letter-spacing: -.04em;

}


/* =========================================================
   STORY HIGHLIGHT
========================================================= */

.story-highlight {

  padding: 130px 0;

  background: var(--dark);

  color: white;

}

.story-highlight.soft {

  background: #e8e3d9;

  color: var(--text);

}

.story-highlight .story-number {

  margin-bottom: 35px;

}

.story-highlight h2 {

  max-width: 950px;

  margin: 0;

  font-size: clamp(3.5rem, 7vw, 7rem);

  line-height: .9;

  letter-spacing: -.075em;

}

.story-highlight p:last-child {

  max-width: 500px;

  margin-top: 45px;

  color: #aaa;

}

.story-highlight.soft p:last-child {

  color: var(--muted);

}


/* =========================================================
   THESIS
========================================================= */

.story-body-paper article h2 {

  margin: 0 0 45px;

  color: var(--text);

  font-size: clamp(2rem, 4vw, 3.5rem);

  line-height: 1.05;

  letter-spacing: -.05em;

}


/* =========================================================
   FUTURE CHAPTER
========================================================= */

.future-section {

  padding: 150px 0;

  background: var(--paper);

  border-top: 1px solid var(--line);

}

.future-section h2 {

  max-width: 900px;

  margin: 40px 0;

  font-size: clamp(4rem, 8vw, 8rem);

  line-height: .88;

  letter-spacing: -.08em;

}

.future-section h2 em {

  color: var(--accent);

  font-style: normal;

}

.future-section > .container > p:last-child {

  color: var(--muted);

  font-size: 1rem;

}


/* =========================================================
   STORY NAVIGATION
========================================================= */

.story-navigation {

  border-top: 1px solid var(--line);

}

.story-nav-grid {

  display: grid;

  grid-template-columns: 1fr 1fr;

}

.story-nav-grid a {

  padding: 45px 0;

  text-decoration: none;

  font-family: "DM Mono", monospace;

  font-size: .65rem;

  color: var(--muted);

}

.story-nav-grid a + a {

  padding-left: 40px;

  border-left: 1px solid var(--line);

  text-align: right;

}

.story-nav-grid strong {

  display: inline-block;

  margin-top: 8px;

  color: var(--text);

  font-family: "Manrope", sans-serif;

  font-size: 1.3rem;

  letter-spacing: -.03em;

}

.story-nav-grid a:hover strong {

  color: var(--accent);

}


/* =========================================================
   STORY TAGS
========================================================= */

.story-tags {

  margin-top: 45px;

}


/* =========================================================
   RESPONSIVE
========================================================= */

@media (max-width: 850px) {

  .hero-bottom {

    flex-direction: column;

    align-items: flex-start;

  }

  .intro-grid,
  .research-grid,
  .about-grid {

    grid-template-columns: 1fr;

    gap: 50px;

  }

  .research-history-grid {

    grid-template-columns: 1fr;

  }

  .story-body {

    grid-template-columns: 1fr;

    gap: 30px;

  }

  .story-side {

    padding: 0;

  }

}


@media (max-width: 600px) {

  .container {

    width: min(100% - 30px, 1120px);

  }

  .nav {

    height: 65px;

  }

  .nav-links {

    gap: 14px;

  }

  .nav-links a {

    font-size: .55rem;

  }

  .hero {

    min-height: auto;

    padding-top: 75px;

    padding-bottom: 90px;

  }

  .hero h1,
  .story-hero h1 {

    font-size: clamp(3.4rem, 17vw, 5.5rem);

  }

  .hero-bottom {

    margin-top: 50px;

  }

  .route {

    flex-wrap: wrap;

    white-space: normal;

  }

  .intro,
  .research,
  .about,
  .chapters,
  .research-history {

    padding-top: 85px;

    padding-bottom: 90px;

  }

  .chapter {

    grid-template-columns: 40px 1fr 20px;

    gap: 12px;

    padding: 32px 0;

  }

  .chapter h3 {

    font-size: 1.65rem;

  }

  .story-hero {

    padding-top: 80px;

    padding-bottom: 90px;

  }

  .story-location {

    margin-bottom: 45px;

  }

  .story-intro {

    margin-top: 45px;

    font-size: .95rem;

  }

  .story-body {

    padding-top: 75px;

    padding-bottom: 80px;

  }

  .story-highlight,
  .future-section {

    padding: 90px 0;

  }

  .story-highlight h2,
  .future-section h2 {

    font-size: 3.5rem;

  }

  .story-nav-grid {

    grid-template-columns: 1fr;

  }

  .story-nav-grid a + a {

    padding-left: 0;

    border-left: 0;

    border-top: 1px solid var(--line);

    text-align: left;

  }

  .footer-inner {

    flex-direction: column;

    gap: 8px;

  }

}
```
