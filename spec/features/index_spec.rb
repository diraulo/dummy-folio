describe 'index', type: :feature do
  before do
    visit '/'
  end

  it 'says Hey Mikey!!! with a h1 tag' do
    expect(page).to have_selector 'h1'
    within 'h1' do
      expect(page).to have_content 'Hey Mikey!!!'
    end
  end

  it 'shows a link to documentation' do
    expect(page).to have_css 'a', text: 'Read Documentation Online'
  end

  it 'shows an image' do
    expect(page).to have_css 'img[src="/images/middleman-logo.svg"]'
  end
end
