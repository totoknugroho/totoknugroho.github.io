/* Guest-style comment section: no login, replies from the site owner.
   Put <div id="comments"></div> on a page, then load this file. */
(function () {
  // ---- 1. Fill these two in (Supabase -> Project Settings -> API) ----
  var SUPABASE_URL = 'https://YOUR-PROJECT.supabase.co';
  var SUPABASE_KEY = 'YOUR_ANON_OR_PUBLISHABLE_KEY';
  var OWNER_NAME   = 'Totok';
  // --------------------------------------------------------------------

  var root = document.getElementById('comments');
  if (!root) return;

  var pageId = location.pathname;
  var api = SUPABASE_URL + '/rest/v1/comments';
  var headers = { apikey: SUPABASE_KEY, 'Content-Type': 'application/json' };

  root.innerHTML =
    '<form class="c-form" novalidate>' +
      '<label for="c-name">Nama</label>' +
      '<input id="c-name" name="name" maxlength="60" autocomplete="name" required>' +
      '<label for="c-msg">Pertanyaan atau komentar</label>' +
      '<textarea id="c-msg" name="message" rows="4" maxlength="2000" required></textarea>' +
      '<input class="c-trap" name="website" tabindex="-1" autocomplete="off" aria-hidden="true">' +
      '<div class="c-actions"><button type="submit">Kirim komentar</button>' +
      '<span class="c-status" role="status" aria-live="polite"></span></div>' +
    '</form>' +
    '<div class="c-list" aria-live="polite"></div>';

  var form = root.querySelector('.c-form');
  var list = root.querySelector('.c-list');
  var status = root.querySelector('.c-status');
  var button = form.querySelector('button');

  function fmt(iso) {
    return new Date(iso).toLocaleDateString('id-ID', { day: 'numeric', month: 'short', year: 'numeric' });
  }

  function el(tag, cls, text) {
    var n = document.createElement(tag);
    if (cls) n.className = cls;
    if (text != null) n.textContent = text; // textContent: visitor input is never parsed as HTML
    return n;
  }

  function render(items) {
    list.textContent = '';
    if (!items.length) {
      list.appendChild(el('p', 'c-empty', 'Belum ada komentar. Jadi yang pertama bertanya.'));
      return;
    }
    items.forEach(function (c) {
      var item = el('article', 'c-item');
      var head = el('div', 'c-head');
      head.appendChild(el('strong', 'c-name', c.name));
      head.appendChild(el('span', 'c-date', fmt(c.created_at)));
      item.appendChild(head);
      item.appendChild(el('p', 'c-text', c.message));
      if (c.reply) {
        var r = el('div', 'c-reply');
        r.appendChild(el('strong', 'c-reply-by', 'Balasan dari ' + OWNER_NAME));
        r.appendChild(el('p', 'c-text', c.reply));
        item.appendChild(r);
      }
      list.appendChild(item);
    });
  }

  function load() {
    var url = api + '?select=name,message,reply,created_at' +
      '&page_id=eq.' + encodeURIComponent(pageId) +
      '&order=created_at.asc';
    fetch(url, { headers: headers })
      .then(function (r) { if (!r.ok) throw new Error(r.status); return r.json(); })
      .then(render)
      .catch(function () {
        list.textContent = '';
        list.appendChild(el('p', 'c-empty', 'Komentar belum bisa dimuat. Coba muat ulang halaman.'));
      });
  }

  form.addEventListener('submit', function (e) {
    e.preventDefault();
    var name = form.name.value.trim();
    var message = form.message.value.trim();

    if (form.website.value) return; // honeypot: bots fill this, people never see it
    if (!name || !message) { status.textContent = 'Isi nama dan komentar dulu.'; return; }

    try {
      var last = +localStorage.getItem('c_last') || 0;
      if (Date.now() - last < 30000) { status.textContent = 'Tunggu sebentar sebelum mengirim lagi.'; return; }
    } catch (err) {}

    button.disabled = true;
    status.textContent = 'Mengirim…';

    fetch(api, {
      method: 'POST',
      headers: Object.assign({ Prefer: 'return=minimal' }, headers),
      body: JSON.stringify({ page_id: pageId, name: name, message: message })
    })
      .then(function (r) {
        if (!r.ok) throw new Error(r.status);
        try { localStorage.setItem('c_last', String(Date.now())); } catch (err) {}
        form.message.value = '';
        status.textContent = 'Terkirim. Terima kasih!';
        load();
      })
      .catch(function () { status.textContent = 'Gagal mengirim. Coba lagi sebentar lagi.'; })
      .then(function () { button.disabled = false; });
  });

  load();
})();
