function PromotionListController($scope, PromotionListService) {

    $scope.init = function () {
        PromotionListService.items().then(function (result) {

            $scope.students = result.students;
        });
    }
}