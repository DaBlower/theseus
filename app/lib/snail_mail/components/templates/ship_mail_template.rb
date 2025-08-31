# frozen_string_literal: true

module SnailMail
  module Components
    module Templates
      class ShipMailTemplate < TemplateBase
        def self.template_name
            "Ship Mail"
        end

        def self.show_on_single
            true
        end

        def view_template
            render_return_address(5, bounds.top - 5, 190, 90, size: 8, font: "f25")

            render_destination_address(
                120,
                115,
                270,
                81,
                size: 18, valign: :center, align: :left
            )

            image(
                image_path("ship_mail.png")
                at: [0, 0],
            )

            render_imb(245, 20, 170)
            render_letter_id(3, 15, 8, rotate: 90)
            render_qr_code(2, 52, 50)
            render_postage

    end
  end
end
