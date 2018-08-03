describe 'CourseType' do
  let(:course_type) { GraphqlServerSchema.types['Course'] }
  let(:course) { create(:course) }

  describe 'title filed' do
    it 'returns the course\'s title' do
      title_field = course_type.fields['title']
      expect(title_field.resolve(course, nil, nil)).to eq(course.title)
    end
  end

  describe 'slug field' do
    it 'returns the course\'s slug' do
      title_field = course_type.fields['slug']
      expect(title_field.resolve(course, nil, nil)).to eq(course.slug)
    end
  end

  describe 'instructor field' do
    it 'resolves the course\'s instructor' do
      title_field = course_type.fields['instructor']
      expect(title_field.resolve(course, nil, nil)).to eq(course.instructor)
    end
  end
end
