class WelcomeController < ApplicationController
  def index
  end

  def cursos
    @lessons = Lesson.all
  end
end
