<?php

namespace App\Admin\Controllers;

use App\Models\WebProfile;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class WebProfileController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'WebProfile';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new WebProfile());

        $grid->column('id', __('Id'));
        $grid->column('website_name', __('Website name'));
        $grid->column('website_url', __('Website url'));
        $grid->column('website_description', __('Website description'));
        $grid->column('website_logo_header', __('Website logo header'));
        $grid->column('website_logo_footer', __('Website logo footer'));
        $grid->column('website_email', __('Website email'));
        $grid->column('website_phone', __('Website phone'));
        $grid->column('website_fax', __('Website fax'));
        $grid->column('website_address', __('Website address'));
        $grid->column('website_fb', __('Website fb'));
        $grid->column('website_ig', __('Website ig'));
        $grid->column('website_twitter', __('Website twitter'));
        $grid->column('website_wa', __('Website wa'));
        $grid->column('website_author', __('Website author'));
        $grid->column('website_owner', __('Website owner'));
        $grid->column('about_us', __('About us'));
        $grid->column('history', __('History'));
        $grid->column('visi_misi', __('Visi misi'));
        $grid->column('service', __('Service'));
        $grid->column('product', __('Product'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show = new Show(WebProfile::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('website_name', __('Website name'));
        $show->field('website_url', __('Website url'));
        $show->field('website_description', __('Website description'));
        $show->field('website_logo_header', __('Website logo header'));
        $show->field('website_logo_footer', __('Website logo footer'));
        $show->field('website_email', __('Website email'));
        $show->field('website_phone', __('Website phone'));
        $show->field('website_fax', __('Website fax'));
        $show->field('website_address', __('Website address'));
        $show->field('website_fb', __('Website fb'));
        $show->field('website_ig', __('Website ig'));
        $show->field('website_twitter', __('Website twitter'));
        $show->field('website_wa', __('Website wa'));
        $show->field('website_author', __('Website author'));
        $show->field('website_owner', __('Website owner'));
        $show->field('about_us', __('About us'));
        $show->field('history', __('History'));
        $show->field('visi_misi', __('Visi misi'));
        $show->field('service', __('Service'));
        $show->field('product', __('Product'));
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
        $form = new Form(new WebProfile());

        $form->text('website_name', __('Website name'));
        $form->text('website_url', __('Website url'));
        $form->ckeditor('website_description', __('Website description'));
        $form->ckeditor('website_logo_header', __('Website logo header'));
        $form->ckeditor('website_logo_footer', __('Website logo footer'));
        $form->text('website_email', __('Website email'));
        $form->text('website_phone', __('Website phone'));
        $form->text('website_fax', __('Website fax'));
        $form->text('website_address', __('Website address'));
        $form->text('website_fb', __('Website fb'));
        $form->text('website_ig', __('Website ig'));
        $form->text('website_twitter', __('Website twitter'));
        $form->text('website_wa', __('Website wa'));
        $form->text('website_author', __('Website author'));
        $form->text('website_owner', __('Website owner'));
        $form->ckeditor('about_us', __('About us'));
        $form->ckeditor('history', __('History'));
        $form->ckeditor('visi_misi', __('Visi misi'));
        $form->ckeditor('service', __('Service'));
        $form->ckeditor('product', __('Product'));

        return $form;
    }
}
