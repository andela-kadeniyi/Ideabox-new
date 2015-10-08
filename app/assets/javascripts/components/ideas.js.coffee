@Ideas = React.createClass
  getInitialState: ->
    ideas: @props.data
  getDefaultProps: ->
    ideas: []
  render: ->
      React.DOM.div
        className: 'ideas'
        React.DOM.div
          className: 'article'
          for idea in @state.ideas
            React.createElement Idea, key: idea.id, idea: idea
