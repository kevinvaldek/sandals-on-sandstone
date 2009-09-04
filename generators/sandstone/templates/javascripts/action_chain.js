var ActionChain = {

    add: function(actions) {
        this.actions = $merge(this.actions, actions);
    },

    apply: function(element) {
        element = $(element);
        for(var index in this.actions) {
            var action = this.actions[index];
            index = index.split(':');
            var selector = index[0];
            var method = index.length > 1 ? index[1] : 'domready';
            element.getElements(selector).addEvent(method, action);
        }
    }
};

window.addEvent('domready', function() {
    ActionChain.apply(document);
});
