class Spinach::Features::TestBeingSkippedWhenIndentationIsWrong < Spinach::FeatureSteps
  step 'I visit the root path' do
    visit '/'
  end

  step 'I should be greeted' do
    must_have_text 'Hi there!'
  end
end
