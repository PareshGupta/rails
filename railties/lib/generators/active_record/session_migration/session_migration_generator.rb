require 'generators/active_record'

module ActiveRecord
  module Generators
    class SessionMigrationGenerator < Base
      argument :name, :type => :string, :default => "add_sessions_table"

      def create_migration_file
        migration_template "migration.rb", "db/migrate/#{file_name}.rb"
      end

      protected

        def session_table_name
          ActiveRecord::Base.pluralize_table_names ? 'session'.pluralize : 'session'
        end

    end
  end
end
