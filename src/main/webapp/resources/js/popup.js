!(function ($, window, document, undefined) {

  var Plugin = function (elem, value) {
    this.$elem = elem;
    this.$btn = $(value.classname);
    this.$oMask = $('#mask_shadow');
    this.$oTitle = this.$elem.find('.title');
    this.$title_text = this.$oTitle.find('p');
    this.$close = this.$oTitle.find('span');
    this.$close2 =  $(value.submit);

    this.b_stop = true; // 防止重复点击
    this.page_w = $(window).width();
    this.page_h = $(window).height();

  };

  Plugin.prototype = {
    inital: function () { // 初始化
      var self = this;
      this.$title_text.text(this.$title_text.attr('data-title'));
      this.$elem.css({left: (this.page_w - this.$elem.width()) / 2});

/*      this.$elem.on('click', function () {
        return false;
      });*/

      this.$btn.each(function(){
    	  $(this).on('click', function () {
    	        self.popbox();

    	        self.b_stop = true;

    	        return false;
    	      });
      });

      this.$close.on('click', function () {
        self.closePopbox();

        return false;
      });
      
      this.$close2.on('click', function () {
          self.closePopbox();

          return false;
        });

/*      $(document.body).on('click', function () {
        self.closePopbox();
      });*/


    },

    popbox: function () { // 显示弹窗
      var self = this;

      this.$oMask.show().animate({opacity: 1});;
      this.$elem.show().animate({opacity: 1, top: 60}, function () {
        self.b_stop = true;
      });
    },

    closePopbox: function () { // 关闭弹窗
      var self = this;

      if (this.b_stop) {
        this.$oMask.animate({opacity: 0}, function () {
          $(this).hide();
        });;
        this.$elem.animate({opacity: 0, top: 150}, function () {
          $(this).hide();
        });
      }
    },



    constructor: Plugin
  };

  $.fn.popup = function (options) {
    var plugin = new Plugin(this, options);

    return plugin.inital();
  };

})(window.jQuery, window, document);