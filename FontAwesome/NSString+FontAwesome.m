//
//  NSString+FontAwesome.m
//
//  Copyright (c) 2012 Alex Usbergo. All rights reserved.
//
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//

#import "NSString+FontAwesome.h"

@implementation NSString (FontAwesome)

#pragma mark - Public Method

+ (NSString*)fontAwesomeIconStringForIconIdentifier:(NSString*)identifier
{
    NSString *iconString = [[self fontAwesomeIcons] objectForKey:identifier];
    if (iconString) {
        return iconString;
    }

    //Try to ensure FontAwesome 3 backward compatibility
    NSString *compatibilityIdentifier = [identifier stringByReplacingOccurrencesOfString:@"icon-" withString:@"fa-"];
    iconString = [[self fontAwesomeIcons] objectForKey:compatibilityIdentifier];
    if (iconString) {
        return iconString;
    }

    //Default Case
    return [[self fontAwesomeIcons] objectForKey:@"fa-glass"];
}

+ (NSArray *)fontAwesomeAvailableIcons
{
    static NSArray *fontAwesomeAvailableIcons;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        fontAwesomeAvailableIcons = [[[self fontAwesomeIcons] allKeys] sortedArrayUsingSelector:@selector(compare:)];
    });

    return fontAwesomeAvailableIcons;
}

#pragma mark - Data

+ (NSDictionary *)fontAwesomeIcons
{
    static NSDictionary *fontAwesomeIcons;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
		fontAwesomeIcons = @{@"fa-glass" : @"\uf000",
                             @"fa-music" : @"\uf001",
                             @"fa-search" : @"\uf002",
                             @"fa-envelope-o" : @"\uf003",
                             @"fa-heart" : @"\uf004",
                             @"fa-star" : @"\uf005",
                             @"fa-star-o" : @"\uf006",
                             @"fa-user" : @"\uf007",
                             @"fa-film" : @"\uf008",
                             @"fa-th-large" : @"\uf009",
                             @"fa-th" : @"\uf00a",
                             @"fa-th-list" : @"\uf00b",
                             @"fa-check" : @"\uf00c",
                             @"fa-times" : @"\uf00d",
                             @"fa-search-plus" : @"\uf00e",
                             @"fa-search-minus" : @"\uf010",
                             @"fa-power-off" : @"\uf011",
                             @"fa-signal" : @"\uf012",
                             @"fa-gear" : @"\uf013",
                             @"fa-cog" : @"\uf013",
                             @"fa-trash-o" : @"\uf014",
                             @"fa-home" : @"\uf015",
                             @"fa-file-o" : @"\uf016",
                             @"fa-clock-o" : @"\uf017",
                             @"fa-road" : @"\uf018",
                             @"fa-download" : @"\uf019",
                             @"fa-arrow-circle-o-down" : @"\uf01a",
                             @"fa-arrow-circle-o-up" : @"\uf01b",
                             @"fa-inbox" : @"\uf01c",
                             @"fa-play-circle-o" : @"\uf01d",
                             @"fa-rotate-right" : @"\uf01e",
                             @"fa-repeat" : @"\uf01e",
                             @"fa-refresh" : @"\uf021",
                             @"fa-list-alt" : @"\uf022",
                             @"fa-lock" : @"\uf023",
                             @"fa-flag" : @"\uf024",
                             @"fa-headphones" : @"\uf025",
                             @"fa-volume-off" : @"\uf026",
                             @"fa-volume-down" : @"\uf027",
                             @"fa-volume-up" : @"\uf028",
                             @"fa-qrcode" : @"\uf029",
                             @"fa-barcode" : @"\uf02a",
                             @"fa-tag" : @"\uf02b",
                             @"fa-tags" : @"\uf02c",
                             @"fa-book" : @"\uf02d",
                             @"fa-bookmark" : @"\uf02e",
                             @"fa-print" : @"\uf02f",
                             @"fa-camera" : @"\uf030",
                             @"fa-font" : @"\uf031",
                             @"fa-bold" : @"\uf032",
                             @"fa-italic" : @"\uf033",
                             @"fa-text-height" : @"\uf034",
                             @"fa-text-width" : @"\uf035",
                             @"fa-align-left" : @"\uf036",
                             @"fa-align-center" : @"\uf037",
                             @"fa-align-right" : @"\uf038",
                             @"fa-align-justify" : @"\uf039",
                             @"fa-list" : @"\uf03a",
                             @"fa-dedent" : @"\uf03b",
                             @"fa-outdent" : @"\uf03b",
                             @"fa-indent" : @"\uf03c",
                             @"fa-video-camera" : @"\uf03d",
                             @"fa-picture-o" : @"\uf03e",
                             @"fa-pencil" : @"\uf040",
                             @"fa-map-marker" : @"\uf041",
                             @"fa-adjust" : @"\uf042",
                             @"fa-tint" : @"\uf043",
                             @"fa-edit" : @"\uf044",
                             @"fa-pencil-square-o" : @"\uf044",
                             @"fa-share-square-o" : @"\uf045",
                             @"fa-check-square-o" : @"\uf046",
                             @"fa-move" : @"\uf047",
                             @"fa-step-backward" : @"\uf048",
                             @"fa-fast-backward" : @"\uf049",
                             @"fa-backward" : @"\uf04a",
                             @"fa-play" : @"\uf04b",
                             @"fa-pause" : @"\uf04c",
                             @"fa-stop" : @"\uf04d",
                             @"fa-forward" : @"\uf04e",
                             @"fa-fast-forward" : @"\uf050",
                             @"fa-step-forward" : @"\uf051",
                             @"fa-eject" : @"\uf052",
                             @"fa-chevron-left" : @"\uf053",
                             @"fa-chevron-right" : @"\uf054",
                             @"fa-plus-circle" : @"\uf055",
                             @"fa-minus-circle" : @"\uf056",
                             @"fa-times-circle" : @"\uf057",
                             @"fa-check-circle" : @"\uf058",
                             @"fa-question-circle" : @"\uf059",
                             @"fa-info-circle" : @"\uf05a",
                             @"fa-crosshairs" : @"\uf05b",
                             @"fa-times-circle-o" : @"\uf05c",
                             @"fa-check-circle-o" : @"\uf05d",
                             @"fa-ban" : @"\uf05e",
                             @"fa-arrow-left" : @"\uf060",
                             @"fa-arrow-right" : @"\uf061",
                             @"fa-arrow-up" : @"\uf062",
                             @"fa-arrow-down" : @"\uf063",
                             @"fa-mail-forward" : @"\uf064",
                             @"fa-share" : @"\uf064",
                             @"fa-resize-full" : @"\uf065",
                             @"fa-resize-small" : @"\uf066",
                             @"fa-plus" : @"\uf067",
                             @"fa-minus" : @"\uf068",
                             @"fa-asterisk" : @"\uf069",
                             @"fa-exclamation-circle" : @"\uf06a",
                             @"fa-gift" : @"\uf06b",
                             @"fa-leaf" : @"\uf06c",
                             @"fa-fire" : @"\uf06d",
                             @"fa-eye" : @"\uf06e",
                             @"fa-eye-slash" : @"\uf070",
                             @"fa-warning" : @"\uf071",
                             @"fa-exclamation-triangle" : @"\uf071",
                             @"fa-plane" : @"\uf072",
                             @"fa-calendar" : @"\uf073",
                             @"fa-random" : @"\uf074",
                             @"fa-comment" : @"\uf075",
                             @"fa-magnet" : @"\uf076",
                             @"fa-chevron-up" : @"\uf077",
                             @"fa-chevron-down" : @"\uf078",
                             @"fa-retweet" : @"\uf079",
                             @"fa-shopping-cart" : @"\uf07a",
                             @"fa-folder" : @"\uf07b",
                             @"fa-folder-open" : @"\uf07c",
                             @"fa-resize-vertical" : @"\uf07d",
                             @"fa-resize-horizontal" : @"\uf07e",
                             @"fa-bar-chart-o" : @"\uf080",
                             @"fa-twitter-square" : @"\uf081",
                             @"fa-facebook-square" : @"\uf082",
                             @"fa-camera-retro" : @"\uf083",
                             @"fa-key" : @"\uf084",
                             @"fa-gears" : @"\uf085",
                             @"fa-cogs" : @"\uf085",
                             @"fa-comments" : @"\uf086",
                             @"fa-thumbs-o-up" : @"\uf087",
                             @"fa-thumbs-o-down" : @"\uf088",
                             @"fa-star-half" : @"\uf089",
                             @"fa-heart-o" : @"\uf08a",
                             @"fa-sign-out" : @"\uf08b",
                             @"fa-linkedin-square" : @"\uf08c",
                             @"fa-thumb-tack" : @"\uf08d",
                             @"fa-external-link" : @"\uf08e",
                             @"fa-sign-in" : @"\uf090",
                             @"fa-trophy" : @"\uf091",
                             @"fa-github-square" : @"\uf092",
                             @"fa-upload" : @"\uf093",
                             @"fa-lemon-o" : @"\uf094",
                             @"fa-phone" : @"\uf095",
                             @"fa-square-o" : @"\uf096",
                             @"fa-bookmark-o" : @"\uf097",
                             @"fa-phone-square" : @"\uf098",
                             @"fa-twitter" : @"\uf099",
                             @"fa-facebook" : @"\uf09a",
                             @"fa-github" : @"\uf09b",
                             @"fa-unlock" : @"\uf09c",
                             @"fa-credit-card" : @"\uf09d",
                             @"fa-rss" : @"\uf09e",
                             @"fa-hdd" : @"\uf0a0",
                             @"fa-bullhorn" : @"\uf0a1",
                             @"fa-bell" : @"\uf0f3",
                             @"fa-certificate" : @"\uf0a3",
                             @"fa-hand-o-right" : @"\uf0a4",
                             @"fa-hand-o-left" : @"\uf0a5",
                             @"fa-hand-o-up" : @"\uf0a6",
                             @"fa-hand-o-down" : @"\uf0a7",
                             @"fa-arrow-circle-left" : @"\uf0a8",
                             @"fa-arrow-circle-right" : @"\uf0a9",
                             @"fa-arrow-circle-up" : @"\uf0aa",
                             @"fa-arrow-circle-down" : @"\uf0ab",
                             @"fa-globe" : @"\uf0ac",
                             @"fa-wrench" : @"\uf0ad",
                             @"fa-tasks" : @"\uf0ae",
                             @"fa-filter" : @"\uf0b0",
                             @"fa-briefcase" : @"\uf0b1",
                             @"fa-fullscreen" : @"\uf0b2",
                             @"fa-group" : @"\uf0c0",
                             @"fa-chain" : @"\uf0c1",
                             @"fa-link" : @"\uf0c1",
                             @"fa-cloud" : @"\uf0c2",
                             @"fa-flask" : @"\uf0c3",
                             @"fa-cut" : @"\uf0c4",
                             @"fa-scissors" : @"\uf0c4",
                             @"fa-copy" : @"\uf0c5",
                             @"fa-files-o" : @"\uf0c5",
                             @"fa-paperclip" : @"\uf0c6",
                             @"fa-save" : @"\uf0c7",
                             @"fa-floppy-o" : @"\uf0c7",
                             @"fa-square" : @"\uf0c8",
                             @"fa-reorder" : @"\uf0c9",
                             @"fa-list-ul" : @"\uf0ca",
                             @"fa-list-ol" : @"\uf0cb",
                             @"fa-strikethrough" : @"\uf0cc",
                             @"fa-underline" : @"\uf0cd",
                             @"fa-table" : @"\uf0ce",
                             @"fa-magic" : @"\uf0d0",
                             @"fa-truck" : @"\uf0d1",
                             @"fa-pinterest" : @"\uf0d2",
                             @"fa-pinterest-square" : @"\uf0d3",
                             @"fa-google-plus-square" : @"\uf0d4",
                             @"fa-google-plus" : @"\uf0d5",
                             @"fa-money" : @"\uf0d6",
                             @"fa-caret-down" : @"\uf0d7",
                             @"fa-caret-up" : @"\uf0d8",
                             @"fa-caret-left" : @"\uf0d9",
                             @"fa-caret-right" : @"\uf0da",
                             @"fa-columns" : @"\uf0db",
                             @"fa-unsorted" : @"\uf0dc",
                             @"fa-sort" : @"\uf0dc",
                             @"fa-sort-down" : @"\uf0dd",
                             @"fa-sort-asc" : @"\uf0dd",
                             @"fa-sort-up" : @"\uf0de",
                             @"fa-sort-desc" : @"\uf0de",
                             @"fa-envelope" : @"\uf0e0",
                             @"fa-linkedin" : @"\uf0e1",
                             @"fa-rotate-left" : @"\uf0e2",
                             @"fa-undo" : @"\uf0e2",
                             @"fa-legal" : @"\uf0e3",
                             @"fa-gavel" : @"\uf0e3",
                             @"fa-dashboard" : @"\uf0e4",
                             @"fa-tachometer" : @"\uf0e4",
                             @"fa-comment-o" : @"\uf0e5",
                             @"fa-comments-o" : @"\uf0e6",
                             @"fa-flash" : @"\uf0e7",
                             @"fa-bolt" : @"\uf0e7",
                             @"fa-sitemap" : @"\uf0e8",
                             @"fa-umbrella" : @"\uf0e9",
                             @"fa-paste" : @"\uf0ea",
                             @"fa-clipboard" : @"\uf0ea",
                             @"fa-lightbulb-o" : @"\uf0eb",
                             @"fa-exchange" : @"\uf0ec",
                             @"fa-cloud-download" : @"\uf0ed",
                             @"fa-cloud-upload" : @"\uf0ee",
                             @"fa-user-md" : @"\uf0f0",
                             @"fa-stethoscope" : @"\uf0f1",
                             @"fa-suitcase" : @"\uf0f2",
                             @"fa-bell-o" : @"\uf0a2",
                             @"fa-coffee" : @"\uf0f4",
                             @"fa-cutlery" : @"\uf0f5",
                             @"fa-file-text-o" : @"\uf0f6",
                             @"fa-building" : @"\uf0f7",
                             @"fa-hospital" : @"\uf0f8",
                             @"fa-ambulance" : @"\uf0f9",
                             @"fa-medkit" : @"\uf0fa",
                             @"fa-fighter-jet" : @"\uf0fb",
                             @"fa-beer" : @"\uf0fc",
                             @"fa-h-square" : @"\uf0fd",
                             @"fa-plus-square" : @"\uf0fe",
                             @"fa-angle-double-left" : @"\uf100",
                             @"fa-angle-double-right" : @"\uf101",
                             @"fa-angle-double-up" : @"\uf102",
                             @"fa-angle-double-down" : @"\uf103",
                             @"fa-angle-left" : @"\uf104",
                             @"fa-angle-right" : @"\uf105",
                             @"fa-angle-up" : @"\uf106",
                             @"fa-angle-down" : @"\uf107",
                             @"fa-desktop" : @"\uf108",
                             @"fa-laptop" : @"\uf109",
                             @"fa-tablet" : @"\uf10a",
                             @"fa-mobile-phone" : @"\uf10b",
                             @"fa-mobile" : @"\uf10b",
                             @"fa-circle-o" : @"\uf10c",
                             @"fa-quote-left" : @"\uf10d",
                             @"fa-quote-right" : @"\uf10e",
                             @"fa-spinner" : @"\uf110",
                             @"fa-circle" : @"\uf111",
                             @"fa-mail-reply" : @"\uf112",
                             @"fa-reply" : @"\uf112",
                             @"fa-github-alt" : @"\uf113",
                             @"fa-folder-o" : @"\uf114",
                             @"fa-folder-open-o" : @"\uf115",
                             @"fa-expand-o" : @"\uf116",
                             @"fa-collapse-o" : @"\uf117",
                             @"fa-smile-o" : @"\uf118",
                             @"fa-frown-o" : @"\uf119",
                             @"fa-meh-o" : @"\uf11a",
                             @"fa-gamepad" : @"\uf11b",
                             @"fa-keyboard-o" : @"\uf11c",
                             @"fa-flag-o" : @"\uf11d",
                             @"fa-flag-checkered" : @"\uf11e",
                             @"fa-terminal" : @"\uf120",
                             @"fa-code" : @"\uf121",
                             @"fa-reply-all" : @"\uf122",
                             @"fa-mail-reply-all" : @"\uf122",
                             @"fa-star-half-empty" : @"\uf123",
                             @"fa-star-half-full" : @"\uf123",
                             @"fa-star-half-o" : @"\uf123",
                             @"fa-location-arrow" : @"\uf124",
                             @"fa-crop" : @"\uf125",
                             @"fa-code-fork" : @"\uf126",
                             @"fa-unlink" : @"\uf127",
                             @"fa-chain-broken" : @"\uf127",
                             @"fa-question" : @"\uf128",
                             @"fa-info" : @"\uf129",
                             @"fa-exclamation" : @"\uf12a",
                             @"fa-superscript" : @"\uf12b",
                             @"fa-subscript" : @"\uf12c",
                             @"fa-eraser" : @"\uf12d",
                             @"fa-puzzle-piece" : @"\uf12e",
                             @"fa-microphone" : @"\uf130",
                             @"fa-microphone-slash" : @"\uf131",
                             @"fa-shield" : @"\uf132",
                             @"fa-calendar-o" : @"\uf133",
                             @"fa-fire-extinguisher" : @"\uf134",
                             @"fa-rocket" : @"\uf135",
                             @"fa-maxcdn" : @"\uf136",
                             @"fa-chevron-circle-left" : @"\uf137",
                             @"fa-chevron-circle-right" : @"\uf138",
                             @"fa-chevron-circle-up" : @"\uf139",
                             @"fa-chevron-circle-down" : @"\uf13a",
                             @"fa-html5" : @"\uf13b",
                             @"fa-css3" : @"\uf13c",
                             @"fa-anchor" : @"\uf13d",
                             @"fa-unlock-o" : @"\uf13e",
                             @"fa-bullseye" : @"\uf140",
                             @"fa-ellipsis-horizontal" : @"\uf141",
                             @"fa-ellipsis-vertical" : @"\uf142",
                             @"fa-rss-square" : @"\uf143",
                             @"fa-play-circle" : @"\uf144",
                             @"fa-ticket" : @"\uf145",
                             @"fa-minus-square" : @"\uf146",
                             @"fa-minus-square-o" : @"\uf147",
                             @"fa-level-up" : @"\uf148",
                             @"fa-level-down" : @"\uf149",
                             @"fa-check-square" : @"\uf14a",
                             @"fa-pencil-square" : @"\uf14b",
                             @"fa-external-link-square" : @"\uf14c",
                             @"fa-share-square" : @"\uf14d",
                             @"fa-compass" : @"\uf14e",
                             @"fa-toggle-down" : @"\uf150",
                             @"fa-caret-square-o-down" : @"\uf150",
                             @"fa-toggle-up" : @"\uf151",
                             @"fa-caret-square-o-up" : @"\uf151",
                             @"fa-toggle-right" : @"\uf152",
                             @"fa-caret-square-o-right" : @"\uf152",
                             @"fa-euro" : @"\uf153",
                             @"fa-eur" : @"\uf153",
                             @"fa-gbp" : @"\uf154",
                             @"fa-dollar" : @"\uf155",
                             @"fa-usd" : @"\uf155",
                             @"fa-rupee" : @"\uf156",
                             @"fa-inr" : @"\uf156",
                             @"fa-cny" : @"\uf157",
                             @"fa-rmb" : @"\uf157",
                             @"fa-yen" : @"\uf157",
                             @"fa-jpy" : @"\uf157",
                             @"fa-ruble" : @"\uf158",
                             @"fa-rouble" : @"\uf158",
                             @"fa-rub" : @"\uf158",
                             @"fa-won" : @"\uf159",
                             @"fa-krw" : @"\uf159",
                             @"fa-bitcoin" : @"\uf15a",
                             @"fa-btc" : @"\uf15a",
                             @"fa-file" : @"\uf15b",
                             @"fa-file-text" : @"\uf15c",
                             @"fa-sort-alpha-asc" : @"\uf15d",
                             @"fa-sort-alpha-desc" : @"\uf15e",
                             @"fa-sort-amount-asc" : @"\uf160",
                             @"fa-sort-amount-desc" : @"\uf161",
                             @"fa-sort-numeric-asc" : @"\uf162",
                             @"fa-sort-numeric-desc" : @"\uf163",
                             @"fa-thumbs-up" : @"\uf164",
                             @"fa-thumbs-down" : @"\uf165",
                             @"fa-youtube-square" : @"\uf166",
                             @"fa-youtube" : @"\uf167",
                             @"fa-xing" : @"\uf168",
                             @"fa-xing-square" : @"\uf169",
                             @"fa-youtube-play" : @"\uf16a",
                             @"fa-dropbox" : @"\uf16b",
                             @"fa-stack-overflow" : @"\uf16c",
                             @"fa-instagram" : @"\uf16d",
                             @"fa-flickr" : @"\uf16e",
                             @"fa-adn" : @"\uf170",
                             @"fa-bitbucket" : @"\uf171",
                             @"fa-bitbucket-square" : @"\uf172",
                             @"fa-tumblr" : @"\uf173",
                             @"fa-tumblr-square" : @"\uf174",
                             @"fa-long-arrow-down" : @"\uf175",
                             @"fa-long-arrow-up" : @"\uf176",
                             @"fa-long-arrow-left" : @"\uf177",
                             @"fa-long-arrow-right" : @"\uf178",
                             @"fa-apple" : @"\uf179",
                             @"fa-windows" : @"\uf17a",
                             @"fa-android" : @"\uf17b",
                             @"fa-linux" : @"\uf17c",
                             @"fa-dribbble" : @"\uf17d",
                             @"fa-skype" : @"\uf17e",
                             @"fa-foursquare" : @"\uf180",
                             @"fa-trello" : @"\uf181",
                             @"fa-female" : @"\uf182",
                             @"fa-male" : @"\uf183",
                             @"fa-gittip" : @"\uf184",
                             @"fa-sun-o" : @"\uf185",
                             @"fa-moon-o" : @"\uf186",
                             @"fa-archive" : @"\uf187",
                             @"fa-bug" : @"\uf188",
                             @"fa-vk" : @"\uf189",
                             @"fa-weibo" : @"\uf18a",
                             @"fa-renren" : @"\uf18b",
                             @"fa-pagelines" : @"\uf18c",
                             @"fa-stack-exchange" : @"\uf18d",
                             @"fa-arrow-circle-o-right" : @"\uf18e",
                             @"fa-arrow-circle-o-left" : @"\uf190",
                             @"fa-toggle-left" : @"\uf191",
                             @"fa-caret-square-o-left" : @"\uf191",
                             @"fa-dot-circle-o" : @"\uf192",
                             @"fa-wheelchair" : @"\uf193",
                             @"fa-vimeo-square" : @"\uf194",
                             @"fa-turkish-lira" : @"\uf195",
                             @"fa-try" : @"\uf195"};
    });

    return fontAwesomeIcons;
}

@end
