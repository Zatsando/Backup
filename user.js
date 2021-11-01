//This is my Mozilla Firefox user.js. It mostly focuses on privacy
//because FF is not a privacy friendly browser by default but it's
//a customizable one!

//PRIVACY
user_pref("privacy.firstparty.isolate", true);

user_pref("privacy.resistFingerprinting", true);

user_pref("privacy.trackingprotection.fingerprinting.enabled", true);

user_pref("privacy.trackingprotection.cryptomining.enabled", true);

user_pref("privacy.trackingprotection.enabled", true);

user_pref("browser.send_pings", false);

user_pref("browser.urlbar.speculativeConnect.enabled", false);

user_pref("dom.event.clipboardevents.enabled", false);

user_pref("media.eme.enabled", false);

user_pref("media.gmp-widevinecdm.enabled", false);

user_pref("media.navigator.enabled", false);

user_pref("network.cookie.cookieBehavior", 1);

user_pref("network.http.referer.XOriginPolicy", 2);

user_pref("network.http.referer.XOriginTrimmingPolicy", 2);

user_pref("webgl.disabled", true);

user_pref("browser.sessionstore.privacy_level", 1);

user_pref("beacon.enabled", false);

user_pref("browser.safebrowsing.downloads.remote.enabled", false);

user_pref("network.dns.disablePrefetch", true);

user_pref("network.dns.disablePrefetchFromHTTPS", true);

user_pref("network.predictor.enabled", false);

user_pref("network.predictor.enable-prefetch", false);

user_pref("network.prefetch-next", false);

user_pref("network.IDN_show_punycode", true);

//APPEARANCE
user_pref("browser.uiCustomization.state", "{\"placements\":{\"widget-overflow-fixed-list\":[],\"nav-bar\":[\"back-button\",\"forward-button\",\"stop-reload-button\",\"sidebar-button\",\"urlbar-container\",\"developer-button\",\"downloads-button\",\"fxa-toolbar-menu-button\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[\"tabbrowser-tabs\",\"new-tab-button\",\"privatebrowsing-button\",\"alltabs-button\"],\"PersonalToolbar\":[\"personal-bookmarks\"]},\"seen\":[\"developer-button\"],\"dirtyAreaCache\":[\"nav-bar\",\"PersonalToolbar\",\"toolbar-menubar\",\"TabsToolbar\"],\"currentVersion\":17,\"newElementCount\":3}");

user_pref("ui.systemUsesDarkTheme", 1);

user_pref("browser.toolbars.bookmarks.visibility" , "always");

user_pref("toolkit.legacyUserProfileCustomizations.stylesheets" , true);
