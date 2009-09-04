ActionChain.add({
   '.fieldset_link': function() {
       this.fieldset = this.getNext().fade('hide');
       this.addEvent('click', function() {
           this.fieldset.fade('in');
           return false;
       });
   }
});