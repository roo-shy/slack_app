var Chatroom = React.createClass({

  getInitialState(){
    return {
      chatroom: {
        id: this.props.chatroom.id,
        texts: []
      }
    }
  },

  fetchTexts(){
    var component = this;

    $.getJSON("/api/chatrooms/" + this.state.chatroom.id + ".json")
      .done(function(json){
        component.setState({chatroom: json.chatroom});
      })
  },

  componentDidMout(){
    this.fetchTexts();
    this.textInterval = setInterval(this.fetchTexts,3000);
  },

  componentWillMount(){
    clearInterval(textInterval);
  },

  render: function() {
    return <div>
    <div className="texts">
    {this.state.chatroom.texts.map(function(text){
      return <Text text={text}/>
    })}
    </div>

    <NewText chatroom = {this.state.chatroom}/>
    </div>
  }
});
