{* Хлебные крошки *}
<ol class="breadcrumb">
	{* Ссылка на главную *}
    <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
	    <a itemprop="url" href="{$lang_link}" data-language="{$translate_id['breadcrumb_home']}">
		    <span itemprop="title">{$lang->breadcrumb_home}</span>
	    </a>
    </li>
	{* Ссылка на главную *}
    {* Каталог *}
    {if $smarty.get.module == "ProductsView"}
        {if $category && !$keyword}
            {foreach from=$category->path item=cat}
	            {if !$cat@last}
		            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
			            <a itemprop="url" href="{$lang_link}catalog/{$cat->url}">
				            <span itemprop="title">{$cat->name|escape}</span>
			            </a>
		            </li>
	            {else}
		            <li>{$cat->name|escape}</li>
	            {/if}
            {/foreach}
        {elseif $brand}
	        <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
		        <a itemprop="url" href="{$lang_link}brands" data-language="{$translate_id['breadcrumb_brands']}">
			        <span itemprop="title">{$lang->breadcrumb_brands}</span>
		        </a>
	        </li>
            <li>{$brand->name|escape}</li>
        {elseif $keyword}
            <li data-language="{$translate_id['breadcrumb_search']}">{$lang->breadcrumb_search}</li>
        {else}
            <li>{$page->name|escape}</li>
        {/if}
    {* @END Каталог *}
    {* Список брендов *}
    {elseif $smarty.get.module == "BrandsView"}
	    <li>{$page->name}</li>
    {* @END Список брендов *}
    {* Карточка товара *}
    {elseif $smarty.get.module == "ProductView"}
        {foreach from=$category->path item=cat}
	        <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
		        <a itemprop="url" href="{$lang_link}catalog/{$cat->url}">
			        <span itemprop="title">{$cat->name|escape}</span>
		        </a>
	        </li>
        {/foreach}
	    <li>{$product->name|escape}</li>
    {* @END Карточка товара *}
    {* Контакты и статьи *}
    {elseif $smarty.get.module == "FeedbackView" || $smarty.get.module == "PageView"}
        <li>{$page->name|escape}</li>
    {* @END Контакты и статьи *}
    {* Корзина *}
    {elseif $smarty.get.module == "CartView"}
        <li data-language="{$translate_id['breadcrumb_cart']}">{$lang->breadcrumb_cart}</li>
    {* @END Корзина *}
    {* Оформленный заказ *}
    {elseif $smarty.get.module == "OrderView"}
	    <li data-language="{$translate_id['breadcrumb_order']}">{$lang->breadcrumb_order} {$order->id}</li>
    {* @END Оформленный заказ *}
    {* Восстановление пароля *}
    {elseif $smarty.get.module == "LoginView" && $smarty.get.action == "password_remind"}
        <li data-language="{$translate_id['breadcrumbs_password_remind']}">{$lang->breadcrumbs_password_remind}</li>
    {* @END Восстановление пароля *}
    {* Вход пользователя *}
    {elseif $smarty.get.module == "LoginView"}
        <li data-language="{$translate_id['breadcrumbs_enter']}">{$lang->breadcrumbs_enter}</li>
    {* @END Вход пользователя *}
    {* Регистрация пользователя *}
    {elseif $smarty.get.module == "RegisterView"}
        <li data-language="{$translate_id['breadcrumbs_registration']}">{$lang->breadcrumbs_registration}</li>
    {* @END Регистрация пользователя *}
    {* Личный кабинет *}
    {elseif $smarty.get.module == "UserView"}
	    <li data-language="{$translate_id['breadcrumbs_user']}">{$lang->breadcrumbs_user}</li>
    {* @END Личный кабинет *}
    {* Блог *}
    {elseif $smarty.get.module == "BlogView"}
        {if $smarty.get.url}
	        <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
		        <a itemprop="url" href="{$lang_link}blog" data-language="{$translate_id['breadcrumbs_blog']}">
			        <span itemprop="title">{$lang->breadcrumbs_blog}</span>
		        </a>
	        </li>
	        <li>
		        {$post->name}
	        </li>
        {else}
	        <li data-language="{$translate_id['breadcrumbs_blog']}">{$lang->breadcrumbs_blog}</li>
        {/if}
    {elseif $smarty.get.module == 'ComparisonView'}
		<li data-language="{$translate_id['breadcrumb_comparison']}">{$lang->breadcrumb_comparison}</li>
    {elseif $smarty.get.module == 'WishlistView'}
	    <li data-language="{$translate_id['breadcrumb_wishlist']}">{$lang->breadcrumb_wishlist}</li>
    {/if}
    {* @END Блог *}
</ol>