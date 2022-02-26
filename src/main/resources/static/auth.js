let username = $('#username');
let password = $('#password');
let sendBtn = $('#sendBtn');

function getCookie(cname) {
  let name = cname + "=";
  let decodedCookie = decodeURIComponent(document.cookie);
  let ca = decodedCookie.split(';');
  for (let i = 0; i < ca.length; i++) {
    let c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
}

const send = () => {
  let params = {
    username: encodeURIComponent(username.val()),
    password: encodeURIComponent(password.val())
  }

  let cookie = getCookie('XSRF-TOKEN');

  $.ajax({
    url: '/sec/auth/login',
    type: 'post',
    headers: {
      'X-XSRF-TOKEN': cookie,
    },
    data: params,
    contentType: 'application/x-www-form-urlencoded',
    dataType: 'json',
    statusCode: {
      200: function (result) {
        return result.json
      }
    }
  });
}

sendBtn.click(() => {
  send();
})