class ImageLibraryUploadPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def create?
    true
  end

  def destroy?
    false
  end
end
