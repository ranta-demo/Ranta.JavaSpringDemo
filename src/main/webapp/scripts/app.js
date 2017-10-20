var app = angular.module('nuist', ['ngResource', 'ui.router', 'ui.bootstrap']);

app.service('PromotionListService', ['$resource', '$q', PromotionListService]);

app.controller('PromotionListController', ['$scope', 'PromotionListService', PromotionListController]);

