Before "@testelabs" do
  @nome = Faker::Name.first_name
  @job = Faker::Job.title

  @body = { name: @nome, job: @job }

  @testelabs = Api.new(@body)
end
