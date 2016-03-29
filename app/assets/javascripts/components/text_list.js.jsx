var TextList = React.createClass({

 fetchTextsTimer: null,

  getInitialState(){
    return {
      texts: []
    }
  },

  componentDidMount(){
    this.fetchTexts();
    this.fetchTextsTimer = setInterval(this.fetchTexts, 3000);
  },

  componentWillUnmount(){
    clearInterval(this.fetchTextsTimer);
  },


  fetchTexts(){
    var component = this;
    fetch("/api/texts.json", {credentials: 'include'})
      .then(function(response){
        console.log(response);
        return response.json();
      })
      .then(function(jsonData){
          console.log(jsonData);
        component.setState({
          texts: jsonData.texts
        })
      })
  },

render: function() {
  console.log('hello rendderrr?')
    return <div className="container">
    {this.state.texts.map(function(text){
      return <blockquote key={text.id}>{text.content}</blockquote>
    })}
    </div>;

  }
});
