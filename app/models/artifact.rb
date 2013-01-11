class Artifact < ActiveRecord::Base
  attr_accessible :audio, :contributors, :image, :title, :typed_text, :uploaded_text, :video

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :audio
  has_attached_file :uploaded_text
  has_attached_file :video, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
