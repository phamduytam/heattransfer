
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
        <div id="cphMain_ctl00_ctl00_plCompanyInfo" class="contact companyInfo" style="width:100%;">
	
            <div class="contact-title">
                <h2>
                    Thông tin liên hệ
                </h2>
            </div>
            <div class="Block contact-info">
                <div class="clear">
                    <strong>
                        MAX SHOP</strong>
                </div>
                <div class="clear">
                    <div class="key">
                        Địa chỉ</div>
                    <div class="space">
                        :</div>
                    <div class="value">
                        Tòa nhà Hà Nội Group, số 442, Đội Cấn, Ba Đình, Hà Nội</div>
                </div>
                <div class="clear">
                    <div class="key">
                        Điện thoại</div>
                    <div class="space">
                        :</div>
                    <div class="value">
                        04 6674 2332</div>
                </div>
                <div class="clear">
                    <div class="key">
                        Fax</div>
                    <div class="space">
                        :</div>
                    <div class="value">
                        </div>
                </div>
                <div class="clear">
                    <div class="key">
                        Email</div>
                    <div class="space">
                        :</div>
                    <div class="value">
                        <a id="cphMain_ctl00_ctl00_hplEmail" href="mailto:support@bizweb.vn">support@bizweb.vn</a></div>
                </div>
                <div class="clear">
                    <div class="key">
                        Website
                    </div>
                    <div class="space">
                        :</div>
                    <div class="value">
                        <a href="/">http://ecom176clone.bizwebvietnam.com</a>
                    </div>
                </div>
                <div class="clear">
                </div>
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
                <div class="clear">
					<div class="key">
                        <span class="required">*</span>
                        Họ tên
                    </div>
                    <div class="value">
						<?php echo $form->textField($model,'name', array('placeholder' => 'Họ tên', 'class' => 'NormalTextBox')); ?>
                        <span id="cphMain_ctl00_ctl00_rfvContactName" style="display:none;"><?php echo $form->error($model,'name'); ?></span>
                    </div>
                </div>
                <div class="clear">
                    <div class="key">
                        <span class="required">*</span>
                        Địa chỉ
                    </div>
                    <div class="value">
                        <?php echo $form->textField($model,'address', array('placeholder' => 'Địa chỉ', 'class' => 'NormalTextBox')); ?>
                        <span style="display:none;"><?php echo $form->error($model,'address'); ?></span>
                </div>
                <div class="clear">
                    <div class="key">
                        <span class="required">*</span>
                        Email
                    </div>
                    <div class="value">
                        <?php echo $form->textField($model,'email', array('placeholder' => 'Email', 'class' => 'NormalTextBox')); ?>
                        <span style="display:none;"><?php echo $form->error($model,'email'); ?></span>
                    </div>
                </div>
                <div class="clear">
                    <div class="key">
                        <span class="required">*</span>
                        Số điện thoại
                    </div>
                    <div class="value">
                        <?php echo $form->textField($model,'phone', array('placeholder' => 'Số điện thoại', 'class' => 'NormalTextBox')); ?>
                        <span style="display:none;"><?php echo $form->error($model,'phone'); ?></span>
                    </div>
                </div>
                <div class="clear">
                    <div class="key">
                        <span class="required">*</span>
                        Tiêu đề
                    </div>
                    <div class="value">
						<?php echo $form->textField($model,'subject', array('placeholder' => 'Tiêu đề', 'class' => 'NormalTextBox')); ?>
                        <span id="cphMain_ctl00_ctl00_rfvTitle" style="display:none;"><?php echo $form->error($model,'subject'); ?></span>
                    </div>
                </div>
                <div class="clear">
                    <div class="key">
                        <span class="required">*</span>
                        Nội dung
                    </div>
                    <div class="value">
						<?php echo $form->textArea($model,'content', array('class' => 'NormalTextBoxl', 'placeholder' => 'Viết tin nhắn', 'cols' => '20', 'rows' => '2', 'height' => '80px')); ?>
                        <span id="cphMain_ctl00_ctl00_rfvContactContent" style="display:none;"><?php echo $form->error($model,'content'); ?></span>
                    </div>
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

<div id="content" class="row" style="padding-bottom: 10px;">
	

	<div class="span9 content-box">
		<h3 class="title">
		<?php echo $this->pageTitle;?>
		</h3>
		<div><?php echo $contact->content?></div>
		<?php
		$form = $this->beginWidget('TbActiveForm', array(
		'action'=>sslUrl('lien-he'),
		'id' => 'contact-form',
		'htmlOptions'=>array('enctype' => 'multipart/form-data')
		));
		?>
		<fieldset>
		<?php
		if (user()->hasFlash('messages'))
		{
			$messages = user()->getFlash('messages');
			echo '<div id="formstatus"><div class="alert success"><i class="fa fa-check-circle-o"></i>	'. hsp($messages). '</div></div>';
		}
		?>
			<div style="overflow: hidden">
				<div class="form-group col-md-6">
				<?php echo $form->textField($model,'name', array('placeholder' => 'Họ tên', 'class' => 'form-control')); ?>
				<?php echo $form->error($model,'name'); ?>
				</div>
				<!-- end .span4 -->
				<div class="form-group col-md-6">
				<?php echo $form->textField($model,'email', array('placeholder' => 'e-mail', 'class' => 'form-control')); ?>
				<?php echo $form->error($model,'email'); ?>
				</div>
				<!-- end .span4 -->
			</div>
			<!-- end .row -->

			<div class="col-md-6 form-group">
			<?php echo $form->textField($model,'subject', array('placeholder' => 'Tiêu đề', 'class' => 'form-control')); ?>
			</div>
			<?php echo $form->error($model,'subject'); ?>
			<div class="form-group col-md-8">
			<?php echo $form->textArea($model,'content', array('class' => 'form-control', 'placeholder' => 'Viết tin nhắn', 'cols' => '25', 'rows' => '10')); ?>
			</div>
			<?php echo $form->error($model,'content'); ?>
			<br>
			<div class="text-left col-md-6">
				<input class="btn btn-green" id="submit" name="submit" value="Send"
					type="submit">
			</div>
			<br>

		</fieldset>
		<?php
		$this->endWidget();
		?>
	</div>
	<!-- end .span8 -->
	

</div>
