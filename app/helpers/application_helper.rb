module ApplicationHelper

    def get_remaining_budget(budget)
        return 0 if budget.blank?

        budget.depositors.sum(:amount) - budget.category.expenses.sum(:price)
    end

    def get_utilized_budget(budget)
        return 0 if budget.blank?

        budget.depositors.sum(:amount) - get_remaining_budget(budget)
    end

end
