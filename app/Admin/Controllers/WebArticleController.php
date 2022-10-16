<?php

namespace App\Admin\Controllers;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use App\Models\WebArticle;
use Illuminate\Support\Str;
use App\Models\WebArticleCategory;
use Encore\Admin\Controllers\AdminController;

class WebArticleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'WebArticle';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new WebArticle());

        $grid->column('id', __('Id'));
        $grid->column('title', __('Title'));
        $grid->column('articleCategory.title', __('Article category'));
        $grid->column('pic_main')->display(function ($pic_main) {
            $pic = Str::replace('.', '-small.', $pic_main);
            return "<img src='/uploads/$pic' class='img-fluid' width='40' height='40'>";        
        });   
        $grid->column('active')->bool();
        $grid->column('publish_date', __('Publish date'));


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
        $show = new Show(WebArticle::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('subtitle', __('Subtitle'));
        $show->field('articleCategory', __('Article category'));
        $show->field('pic_main', __('Pic main'));
        $show->field('pic_all', __('Pic all'));
        $show->field('body', __('Body'));
        $show->field('publish_date', __('Publish date'));
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
        $form = new Form(new WebArticle());
        $form->column(1 / 2, function ($form) {
            $form->text('title', __('Title'))->autofocus();
            $form->text('subtitle', __('Subtitle'));
            $form->select('category_id', 'Article category')->options(WebArticleCategory::all()->pluck('title', 'id'));
            $form->ckeditor('body', 'Content');
        });

        $form->column(1 / 2, function ($form) {
            $form->image('pic_main', 'Main Picture')
                ->move('articles')
                ->uniqueName()
                ->thumbnail('small', 300, 300)
                ->rules([
                    'file' => 'max:2000',
                ]);
            // $form->multipleImage('pic_all')
            //     ->removable()
            //     ->sortable();       
            $form->datetime('publish_date', __('Publish date'))->default(date('Y-m-d H:i:s'));

            $states = [
                'on'  => ['value' => 1, 'text' => 'YES', 'color' => 'success'],
                'off' => ['value' => 0, 'text' => 'NO', 'color' => 'danger'],
            ];

            $form->switch('active', 'Active ?')->states($states);
        });




        return $form;
    }
}
