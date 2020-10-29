# -*- coding: utf-8 -*- #
# frozen_string_literal: true

describe Rouge::Lexers::Rel do
  let(:subject) { Rouge::Lexers::Rel.new }

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.rel'
    end

    it 'guesses by mimetype' do
      assert_guess :mimetype => 'text/x-rel'
      assert_guess :mimetype => 'application/x-rel'
    end
  end
end