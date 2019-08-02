var QuizzesContainer = React.createClass({
	componentWillMount(){
		this.fetchQuizzes();
	},

	fetchQuizzes() {

		$.ajax({
	      url: this.props.quizzesPath,
	      
	      dataType: 'json',
	      
	      success: function(data) {
	        this.setState({quizzes: data});
	      }.bind(this),

	      error: function(data) {
	      	this.setState({quizzes: []});
	      }.bind(this)
	    });
	},

	searchQuizzes(event) {
		if (event.target.value) {
			$.ajax({
		      url: this.props.searchPath+"?query="+event.target.value,
		      
		      dataType: 'json',
		      
		      success: function(data) {
		        this.setState({quizzes: data});
		      }.bind(this),

		      error: function(data) {
		      	this.setState({quizzes: []});
		      }.bind(this)
		    });
		}
		else{
			this.fetchQuizzes();
		}

	},
	
	getInitialState() {
		return { squizzes: [] };
	},

	render() {
		
		return (
			<div>
				<Quizzes quizzes={this.state.quizzes} />
        <QuizzesSearch searchPath={this.props.searchPath} submitPath={this.searchQuizzes} cancelPath={this.fetchQuizzes}/>
			</div>
	);

}
});