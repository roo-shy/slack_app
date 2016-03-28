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
    this.textInterval = setInterval(this.fetchTexts, 3000);
  },

  componentWillUnmount(){
    clearInterval(textInterval);
  },

  render: function() {
    return <div>
     {this.state.chatroom.name} ({this.state.chatroom.texts.length})
    <div className="texts">
    {this.state.chatroom.texts.map(function(text){
      return <Text text={text}></Text>
    })}
    </div>

    <TextForm chatroom={this.state.chatroom}></TextForm>
    </div>;
  }
});
