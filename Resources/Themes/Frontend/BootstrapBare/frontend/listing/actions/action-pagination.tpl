{namespace name="frontend/listing/listing_actions"}

{block name="frontend_listing_actions_paging_inner"}
    <div class="listing-paging panel-paging sw5-plugin">
        {if $pages > 1}
            <div class="row mbl">
                {block name='frontend_listing_actions_count'}
                    <div class="col-sm-6 text-left">
                        {s name="ListingTextSite"}Seite{/s} <strong>{$sPage}</strong> {s name="ListingTextFrom"}von{/s}
                        <strong>{$pages}</strong>
                    </div>
                {/block}
                {block name="frontend_listing_actions_paging_navigation"}
                    <div class="col-sm-6 text-right">
                        <ul class="pagination man">
                            {* Pagination - Frist page *}
                            {block name="frontend_listing_actions_paging_first"}
                                <li{if $sPage <= 1} class="disabled"{/if}>
                                    <a href="{$baseUrl}?p=1" title="{"{s name='ListingLinkFirst'}{/s}"|escape}"
                                       rel="first"
                                       data-action-link="true"><i class="fa fa-step-backward"></i></a>
                                </li>
                            {/block}

                            {* Pagination - Previous page *}
                            {block name='frontend_listing_actions_paging_previous'}
                                <li{if $sPage <= 1} class="disabled"{/if}>
                                    <a href="{$baseUrl}?p={$sPage-1}"
                                       title="{"{s name='ListingLinkPrevious'}{/s}"|escape}"
                                       rel="prev" data-action-link="true"><i class="fa fa-caret-left fa-lg"></i></i></a>
                                </li>
                            {/block}

                            {* Pagination - current page *}
                            {block name='frontend_listing_actions_paging_numbers'}
                                {for $index=1 to $pages}
                                    {if $sPage == $index-1 || $sPage == $index || $sPage == $index+1}
                                        <li {if $index == $sPage}class="active"{/if}>
                                            <a {if $index != $sPage}href="{$baseUrl}?p={$index}"{/if}
                                               title="{"{s name='ListingLinkCurrent'}Seite{/s}"|escape} {$index}"
                                               data-action-link="true">{$index}</a>
                                        </li>
                                    {/if}
                                {/for}
                            {/block}

                            {* Pagination - Next page *}
                            {block name='frontend_listing_actions_paging_next'}
                                <li{if $sPage >= $pages} class="disabled"{/if}>
                                    <a href="{$baseUrl}?p={$sPage+1}" title="{"{s name='ListingLinkNext'}{/s}"|escape}"
                                       rel="next" data-action-link="true"><i class="fa fa-caret-right fa-lg"></i></a>
                                </li>
                            {/block}

                            {* Pagination - Last page *}
                            {block name="frontend_listing_actions_paging_last"}
                                <li{if $sPage >= $pages} class="disabled"{/if}>
                                    <a href="{$baseUrl}?p={$pages}" title="{"{s name='ListingLinkLast'}{/s}"|escape}"
                                       rel="last" data-action-link="true"><i class="fa fa-step-forward"></i></a>
                                </li>
                            {/block}
                        </ul>
                    </div>
                {/block}
            </div>
        {/if}
    </div>
{/block}
