describe 'InstructorType' do
  let(:course_type) { GraphqlServerSchema.types['Instructor'] }
  let(:instructor) { create(:instructor) }

  describe 'name filed' do
    it 'returns the instructor\'s name' do
      name_field = course_type.fields['name']
      expect(name_field.resolve(instructor, nil, nil)).to eq(instructor.name)
    end
  end
end
