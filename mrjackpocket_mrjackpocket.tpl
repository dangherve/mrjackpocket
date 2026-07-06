{OVERALL_GAME_HEADER}

<!-- 
--------
-- BGA framework: © Gregory Isabelli <gisabelli@boardgamearena.com> & Emmanuel Colin <ecolin@boardgamearena.com>
-- MrJackPocket implementation : © Artem Katnov <a_katnov@mail.ru>
-- 
-- This code has been produced on the BGA studio platform for use on http://boardgamearena.com.
-- See http://en.boardgamearena.com/#!doc/Studio for more information.
-------
-->
<div id="container">

    <div id="available-options">
        <!-- BEGIN available_option -->
            <div id="available_option_container_{index}" class="available-option-container">
                <div id="available_option_inner_{index}" class="available-option-inner">
                    <div id="available_option_front_{index}" class="available-option-front"></div>
                    <div id="available_option_back_{index}" class="available-option-back"></div>
                </div>
            </div>
            <div id="next_option_{index}" class="next-option"></div>
        <!-- END available_option -->
    </div>



    <div id="top-container">
        <div id="round-info">
            <!-- BEGIN round -->
                <div id="round_{round_num}" class="round"></div>
            <!-- END round -->
        </div>
        <span id="gamer-jack-status" class="tooltip-text"></span>
    </div>


    <div id="goal-info">
        <div id="visible-status-card-container">
            <div id="visible-status-card-inner">
                <div id="visible-status-card-front"></div>
                <div id="visible-status-card-back"></div>
            </div>
        </div>
        <div id="goal-info-container">
            <div id="goal-info-inner">
                <div id="goal-info-front"></div>
                <div id="goal-info-back"></div>
            </div>
        </div>
    </div>

    <div id="board">
        <!-- BEGIN tale -->
            <div id="tale_outer_{pos}" class="tale-outer {status}">
                <div id="tale_{pos}" class="tale {status}"></div>
            </div>
        <!-- END tale -->
    </div>

    <div id="alibi-deck">
        <div id="alibi-deck-img" class="alibi-deck-img"></div>
        <div id="alibi-deck-opening"></div>
        <span id="alibi-deck-counter" class="tooltip-text"></span>
    </div>
</div>

<script type="text/javascript">

// Javascript HTML templates


var jstpl_jack_panel=`
    <div id="jack-panel">
        <div id="jack-character"></div>
        <div class="time-container" id="jack-winned-rounds">
            <div class="time-num" id="jack-winned-rounds-num">?</div>
            ×
            <div class="time-label" id="jack-winned-rounds-pic"></div>
        </div>
        <div id="jack-points-plus">+</div>
        <div class="time-container" id="jack-alibi">
            <div class="time-num" id="jack-alibi-num">?</div>
            ×
            <div class="time-label" id="jack-winned-alibi-pic"></div>
        </div>
    </div>
`;
var jstpl_detective_panel=`
    <div id="detective-panel">
        <div class="time-container" id="detective-winned-rounds">
            <div class="time-num" id="detective-winned-rounds-num">?</div>
            ×
            <div class="time-label" id="detective-winned-rounds-pic"></div>
        </div>
    </div>
`;
var jstpl_jack_character_tooltip='<div id="jack-character-tooltip" style="${styles}"></div>';
var jstpl_winned_rounds_tooltip='<div class="winned-rounds-tooltip-container">${rounds}</div>';
var jstpl_winned_round_tooltip='<div class="winned-round-tooltip" style="${styles}"></div>';
var jstpl_jack_alibi_cards_tooltip='<div class="alibi-cards-tooltip-container">${alibis}</div>';
var jstpl_jack_alibi_card_tooltip='<div class="alibi-card-tooltip" style="${styles}"></div>';
var jstpl_jack_alibi_opening=`
    <div id="jack-alibi-opening-container">
        <div id="jack-alibi-opening-inner">
            <div id="jack-alibi-opening-front"></div>
            <div id="jack-alibi-opening-back"></div>
        </div>
    </div>
`;
var jstpl_question_svg = '<svg xmlns="http://www.w3.org/2000/svg" width="40px" height="40px" viewBox="0 0 24 24" fill="none"> <path d="M11.967 12.75C12.967 11.75 13.967 11.3546 13.967 10.25C13.967 9.14543 13.0716 8.25 11.967 8.25C11.0351 8.25 10.252 8.88739 10.03 9.75M11.967 15.75H11.977M21 12C21 16.9706 16.9706 21 12 21C7.02944 21 3 16.9706 3 12C3 7.02944 7.02944 3 12 3C16.9706 3 21 7.02944 21 12Z" stroke="${color}" stroke-width="2" stroke-linecap="round"/> </svg>';
var jstpl_endgame_dialog = '<div id="end-game-container"><div id="end-game-description">Jack character was</div><div id="end-game-jack" style="${jackPicture}"></div><button id="my_ok_button" class="tooltip-text">ok</button></div>';

</script>

{OVERALL_GAME_FOOTER}
