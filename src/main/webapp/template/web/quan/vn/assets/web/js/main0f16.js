$(document).ready(function () {
    $(document).bind("scroll", function () {
        var windscroll = $(document).scrollTop();
        if (windscroll >= 70) {
            $(".header").addClass("show");
        } else {
            $(".header").removeClass("show");
        }
    });
    var $el_banner = $(".slider-banner");
    $el_banner.on(
        "afterChange",
        function (event, slick, currentSlide, nextSlide) {}
    );
    $el_banner.on("init", function (event, slick, currentSlide, nextSlide) {
        var setHeightBanner = () => {
            var panels = document.querySelectorAll(".img-banner > img");

            // You'll need to slice the node_list before using .map()
            var heights = Array.prototype.slice
                .call(panels)
                .map(function (panel) {
                    // return an array to hold the item and its value
                    return [panel, panel.clientHeight];
                });
            var sortedHeights = heights.sort(function (a, b) {
                return a[1] > b[1];
            });
            if (sortedHeights.length > 0) {
                $(".img-banner").css("height", sortedHeights[0][1] + "px");
            }
        };
        setTimeout(() => {
            setHeightBanner();
            setTimeout(() => {
                setHeightBanner();
            }, 2000);
        }, 1000);
    });
    $el_banner.slick({
        // slidesToShow: 1,
        // slidesToScroll: 1,
        lazyLoad: "ondemand",
        // adaptiveHeight: true,

        arrows: false,
        // dots: true,
        dots: true,
        infinite: true,
        speed: 500,
        fade: true,
        cssEase: "linear",
        autoplay: true,
        autoplaySpeed: 3000,
    });
    $(".slider-4").slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        arrows: true,
        dots: false,
        responsive: [
            {
                breakpoint: 1200,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: false,
                    dots: false,
                },
            },
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2,
                },
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                },
            },
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ],
    });
    var $el1 = $(".slider-teacher");
    $el1.on("afterChange", function (event, slick, currentSlide, nextSlide) {
        setTimeout(() => {
            setMaxHeight(".item-t-custom .item-t-txt");
            setTimeout(() => {
                setMaxHeight(".item-t-custom .item-t-txt");
            }, 2000);
        }, 1000);
    });
    $el1.on("init", function (event, slick, currentSlide, nextSlide) {
        setTimeout(() => {
            setMaxHeight(".item-t-custom .item-t-txt");
            setTimeout(() => {
                setMaxHeight(".item-t-custom .item-t-txt");
            }, 2000);
        }, 1000);
    });
    $el1.slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        arrows: true,
        dots: false,
        responsive: [
            {
                breakpoint: 1200,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: false,
                    dots: false,
                },
            },
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2,
                },
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 2,
                },
            },
            // {
            //     breakpoint: 480,
            //     settings: {
            //         slidesToShow: 1,
            //         slidesToScroll: 1,
            //     },
            // },
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ],
    });

    $(".slider-2").slick({
        slidesToShow: 2,
        slidesToScroll: 1,
        arrows: true,
        dots: false,
        autoplay: true,
        autoplaySpeed: 5000,
        responsive: [
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                },gleMenu
            },
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ],
    });
    $(".toogle-a").click(function () {
        $(".menu").toggleClass("show");
        $(".bg-menu").toggleClass("active");
        $(this).toggleClass("active");
    });
    $(".bg-menu").click(function () {
        $(".menu").removeClass("show");
        $(".toogle-a").removeClass("active");
        $(this).removeClass("active");
    });
    $(".menu > ul > li ").click(function () {
        $(this).find("ul").toggle();
    });
    $(".menu-mobile").click(function () {
        $(".nav-adm ul").toggle();
    });
});
function toggleMenu(id) {
    $("#" + id).toggleClass("show");
}
const redirectClassroomNow = (url) => {
    window.location.href = url;
};
