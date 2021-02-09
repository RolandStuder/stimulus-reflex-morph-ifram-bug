# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  delegate :uuid, to: :connection

  def add
    session[:dummies] ||= []
    session[:dummies]  << "hello ##{session[:dummies].size}"
  end

  def remove
    session[:dummies].pop
  end
end
