$(document).on('change', '.item-select', function () {
    var selectedOption = $(this).find('option:selected');
    var stock = selectedOption.data('stock');
    var row = $(this).closest('.nested-fields');
    row.find('.quantity-field').val(stock);
});