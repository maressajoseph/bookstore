require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "order products by name in acending order" do
      let!(:product1) {create :product, title:"A book"}
      let!(:product2) {create :product, title:"Zorro"}
      let!(:product3) {create :product, title:"Book"}

      it "returns an ordered list of products from a to z" do
        expect(Product.order_by("Sort A-Z")).to eq [product1, product3, product2]
      end
    end

  describe "order products by name in decending order" do
      let!(:product1) {create :product, title:"A book"}
      let!(:product2) {create :product, title:"Zorro"}
      let!(:product3) {create :product, title:"Book"}

      it "returns an ordered list of products from z to a" do
        expect(Product.order_by("Sort Z-A")).to eq [product2, product3, product1]
      end
    end

    describe "order products by price in acending order" do
        let!(:product1) {create :product, price: 5.0}
        let!(:product2) {create :product, price:2.0}
        let!(:product3) {create :product, price:3.5}

        it "returns an ordered list of products from low to high" do
          expect(Product.order_by("Price low-high")).to eq [product2, product3, product1]
        end
      end

      describe "order products by price in acending order" do
          let!(:product1) {create :product, price: 5.0}
          let!(:product2) {create :product, price:2.0}
          let!(:product3) {create :product, price:3.5}

          it "returns an ordered list of products from high to low" do
            expect(Product.order_by("Price high-low")).to eq [product1, product3, product2]
          end
        end
end
