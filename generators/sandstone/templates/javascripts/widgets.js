var Notice = new Class({

    Implements: Options,

    options: {
        displayTime: 5000
    },

    initialize: function(element) {
        this.element = document.id(element);
    },

    flash: function(text) {
        if(text) this.setText(text);
        this.show();
        this.fadeOut.delay(this.options.displayTime, this);
    },

    show: function() {
        this.element.setStyle('visibility', 'visible');
    },

    fadeOut: function() {
        this.element.set('morph', {
            // reset
            onComplete: function() {
                this.element.setStyle('opacity', 1);
                this.element.setStyle('visibility', 'hidden');
            }.bind(this)
        });
        this.element.morph({ opacity: 0 });
    },

    setText: function(text) {
        this.element.set('text', text);
    }

});