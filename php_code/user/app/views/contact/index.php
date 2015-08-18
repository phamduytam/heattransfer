    <div id="cphMain_ctl00_TopPane" class="top"></div>
    <div id="cphMain_ctl00_RightPane" class="right"></div>
    <div id="cphMain_ctl00_ContentPane" class="center">
<style type="text/css">
.contactInput input[type='text']{ width: 85%; }
.contactInput textarea{ width: 85%; }
</style>

<div class="DefaultModule contact">
    <div class="defaultTitle">
        <h2></h2>
    </div>
    <div class="defaultContent contact-content">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3922.3828558264945!2d106.35919700000001!3d10.549183600000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x310ac81cd8dbc9d1%3A0xcbbbda8508507545!2zxJDGsOG7nW5nIHPhu5EgNiwgTOG7o2kgQsOsbmggTmjGoW4sIHRwLiBUw6JuIEFuLCBMb25nIEFuLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1439815945126" width="100%" height="220" frameborder="0" style="border:0" allowfullscreen></iframe>
        <br><br>
        <div id="cphMain_ctl00_ctl00_plCompanyInfo" class="contact companyInfo" style="width:100%;">
	
            <div class="contact-title">
                <h2>
                    Thông tin liên hệ
                </h2>
            </div>
            <div class="Block contact-info">
                <?php echo $contact->content?>
            </div>
            
        
        </div>
        
        <div id="cphMain_ctl00_ctl00_plContent" class="contact contactInput" style="width:100%;">
	
            <div class="contact-title">
                <h2 class="title">
                    Thông tin phản hồi</h2>
            </div>
            <div class="contact-info">
                <div class="clear contactMsg">
                    Xin vui lòng điền các yêu cầu vào form dưới đây và gửi cho chúng tôi. Chúng tôi sẽ trả lời bạn ngay sau khi nhận được.<br><span>Xin chân thành cảm ơn!</span>
                </div>
				<?php
				$form = $this->beginWidget('TbActiveForm', array(
				'action'=>sslUrl('lien-he'),
				'id' => 'contact-form',
				'htmlOptions'=>array('enctype' => 'multipart/form-data')
				));
				?>
                <?php
        		if (user()->hasFlash('messages'))
        		{
        			$messages = user()->getFlash('messages');
        			echo '<div id="formstatus"><div class="alert success" style="color: blue"><i class="fa fa-check-circle-o"></i>	'. hsp($messages). '</div></div>';
        		}
                ?>
                <div class="clear">
					<div class="key">
                        <span class="required">*</span>
                        Họ tên
                    </div>
                    <div class="value">
						<?php echo $form->textField($model,'name', array('class' => 'NormalTextBox')); ?>
                        
                    </div>
                    <?php echo $form->error($model,'name', array('class' => 'required')); ?>
                </div>
                <div class="clear">
                    <div class="key">
                        Địa chỉ
                    </div>
                    <div class="value">
                        <?php echo $form->textField($model,'address', array('class' => 'NormalTextBox')); ?>
                        
                    </div>
                    <?php echo $form->error($model,'address'); ?>
                </div>
                <div class="clear">
                    <div class="key">
                        <span class="required">*</span>
                        Email
                    </div>
                    <div class="value">
                        <?php echo $form->textField($model,'email', array('class' => 'NormalTextBox')); ?>
                        
                    </div>
                    <?php echo $form->error($model,'email', array('class' => 'required')); ?>
                </div>
                <div class="clear">
                    <div class="key">
                        <span class="required">*</span>
                        Số điện thoại
                    </div>
                    <div class="value">
                        <?php echo $form->textField($model,'phone', array('class' => 'NormalTextBox')); ?>
                        
                    </div><?php echo $form->error($model,'phone', array('class' => 'required')); ?>
                </div>
                <div class="clear">
                    <div class="key">
                        <span class="required">*</span>
                        Tiêu đề
                    </div>
                    <div class="value">
						<?php echo $form->textField($model,'subject', array('class' => 'NormalTextBox')); ?>
                        
                    </div>
                    <?php echo $form->error($model,'subject', array('class' => 'required')); ?></span>
                </div>
                <div class="clear">
                    <div class="key">
                        <span class="required">*</span>
                        Nội dung
                    </div>
                    <div class="value">
						<?php echo $form->textArea($model,'content', array('cols' => '20', 'rows' => '5', 'height' => '130px')); ?>
                        
                    </div>
                    <?php echo $form->error($model,'content', array('class' => 'required')); ?>
                </div>
                
                <div class="clear">
                    <div class="key">
                    </div>
                    <div class="value">
                        <input name="ctl00$cphMain$ctl00$ctl00$btnSend" value="Gửi" id="cphMain_ctl00_ctl00_btnSend" class="Button" style="width:80px;" type="submit">
                        <input name="ctl00$cphMain$ctl00$ctl00$btnReset" value="Nhập lại" id="cphMain_ctl00_ctl00_btnReset" class="Button" style="width:80px;" type="reset">
                    </div>
                </div>
				<?php
					$this->endWidget();
					?>
                <div class="clear">
                </div>
            </div>
        
</div>
        
    </div>
    <div class="defaultFooter contact-footer">
        <div>
        </div>
    </div>
</div>
</div>
