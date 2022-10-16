<?php

namespace App\Admin\Controllers;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use App\Models\WebClient;
use Illuminate\Support\Str;
use Encore\Admin\Controllers\AdminController;

class WebClientController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'WebClient';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new WebClient());

        $grid->column('title', __('Title'));
        $grid->column('subtitle', __('Subtitle'));     
        $grid->column('pic_main')->display(function ($pic_main) {
            $pic = Str::replace('.', '-small.', $pic_main);
            return "<img src='/uploads/$pic' class='img-fluid' width='40' height='40'>";        
        });   
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
        $show = new Show(WebClient::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('subtitle', __('Subtitle'));
        $show->field('pic_main', __('Pic main'));
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
        $form = new Form(new WebClient());

        $form->text('title', __('Title'));
        $form->text('subtitle', __('Subtitle'));
        $form->image('pic_main', 'Main Picture')
            ->move('clients')
            ->uniqueName()
            ->thumbnail('small', 200, 200)
            ->rules([
                'file' => 'max:2000',
            ]);
        $states = [
            'on'  => ['value' => 1, 'text' => 'YES', 'color' => 'success'],
            'off' => ['value' => 0, 'text' => 'NO', 'color' => 'danger'],
        ];
        $form->switch('active', 'Active ?')->states($states);

        return $form;
    }
}
