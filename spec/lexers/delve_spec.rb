# -*- coding: utf-8 -*- #
# frozen_string_literal: true

describe Rouge::Lexers::Delve do
  let(:subject) { Rouge::Lexers::Delve.new }

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.delve'
    end

    it 'guesses by mimetype' do
      assert_guess :mimetype => 'text/x-delve'
      assert_guess :mimetype => 'application/x-delve'
    end
  end
end