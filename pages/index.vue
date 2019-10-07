<template>

  <section class="container">
    <div class="columns is-variable is-8-desktop">
      <div class="column has-text-left-desktop introduction is-3-desktop">
        <figure class="image is-square" title="avatar">
          <img src="avatar.svg" alt="avatar" />
        </figure>
        <div class="">
          <h1 class="title is-size-1-desktop">
            Nakaya
          </h1>
          <h2 class="subtitle is-size-3-desktop">
            a Web developer
          </h2>
          <div class="links columns is-mobile is-multiline is-variable is-1-desktop">
            <a href="https://pleroma.eniehack.net/eniehack" rel="noopener me" target="_blank" class="column" title="Pleroma">
              <i class="fa fa-pleroma fa-3x" aria-hidden="true" />
            </a>
            <a href="https://liberapay.com/eniehack" rel="noopener me" target="_blank" class="column" title="Liberapay">
              <i class="fa fa-liberapay fa-3x" aria-hidden="true" />
            </a>
            <a href="https://twitter.com/eniehack" rel="noopener me" target="_blank" class="column" title="twitter">
              <i class="fa fa-twitter fa-3x" aria-hidden="true" />
            </a>
            <a href="https://github.com/eniehack" rel="noopener me" target="_blank" class="column" title="github">
              <i class="fa fa-github fa-3x" aria-hidden="true" />
            </a>
            <a href="https://keybase.io/eniehack" rel="noopener me" target="_blank" class="column" title="keybase">
              <i class="fa fa-keybase fa-3x" aria-hidden="true" />
            </a>
            <a href="https://matrix.to/#/@eniehack:matrix-jp.net" rel="noopener me" target="_blank" class="column" title="Matrix">
              <i class="fa fa-matrix-org fa-3x" aria-hidden="true" />
            </a>
            <a href="xmpp:eniehack@jabber.at" rel="noopener me" target="_blank" class="column" title="XMPP">
              <i class="fa fa-xmpp fa-3x" aria-hidden="true" />
            </a>
          </div>
        </div>
      </div>
      <div class="content column is-three-fifths-desktop">
          <b-tabs>
            <b-tab-item label="About">
                <h1 class="title is-size-2-desktop" id="About">About</h1>
                <p>非情報系高専生です。</p>
                <p>気の赴くままにコードを書いています。</p>
                <p>普段はWebバックエンドをやっていますが、たまにフロントエンドやArduinoをいじっています。</p>
            </b-tab-item>

            <b-tab-item label="Interest">
              <h1 class="title is-size-2-desktop" id="interest">Interest</h1>
              <h2 class="has-text-weight-light is-size-3-desktop">Decenterlized Network</h2>
              <h2 class="has-text-weight-light is-size-3-desktop">Document format(Markup language)</h2>
            </b-tab-item>

            <b-tab-item label="Like">
              <h1 class="title is-size-2-desktop" id="like">Like</h1>
              <h2 class="has-text-weight-light is-size-3-desktop">Functional Programming</h2>
              <h2 class="has-text-weight-light is-size-3-desktop">Free Software(Open Source Software)</h2>
              <h2 class="has-text-weight-light is-size-3-desktop">ArchLinux</h2>
              <h2 class="has-text-weight-light is-size-3-desktop">Visual Novel</h2>
            </b-tab-item>

            <b-tab-item label="Skills">
              <h1 class="title is-size-2-desktop" id="skills">Skills</h1>
              <h2 class="has-text-weight-light is-size-3-desktop">Golang</h2>
              <h2 class="has-text-weight-light is-size-3-desktop">ESP32</h2>
              <h2 class="has-text-weight-light is-size-3-desktop">Arduino</h2>
              <h2 class="has-text-weight-light is-size-3-desktop">Linuxサーバ運用</h2>
            </b-tab-item>
            <b-tab-item label="Works">
              <h1 class="title is-size-2-desktop" id="works">Works</h1>
              <h2 class="has-text-weight-light is-size-3-desktop">Golang</h2>
              <h2 class="has-text-weight-light is-size-3-desktop">ESP32</h2>
              <h2 class="has-text-weight-light is-size-3-desktop">Arduino</h2>
            </b-tab-item>
            <b-tab-item label="Links">
              <h1 class="title is-size-2-desktop" id="links">Links</h1>
              <p>Misskey</p>
              <p><a href="https://eniehack.hatenablog.com/">初代Blog</a></p>
              <p><a href="https://blog.eniehack.net/">2代目Blog</a></p>
            </b-tab-item>
          </b-tabs>
        </div>
      </div>
  </section>
</template>
