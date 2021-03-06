<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="view/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link type="text/css" href="view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" rel="stylesheet" />
<script type="text/javascript" src="view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="view/javascript/jquery/superfish/js/superfish.js"></script>
<script type="text/javascript" src="view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<script type="text/javascript">
//-----------------------------------------
// Confirm Actions (delete, uninstall)
//-----------------------------------------
$(document).ready(function(){
    // Confirm Delete
    $('#form').submit(function(){
        if ($(this).attr('action').indexOf('delete',1) != -1) {
            if (!confirm('<?php echo $text_confirm; ?>')) {
                return false;
            }
        }
    });
    // Confirm Uninstall
    $('a').click(function(){
        if ($(this).attr('href') != null && $(this).attr('href').indexOf('uninstall', 1) != -1) {
            if (!confirm('<?php echo $text_confirm; ?>')) {
                return false;
            }
        }
    });
        });
    </script>
</head>

<body>

<div id="header">

    
	
    <!-- Menu -->
    <?php if ($logged) { ?>
    <div id="menu">

    <ul class="left" style="display: none;">

    <!-- Dashboard -->    
    <li id="dashboard"><a href="<?php echo $home; ?>" class="top"><?php echo $text_dashboard; ?></a></li>

    <!-- Storefront -->
	<li id="storefront"><a href="<?php echo $store; ?>" target="_blank" class="top"><?php echo $text_front; ?></a></li>

    <!-- Users -->
    <li id="sale"><a class="top">Users</a>
    <ul>
        <li><a class="parent"><?php echo $text_customer; ?></a>
            <ul>
              <li><a href="<?php echo $customer; ?>"><?php echo $text_customer; ?></a></li>
              <li><a href="<?php echo $customer_group; ?>"><?php echo $text_customer_group; ?></a></li>
              <li><a href="<?php echo $customer_ban_ip; ?>"><?php echo $text_customer_ban_ip; ?></a></li>
            </ul>
        </li>   
        <li><a class="parent"><?php echo $text_users; ?></a>
            <ul>
              <li><a href="<?php echo $user; ?>"><?php echo $text_user; ?></a></li>
              <li><a href="<?php echo $user_group; ?>"><?php echo $text_user_group; ?></a></li>
            </ul>
        </li>     
    </ul>     
    </li>

    <!-- Catalog -->
      <li id="catalog"><a class="top"><?php echo $text_catalog; ?></a>
        <ul>
          <li><a href="<?php echo $category; ?>"><?php echo $text_category; ?></a></li>
          <li><a href="<?php echo $product; ?>"><?php echo $text_product; ?></a></li>
          <li><a class="parent"><?php echo $text_attribute; ?></a>
            <ul>
              <li><a href="<?php echo $attribute; ?>"><?php echo $text_attribute; ?></a></li>
              <li><a href="<?php echo $attribute_group; ?>"><?php echo $text_attribute_group; ?></a></li>
            </ul>
          </li>
          <li><a href="<?php echo $review; ?>"><?php echo $text_review; ?></a></li>
        </ul>
      </li>

    <!-- Orders -->
    <li id="orders"><a class="top" href="<?php echo $order; ?>"><?php echo $text_order; ?></a>
        <ul>
          <li><a href="<?php echo $recurring_profile; ?>"><?php echo $text_recurring_profile; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>  
        </ul>	
    </li>      

    <!-- System -->
      <li id="system"><a class="top"><?php echo $text_system; ?></a>
        <ul>
          <li><a href="<?php echo $setting; ?>"><?php echo $text_setting; ?></a></li>
          <li><a class="parent"><?php echo $text_design; ?></a>
            <ul>
              <li><a href="<?php echo $layout; ?>"><?php echo $text_layout; ?></a></li>
              <li><a href="<?php echo $banner; ?>"><?php echo $text_banner; ?></a></li>
            </ul>
          </li>
          <li><a class="parent"><?php echo $text_localisation; ?></a>
            <ul>
              <li><a href="<?php echo $language; ?>"><?php echo $text_language; ?></a></li>
              <li><a href="<?php echo $currency; ?>"><?php echo $text_currency; ?></a></li>
              <li><a href="<?php echo $stock_status; ?>"><?php echo $text_stock_status; ?></a></li>
              <li><a href="<?php echo $order_status; ?>"><?php echo $text_order_status; ?></a></li>
              <li><a class="parent"><?php echo $text_return; ?></a>
                <ul>
                  <li><a href="<?php echo $return_status; ?>"><?php echo $text_return_status; ?></a></li>
                  <li><a href="<?php echo $return_action; ?>"><?php echo $text_return_action; ?></a></li>
                  <li><a href="<?php echo $return_reason; ?>"><?php echo $text_return_reason; ?></a></li>
                </ul>
              </li>
              <li><a href="<?php echo $country; ?>"><?php echo $text_country; ?></a></li>
              <li><a href="<?php echo $zone; ?>"><?php echo $text_zone; ?></a></li>
              <li><a href="<?php echo $geo_zone; ?>"><?php echo $text_geo_zone; ?></a></li>
              <li><a class="parent"><?php echo $text_tax; ?></a>
                <ul>
                  <li><a href="<?php echo $tax_class; ?>"><?php echo $text_tax_class; ?></a></li>
                  <li><a href="<?php echo $tax_rate; ?>"><?php echo $text_tax_rate; ?></a></li>
                </ul>
              </li>
              <li><a href="<?php echo $length_class; ?>"><?php echo $text_length_class; ?></a></li>
              <li><a href="<?php echo $weight_class; ?>"><?php echo $text_weight_class; ?></a></li>
            </ul>
          </li>
          <li><a href="<?php echo $error_log; ?>"><?php echo $text_error_log; ?></a></li>
          <li><a href="<?php echo $backup; ?>"><?php echo $text_backup; ?></a></li>

          <li id="reports"><a class="parent"><?php echo 'Reports'; ?></a>
            <ul>
				<li><a class="parent"><?php echo $text_sale; ?></a>
					<ul>
					  <li><a href="<?php echo $report_sale_order; ?>"><?php echo $text_report_sale_order; ?></a></li>
					  <li><a href="<?php echo $report_sale_tax; ?>"><?php echo $text_report_sale_tax; ?></a></li>
					  <li><a href="<?php echo $report_sale_shipping; ?>"><?php echo $text_report_sale_shipping; ?></a></li>
					  <li><a href="<?php echo $report_sale_return; ?>"><?php echo $text_report_sale_return; ?></a></li>
					</ul>
				</li>
				<li><a class="parent"><?php echo $text_product; ?></a>
					<ul>
					  <li><a href="<?php echo $report_product_viewed; ?>"><?php echo $text_report_product_viewed; ?></a></li>
					  <li><a href="<?php echo $report_product_purchased; ?>"><?php echo $text_report_product_purchased; ?></a></li>
					</ul>
				</li>
				<li><a class="parent"><?php echo $text_customer; ?></a>
					<ul>
					  <li><a href="<?php echo $report_customer_online; ?>"><?php echo $text_report_customer_online; ?></a></li>
					  <li><a href="<?php echo $report_customer_order; ?>"><?php echo $text_report_customer_order; ?></a></li>
					</ul>
				</li>
            </ul>
          </li>
        </ul>
      </li>

	<li id="help"><a class="top"><?php echo $text_help; ?></a>
	</li>

    <!-- Contact -->  
    <li><a class="top" href="<?php echo $contact; ?>">Contact</a></li>      

    </ul>






<!-- Right Side -->

    <!-- Admin Login -->
    <?php if (!$logged) { ?>
        <a id="admin_home" title="<?php echo $heading_title; ?>" href="<?php echo $home; ?>" />Admin Login</a>
    <?php } ?>

    <!-- Logged In As -->
    <?php if ($logged) { ?>
        <div id="admin_logged">&nbsp;<?php echo $logged; ?></div>
    <?php } ?>

    <!-- Logout -->
    <a id="admin_logout" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>

    </div>
  <?php } ?>

</div>
