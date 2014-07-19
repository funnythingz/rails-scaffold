class EventHelper {

    delegates() {
        this.editHelper();
    }

    private editHelper() {
        $('.btn-edit').on('click', function(event) {
            location.pathname = $(this).data('link');
        });
    }

}
