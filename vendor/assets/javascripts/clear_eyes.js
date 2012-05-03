if (document.cookie == "") {
  document.cookie = 'devicePixelRatio = ' + window.devicePixelRatio;
  if (document.cookie != "devicePixelRatio=1") window.location.reload();
}