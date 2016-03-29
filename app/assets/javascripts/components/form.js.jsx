var Form = React.createClass({

  theForm(event){
    event.preventDefault();
    var theText = this.refs.convo.value;
    // Save text
    // POST json date to API endpoint
    var theJSON = {
      texts: {
        content: theContent
      }
    };

    fetch("/api/texts.json", {
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
      component.refs.convo.value = "";
    })

  },
  render(){
    return <form onSubmit={this.theForm}>
      <input type="text" ref="convo"/>

    <button>Send</button>
  </form>
  }
})
