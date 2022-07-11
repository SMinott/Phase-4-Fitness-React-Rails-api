class ClientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :age, :image_client, :email, :member, :fee, #:password_digest
end
