(function(){
  'use strict';

  $.sessionTimeout({
    message: 'Your session will be locked in one minute.',
    countdownMessage: 'Redirecting in <span class="label label-warning">{timer}</span> seconds.',
    ignoreUserActivity: true,
    keepAliveUrl: '',
    logoutUrl: '',
    redirUrl: '',
    warnAfter: 20000,
    redirAfter: 40000
  });
})(window);