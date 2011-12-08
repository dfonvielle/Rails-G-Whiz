# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AttributeType.destroy_all
AttributeType.create :description => "string"
AttributeType.create :description => "text"
AttributeType.create :description => "integer"
AttributeType.create :description => "boolean"
AttributeType.create :description => "float"
AttributeType.create :description => "decimal"
AttributeType.create :description => "datetime"
AttributeType.create :description => "timestamp"
AttributeType.create :description => "time"
AttributeType.create :description => "date"
AttributeType.create :description => "binary"
AttributeType.create :description => "primary_key"
