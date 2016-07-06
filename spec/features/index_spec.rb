describe 'index', type: :feature do
  before do
    visit '/'
  end

  xit 'says Hey Mikey!!! with a h1 tag' do
    expect(page).to have_selector 'h1'
    within 'h1' do
      expect(page).to have_content 'Hey Mikey!!!'
    end
  end

  xit 'shows a link to documentation' do
    expect(page).to have_css 'a', text: 'Read Documentation Online'
  end

  xit 'shows an image' do
    expect(page).to have_css 'img[src="/images/middleman-logo.svg"]'
  end

  xit 'displays project list' do
    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'My First Website'
      expect(page).to have_content 'FizzBuzz'
    end
  end

  xit 'renders footer partial' do
    expect(page).to have_selector 'footer'
    within 'footer' do
      expect(page).to have_content 'My Portfolio'
      expect(page).to have_content 'Built with the awsome Middleman framework'
    end
  end

  xit 'displays text added by js' do
    expect(page).to have_text 'Added this'
  end

  it 'navigates to Projects page' do
    within '#main-menu' do
      click_link 'Projects'
    end
    expect(page.current_path).to eq '/projects'
  end

end
