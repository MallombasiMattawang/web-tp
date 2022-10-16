<?php

namespace App\Admin\Controllers;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use App\Models\WebService;
use Illuminate\Support\Str;
use Encore\Admin\Controllers\AdminController;

class WebServiceController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'WebService';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new WebService());

        $grid->column('title', __('Title'));
        $grid->column('subtitle', __('Subtitle'));
        $grid->column('pic_icon', __('Pic icon'));
       
        $grid->column('active')->bool();

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
        $show = new Show(WebService::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('subtitle', __('Subtitle'));
        $show->field('slug', __('Slug'));
        $show->field('pic_icon', __('Pic icon'));
        $show->field('pic_main', __('Pic main'));
        $show->field('body', __('Body'));
        $show->field('active', __('Active'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));
        $show->field('deleted_at', __('Deleted at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new WebService());

        $form->text('title', __('Title'));
        $form->text('subtitle', __('Subtitle'));
        $form->icon('pic_icon', __('Icon'));
        $form->image('pic_main', 'Main Picture')
            ->move('portfolios')
            ->uniqueName()
            ->thumbnail('small', 300, 300)
            ->rules([
                'file' => 'max:2000',
            ]);
        $form->ckeditor('body', 'Content');
        $states = [
            'on'  => ['value' => 1, 'text' => 'YES', 'color' => 'success'],
            'off' => ['value' => 0, 'text' => 'NO', 'color' => 'danger'],
        ];

        $form->switch('active', 'Active ?')->states($states);

        return $form;
    }
}
