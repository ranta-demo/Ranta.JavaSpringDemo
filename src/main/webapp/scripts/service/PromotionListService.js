function PromotionListService($resource, $q) {
    var promotionlist_resource = $resource('api/student', {}, {
        items: {
            method: 'POST',
            url: 'api/student/list'
        }
    });

    return {
        items: function () {
            var d = $q.defer();
            promotionlist_resource.items({}, {}, function (result) {
                d.resolve(result);
            }, function (result) {
                d.reject(result);
            });
            return d.promise;
        }
    }
}