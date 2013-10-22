class MadeWith < ActiveRecord::Base
  attr_accessible :project_id, :tool_id
  belongs_to :project
  belongs_to :tool
end
