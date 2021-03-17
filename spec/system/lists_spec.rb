#frozen_string_literal: true
require "rails_helper"

describe "投稿のテスト" do
  let!(:list){create(:list,title:"test",body:"testtest")}
  describe "トップ画面のテスト" do
    before do
      visit top_path
    end
    context "表示の確認"  do
      it "トップ画面に「ここはトップ画面です」が表示されているか" do
        expect(page).to include("ここはTopページです")
      end
      it "top_pathが'/top'であるか" do
        expect(current_path).to eq("/top")
      end
    end
  end
end

describe "投稿画面のテスト" do
  before do
    visit todolists_new_path
  end
  context "表示の確認" do
    it "todolists_new_pathが'/todolists/new'であるか" do
      expect(current_path).to eq("/todolists/new")
    end
    it "投稿ボタンが表示されているか" do
      expect(page).to have_button
    end
  end
  context "投稿処理のテスト" do
    it "投稿後のリダイレクト先が正しいか" do
      expect()
    end
  end
end

describe "一覧画面のテスト" do
  before do
    visit
  end
  context "一覧の表示とリンクの確認" do
    it "一覧表示画面に投稿されたものを表示しているか"do
      expect(page).to
    end
  end
end

describe "詳細画面のテスト" do
  before do
    visit
  end
  context "表示のテスト" do
    it "削除リンクが存在しているか" do
      expect(page).to have_link"",href:
    end
    it "編集リンクが存在しているか"
      expect(page).to have_link"",href:
    end
  end
  context "リンクの遷移先の確認" do
    it "編集の遷移先は編集画面か" do
      expect()
    end
  end
  context "list削除のテスト" do
    it "listの削除" do
      expect{list.destroy}.to change{List.count}.by(-1)
    end
  end
end

describe "編集画面のテスト" do
  before do
    visit
  end
  context "表示の確認" do
    it "編集前のタイトルと本文がフォームに入力されている" do
      expect()
    end
    it "保存ボタンが表示される" do
      expect(page).to have_button""
    end
  end
  context "更新処理に関するテスト" do
    it "更新後のリダイレクト先が正しいか" do
      expect()
    end
  end
end