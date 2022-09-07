class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
    @expense.category_expense.build
  end

  def create
    permits = expense_params
    @expense = Expense.new(name: permits[:name], amount: permits[:amount])
    @expense.user_id = current_user.id
    flash.now[:error] = 'Expense could not be added' unless @expense.save
    category_id = permits[:category_expense_attributes]['0'][:category_id]
    @cat_exp = CategoryExpense.new
    @cat_exp.expense_id = @expense.id
    @cat_exp.category_id = category_id
    if @cat_exp.save
      flash[:success] = 'Expense added'
      redirect_to category_path(id: category_id)
    else
      flash.now[:error] = 'Expense could not be added'
    end
  end

  def expense_params
    params.require(:expense).permit(:name, :amount, category_expense_attributes: [:category_id])
  end
end
