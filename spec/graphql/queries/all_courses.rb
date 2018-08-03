describe "QueryType#allCourses" do
  let(:all_course_field) { GraphqlServerSchema.types["Query"].fields["allCourse"] }

  context 'when there are no courses' do
    it "returns an empty list" do
      result = all_course_field.resolve(nil, {}, {})
      expect(result).to be_empty
    end
  end

  context 'when there are courses' do
    let!(:courses) { create_list(:course, 5) }

    it "returns all courses" do
      result = all_course_field.resolve(nil, {}, {})
      expect(result.count).to eq Courses.count
    end
  end
end
