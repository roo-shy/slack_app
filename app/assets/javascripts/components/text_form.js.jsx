// 
// var TextForm = React.createClass({
// handleButtonClick(){
//     var component = this;
//     var theMemo = this.refs.content.getDOMNode().value;
//
//     var textJSON = {
//       text: {
//         content: theMemo
//       }
//     }
//
//     $.post("/api/chatrooms/" + this.props.chatroom.id + "/texts.json", textJSON).then(function(json){
//       component.refs.content.getDOMNode().value = "";
//
//       window.location = window.location;
//     });
//   },
//
//   render: function() {
//     return <div className="text_form">
//       <input type="text" ref="content"></input>
//       <button onClick={this.handleButtonClick}>Submit</button>
//     </div>;
//   }
// });
