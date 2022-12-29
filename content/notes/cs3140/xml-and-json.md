---
title: "XML and JSON"
weight: 15
---

Let's look at ways of storing data. We're all familiar with the standard CSV format:

```csv
ID,Name,Date of Birth,Party
1,George Washington,2/22/1732,None
16,Abraham Lincoln,2/12/1809,Republican
36,Lyndon B. Johnson,8/27/1908,Democrat
```

But what happens if the data doesn't fit neatly into a table? For example, Britain didn't switch to the Gregorian calendar until 1752, so older presidents like George Washington had two different birth dates: 2/11/1731 under the Julian calendar and 2/22/1732 under the Gregorian calendar. We could store this data in a CSV file, but it would be a bit awkward:

```csv
ID,Name,Date of Birth (Julian),Date of Birth (Gregorian),Party
1,George Washington,2/11/1731,2/22/1732,None
16,Abraham Lincoln,,2/12/1809,Republican
36,Lyndon B. Johnson,,8/27/1908,Democrat
```

In the example, only Washington actually has a Julian birthday, so we end up leaving most of the Julian spaces blank. Plus, this format is awkward to extend. If you want to add, for example, the number of elections each president won, you'd have to add a new column to the CSV file.

This is where XML and JSON come in. Both of these formats offer flexibility with the ability to add optional fields to each object; communicability, since you can clearly see what data each field has; and ease of use, since you can easily read and write these formats.

## XML

**XML** stands for eXtensible Markup Language. It's a way of storing data in a format that's easy for both humans and computers to read. Here's an example of an XML file:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<presidents>
    <president id="1">
        <name>George Washington</name>
        <date-of-birth>
            <month>February</month>
            <day>22</day>
            <year>1732</year>
        </date-of-birth>
        <julian-date-of-birth>
            <month>February</month>
            <day>11</day>
            <year>1731</year>
        </julian-date-of-birth>
        <party>None</party>
    </president>
    <president id="16">
        <name>Abraham Lincoln</name>
        <date-of-birth>
            <month>February</month>
            <day>12</day>
            <year>1809</year>
        </date-of-birth>
        <party>Republican</party>
    </president>
    <president id="36">
        <name>Lyndon B. Johnson</name>
        <date-of-birth>
            <month>August</month>
            <day>27</day>
            <year>1908</year>
        </date-of-birth>
        <party>Democrat</party>
    </president>
</presidents>
```

You can see in this example that it's easy to read the data (since you don't have to keep referring to a heading column), and it supports optional data such as Washington's Julian birthday. Let's break the structure down:

* The first line is the **XML declaration**, which tells the computer that this is an XML file.
* The stuff in between the `<>` symbols is called a **tag**. There's generally an opening tag and a closing tag, and the stuff in between is the **content** of the tag. For example, the opening tag `<presidents>` and the closing tag `</presidents>` enclose the content `president`.
* An **element** is a tag with some content in it. For example, `<name>George Washington</name>` is an element.
* An **attribute** is a tag with some content in it, but it also has a name. For example, `<president id="1">` is an attribute.

## JSON

**JSON** stands for JavaScript Object Notation. It's another way of storing data that works as an alternative to XML. Here's an example of a JSON file:

```json
{
    "presidents": [
        {
            "id": 1,
            "name": "George Washington",
            "date-of-birth": {
                "month": "February",
                "day": 22,
                "year": 1732
            },
            "julian-date-of-birth": {
                "month": "February",
                "day": 11,
                "year": 1731
            },
            "party": "None"
        },
        {
            "id": 16,
            "name": "Abraham Lincoln",
            "date-of-birth": {
                "month": "February",
                "day": 12,
                "year": 1809
            },
            "party": "Republican"
        },
        {
            "id": 36,
            "name": "Lyndon B. Johnson",
            "date-of-birth": {
                "month": "August",
                "day": 27,
                "year": 1908
            },
            "party": "Democrat"
        }
    ]
}
```

Looking at this structure:

* Everything between the `{}` symbols is an **object**, which is similar to a map or dictionary in programming languages. It has a key or field as well as a value.
* Everything between the `[]` symbols is an **array**, which is similar to a list in programming languages. It has a list of values.
* Values can be strings, numbers (integers or floats), booleans, null values, or other objects or arrays.

When you're working with JSON in Java, you can use the `org.json` library. Some helpful examples:

Reading:

```java
import org.json.*;

String json = getJSONData();
JSONObject obj = new JSONObject(json);
JSONArray presidents = obj.getJSONArray("presidents");
String lincolnParty = presidents.getJSONObject(1).getString("party");
int lbjID = presidents.getJSONObject(2).getInt("id");
```

Writing:

```java
import org.json.*;

JSONObject obj = new JSONObject();
obj.put("id", 2);
obj.put("name", "John Adams");
obj.put("date-of-birth", new JSONObject()
    .put("month", "October")
    .put("day", 30)
    .put("year", 1735));
obj.put("julian-date-of-birth", new JSONObject()
    .put("month", "October")
    .put("day", 19)
    .put("year", 1735));
obj.put("party", "Federalist");
```
