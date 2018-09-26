*** Settings ***
Suite Setup       Init Test Environment    ${env}    ${remote}
Force Tags        INIT
Resource          ../Sources/main_keywords.robot
Resource          ../../../config/env_product/envi.robot

*** Test Cases ***    Ten nhom hang
Nhom hang cap 1       [Tags]                       Cat
                      [Template]                   Add categories thr API
                      Kẹo bánh
                      Mỹ phẩm
                      Hạt nhập khẩu
                      Dịch vụ
                      Đồ ăn vặt
                      Thiết bị số - Phụ kiện số
                      Văn phòng phẩm
                      Smartphone

*** Keywords ***
