# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Priority, type: :model do
  context 'パラメータが正常な場合' do
    it 'インスタンスが確保されること' do
      priority = build(:priority)
      expect(priority).to be_valid
    end
  end

  context 'パラメータが不正な場合' do
    it 'nameが空白である場合エラーが表示されること' do
      priority = build(:priority, name: nil)
      priority.valid?
      expect(priority.errors[:name]).to include('を入力してください')
    end
  end
end
