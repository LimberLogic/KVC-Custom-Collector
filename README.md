# KVC-Custom-Collector

Demonstrates creating a custom Cocoa Key Value Coding Collection Operator

# How It's Done

According to Apple's documentation:

"Note: It is not currently possible to define your own collection operators." 

Source: https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/KeyValueCoding/Articles/CollectionOperators.html#//apple_ref/doc/uid/20002176-BAJEAIEE

But that's just not entirely true.

This demo just adds a NSArray category (NSArray+KVCCustom.h) just to provide the implementation 
of a selector matching the format "{Collector name}ForKeyPath:", which you can then use via 
[instance valueForKeyPath:@"@{Collector name}.{property}"] to reduce some array of objects to a 
scalar value.
