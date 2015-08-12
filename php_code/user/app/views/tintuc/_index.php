<tr class="newsList_Seperator">
    <td class="newsList_Image">
        <a href="<?php echo url('/tin-tuc/chi-tiet/' . $data->id . '/' . $data->alias.'.html')?>">
            <img src="<?php echo app()->baseUrl?>/uploads/<?php echo $data->image?>" alt="<?php echo $data->name?>">
        </a>
    </td>
    <td class="newsList_Content">
        <div>
            <a href="<?php echo url('/tin-tuc/chi-tiet/' . $data->id . '/' . $data->alias.'.html')?>" class="newsList_Title">
                <?php echo $data->name?>
            </a>
        </div>
        <div>
            <span class="newsList_Summary">
				<?php echo CutStr(html_decode($data->description), 100)?>
                </span> <span class="newsList_LinkDetail"></span>
        </div>
    </td>
</tr>
													