from django.urls import path
from .views import ShoppingCart, ShoppingCartUpdate

urlpatterns = [
    path('api/cart-items/', ShoppingCart.as_view()),
    path('api/update-item/<int:item_id>', ShoppingCartUpdate.as_view()),
]