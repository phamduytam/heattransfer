<?php
$this->pageTitle = 'Hỗ trợ trực tuyến';
?>
<div class="row">

<div class="col-lg-6">


<?php echo CHtml::errorSummary($model, '<div class="alert alert-dismissable alert-warning"> Loi', '</div>'); ?>
<?php
	if (user()->hasFlash('messages'))
	{
		$messages = user()->getFlash('messages');
		echo '<div class="alert alert-dismissable alert-success">'. hsp($messages). '</div><br>';
	}
	?>
<?php
	$form = $this->beginWidget('TbActiveForm', array(
		'action'=>sslUrl('chat/add'),
		'id' => 'add-form',
		'htmlOptions'=>array('enctype' => 'multipart/form-data')
	));
?>

<div class="form-group">
	<?php echo $form->labelEx($model,'name'); ?>
	<?php echo $form->textField($model,'name', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập '. $model->getAttributeLabel('name'))); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'nick'); ?>
	<?php echo $form->textField($model,'nick', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập '. $model->getAttributeLabel('nick'))); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'phone'); ?>
	<?php echo $form->textField($model,'phone', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập '. $model->getAttributeLabel('phone'))); ?>
</div>

<button type="submit" class="btn btn-default">Save</button>
<button type="reset" class="btn btn-default">Cancel</button>

<?php
	$this->endWidget();
?>

</div>
</div>

