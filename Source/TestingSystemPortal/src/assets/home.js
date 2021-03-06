$(document).ready(function() {
  //user-profile
  $('#btn-user-name-desktop').click(function() {
    window.location = '/ho-so-ca-nhan';
  });
  $('#btn-user-name-mobile').click(function() {
    window.location = '/ho-so-ca-nhan';
  });
  //Back to top
  if ($('#back-to-top').length) {
    var scrollTrigger = 100, // px
      backToTop = function() {
        var scrollTop = $(window).scrollTop();
        if (scrollTop > scrollTrigger) {
          $('#back-to-top').addClass('show');
        } else {
          $('#back-to-top').removeClass('show');
        }
      };
    backToTop();
    $(window).on('scroll', function() {
      backToTop();
    });
    $('#back-to-top').on('click', function(e) {
      e.preventDefault();
      $('html,body').animate(
        {
          scrollTop: 0
        },
        700
      );
    });
  }

  if (window.location.hash == '#_=_') {
    history.replaceState
      ? history.replaceState(null, null, window.location.href.split('#')[0])
      : (window.location.hash = '');
  }

  (x = 0), (numToShow = 4), (numToIncrement = 1);
  let item = $('.slidejob > .listSlide');
  item.slice(x, x + numToShow).show();
  $('#loadMore, #showLess').click(function() {
    if ($('#jobFamilySize').val() > 4) {
      x += 1 + $(this).is('#showLess') * -2;
      x = Math.min(Math.max(x, 0), item.length - numToShow);
      item
        .hide()
        .slice(x, x + numToShow)
        .show();
    }
  });

  $('#check-get').click(function() {
    if ($('#check-get').prop('checked') == true) {
      $('#check-get').val(1);
    }
  });

  //login
  function login() {
    var lang = getParameterByName('lang');
    if (!lang || lang.trim() == '') {
      lang = 'vi';
    }
    var username = $('#username')
      .val()
      .trim();
    var password = $('#password')
      .val()
      .trim();
    if (!username || !password) {
      if (lang == 'en') {
        $('#loginMessage').html("Input can't be blank!");
        $('#loginMessage')
          .removeClass('or')
          .addClass('error');
      } else {
        $('#loginMessage').html('Vui l??ng ??i???n ????? th??ng tin!');
        $('#loginMessage')
          .removeClass('or')
          .addClass('error');
      }
    } else {
      $.post(
        '/login_portal',
        {
          username: $('#username').val(),
          password: $('#password').val()
        },
        function(data, status) {
          if (data == 'error1') {
            if (lang == 'en') {
              $('#loginMessage').html(
                "Account doesn't exist or has not been activated!"
              );
              $('#loginMessage')
                .removeClass('or')
                .addClass('error');
            } else {
              $('#loginMessage').html(
                'T??i kho???n kh??ng t???n t???i ho???c ch??a ???????c k??ch ho???t!'
              );
              $('#loginMessage')
                .removeClass('or')
                .addClass('error');
            }
          }
          if (data == 'error2') {
            if (lang == 'en') {
              $('#loginMessage').html("Password doesn't correct!");
              $('#loginMessage')
                .removeClass('or')
                .addClass('error');
            } else {
              $('#loginMessage').html('Sai m???t kh???u!');
              $('#loginMessage')
                .removeClass('or')
                .addClass('error');
            }
          }
          if (data == 'error3') {
            if (lang == 'en') {
              $('#loginMessage').html('Username has already been changed!');
              $('#loginMessage')
                .removeClass('or')
                .addClass('error');
            } else {
              $('#loginMessage').html('Email ????ng nh???p ???? ?????i!');
              $('#loginMessage')
                .removeClass('or')
                .addClass('error');
            }
          }
          if (data == 'loginSuccess') {
            window.location = '/?lang=' + lang;
          }
        }
      );
    }
  }
  $('#btnLogin').click(function() {
    login();
  });
  $('#password').keypress(function(e) {
    if (e.which == 13) {
      login();
    }
  });

  //Register submit form
  function register() {
    var name = $('#register_fullname')
      .val()
      .trim();
    var pass = $('#register_password')
      .val()
      .trim();
    var email = $('#register_email')
      .val()
      .trim();
    var re_pass = $('#re_register_password')
      .val()
      .trim();
    var lang = getUrlParameter('lang');
    if (!lang || lang.trim() == '') {
      lang = 'vi';
    }
    //var re = new RegExp(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/);
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (name == '' || pass == '' || email == '') {
      if (lang == 'en') {
        $('#registerMessage').html("Input can't be blank!");
        $('#registerMessage')
          .removeClass('or')
          .addClass('error');
      } else {
        $('#registerMessage').html('Vui l??ng ??i???n ????? th??ng tin!');
        $('#registerMessage')
          .removeClass('or')
          .addClass('error');
      }
    } else if (!re.test(email)) {
      if (lang == 'en') {
        $('#registerMessage').html("Email doesn't follow format!");
        $('#registerMessage')
          .removeClass('or')
          .addClass('error');
      } else {
        $('#registerMessage').html('Email kh??ng ????ng ?????nh d???ng!');
        $('#registerMessage')
          .removeClass('or')
          .addClass('error');
      }
    } else if (pass != re_pass) {
      if (lang == 'en') {
        $('#registerMessage').html('New pass not match!');
        $('#registerMessage')
          .removeClass('or')
          .addClass('error');
      } else {
        $('#registerMessage').html('M???t kh???u m???i kh??ng kh???p nhau!');
        $('#registerMessage')
          .removeClass('or')
          .addClass('error');
      }
    } else if (pass.length < 6) {
      if (lang == 'en') {
        $('#registerMessage').html(
          "Password's length must more than 5 characters!"
        );
        $('#registerMessage')
          .removeClass('or')
          .addClass('error');
      } else {
        $('#registerMessage').html('M???t kh???u ph???i c?? ??t nh???t 6 k?? t???!');
        $('#registerMessage')
          .removeClass('or')
          .addClass('error');
      }
    } else {
      if (lang == 'en') {
        $('#registerMessage').html(
          "Your request is sending!<br>After successful registration, please check email to activate the account&nbsp;&nbsp;<img id='loading-img' src='/static/img/portal/loading.gif' width='30' height='30' />"
        );
        $('#registerMessage')
          .removeClass('or')
          .addClass('error');
      } else {
        $('#registerMessage').html(
          "Y??u c???u c???a b???n ??ang ???????c g???i ??i!<br>Sau khi ????ng k?? th??nh c??ng, vui l??ng check email ????? k??ch ho???t t??i kho???n&nbsp;&nbsp;<img id='loading-img' src='/static/img/portal/loading.gif' width='30' height='30' />"
        );
        $('#registerMessage')
          .removeClass('or')
          .addClass('error');
      }
      $.post(
        '/portal_register',
        {
          fullname: name,
          password: pass,
          email: email
        },
        function(data, status) {
          if (data == 'registerSuccess') {
            if (lang == 'en') {
              $('#registerMessage').html('Register successfully!');
              $('#registerMessage')
                .removeClass('or')
                .addClass('error');
            } else {
              $('#registerMessage').html('????ng k?? th??nh c??ng!');
              $('#registerMessage')
                .removeClass('or')
                .addClass('error');
            }
            setTimeout(function() {
              window.location = '/';
            }, 1000);
          }
          if (data == 'register_error2') {
            if (lang == 'en') {
              $('#registerMessage').html('This email has been used!');
              $('#registerMessage')
                .removeClass('or')
                .addClass('error');
            } else {
              $('#registerMessage').html('Email ???? ???????c s??? d???ng!');
              $('#registerMessage')
                .removeClass('or')
                .addClass('error');
            }
          }
          if (data == 'register_error1') {
            if (lang == 'en') {
              $('#registerMessage').html("Input can't be blank!");
              $('#registerMessage')
                .removeClass('or')
                .addClass('error');
            } else {
              $('#registerMessage').html('Vui l??ng ??i???n ????? th??ng tin!');
              $('#registerMessage')
                .removeClass('or')
                .addClass('error');
            }
          }
        }
      );
    }
  }
  $('#btnRegister').click(function() {
    register();
  });
  $('#re_register_password').keypress(function(e) {
    if (e.which == 13) {
      register();
    }
  });

  //Forgot password submit form
  $('#forgot_send').click(function() {
    var email_forgot = $('#forgot_email').val();
    var lang = getUrlParameter('lang');
    if (!lang || lang.trim() == '') {
      lang = 'vi';
    }
    if (lang == 'en') {
      $('#forgot_message').html(
        "Your request is sending!&nbsp;&nbsp;<img id='loading-img' src='/static/img/portal/loading.gif' width='30' height='30' />"
      );
      $('#forgot_message')
        .removeClass('or')
        .addClass('error');
    } else {
      $('#forgot_message').html(
        "??ang g???i y??u c???u&nbsp;&nbsp;<img id='loading-img' src='/static/img/portal/loading.gif' width='30' height='30' />"
      );
      $('#forgot_message')
        .removeClass('or')
        .addClass('error');
    }

    $.post(
      '/portal_forgotpassword',
      {
        email: email_forgot
      },
      function(data, status) {
        if (data == 'error1') {
          if (lang == 'en') {
            $('#forgot_message').html(
              "Email doesn't exist or hasn't been actived!!"
            );
            $('#forgot_message')
              .removeClass('or')
              .addClass('error');
          } else {
            $('#forgot_message').html(
              'Email kh??ng t???n t???i ho???c ch??a ???????c k??ch ho???t'
            );
            $('#forgot_message')
              .removeClass('or')
              .addClass('error');
          }
        }
        if (data == 'success') {
          if (lang == 'en') {
            $('#forgot_message').html('New password sent to your email');
            $('#forgot_message')
              .removeClass('or')
              .addClass('error');
          } else {
            $('#forgot_message').html(
              'M???t kh???u m???i ???? ???????c g???i v??o email c???a b???n'
            );
            $('#forgot_message')
              .removeClass('or')
              .addClass('error');
          }
        }
      }
    );
  });

  //logout
  $('#logout_portal_mobile').click(function() {
    $.post('/logout_portal', {}, function(data, stastus) {
      window.location = '/';
    });
  });
  $('#logout_portal').click(function() {
    $.post('/logout_portal', {}, function(data, stastus) {
      window.location = '/';
    });
  });

  //Set value of search input
  $('#id_search_job').val(getParameterByName('search'));
  //  $("#id_category_job").val(getParameterByName('category'));
  //  $("#id_localtion").val(getParameterByName('location'));

  // Search enter event
  $('#id_search_job').keypress(function(e) {
    if (e.which == 13) {
      //Enter key pressed
      searchJob();
    }
  });

  // Hi???n th??? th??ng b??o khi send contact
  /*if ($("#sendContact").length) {
	  $("#sendContact").modal("show");
	  setTimeout(function() {
		  $("#sendContact").modal("hide");
	  }, 3000);
  }*/

  var selectedCategoryOptions = {
    includeSelectAllOption: true,
    selectAllText: 'Ch???n t???t c???',
    nonSelectedText: 'L???a ch???n',
    allSelectedText: '???? ch???n t???t c???',
    nSelectedText: ' ?????a ??i???m ???????c ch???n',
    maxHeight: 300,
    enableFiltering: true,
    enableCaseInsensitiveFiltering: true,
    filterPlaceholder: 'T??m ki???m',
    templates: {
      filter:
        '<li class="multiselect-item filter"><div class="input-group"><input class="form-control multiselect-search" type="text"></div></li>',
      filterClearBtn: ''
    },
    buttonTitle: function(options, select) {
      return '';
    }
  };
  var selectedAddressOptions = {
    includeSelectAllOption: true,
    selectAllText: 'Ch???n t???t c???',
    nonSelectedText: 'L???a ch???n',
    allSelectedText: '???? ch???n t???t c???',
    nSelectedText: ' ?????a ??i???m ???????c ch???n',
    maxHeight: 300,
    enableFiltering: true,
    enableCaseInsensitiveFiltering: true,
    filterPlaceholder: 'T??m ki???m',
    templates: {
      filter:
        '<li class="multiselect-item filter"><div class="input-group"><input class="form-control multiselect-search" type="text" placeholder="T??m ki???m nhanh"></div></li>',
      filterClearBtn: ''
    },
    buttonTitle: function(options, select) {
      return '';
    }
  };
  $('#id_category_job').multiselect(selectedCategoryOptions);
  $('#id_localtion').multiselect(selectedAddressOptions);

  var category = getParameterByName('category');
  if (category) {
    var arrCategorySelected = category.trim().split(',');
    $('#id_category_job').multiselect('select', arrCategorySelected);
  }

  var address = getParameterByName('location');
  if (address) {
    var arrAddressSelected = address.trim().split(',');
    $('#id_localtion').multiselect('select', arrAddressSelected);
  }

  if (!$('#id_category_job').val()) {
    $('#id_category_job').val('');
  }
  if (!$('#id_localtion').val()) {
    $('#id_localtion').val('');
  }
});

function showMoreIncomeSection() {
  window.location.href =
    window.location.protocol + '//' + window.location.host + '/che-do-dai-ngo';
}

function showMoreEnvironment() {
  window.location.href =
    window.location.protocol + '//' + window.location.host + '/vi-sao-chon-cmc';
}

///get url parameter
var getUrlParameter = function getUrlParameter(sParam) {
  var sPageURL = decodeURIComponent(window.location.search.substring(1)),
    sURLVariables = sPageURL.split('&'),
    sParameterName,
    i;

  for (i = 0; i < sURLVariables.length; i++) {
    sParameterName = sURLVariables[i].split('=');

    if (sParameterName[0] === sParam) {
      return sParameterName[1] === undefined ? true : sParameterName[1];
    }
  }
};

$('#sendContactBtn').click(function() {
  var form_data = $('#sendContactForm')[0];
  var data = new FormData(form_data);
  $.ajax({
    type: 'POST',
    url: '/contact',
    processData: false,
    contentType: false,
    cache: false,
    data: data,
    success: function(data) {
      switch (data) {
        case 'true':
          $('#sendContact').modal('show');
          break;
        case 'emailExist':
          $('#emailExist').modal('show');
          break;
        case 'error':
          break;
      }
    }
  });
});
