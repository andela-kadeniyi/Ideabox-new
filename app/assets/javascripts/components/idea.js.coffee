@Idea = React.createClass
  render: ->
    React.DOM.div
      className: 'section'
      React.DOM.div
        className: "card #{@props.idea[0]} idea-container black-text"
        React.DOM.div
          className: 'card-content black-text idea'
          React.DOM.span className: 'card-title', @props.idea[1]
          React.DOM.p null, @props.idea[2]
        React.DOM.div
          className: 'card-action'
          React.DOM.label
            className: 'black-text','2 comments'
          React.DOM.label
            className: 'black-text right','2 likes'
