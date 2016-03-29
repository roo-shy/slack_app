var TextList = React.createClass({

  fetchTextsTimer: null,

  getInitialState(){
    return {
      texts: [],
      pageSize: 13,
      page: 0
    }
  },

  componentDidMount(){
    this.fetchTexts();
    this.fetchTextsTimer = setInterval(this.fetchTexts, 3000);
  },

  componentWillUnmount(){
    clearInterval(this.fetchTextsTimer);
  },

  prevPage(e){
    e.preventDefault()
    this.setState({page: this.state.page-1})
  },

  nextPage(e){
    e.preventDefault()
    this.setState({page: this.state.page+1})
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
    var page = this.state.page,
        size = this.state.pageSize,
        texts = this.state.texts,
        prevLink = <a href="#" onClick={this.prevPage}>prev page</a>,
        nextLink = <a href="#" onClick={this.nextPage}>next page</a>,
        maxPage = Math.ceil(texts.length / size) - 1

    // console.log(
    //   this.state,
    //   texts.slice(page*size, (page+1)*size)
    // )

    return <div className="container">
      {texts.slice(page*size, (page+1)*size).map(function(text){
        return <blockquote key={text.id}>{text.content}</blockquote>
      })}

      <div>
        {page !== 0 ? prevLink : ''}
        
        {page === maxPage ? '' : nextLink}
      </div>
    </div>;

  }
});
