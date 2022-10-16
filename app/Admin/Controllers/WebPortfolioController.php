<?php

namespace App\Admin\Controllers;

use App\Models\WebTag;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Str;
use App\Models\WebPortfolio;
use Encore\Admin\Controllers\AdminController;

class WebPortfolioController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'WebPortfolio';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new WebPortfolio());

        $grid->column('title', __('Title'));
        $grid->tags()->display(function ($tags) {
            $tags = array_map(function ($tag) {
                return "<span class='label label-info'><i class='fa fa-check'></i> {$tag['title']}</span>";
            }, $tags);
            return join('&nbsp;', $tags);
        });
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
        $show = new Show(WebPortfolio::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('subtitle', __('Subtitle'));

        $show->field('body', __('Body'));
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
        $form = new Form(new WebPortfolio());

        $form->text('title', __('Title'));
        $form->text('subtitle', __('Subtitle'));
        $form->multipleSelect('tags', 'Tag')->options(WebTag::all()->pluck('title', 'id'));
        $form->text('client', __('Client'));
        $form->text('location', __('Location'));
        $form->date('finish_date', __('Finish Date'));
        $form->text('lat_x', __('Latitude'));
        $form->text('long_y', __('Logitude'));
        $form->ckeditor('body', 'Content');
        $form->image('pic_main', 'Main Picture')
            ->move('portfolios')
            ->uniqueName()
            ->thumbnail('small', 300, 300)
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
