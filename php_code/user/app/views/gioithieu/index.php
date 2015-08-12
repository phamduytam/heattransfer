
    <div id="cphMain_ctl00_TopPane" class="top"></div>
    <div id="cphMain_ctl00_RightPane" class="right"></div>
    <div id="cphMain_ctl00_ContentPane" class="center">
<div id="TextHTML-Module" class="DefaultModule">
    
    <div class="defaultTitle TextHTML-Title">
        <span>
            Thông tin giới thiệu</span></div>
    <div class="defaultContent TextHTML-content">
        <?php if ($gioithieu)
                echo html_decode($gioithieu->content);
             ?>
        
    </div>
    <div class="clear defaultFooter TextHTML-footer">
        <div>
        </div>
    </div>
    
</div>
</div>
