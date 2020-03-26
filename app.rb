# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './lib/caesar_cipher.rb'

get '/' do
  @text = params[:text] || ''
  shift = params[:shift].to_i
  @output = caesar_cipher(@text, shift)
  erb :index
end
