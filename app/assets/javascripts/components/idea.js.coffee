@Idea = React.createClass
  render: ->
    React.DOM.div
      className: "card #{@props.idea[0]} idea-container black-text section a"
      React.DOM.div
        className: 'card-content white-text idea'
        React.DOM.span className: 'card-title', @props.idea[1]
        React.DOM.p className: 'ellipsis', @props.idea[2]
      React.DOM.div
        className: 'card-action'
        React.DOM.label
          className: 'white-text','2 comments'
        React.DOM.label
          className: 'white-text right','2 likes'
