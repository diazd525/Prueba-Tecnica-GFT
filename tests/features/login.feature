
 Feature: Implementacion flujo login portal SauceDemo

 @smoke @critical
 Scenario: Happy Path
    Given el usuario ingresa al portal web
    When hace login con las credenciales "standard_user" y "secret_sauce"
    And agrega un producto al carrito
    And completa el checkout
    Then visualiza la notificacion de compra

@negative @regression
Scenario: Login Fallido
  Given el usuario ingresa al portal web
  When hace login con las credenciales "error" y "fallido"
  Then visualiza un mensaje de error

@regression
Scenario Outline: Login con multiples usuarios
  Given el usuario ingresa al portal web
  When hace login con las credenciales "<usuario>" y "secret_sauce"
  Then valida acceso al portal

Examples:
  | usuario                 |
  | standard_user           |
  | problem_user            |
  | performance_glitch_user |
