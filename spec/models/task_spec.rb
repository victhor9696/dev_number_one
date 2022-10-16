require 'rails_helper'

RSpec.describe Task, type: :model do
  before do
    @task = create(:task)
  end

  context 'CRUD' do
    it '#create valid' do
      task = create(:task)
      expect(task.id).to be > 0
    end

    it '#update valid' do
      @task.title = 'asdf'
      @task.description = 'asdasdf'

      @task.save
      expect(@task.title).to eq('asdf')
    end

    it '#update invalid' do
      @task.title = nil
      @task.save
      expect(@task).to_not be_valid
    end
  end
end
