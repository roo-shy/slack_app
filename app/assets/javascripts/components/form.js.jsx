var Form = React.createClass({

  theForm(event){
    event.preventDefault();
    var theText = this.refs.convo.value;
    // Save text
    // POST json date to API endpoint
    var theJSON = {
      text: {
        content: theText
      }
    };

    var route = ("/api/texts/" + this.props.chatroom_id + ".json");

    fetch(route, {
      method: 'post',
      headers: {
        "Content-type": "application/json"
      },
      credentials: 'include',
      body: JSON.stringify(theJSON)
    }).then(function(response){
      return response.json();
    }).then(function(data){
      // refresh post list in room (3 sec interval after initial refresh at render)

    })

  },
  render(){
    return <form onSubmit={this.theForm}>
    <div className="form-group">
     <input type="text" ref="convo" className="form-control"/>
    </div> 
    <div className="form-group">
      <button className="btn btn-primary">Send</button>
    </div>
  </form>
  }
})
