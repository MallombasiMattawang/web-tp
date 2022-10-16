<?php

namespace App\Admin\Controllers;

use App\Models\WebFaq;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class WebFaqController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'WebFaq';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new WebFaq());
      
        $grid->column('question', __('Question'));
        $grid->column('answer', __('Answer'));
        $grid->column('active', __('Active'));
        $grid->column('file_support')->downloadable();

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(WebFaq::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('question', __('Question'));
        $show->field('answer', __('Answer'));
        $show->field('file_support', __('File support'));
        $show->field('active', __('Active'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new WebFaq());

        $form->text('question', __('Question'));
        $form->textarea('answer', __('Answer'));
        
        $form->file('file_support', 'File support')
            ->move('faqs')
            ->uniqueName()
            ->rules('mimes:jpg,png,pdf')
            ->rules([
                'file' => 'max:2000',
                //'mimes' => 'png,jpg,pdf'
            ]);
        $states = [
            'on'  => ['value' => 1, 'text' => 'YES', 'color' => 'success'],
            'off' => ['value' => 0, 'text' => 'NO', 'color' => 'danger'],
        ];
        $form->switch('active', 'Active ?')->states($states);

        return $form;
    }
}
