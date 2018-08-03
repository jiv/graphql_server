describe 'QueryType#course' do
  let(:course_field) { GraphqlServerSchema.types['Query'].fields['course'] }
  let!(:course) { create(:course, slug: 'this is a test slug') }

  context 'querying by id' do
    it 'returns a course' do
      result = course_field.resolve(nil, { id: course.id }, {})
      expect(result).to eq course
    end
  end

  context 'querying by slug' do
    it 'returns a course' do
      result = course_field.resolve(nil, { slug: 'test' }, {})
      expect(result).to eq course
    end
  end
end
