# frozen_string_literal: true
require_relative '../../services/calculator_service'

RSpec.describe CalculatorService do
  describe 'methods' do
    let(:calculator_service) { CalculatorService.new }

    describe 'add' do
      it 'return sum of two numbers' do
        expect(calculator_service.add(2, 3)).to eq(5)
      end
    end

    describe 'subtract' do
      it 'return difference of two numbers' do
        expect(calculator_service.subtract(2, 3)).to eq(-1)
      end
    end

    describe 'multiply' do
      it 'return product of two numbers' do
        expect(calculator_service.multiply(2, 3)).to eq(6)
      end
    end

    describe 'divide' do
      context 'when divisor is not zero' do
        it 'return quotient of two numbers' do
          expect(calculator_service.divide(6, 3)).to eq(2)
        end
      end
      context 'when divisor is zero' do
        it 'raise exception' do
          expect{calculator_service.divide(3, 0)}.to raise_exception(ZeroDivisionError)
        end
      end
    end
  end
end
