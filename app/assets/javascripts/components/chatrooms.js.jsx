var chatrooms = React.createClass({

  fetchTextsTimer: null,

  getInitialState(){
    return {
      chatroom: {
          id: this.props.chatroom.id,
        texts: []
      }
    }
  },

  componentDidMount(){
    this.fetchTexts();
    this.fetchTextsTimer = setInterval(this.fetchTexts, 3000);
  },

  componentWillUnmount(){
    // Clean up after ourselves to prevent memory leaks
    clearInterval(this.fetchTextsTimer);
  },

  fetchTexts(){
    var component = this;
    fetch("/api/chatrooms/" + this.state.chatroom.id + ".json", {credentials: 'include'})
      .then(function(response){
        return response.json();
      })
      .then(function(json){
        component.setState({
          chatroom: json.chatroom
        });
      })
  },

  render: function() {
    return <div>
      <h3>Texts</h3>

      {this.state.chatroom.texts.map(function(text){
        return <blockquote key={text.id}>{text.user.username} says: {text.content}</blockquote>
      })}
    </div>;
  }
});
