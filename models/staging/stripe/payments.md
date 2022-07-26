{% docs payment_method %}
	
One of the following values: 

| payment_method | Description                                      |
|----------------|--------------------------------------------------|
| credit_card    | payment done by credit card                      |
| coupon         | payment performed using coupon code              |
| bank_transfer  | payment performed using bank transfer            |
| gift_card      | payment using gift card                          |
 
{% enddocs %}

{% docs payment_status %}
	
One of the following values for checking the status of the payment transaction: 

| payment_status | Description                                      |
|----------------|--------------------------------------------------|
| Success        | payment transaction was succesfully completed    |
| fail           | payment transaction was not completed succesfully|
  
{% enddocs %}
