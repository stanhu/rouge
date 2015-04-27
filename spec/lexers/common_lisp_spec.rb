# -*- coding: utf-8 -*- #

describe Rouge::Lexers::CommonLisp do
  let(:subject) { Rouge::Lexers::CommonLisp.new }

  describe 'guessing' do
    include Support::Guessing
    include Support::Lexing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.cl'
      assert_guess :filename => 'foo.lisp'
      assert_guess :filename => 'foo.el'
    end

    it 'guesses by mimetype' do
      assert_guess :mimetype => 'text/x-common-lisp'
    end

    it 'parses parens on another line' do
      assert_no_errors "\t\t\t\t\t :type \"assem\"))"
    end
  end
end
