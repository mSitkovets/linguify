atom_feed do |feed|
  feed.title "Who created #{@quiz.title}"
  feed.updated @latest_quiz.try(:updated_at)

 
  feed.entry(@quiz) do |entry|
    entry.title "Quiz #{@quiz.id}" 
    entry.summary type: 'xhtml' do |xhtml|

      xhtml.table do 
        xhtml.tr do
          xhtml.th 'Title' 
          xhtml.th 'Description' 
          xhtml.th 'Language Learning'
          xhtml.th 'Instruction Language'
          xhtml.th 'Difficulty Level'
          xhtml.th 'Author ID'
        end
          xhtml.tr do
            xhtml.td @quiz.title
            xhtml.td @quiz.description
            xhtml.td @quiz.language_learning
            xhtml.td @quiz.instruction_language
            xhtml.td @quiz.difficulty_level
            xhtml.td @quiz.user_id
          end 
        end
      end
    end
    
  end
