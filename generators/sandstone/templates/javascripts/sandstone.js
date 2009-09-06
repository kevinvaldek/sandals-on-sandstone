var Sandals = {
    notice: null
};

ActionChain.add({
   '#notice': function() {
       Sandals.notice = new Notice(this);
       // flash notice if it contains a message on dom ready
       if(this.get('text') != '') {
           Sandals.notice.flash();
       }
   },

   '.fieldset_link': function() {
       this.fieldset = this.getNext().fade('hide');
       this.addEvent('click', function() {
           this.fieldset.fade('in');
           return false;
       });
   },

   'textarea': function() {
       this.moorte();
   },

   '.send_form:click': function(e) {
       e.preventDefault()
       this.form.set('send', {
           onSuccess: function(responseText) {
               Sandals.notice.flash(responseText);
           }
       }).send();
   }
});
