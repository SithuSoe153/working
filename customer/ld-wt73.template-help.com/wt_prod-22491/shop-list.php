<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include('connect.php');
include('cheaders.php');

?>

<form action="shop-list.php" method="POST">

    <section class="breadcrumbs-custom">
        <div class="parallax-container" data-parallax-img="../../../work/images/bg-blog-2.jpg">
            <div class="breadcrumbs-custom-body parallax-content context-dark">
                <div class="container">
                    <h2 class="breadcrumbs-custom-title">Shop List</h2>
                </div>
            </div>
        </div>
        <div class="breadcrumbs-custom-footer">
            <div class="container">
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="grid-shop.php">Shop</a></li>
                    <li class="active">Shop List</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- Section Shop-->
    <section class="section section-xxl bg-default text-md-start">
        <div class="container">
            <div class="row row-50">
                <div class="col-lg-4 col-xl-3">
                    <div class="aside row row-30 row-md-50 justify-content-md-between">
                        <div class="aside-item col-12">
                            <h6 class="aside-title">Filter by Price</h6>
                            <!-- RD Range-->
                            <div class="rd-range" data-min="0" data-max="999" data-min-diff="100" data-start="[66, 635]" data-step="1" data-tooltip="false" data-input=".rd-range-input-value-1" data-input-2=".rd-range-input-value-2"></div>
                            <div class="group-xs group-justify">
                                <div>
                                    <button class="btn btn-sm btn-secondary btn-zakaria" type="button">Filter</button>
                                </div>
                                <div>
                                    <div class="rd-range-wrap">
                                        <div class="rd-range-title">Price:</div>
                                        <div class="rd-range-form-wrap"><span>$</span>
                                            <input class="rd-range-input rd-range-input-value-1" id="test" type="text" name="value-1">
                                        </div>
                                        <div class="rd-range-divider"></div>
                                        <div class="rd-range-form-wrap"><span>$</span>
                                            <input class="rd-range-input rd-range-input-value-2" type="text" name="value-2">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="aside-item col-sm-6 col-md-5 col-lg-12">
                            <h6 class="aside-title">Categories</h6>
                            <ul class="list-shop-filter">
                                <li>
                                    <label class="checkbox-inline">
                                        <input name="input-group-radio" value="checkbox-1" type="checkbox">All
                                    </label><span class="list-shop-filter-number">(18)</span>
                                </li>
                                <li>
                                    <label class="checkbox-inline">
                                        <input name="input-group-radio" value="checkbox-2" type="checkbox">Furniture
                                    </label><span class="list-shop-filter-number">(9)</span>
                                </li>
                                <li>
                                    <label class="checkbox-inline">
                                        <input name="input-group-radio" value="checkbox-3" type="checkbox">Decor
                                    </label><span class="list-shop-filter-number">(5)</span>
                                </li>
                                <li>
                                    <label class="checkbox-inline">
                                        <input name="input-group-radio" value="checkbox-4" type="checkbox">Accessories
                                    </label><span class="list-shop-filter-number">(8)</span>
                                </li>
                            </ul>
                            <!-- RD Search Form-->
                            <form class="rd-search form-search" action="search-results.html" method="GET">
                                <div class="form-wrap">
                                    <label class="form-label" for="search-form">Search...</label>
                                    <input class="form-input" id="search-form" type="text" name="s" autocomplete="off">
                                    <button class="btn-search fl-bigmug-line-search74" type="submit"></button>
                                </div>
                            </form>
                        </div>
                        <div class="aside-item col-sm-6 col-lg-12">
                            <h6 class="aside-title">Popular products</h6>
                            <div class="row row-10 row-lg-20 gutters-10">
                                <div class="col-4 col-sm-6 col-md-12">
                                    <!-- Product Minimal-->
                                    <article class="product-minimal">
                                        <div class="unit unit-spacing-sm flex-column flex-md-row align-items-center">
                                            <div class="unit-left"><a class="product-minimal-figure" href="single-product.php?productid=<?php echo $productid ?>"><img src="../../../work/images/product-mini-1-106x104.png" alt="" width="106" height="104" /></a></div>
                                            <div class="unit-body">
                                                <p class="product-minimal-title"><a href="single-product.php?productid=<?php echo $productid ?>">Table Lamp</a></p>
                                                <p class="product-minimal-price">$25.00</p>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                                <div class="col-4 col-sm-6 col-md-12">
                                    <!-- Product Minimal-->
                                    <article class="product-minimal">
                                        <div class="unit unit-spacing-sm flex-column flex-md-row align-items-center">
                                            <div class="unit-left"><a class="product-minimal-figure" href="single-product.php?productid=<?php echo $productid ?>"><img src="../../../work/images/product-mini-2-106x104.png" alt="" width="106" height="104" /></a></div>
                                            <div class="unit-body">
                                                <p class="product-minimal-title"><a href="single-product.php?productid=<?php echo $productid ?>">Stacking Chair</a></p>
                                                <p class="product-minimal-price">$30.00</p>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                                <div class="col-4 col-sm-6 col-md-12">
                                    <!-- Product Minimal-->
                                    <article class="product-minimal">
                                        <div class="unit unit-spacing-sm flex-column flex-md-row align-items-center">
                                            <div class="unit-left"><a class="product-minimal-figure" href="single-product.php?productid=<?php echo $productid ?>"><img src="../../../work/images/product-mini-3-106x104.png" alt="" width="106" height="104" /></a></div>
                                            <div class="unit-body">
                                                <p class="product-minimal-title"><a href="single-product.php?productid=<?php echo $productid ?>">Grey Club Chair</a></p>
                                                <p class="product-minimal-price">$20.00</p>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-xl-9">
                    <div class="product-top-panel group-md">
                        <p class="product-top-panel-title">Showing 1???3 of 28 results</p>
                        <div>
                            <div class="group-sm group-middle">
                                <div class="product-top-panel-sorting">
                                    <select data-minimum-results-for-search="Infinity">
                                        <option value="1">Sort by newness</option>
                                        <option value="2">Sort by popularity</option>
                                        <option value="3">Sort by alphabet</option>
                                    </select>
                                </div>
                                <div class="product-view-toggle"><a class="mdi mdi-apps product-view-link product-view-grid" href="grid-shop.php"></a><a class="mdi mdi-format-list-bulleted product-view-link product-view-list active" href="shop-list.html"></a></div>
                            </div>
                        </div>
                    </div>

                    <div class="row row-30 row-md-50 row-lg-60">


                        <?php
                        $query = "SELECT * FROM product ORDER BY productid";
                        $result = mysqli_query($connection, $query);
                        $count = mysqli_num_rows($result);

                        if ($count > 0) {
                            for ($i = 0; $i < $count; $i += 1) {
                                $query1 = "SELECT * FROM product ORDER BY productname LIMIT $i,1";
                                $result1 = mysqli_query($connection, $query1);
                                $count1 = mysqli_num_rows($result1);

                                for ($j = 0; $j < $count1; $j++) {
                                    $arr = mysqli_fetch_array($result1);
                                    $productid = $arr['productid'];
                                    $productname = $arr['productname'];
                                    $price = $arr['unitprice'];
                                    $Image = $arr['productprofile'];
                                    $itemdetail = $arr['productdescription'];

                        ?>
                                    <div class="col-12">
                                        <!-- Product-->
                                        <article class="product-modern text-center text-sm-start">
                                            <div class="unit unit-spacing-0 flex-column flex-sm-row">
                                                <div class="unit-left"><a class="product-modern-figure" href="single-product.php?productid=<?php echo $productid ?>"><img src="../../../work/images/product-big-3-328x330.png" alt="" width="10px" height="10px" /></a></div>
                                                <div class="unit-body">
                                                    <div class="product-modern-body">
                                                        <h4 class="product-modern-title"><a href="single-product.php?productid=<?php echo $productid ?>"><?php echo $productname ?></a></h4>
                                                        <div class="product-price-wrap">
                                                            <!-- <div class="product-price product-price-old">$35.00</div> -->
                                                            <div class="product-price"><?php echo $price ?> MMK</div>
                                                        </div>
                                                        <p class="product-modern-text"><?php echo $itemdetail ?></p><a class="btn btn-primary btn-zakaria" href="cart-page.html">Add to cart</a>
                                                    </div>
                                                </div>
                                            </div><span class="product-badge product-badge-sale">Sale</span>
                                        </article>
                                    </div>
                        <?php
                                }
                            }
                        }
                        ?>
                    </div>

                    <div class="pagination-wrap">
                        <!-- Bootstrap Pagination-->
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li class="page-item page-item-control disabled"><a class="page-link" href="#" aria-label="Previous"><span class="icon" aria-hidden="true"></span></a></li>
                                <li class="page-item active"><span class="page-link">1</span></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item page-item-control"><a class="page-link" href="#" aria-label="Next"><span class="icon" aria-hidden="true"></span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <?php include('cfooter.php');
