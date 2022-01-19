class Client < Supplier
    after_initialize :set_defaults, unless: :persisted?

    def set_defaults
        self.type  ||= 'Client'
        self.estado ||='SP'
    end
end