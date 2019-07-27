import React from "react"
import PropTypes from "prop-types"
import QuizItem from './QuizItem'
import {AppProvider, Page, Layout} from '@shopify/polaris'

class QuizList extends React.Component {
  render () {
    console.log(this.props);
    const quizzes = this.props.quizzes.map((item, key) => (
      <QuizItem quiz={item} key={key}/>
    ));

    return (
      <AppProvider>
        <Page title='Find a Quiz'>
          <Layout>
        <Layout.Section>
          {quizzes}
        </Layout.Section>
        </Layout>
        </Page>
      </AppProvider>
    );
    
  }
}

QuizList.propTypes = {
  quizzes: PropTypes.array
};
export default QuizList
