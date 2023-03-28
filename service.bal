import ballerina/http;

service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + return - xml containing all the orders
    resource function get orders() returns xml {
        return xml `<orders xmlns="http://www.example.com/orders">
    <order id="1">
        <customer>
            <name>John Smith</name>
            <email>john@example.com</email>
        </customer>
        <items>
            <item id="1">
                <name>Product 1</name>
                <quantity>2</quantity>
                <price>19.99</price>
            </item>
            <item id="2">
                <name>Product 2</name>
                <quantity>1</quantity>
                <price>29.99</price>
            </item>
            <item id="3">
                <name>Product 3</name>
                <quantity>3</quantity>
                <price>9.99</price>
            </item>
        </items>
        <total currency="USD">99.95</total>
    </order>
    <order id="2">
        <customer>
            <name>Jane Doe</name>
            <email>jane@example.com</email>
        </customer>
        <items>
            <item id="1">
                <name>Product 1</name>
                <quantity>5</quantity>
                <price>19.99</price>
            </item>
            <item id="4">
                <name>Product 4</name>
                <quantity>2</quantity>
                <price>49.99</price>
            </item>
        </items>
        <total currency="USD">149.93</total>
    </order>
    <order id="3">
        <customer>
            <name>Alex Scooper</name>
            <email>alex@gmail.com</email>
        </customer>
        <items>
            <item id="1">
                <name>Product 1</name>
                <quantity>3</quantity>
                <price>9.99</price>
            </item>
            <item id="4">
                <name>Product 4</name>
                <quantity>1</quantity>
                <price>19.99</price>
            </item>
        </items>
        <total currency="USD">149.93</total>
    </order>
    <order id="4">
        <customer>
            <name>John Smith</name>
            <email>john@example.com</email>
        </customer>
        <items>
            <item id="4">
                <name>Product 4</name>
                <quantity>1</quantity>
                <price>20.00</price>
            </item>
            <item id="10">
                <name>Product 10</name>
                <quantity>3</quantity>
                <price>19.99</price>
            </item>
            <item id="3">
                <name>Product 3</name>
                <quantity>1</quantity>
                <price>9.99</price>
            </item>
        </items>
        <total currency="USD">99.95</total>
    </order>
</orders>`;
    }
}
