@STATIC;1.0;p;13;CPArray+KVO.ji;9;CPArray.jc;15620;
{
var the_class = objj_getClass("CPObject")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPObject\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("mutableArrayValueForKey:"), function $CPObject__mutableArrayValueForKey_(self, _cmd, aKey)
{ with(self)
{
 return objj_msgSend(objj_msgSend(_CPKVCArray, "alloc"), "initWithKey:forProxyObject:", aKey, self);
}
}), new objj_method(sel_getUid("mutableArrayValueForKeyPath:"), function $CPObject__mutableArrayValueForKeyPath_(self, _cmd, aKeyPath)
{ with(self)
{
    var dotIndex = aKeyPath.indexOf(".");
    if (dotIndex < 0)
        return objj_msgSend(self, "mutableArrayValueForKey:", aKeyPath);
    var firstPart = aKeyPath.substring(0, dotIndex),
        lastPart = aKeyPath.substring(dotIndex+1);
    return objj_msgSend(objj_msgSend(self, "valueForKeyPath:", firstPart), "valueForKeyPath:", lastPart);
}
})]);
}
{var the_class = objj_allocateClassPair(CPArray, "_CPKVCArray"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_proxyObject"), new objj_ivar("_key"), new objj_ivar("_insertSEL"), new objj_ivar("_insert"), new objj_ivar("_removeSEL"), new objj_ivar("_remove"), new objj_ivar("_replaceSEL"), new objj_ivar("_replace"), new objj_ivar("_insertManySEL"), new objj_ivar("_insertMany"), new objj_ivar("_removeManySEL"), new objj_ivar("_removeMany"), new objj_ivar("_replaceManySEL"), new objj_ivar("_replaceMany"), new objj_ivar("_objectAtIndexSEL"), new objj_ivar("_objectAtIndex"), new objj_ivar("_countSEL"), new objj_ivar("_count"), new objj_ivar("_accessSEL"), new objj_ivar("_access"), new objj_ivar("_setSEL"), new objj_ivar("_set")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithKey:forProxyObject:"), function $_CPKVCArray__initWithKey_forProxyObject_(self, _cmd, aKey, anObject)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArray") }, "init");
    _key = aKey;
    _proxyObject = anObject;
    var capitalizedKey = _key.charAt(0).toUpperCase() + _key.substring(1);
    _insertSEL = sel_getName("insertObject:in"+capitalizedKey+"AtIndex:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _insertSEL))
        _insert = objj_msgSend(_proxyObject, "methodForSelector:", _insertSEL);
    _removeSEL = sel_getName("removeObjectFrom"+capitalizedKey+"AtIndex:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _removeSEL))
        _remove = objj_msgSend(_proxyObject, "methodForSelector:", _removeSEL);
    _replaceSEL = sel_getName("replaceObjectFrom"+capitalizedKey+"AtIndex:withObject:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _replaceSEL))
        _replace = objj_msgSend(_proxyObject, "methodForSelector:", _replaceSEL);
    _insertManySEL = sel_getName("insertObjects:in"+capitalizedKey+"AtIndexes:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _insertManySEL))
        _insert = objj_msgSend(_proxyObject, "methodForSelector:", _insertManySEL);
    _removeManySEL = sel_getName("removeObjectsFrom"+capitalizedKey+"AtIndexes:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _removeManySEL))
        _remove = objj_msgSend(_proxyObject, "methodForSelector:", _removeManySEL);
    _replaceManySEL = sel_getName("replaceObjectsFrom"+capitalizedKey+"AtIndexes:withObjects:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _replaceManySEL))
        _replace = objj_msgSend(_proxyObject, "methodForSelector:", _replaceManySEL);
    _objectAtIndexSEL = sel_getName("objectIn"+capitalizedKey+"AtIndex:");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _objectAtIndexSEL))
        _objectAtIndex = objj_msgSend(_proxyObject, "methodForSelector:", _objectAtIndexSEL);
    _countSEL = sel_getName("countOf"+capitalizedKey);
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _countSEL))
        _count = objj_msgSend(_proxyObject, "methodForSelector:", _countSEL);
    _accessSEL = sel_getName(_key);
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _accessSEL))
        _access = objj_msgSend(_proxyObject, "methodForSelector:", _accessSEL);
    _setSEL = sel_getName("set"+capitalizedKey+":");
    if (objj_msgSend(_proxyObject, "respondsToSelector:", _setSEL))
        _set = objj_msgSend(_proxyObject, "methodForSelector:", _setSEL);
    return self;
}
}), new objj_method(sel_getUid("copy"), function $_CPKVCArray__copy(self, _cmd)
{ with(self)
{
    var theCopy = [],
        count = objj_msgSend(self, "count");
    for (var i=0; i<count; i++)
        objj_msgSend(theCopy, "addObject:", objj_msgSend(self, "objectAtIndex:", i));
    return theCopy;
}
}), new objj_method(sel_getUid("_representedObject"), function $_CPKVCArray___representedObject(self, _cmd)
{ with(self)
{
    if (_access)
        return _access(_proxyObject, _accessSEL);
    return objj_msgSend(_proxyObject, "valueForKey:", _key);
}
}), new objj_method(sel_getUid("_setRepresentedObject:"), function $_CPKVCArray___setRepresentedObject_(self, _cmd, anObject)
{ with(self)
{
    if (_set)
        return _set(_proxyObject, _setSEL, anObject);
    objj_msgSend(_proxyObject, "setValue:forKey:", anObject, _key);
}
}), new objj_method(sel_getUid("count"), function $_CPKVCArray__count(self, _cmd)
{ with(self)
{
    if (_count)
        return _count(_proxyObject, _countSEL);
    return objj_msgSend(objj_msgSend(self, "_representedObject"), "count");
}
}), new objj_method(sel_getUid("objectAtIndex:"), function $_CPKVCArray__objectAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    if(_objectAtIndex)
        return _objectAtIndex(_proxyObject, _objectAtIndexSEL, anIndex);
    return objj_msgSend(objj_msgSend(self, "_representedObject"), "objectAtIndex:", anIndex);
}
}), new objj_method(sel_getUid("addObject:"), function $_CPKVCArray__addObject_(self, _cmd, anObject)
{ with(self)
{
    if (_insert)
        return _insert(_proxyObject, _insertSEL, anObject, objj_msgSend(self, "count"));
    var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
    objj_msgSend(target, "addObject:", anObject);
    objj_msgSend(self, "_setRepresentedObject:", target);
}
}), new objj_method(sel_getUid("insertObject:atIndex:"), function $_CPKVCArray__insertObject_atIndex_(self, _cmd, anObject, anIndex)
{ with(self)
{
    if (_insert)
        return _insert(_proxyObject, _insertSEL, anObject, anIndex);
    var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
    objj_msgSend(target, "insertObject:atIndex:", anObject, anIndex);
    objj_msgSend(self, "_setRepresentedObject:", target);
}
}), new objj_method(sel_getUid("removeLastObject"), function $_CPKVCArray__removeLastObject(self, _cmd)
{ with(self)
{
    if(_remove)
        return _remove(_proxyObject, _removeSEL, objj_msgSend(self, "count")-1);
    var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
    objj_msgSend(target, "removeLastObject");
    objj_msgSend(self, "_setRepresentedObject:", target);
}
}), new objj_method(sel_getUid("removeObjectAtIndex:"), function $_CPKVCArray__removeObjectAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    if(_remove)
        return _remove(_proxyObject, _removeSEL, anIndex);
    var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
    objj_msgSend(target, "removeObjectAtIndex:", anIndex);
    objj_msgSend(self, "_setRepresentedObject:", target);
}
}), new objj_method(sel_getUid("replaceObjectAtIndex:withObject:"), function $_CPKVCArray__replaceObjectAtIndex_withObject_(self, _cmd, anIndex, anObject)
{ with(self)
{
    if(_replace)
        return _replace(_proxyObject, _replaceSEL, anIndex, anObject);
    var target = objj_msgSend(objj_msgSend(self, "_representedObject"), "copy");
    objj_msgSend(target, "replaceObjectAtIndex:withObject:", anIndex, anObject);
    objj_msgSend(self, "_setRepresentedObject:", target);
}
}), new objj_method(sel_getUid("objectsAtIndexes:"), function $_CPKVCArray__objectsAtIndexes_(self, _cmd, indexes)
{ with(self)
{
    var index = objj_msgSend(indexes, "firstIndex"),
        objects = [];
    while(index != CPNotFound)
    {
        objj_msgSend(objects, "addObject:", objj_msgSend(self, "objectAtIndex:", index));
        index = objj_msgSend(indexes, "indexGreaterThanIndex:", index);
    }
    return objects;
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $_CPKVCArray__alloc(self, _cmd)
{ with(self)
{
    var a = [];
    a.isa = self;
    var ivars = class_copyIvarList(self),
        count = ivars.length;
    while (count--)
        a[ivar_getName(ivars[count])] = nil;
    return a;
}
})]);
}
{
var the_class = objj_getClass("CPArray")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPArray\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("valueForKey:"), function $CPArray__valueForKey_(self, _cmd, aKey)
{ with(self)
{
    if (aKey.indexOf("@") === 0)
    {
        if (aKey.indexOf(".") !== -1)
            objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "called valueForKey: on an array with a complex key ("+aKey+"). use valueForKeyPath:");
        if (aKey == "@count")
            return length;
        return nil;
    }
    else
    {
        var newArray = [],
            enumerator = objj_msgSend(self, "objectEnumerator"),
            object;
        while ((object = objj_msgSend(enumerator, "nextObject")) !== nil)
        {
            var value = objj_msgSend(object, "valueForKey:", aKey);
            if (value === nil || value === undefined)
                value = objj_msgSend(CPNull, "null");
            newArray.push(value);
        }
        return newArray;
    }
}
}), new objj_method(sel_getUid("valueForKeyPath:"), function $CPArray__valueForKeyPath_(self, _cmd, aKeyPath)
{ with(self)
{
    if (aKeyPath.indexOf("@") === 0)
    {
        var dotIndex = aKeyPath.indexOf("."),
            operator = aKeyPath.substring(1, dotIndex),
            parameter = aKeyPath.substring(dotIndex+1);
        if (kvoOperators[operator])
            return kvoOperators[operator](self, _cmd, parameter);
        return nil;
    }
    else
    {
        var newArray = [],
            enumerator = objj_msgSend(self, "objectEnumerator"),
            object;
        while ((object = objj_msgSend(enumerator, "nextObject")) !== nil)
        {
            var value = objj_msgSend(object, "valueForKeyPath:", aKeyPath);
            if (value === nil || value === undefined)
                value = objj_msgSend(CPNull, "null");
            newArray.push(value);
        }
        return newArray;
    }
}
}), new objj_method(sel_getUid("setValue:forKey:"), function $CPArray__setValue_forKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    var enumerator = objj_msgSend(self, "objectEnumerator"),
        object;
    while (object = objj_msgSend(enumerator, "nextObject"))
        objj_msgSend(object, "setValue:forKey:", aValue, aKey);
}
}), new objj_method(sel_getUid("setValue:forKeyPath:"), function $CPArray__setValue_forKeyPath_(self, _cmd, aValue, aKeyPath)
{ with(self)
{
    var enumerator = objj_msgSend(self, "objectEnumerator"),
        object;
    while (object = objj_msgSend(enumerator, "nextObject"))
        objj_msgSend(object, "setValue:forKeyPath:", aValue, aKeyPath);
}
})]);
}
var kvoOperators = [];
kvoOperators["avg"] = avgOperator= function(self, _cmd, param)
{
    var objects = objj_msgSend(self, "valueForKeyPath:", param),
        length = objj_msgSend(objects, "count"),
        index = length;
        average = 0.0;
    if (!length)
        return 0;
    while(index--)
        average += objj_msgSend(objects[index], "doubleValue");
    return average / length;
}
kvoOperators["max"] = maxOperator= function(self, _cmd, param)
{
    var objects = objj_msgSend(self, "valueForKeyPath:", param),
        index = objj_msgSend(objects, "count") - 1,
        max = objj_msgSend(objects, "lastObject");
    while (index--)
    {
        var item = objects[index];
        if (objj_msgSend(max, "compare:", item) < 0)
            max = item;
    }
    return max;
}
kvoOperators["min"] = minOperator= function(self, _cmd, param)
{
    var objects = objj_msgSend(self, "valueForKeyPath:", param),
        index = objj_msgSend(objects, "count") - 1,
        min = objj_msgSend(objects, "lastObject");
    while (index--)
    {
        var item = objects[index];
        if (objj_msgSend(min, "compare:", item) > 0)
            min = item;
    }
    return min;
}
kvoOperators["count"] = countOperator= function(self, _cmd, param)
{
    return objj_msgSend(self, "count");
}
kvoOperators["sum"] = sumOperator= function(self, _cmd, param)
{
    var objects = objj_msgSend(self, "valueForKeyPath:", param),
        index = objj_msgSend(objects, "count"),
        sum = 0.0;
    while(index--)
        sum += objj_msgSend(objects[index], "doubleValue");
    return sum;
}
{
var the_class = objj_getClass("CPArray")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPArray\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("addObserver:toObjectsAtIndexes:forKeyPath:options:context:"), function $CPArray__addObserver_toObjectsAtIndexes_forKeyPath_options_context_(self, _cmd, anObserver, indexes, aKeyPath, options, context)
{ with(self)
{
    var index = objj_msgSend(indexes, "firstIndex");
    while (index >= 0)
    {
        objj_msgSend(self[index], "addObserver:forKeyPath:options:context:", anObserver, aKeyPath, options, context);
        index = objj_msgSend(indexes, "indexGreaterThanIndex:", index);
    }
}
}), new objj_method(sel_getUid("removeObserver:fromObjectsAtIndexes:forKeyPath:"), function $CPArray__removeObserver_fromObjectsAtIndexes_forKeyPath_(self, _cmd, anObserver, indexes, aKeyPath)
{ with(self)
{
    var index = objj_msgSend(indexes, "firstIndex");
    while (index >= 0)
    {
        objj_msgSend(self[index], "removeObserver:forKeyPath:", anObserver, aKeyPath);
        index = objj_msgSend(indexes, "indexGreaterThanIndex:", index);
    }
}
}), new objj_method(sel_getUid("addObserver:forKeyPath:options:context:"), function $CPArray__addObserver_forKeyPath_options_context_(self, _cmd, observer, aKeyPath, options, context)
{ with(self)
{
    if (objj_msgSend(isa, "instanceMethodForSelector:", _cmd) === objj_msgSend(CPArray, "instanceMethodForSelector:", _cmd))
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Unsupported method on CPArray");
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArray").super_class }, "addObserver:forKeyPath:options:context:", observer, aKeyPath, options, context);
}
}), new objj_method(sel_getUid("removeObserver:forKeyPath:"), function $CPArray__removeObserver_forKeyPath_(self, _cmd, observer, aKeyPath)
{ with(self)
{
    if (objj_msgSend(isa, "instanceMethodForSelector:", _cmd) === objj_msgSend(CPArray, "instanceMethodForSelector:", _cmd))
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Unsupported method on CPArray");
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPArray").super_class }, "removeObserver:forKeyPath:", observer, aKeyPath);
}
})]);
}

p;9;CPArray.ji;10;CPObject.ji;9;CPRange.ji;14;CPEnumerator.ji;18;CPSortDescriptor.ji;13;CPException.jc;25446;
{var the_class = objj_allocateClassPair(CPEnumerator, "_CPArrayEnumerator"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_array"), new objj_ivar("_index")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithArray:"), function $_CPArrayEnumerator__initWithArray_(self, _cmd, anArray)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPEnumerator") }, "init");
    if (self)
    {
        _array = anArray;
        _index = -1;
    }
    return self;
}
}), new objj_method(sel_getUid("nextObject"), function $_CPArrayEnumerator__nextObject(self, _cmd)
{ with(self)
{
    if (++_index >= objj_msgSend(_array, "count"))
        return nil;
    return objj_msgSend(_array, "objectAtIndex:", _index);
}
})]);
}
{var the_class = objj_allocateClassPair(CPEnumerator, "_CPReverseArrayEnumerator"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_array"), new objj_ivar("_index")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithArray:"), function $_CPReverseArrayEnumerator__initWithArray_(self, _cmd, anArray)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPEnumerator") }, "init");
    if (self)
    {
        _array = anArray;
        _index = objj_msgSend(_array, "count");
    }
    return self;
}
}), new objj_method(sel_getUid("nextObject"), function $_CPReverseArrayEnumerator__nextObject(self, _cmd)
{ with(self)
{
    if (--_index < 0)
        return nil;
    return objj_msgSend(_array, "objectAtIndex:", _index);
}
})]);
}
{var the_class = objj_allocateClassPair(CPObject, "CPArray"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPArray__init(self, _cmd)
{ with(self)
{
    return self;
}
}), new objj_method(sel_getUid("initWithArray:"), function $CPArray__initWithArray_(self, _cmd, anArray)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
        objj_msgSend(self, "setArray:", anArray);
    return self;
}
}), new objj_method(sel_getUid("initWithArray:copyItems:"), function $CPArray__initWithArray_copyItems_(self, _cmd, anArray, copyItems)
{ with(self)
{
    if (!copyItems)
        return objj_msgSend(self, "initWithArray:", anArray);
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        var index = 0,
            count = objj_msgSend(anArray, "count");
        for(; index < count; ++i)
        {
            if (anArray[i].isa)
                self[i] = objj_msgSend(anArray, "copy");
            else
                self[i] = anArray;
        }
    }
    return self;
}
}), new objj_method(sel_getUid("initWithObjects:"), function $CPArray__initWithObjects_(self, _cmd, anArray)
{ with(self)
{
    var i = 2,
        argument;
    for(; i < arguments.length && (argument = arguments[i]) != nil; ++i)
        push(argument);
    return self;
}
}), new objj_method(sel_getUid("initWithObjects:count:"), function $CPArray__initWithObjects_count_(self, _cmd, objects, aCount)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        var index = 0;
        for(; index < aCount; ++index)
            push(objects[index]);
    }
    return self;
}
}), new objj_method(sel_getUid("containsObject:"), function $CPArray__containsObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(self, "indexOfObject:", anObject) != CPNotFound;
}
}), new objj_method(sel_getUid("count"), function $CPArray__count(self, _cmd)
{ with(self)
{
    return length;
}
}), new objj_method(sel_getUid("indexOfObject:"), function $CPArray__indexOfObject_(self, _cmd, anObject)
{ with(self)
{
    if (anObject === nil)
        return CPNotFound;
    var i = 0,
        count = length;
    if (anObject.isa)
    {
        for(; i < count; ++i)
            if(objj_msgSend(self[i], "isEqual:", anObject))
                return i;
    }
    else if (self.indexOf)
        return indexOf(anObject);
    else
        for(; i < count; ++i)
            if(self[i] == anObject)
                return i;
    return CPNotFound;
}
}), new objj_method(sel_getUid("indexOfObject:inRange:"), function $CPArray__indexOfObject_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    if (anObject === nil)
        return CPNotFound;
    var i = aRange.location,
        count = MIN(CPMaxRange(aRange), length);
    if (anObject.isa)
    {
        for(; i < count; ++i)
            if(objj_msgSend(self[i], "isEqual:", anObject))
                return i;
    }
    else
        for(; i < count; ++i)
            if(self[i] == anObject)
                return i;
    return CPNotFound;
}
}), new objj_method(sel_getUid("indexOfObjectIdenticalTo:"), function $CPArray__indexOfObjectIdenticalTo_(self, _cmd, anObject)
{ with(self)
{
    if (anObject === nil)
        return CPNotFound;
    if (self.indexOf)
        return indexOf(anObject);
    else
    {
        var index = 0,
            count = length;
        for(; index < count; ++index)
            if(self[index] == anObject)
                return index;
    }
    return CPNotFound;
}
}), new objj_method(sel_getUid("indexOfObjectIdenticalTo:inRange:"), function $CPArray__indexOfObjectIdenticalTo_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    if (anObject === nil)
        return CPNotFound;
    if (self.indexOf)
    {
        var index = indexOf(anObject, aRange.location);
        if (CPLocationInRange(index, aRange))
            return index;
    }
    else
    {
        var index = aRange.location,
            count = MIN(CPMaxRange(aRange), length);
        for(; index < count; ++index)
            if(self[index] == anObject)
                return index;
    }
    return CPNotFound;
}
}), new objj_method(sel_getUid("indexOfObject:sortedBySelector:"), function $CPArray__indexOfObject_sortedBySelector_(self, _cmd, anObject, aSelector)
{ with(self)
{
    return objj_msgSend(self, "indexOfObject:sortedByFunction:", anObject,  function(lhs, rhs) { objj_msgSend(lhs, aSelector, rhs); });
}
}), new objj_method(sel_getUid("indexOfObject:sortedByFunction:"), function $CPArray__indexOfObject_sortedByFunction_(self, _cmd, anObject, aFunction)
{ with(self)
{
    return objj_msgSend(self, "indexOfObject:sortedByFunction:context:", anObject, aFunction, nil);
}
}), new objj_method(sel_getUid("indexOfObject:sortedByFunction:context:"), function $CPArray__indexOfObject_sortedByFunction_context_(self, _cmd, anObject, aFunction, aContext)
{ with(self)
{
    if (!aFunction || anObject === undefined)
        return CPNotFound;
    var mid, c, first = 0, last = length - 1;
    while (first <= last)
    {
        mid = FLOOR((first + last) / 2);
          c = aFunction(anObject, self[mid], aContext);
        if (c > 0)
            first = mid + 1;
        else if (c < 0)
            last = mid - 1;
        else
        {
            while (mid < length - 1 && aFunction(anObject, self[mid+1], aContext) == CPOrderedSame)
                mid++;
            return mid;
        }
    }
    return CPNotFound;
}
}), new objj_method(sel_getUid("indexOfObject:sortedByDescriptors:"), function $CPArray__indexOfObject_sortedByDescriptors_(self, _cmd, anObject, descriptors)
{ with(self)
{
    objj_msgSend(self, "indexOfObject:sortedByFunction:", anObject, function(lhs, rhs)
    {
        var i = 0,
            count = objj_msgSend(descriptors, "count"),
            result = CPOrderedSame;
        while (i < count)
            if((result = objj_msgSend(descriptors[i++], "compareObject:withObject:", lhs, rhs)) != CPOrderedSame)
                return result;
        return result;
    });
}
}), new objj_method(sel_getUid("lastObject"), function $CPArray__lastObject(self, _cmd)
{ with(self)
{
    var count = objj_msgSend(self, "count");
    if (!count) return nil;
    return self[count - 1];
}
}), new objj_method(sel_getUid("objectAtIndex:"), function $CPArray__objectAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return self[anIndex];
}
}), new objj_method(sel_getUid("objectsAtIndexes:"), function $CPArray__objectsAtIndexes_(self, _cmd, indexes)
{ with(self)
{
    var index = objj_msgSend(indexes, "firstIndex"),
        objects = [];
    while(index != CPNotFound)
    {
        objj_msgSend(objects, "addObject:", self[index]);
        index = objj_msgSend(indexes, "indexGreaterThanIndex:", index);
    }
    return objects;
}
}), new objj_method(sel_getUid("objectEnumerator"), function $CPArray__objectEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(_CPArrayEnumerator, "alloc"), "initWithArray:", self);
}
}), new objj_method(sel_getUid("reverseObjectEnumerator"), function $CPArray__reverseObjectEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(_CPReverseArrayEnumerator, "alloc"), "initWithArray:", self);
}
}), new objj_method(sel_getUid("makeObjectsPerformSelector:"), function $CPArray__makeObjectsPerformSelector_(self, _cmd, aSelector)
{ with(self)
{
    if (!aSelector)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "makeObjectsPerformSelector: 'aSelector' can't be nil");
    var index = 0,
        count = length;
    for(; index < count; ++index)
        objj_msgSend(self[index], aSelector);
}
}), new objj_method(sel_getUid("makeObjectsPerformSelector:withObject:"), function $CPArray__makeObjectsPerformSelector_withObject_(self, _cmd, aSelector, anObject)
{ with(self)
{
    if (!aSelector)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "makeObjectsPerformSelector:withObject 'aSelector' can't be nil");
    var index = 0,
        count = length;
    for(; index < count; ++index)
        objj_msgSend(self[index], aSelector, anObject);
}
}), new objj_method(sel_getUid("firstObjectCommonWithArray:"), function $CPArray__firstObjectCommonWithArray_(self, _cmd, anArray)
{ with(self)
{
    if (!objj_msgSend(anArray, "count") || !objj_msgSend(self, "count"))
        return nil;
    var i = 0,
        count = objj_msgSend(self, "count");
    for(; i < count; ++i)
        if(objj_msgSend(anArray, "containsObject:", self[i]))
            return self[i];
    return nil;
}
}), new objj_method(sel_getUid("isEqualToArray:"), function $CPArray__isEqualToArray_(self, _cmd, anArray)
{ with(self)
{
    if (self === anArray)
        return YES;
    if(length != anArray.length)
        return NO;
    var index = 0,
        count = objj_msgSend(self, "count");
    for(; index < count; ++index)
    {
        var lhs = self[index],
            rhs = anArray[index];
        if (lhs !== rhs && (!lhs.isa || !rhs.isa || !objj_msgSend(lhs, "isEqual:", rhs)))
            return NO;
    }
    return YES;
}
}), new objj_method(sel_getUid("isEqual:"), function $CPArray__isEqual_(self, _cmd, anObject)
{ with(self)
{
    if (self === anObject)
        return YES;
    if(!objj_msgSend(anObject, "isKindOfClass:", objj_msgSend(CPArray, "class")))
        return NO;
    return objj_msgSend(self, "isEqualToArray:", anObject);
}
}), new objj_method(sel_getUid("arrayByAddingObject:"), function $CPArray__arrayByAddingObject_(self, _cmd, anObject)
{ with(self)
{
    if (anObject === nil || anObject === undefined)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "arrayByAddingObject: object can't be nil");
    var array = objj_msgSend(self, "copy");
    array.push(anObject);
    return array;
}
}), new objj_method(sel_getUid("arrayByAddingObjectsFromArray:"), function $CPArray__arrayByAddingObjectsFromArray_(self, _cmd, anArray)
{ with(self)
{
    return slice(0).concat(anArray);
}
}), new objj_method(sel_getUid("subarrayWithRange:"), function $CPArray__subarrayWithRange_(self, _cmd, aRange)
{ with(self)
{
    if (aRange.location < 0 || CPMaxRange(aRange) > length)
        objj_msgSend(CPException, "raise:reason:", CPRangeException, "subarrayWithRange: aRange out of bounds");
    return slice(aRange.location, CPMaxRange(aRange));
}
}), new objj_method(sel_getUid("sortedArrayUsingDescriptors:"), function $CPArray__sortedArrayUsingDescriptors_(self, _cmd, descriptors)
{ with(self)
{
    var sorted = objj_msgSend(self, "copy");
    objj_msgSend(sorted, "sortUsingDescriptors:", descriptors);
    return sorted;
}
}), new objj_method(sel_getUid("sortedArrayUsingFunction:"), function $CPArray__sortedArrayUsingFunction_(self, _cmd, aFunction)
{ with(self)
{
    return objj_msgSend(self, "sortedArrayUsingFunction:context:", aFunction, nil);
}
}), new objj_method(sel_getUid("sortedArrayUsingFunction:context:"), function $CPArray__sortedArrayUsingFunction_context_(self, _cmd, aFunction, aContext)
{ with(self)
{
    var sorted = objj_msgSend(self, "copy");
    objj_msgSend(sorted, "sortUsingFunction:context:", aFunction, aContext);
    return sorted;
}
}), new objj_method(sel_getUid("sortedArrayUsingSelector:"), function $CPArray__sortedArrayUsingSelector_(self, _cmd, aSelector)
{ with(self)
{
    var sorted = objj_msgSend(self, "copy")
    objj_msgSend(sorted, "sortUsingSelector:", aSelector);
    return sorted;
}
}), new objj_method(sel_getUid("componentsJoinedByString:"), function $CPArray__componentsJoinedByString_(self, _cmd, aString)
{ with(self)
{
    return join(aString);
}
}), new objj_method(sel_getUid("description"), function $CPArray__description(self, _cmd)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(self, "count"),
        description = '(';
    for(; index < count; ++index)
    {
        var object = self[index];
        if (object && object.isa)
            description += objj_msgSend(object, "description");
        else
            description += object;
        if (index !== count - 1)
            description += ", ";
    }
    return description + ')';
}
}), new objj_method(sel_getUid("pathsMatchingExtensions:"), function $CPArray__pathsMatchingExtensions_(self, _cmd, filterTypes)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(self, "count"),
        array = [];
    for(; index < count; ++index)
        if (self[index].isa && objj_msgSend(self[index], "isKindOfClass:", objj_msgSend(CPString, "class")) && objj_msgSend(filterTypes, "containsObject:", objj_msgSend(self[index], "pathExtension")))
            array.push(self[index]);
    return array;
}
}), new objj_method(sel_getUid("setValue:forKey:"), function $CPArray__setValue_forKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    var i = 0,
        count = objj_msgSend(self, "count");
    for(; i < count; ++i)
        objj_msgSend(self[i], "setValue:forKey:", aValue, aKey);
}
}), new objj_method(sel_getUid("valueForKey:"), function $CPArray__valueForKey_(self, _cmd, aKey)
{ with(self)
{
    var i = 0,
        count = objj_msgSend(self, "count"),
        array = [];
    for(; i < count; ++i)
        array.push(objj_msgSend(self[i], "valueForKey:", aKey));
    return array;
}
}), new objj_method(sel_getUid("copy"), function $CPArray__copy(self, _cmd)
{ with(self)
{
    return slice(0);
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $CPArray__alloc(self, _cmd)
{ with(self)
{
    return [];
}
}), new objj_method(sel_getUid("array"), function $CPArray__array(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
}), new objj_method(sel_getUid("arrayWithArray:"), function $CPArray__arrayWithArray_(self, _cmd, anArray)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithArray:", anArray);
}
}), new objj_method(sel_getUid("arrayWithObject:"), function $CPArray__arrayWithObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithObjects:", anObject);
}
}), new objj_method(sel_getUid("arrayWithObjects:"), function $CPArray__arrayWithObjects_(self, _cmd, anObject)
{ with(self)
{
    var i = 2,
        array = objj_msgSend(objj_msgSend(self, "alloc"), "init"),
        argument;
    for(; i < arguments.length && (argument = arguments[i]) != nil; ++i)
        array.push(argument);
    return array;
}
}), new objj_method(sel_getUid("arrayWithObjects:count:"), function $CPArray__arrayWithObjects_count_(self, _cmd, objects, aCount)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithObjects:count:", objects, aCount);
}
})]);
}
{
var the_class = objj_getClass("CPArray")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPArray\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCapacity:"), function $CPArray__initWithCapacity_(self, _cmd, aCapacity)
{ with(self)
{
    return self;
}
}), new objj_method(sel_getUid("addObject:"), function $CPArray__addObject_(self, _cmd, anObject)
{ with(self)
{
    push(anObject);
}
}), new objj_method(sel_getUid("addObjectsFromArray:"), function $CPArray__addObjectsFromArray_(self, _cmd, anArray)
{ with(self)
{
    splice.apply(self, [length, 0].concat(anArray));
}
}), new objj_method(sel_getUid("insertObject:atIndex:"), function $CPArray__insertObject_atIndex_(self, _cmd, anObject, anIndex)
{ with(self)
{
    splice(anIndex, 0, anObject);
}
}), new objj_method(sel_getUid("insertObjects:atIndexes:"), function $CPArray__insertObjects_atIndexes_(self, _cmd, objects, indexes)
{ with(self)
{
    var indexesCount = objj_msgSend(indexes, "count"),
        objectsCount = objj_msgSend(objects, "count");
    if(indexesCount !== objectsCount)
        objj_msgSend(CPException, "raise:reason:", CPRangeException, "the counts of the passed-in array (" + objectsCount + ") and index set (" + indexesCount + ") must be identical.");
    var lastIndex = objj_msgSend(indexes, "lastIndex");
    if(lastIndex >= objj_msgSend(self, "count") + indexesCount)
        objj_msgSend(CPException, "raise:reason:", CPRangeException, "the last index (" + lastIndex + ") must be less than the sum of the original count (" + objj_msgSend(self, "count") + ") and the insertion count (" + indexesCount + ").");
    var index = 0,
        currentIndex = objj_msgSend(indexes, "firstIndex");
    for (; index < objectsCount; ++index, currentIndex = objj_msgSend(indexes, "indexGreaterThanIndex:", currentIndex))
        objj_msgSend(self, "insertObject:atIndex:", objects[index], currentIndex);
}
}), new objj_method(sel_getUid("replaceObjectAtIndex:withObject:"), function $CPArray__replaceObjectAtIndex_withObject_(self, _cmd, anIndex, anObject)
{ with(self)
{
    self[anIndex] = anObject;
}
}), new objj_method(sel_getUid("replaceObjectsAtIndexes:withObjects:"), function $CPArray__replaceObjectsAtIndexes_withObjects_(self, _cmd, anIndexSet, objects)
{ with(self)
{
    var i = 0,
        index = objj_msgSend(anIndexSet, "firstIndex");
    while(index != CPNotFound)
    {
        objj_msgSend(self, "replaceObjectAtIndex:withObject:", index, objects[i++]);
        index = objj_msgSend(anIndexSet, "indexGreaterThanIndex:", index);
    }
}
}), new objj_method(sel_getUid("replaceObjectsInRange:withObjectsFromArray:range:"), function $CPArray__replaceObjectsInRange_withObjectsFromArray_range_(self, _cmd, aRange, anArray, otherRange)
{ with(self)
{
    if (!otherRange.location && otherRange.length == objj_msgSend(anArray, "count"))
        objj_msgSend(self, "replaceObjectsInRange:withObjectsFromArray:", aRange, anArray);
    else
        splice.apply(self, [aRange.location, aRange.length].concat(objj_msgSend(anArray, "subarrayWithRange:", otherRange)));
}
}), new objj_method(sel_getUid("replaceObjectsInRange:withObjectsFromArray:"), function $CPArray__replaceObjectsInRange_withObjectsFromArray_(self, _cmd, aRange, anArray)
{ with(self)
{
    splice.apply(self, [aRange.location, aRange.length].concat(anArray));
}
}), new objj_method(sel_getUid("setArray:"), function $CPArray__setArray_(self, _cmd, anArray)
{ with(self)
{
    if(self == anArray) return;
    splice.apply(self, [0, length].concat(anArray));
}
}), new objj_method(sel_getUid("removeAllObjects"), function $CPArray__removeAllObjects(self, _cmd)
{ with(self)
{
    splice(0, length);
}
}), new objj_method(sel_getUid("removeLastObject"), function $CPArray__removeLastObject(self, _cmd)
{ with(self)
{
    pop();
}
}), new objj_method(sel_getUid("removeObject:"), function $CPArray__removeObject_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "removeObject:inRange:", anObject, CPMakeRange(0, length));
}
}), new objj_method(sel_getUid("removeObject:inRange:"), function $CPArray__removeObject_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    var index;
    while ((index = objj_msgSend(self, "indexOfObject:inRange:", anObject, aRange)) != CPNotFound)
    {
        objj_msgSend(self, "removeObjectAtIndex:", index);
        aRange = CPIntersectionRange(CPMakeRange(index, length - index), aRange);
    }
}
}), new objj_method(sel_getUid("removeObjectAtIndex:"), function $CPArray__removeObjectAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    splice(anIndex, 1);
}
}), new objj_method(sel_getUid("removeObjectsAtIndexes:"), function $CPArray__removeObjectsAtIndexes_(self, _cmd, anIndexSet)
{ with(self)
{
    var index = objj_msgSend(anIndexSet, "lastIndex");
    while (index != CPNotFound)
    {
        objj_msgSend(self, "removeObjectAtIndex:", index);
        index = objj_msgSend(anIndexSet, "indexLessThanIndex:", index);
    }
}
}), new objj_method(sel_getUid("removeObjectIdenticalTo:"), function $CPArray__removeObjectIdenticalTo_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "removeObjectIdenticalTo:inRange:", anObject, CPMakeRange(0, length));
}
}), new objj_method(sel_getUid("removeObjectIdenticalTo:inRange:"), function $CPArray__removeObjectIdenticalTo_inRange_(self, _cmd, anObject, aRange)
{ with(self)
{
    var index;
    while ((index = objj_msgSend(self, "indexOfObjectIdenticalTo:inRange:", anObject, aRange)) != CPNotFound)
    {
        objj_msgSend(self, "removeObjectAtIndex:", index);
        aRange = CPIntersectionRange(CPMakeRange(index, length - index), aRange);
    }
}
}), new objj_method(sel_getUid("removeObjectsInArray:"), function $CPArray__removeObjectsInArray_(self, _cmd, anArray)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(anArray, "count");
    for (; index < count; ++index)
        objj_msgSend(self, "removeObject:", anArray[index]);
}
}), new objj_method(sel_getUid("removeObjectsInRange:"), function $CPArray__removeObjectsInRange_(self, _cmd, aRange)
{ with(self)
{
    splice(aRange.location, aRange.length);
}
}), new objj_method(sel_getUid("exchangeObjectAtIndex:withObjectAtIndex:"), function $CPArray__exchangeObjectAtIndex_withObjectAtIndex_(self, _cmd, anIndex, otherIndex)
{ with(self)
{
    var temporary = self[anIndex];
    self[anIndex] = self[otherIndex];
    self[otherIndex] = temporary;
}
}), new objj_method(sel_getUid("sortUsingDescriptors:"), function $CPArray__sortUsingDescriptors_(self, _cmd, descriptors)
{ with(self)
{
    sort(function(lhs, rhs)
    {
        var i = 0,
            count = objj_msgSend(descriptors, "count"),
            result = CPOrderedSame;
        while(i < count)
            if((result = objj_msgSend(descriptors[i++], "compareObject:withObject:", lhs, rhs)) != CPOrderedSame)
                return result;
        return result;
    });
}
}), new objj_method(sel_getUid("sortUsingFunction:context:"), function $CPArray__sortUsingFunction_context_(self, _cmd, aFunction, aContext)
{ with(self)
{
    sort(function(lhs, rhs) { return aFunction(lhs, rhs, aContext); });
}
}), new objj_method(sel_getUid("sortUsingSelector:"), function $CPArray__sortUsingSelector_(self, _cmd, aSelector)
{ with(self)
{
    sort(function(lhs, rhs) { return objj_msgSend(lhs, aSelector, rhs); });
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("arrayWithCapacity:"), function $CPArray__arrayWithCapacity_(self, _cmd, aCapacity)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithCapacity:", aCapacity);
}
})]);
}
{
var the_class = objj_getClass("CPArray")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPArray\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPArray__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(aCoder, "decodeObjectForKey:", "CP.objects");
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPArray__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "_encodeArrayOfObjects:forKey:", self, "CP.objects");
}
})]);
}
{var the_class = objj_allocateClassPair(CPArray, "CPMutableArray"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
}
Array.prototype.isa = CPArray;
objj_msgSend(CPArray, "initialize");

p;20;CPAttributedString.ji;10;CPObject.ji;10;CPString.ji;14;CPDictionary.ji;9;CPRange.jc;19869;
{var the_class = objj_allocateClassPair(CPObject, "CPAttributedString"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_string"), new objj_ivar("_rangeEntries")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithString:"), function $CPAttributedString__initWithString_(self, _cmd, aString)
{ with(self)
{
    return objj_msgSend(self, "initWithString:attributes:", aString, nil);
}
}), new objj_method(sel_getUid("initWithAttributedString:"), function $CPAttributedString__initWithAttributedString_(self, _cmd, aString)
{ with(self)
{
    var string = objj_msgSend(self, "initWithString:attributes:", "", nil);
    objj_msgSend(string, "setAttributedString:", aString);
    return string;
}
}), new objj_method(sel_getUid("initWithString:attributes:"), function $CPAttributedString__initWithString_attributes_(self, _cmd, aString, attributes)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (!attributes)
        attributes = objj_msgSend(CPDictionary, "dictionary");
    _string = ""+aString;
    _rangeEntries = [makeRangeEntry(CPMakeRange(0, _string.length), attributes)];
    return self;
}
}), new objj_method(sel_getUid("string"), function $CPAttributedString__string(self, _cmd)
{ with(self)
{
    return _string;
}
}), new objj_method(sel_getUid("mutableString"), function $CPAttributedString__mutableString(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "string");
}
}), new objj_method(sel_getUid("length"), function $CPAttributedString__length(self, _cmd)
{ with(self)
{
    return _string.length;
}
}), new objj_method(sel_getUid("_indexOfEntryWithIndex:"), function $CPAttributedString___indexOfEntryWithIndex_(self, _cmd, anIndex)
{ with(self)
{
    if (anIndex < 0 || anIndex > _string.length || anIndex === undefined)
        return CPNotFound;
    var sortFunction = function(index, entry)
    {
        if (CPLocationInRange(index, entry.range))
            return CPOrderedSame;
        else if (CPMaxRange(entry.range) <= index)
            return CPOrderedDescending;
        else
            return CPOrderedAscending;
    }
    return objj_msgSend(_rangeEntries, "indexOfObject:sortedByFunction:", anIndex, sortFunction);
}
}), new objj_method(sel_getUid("attributesAtIndex:effectiveRange:"), function $CPAttributedString__attributesAtIndex_effectiveRange_(self, _cmd, anIndex, aRange)
{ with(self)
{
    var entryIndex = objj_msgSend(self, "_indexOfEntryWithIndex:", anIndex);
    if (entryIndex == CPNotFound)
        return nil;
    var matchingRange = _rangeEntries[entryIndex];
    if (aRange)
    {
        aRange.location = matchingRange.range.location;
        aRange.length = matchingRange.range.length;
    }
    return matchingRange.attributes;
}
}), new objj_method(sel_getUid("attributesAtIndex:longestEffectiveRange:inRange:"), function $CPAttributedString__attributesAtIndex_longestEffectiveRange_inRange_(self, _cmd, anIndex, aRange, rangeLimit)
{ with(self)
{
    var startingEntryIndex = objj_msgSend(self, "_indexOfEntryWithIndex:", anIndex);
    if (startingEntryIndex == CPNotFound)
        return nil;
    if (!aRange)
        return _rangeEntries[startingEntryIndex].attributes;
    if (CPRangeInRange(_rangeEntries[startingEntryIndex].range, rangeLimit))
    {
        aRange.location = rangeLimit.location;
        aRange.length = rangeLimit.length;
        return _rangeEntries[startingEntryIndex].attributes;
    }
    var nextRangeIndex = startingEntryIndex - 1,
        currentEntry = _rangeEntries[startingEntryIndex],
        comparisonDict = currentEntry.attributes;
    while (nextRangeIndex >= 0)
    {
        var nextEntry = _rangeEntries[nextRangeIndex];
        if (CPMaxRange(nextEntry.range) > rangeLimit.location && objj_msgSend(nextEntry.attributes, "isEqualToDictionary:", comparisonDict))
        {
            currentEntry = nextEntry;
            nextRangeIndex--;
        }
        else
            break;
    }
    aRange.location = MAX(currentEntry.range.location, rangeLimit.location);
    currentEntry = _rangeEntries[startingEntryIndex];
    nextRangeIndex = startingEntryIndex + 1;
    while (nextRangeIndex < _rangeEntries.length)
    {
        var nextEntry = _rangeEntries[nextRangeIndex];
        if (nextEntry.range.location < CPMaxRange(rangeLimit) && objj_msgSend(nextEntry.attributes, "isEqualToDictionary:", comparisonDict))
        {
            currentEntry = nextEntry;
            nextRangeIndex++;
        }
        else
            break;
    }
    aRange.length = MIN(CPMaxRange(currentEntry.range), CPMaxRange(rangeLimit)) - aRange.location;
    return comparisonDict;
}
}), new objj_method(sel_getUid("attribute:atIndex:effectiveRange:"), function $CPAttributedString__attribute_atIndex_effectiveRange_(self, _cmd, attribute, index, aRange)
{ with(self)
{
    if (!attribute)
    {
        if (aRange)
        {
            aRange.location = 0;
            aRange.length = _string.length;
        }
        return nil;
    }
    return objj_msgSend(objj_msgSend(self, "attributesAtIndex:effectiveRange:", index, aRange), "valueForKey:", attribute);
}
}), new objj_method(sel_getUid("attribute:atIndex:longestEffectiveRange:inRange:"), function $CPAttributedString__attribute_atIndex_longestEffectiveRange_inRange_(self, _cmd, attribute, anIndex, aRange, rangeLimit)
{ with(self)
{
    var startingEntryIndex = objj_msgSend(self, "_indexOfEntryWithIndex:", anIndex);
    if (startingEntryIndex == CPNotFound || !attribute)
        return nil;
    if (!aRange)
        return objj_msgSend(_rangeEntries[startingEntryIndex].attributes, "objectForKey:", attribute);
    if (CPRangeInRange(_rangeEntries[startingEntryIndex].range, rangeLimit))
    {
        aRange.location = rangeLimit.location;
        aRange.length = rangeLimit.length;
        return objj_msgSend(_rangeEntries[startingEntryIndex].attributes, "objectForKey:", attribute);
    }
    var nextRangeIndex = startingEntryIndex - 1,
        currentEntry = _rangeEntries[startingEntryIndex],
        comparisonAttribute = objj_msgSend(currentEntry.attributes, "objectForKey:", attribute);
    while (nextRangeIndex >= 0)
    {
        var nextEntry = _rangeEntries[nextRangeIndex];
        if (CPMaxRange(nextEntry.range) > rangeLimit.location && isEqual(comparisonAttribute, objj_msgSend(nextEntry.attributes, "objectForKey:", attribute)))
        {
            currentEntry = nextEntry;
            nextRangeIndex--;
        }
        else
            break;
    }
    aRange.location = MAX(currentEntry.range.location, rangeLimit.location);
    currentEntry = _rangeEntries[startingEntryIndex];
    nextRangeIndex = startingEntryIndex + 1;
    while (nextRangeIndex < _rangeEntries.length)
    {
        var nextEntry = _rangeEntries[nextRangeIndex];
        if (nextEntry.range.location < CPMaxRange(rangeLimit) && isEqual(comparisonAttribute, objj_msgSend(nextEntry.attributes, "objectForKey:", attribute)))
        {
            currentEntry = nextEntry;
            nextRangeIndex++;
        }
        else
            break;
    }
    aRange.length = MIN(CPMaxRange(currentEntry.range), CPMaxRange(rangeLimit)) - aRange.location;
    return comparisonAttribute;
}
}), new objj_method(sel_getUid("isEqualToAttributedString:"), function $CPAttributedString__isEqualToAttributedString_(self, _cmd, aString)
{ with(self)
{
 if(!aString)
  return NO;
 if(_string != objj_msgSend(aString, "string"))
  return NO;
    var myRange = CPMakeRange(),
        comparisonRange = CPMakeRange(),
        myAttributes = objj_msgSend(self, "attributesAtIndex:effectiveRange:", 0, myRange),
        comparisonAttributes = objj_msgSend(aString, "attributesAtIndex:effectiveRange:", 0, comparisonRange),
        length = _string.length;
    while (CPMaxRange(CPUnionRange(myRange, comparisonRange)) < length)
    {
        if (CPIntersectionRange(myRange, comparisonRange).length > 0 && !objj_msgSend(myAttributes, "isEqualToDictionary:", comparisonAttributes))
            return NO;
        if (CPMaxRange(myRange) < CPMaxRange(comparisonRange))
            myAttributes = objj_msgSend(self, "attributesAtIndex:effectiveRange:", CPMaxRange(myRange), myRange);
        else
            comparisonAttributes = objj_msgSend(aString, "attributesAtIndex:effectiveRange:", CPMaxRange(comparisonRange), comparisonRange);
    }
    return YES;
}
}), new objj_method(sel_getUid("isEqual:"), function $CPAttributedString__isEqual_(self, _cmd, anObject)
{ with(self)
{
 if (anObject == self)
  return YES;
 if (objj_msgSend(anObject, "isKindOfClass:", objj_msgSend(self, "class")))
  return objj_msgSend(self, "isEqualToAttributedString:", anObject);
 return NO;
}
}), new objj_method(sel_getUid("attributedSubstringFromRange:"), function $CPAttributedString__attributedSubstringFromRange_(self, _cmd, aRange)
{ with(self)
{
    if (!aRange || CPMaxRange(aRange) > _string.length || aRange.location < 0)
        objj_msgSend(CPException, "raise:reason:", CPRangeException, "tried to get attributedSubstring for an invalid range: "+(aRange?CPStringFromRange(aRange):"nil"));
    var newString = objj_msgSend(objj_msgSend(CPAttributedString, "alloc"), "initWithString:", _string.substring(aRange.location, CPMaxRange(aRange))),
        entryIndex = objj_msgSend(self, "_indexOfEntryWithIndex:", aRange.location),
        currentRangeEntry = _rangeEntries[entryIndex],
        lastIndex = CPMaxRange(aRange);
    newString._rangeEntries = [];
    while (currentRangeEntry && CPMaxRange(currentRangeEntry.range) < lastIndex)
    {
        var newEntry = copyRangeEntry(currentRangeEntry);
        newEntry.range.location -= aRange.location;
        if (newEntry.range.location < 0)
        {
            newEntry.range.length += newEntry.range.location;
            newEntry.range.location = 0;
        }
        newString._rangeEntries.push(newEntry);
        currentRangeEntry = _rangeEntries[++entryIndex];
    }
    if (currentRangeEntry)
    {
        var newRangeEntry = copyRangeEntry(currentRangeEntry);
        newRangeEntry.range.length = CPMaxRange(aRange) - newRangeEntry.range.location;
        newRangeEntry.range.location -= aRange.location;
        if (newRangeEntry.range.location < 0)
        {
            newRangeEntry.range.length += newRangeEntry.range.location;
            newRangeEntry.range.location = 0;
        }
        newString._rangeEntries.push(newRangeEntry);
    }
    return newString;
}
}), new objj_method(sel_getUid("replaceCharactersInRange:withString:"), function $CPAttributedString__replaceCharactersInRange_withString_(self, _cmd, aRange, aString)
{ with(self)
{
    objj_msgSend(self, "beginEditing");
    if (!aString)
        aString = "";
    var startingIndex = objj_msgSend(self, "_indexOfEntryWithIndex:", aRange.location),
        startingRangeEntry = _rangeEntries[startingIndex],
        endingIndex = objj_msgSend(self, "_indexOfEntryWithIndex:", MAX(CPMaxRange(aRange)-1, 0)),
        endingRangeEntry = _rangeEntries[endingIndex],
        additionalLength = aString.length - aRange.length;
    _string = _string.substring(0, aRange.location) + aString + _string.substring(CPMaxRange(aRange));
    if (startingIndex == endingIndex)
        startingRangeEntry.range.length += additionalLength;
    else
    {
        endingRangeEntry.range.length = CPMaxRange(endingRangeEntry.range) - CPMaxRange(aRange);
        endingRangeEntry.range.location = CPMaxRange(aRange);
        startingRangeEntry.range.length = CPMaxRange(aRange) - startingRangeEntry.range.location;
        _rangeEntries.splice(startingIndex, endingIndex - startingIndex);
    }
    endingIndex = startingIndex + 1;
    while(endingIndex < _rangeEntries.length)
        _rangeEntries[endingIndex++].range.location+=additionalLength;
    objj_msgSend(self, "endEditing");
}
}), new objj_method(sel_getUid("deleteCharactersInRange:"), function $CPAttributedString__deleteCharactersInRange_(self, _cmd, aRange)
{ with(self)
{
    objj_msgSend(self, "replaceCharactersInRange:withString:", aRange, nil);
}
}), new objj_method(sel_getUid("setAttributes:range:"), function $CPAttributedString__setAttributes_range_(self, _cmd, aDictionary, aRange)
{ with(self)
{
    objj_msgSend(self, "beginEditing");
    var startingEntryIndex = objj_msgSend(self, "_indexOfRangeEntryForIndex:splitOnMaxIndex:", aRange.location, YES),
        endingEntryIndex = objj_msgSend(self, "_indexOfRangeEntryForIndex:splitOnMaxIndex:", CPMaxRange(aRange), YES),
        current = startingEntryIndex;
    if (endingEntryIndex == CPNotFound)
        endingEntryIndex = _rangeEntries.length;
    while (current < endingEntryIndex)
        _rangeEntries[current++].attributes = objj_msgSend(aDictionary, "copy");
    objj_msgSend(self, "_coalesceRangeEntriesFromIndex:toIndex:", startingEntryIndex, endingEntryIndex);
    objj_msgSend(self, "endEditing");
}
}), new objj_method(sel_getUid("addAttributes:range:"), function $CPAttributedString__addAttributes_range_(self, _cmd, aDictionary, aRange)
{ with(self)
{
    objj_msgSend(self, "beginEditing");
    var startingEntryIndex = objj_msgSend(self, "_indexOfRangeEntryForIndex:splitOnMaxIndex:", aRange.location, YES),
        endingEntryIndex = objj_msgSend(self, "_indexOfRangeEntryForIndex:splitOnMaxIndex:", CPMaxRange(aRange), YES),
        current = startingEntryIndex;
    if (endingEntryIndex == CPNotFound)
        endingEntryIndex = _rangeEntries.length;
    while (current < endingEntryIndex)
    {
        var keys = objj_msgSend(aDictionary, "allKeys"),
            count = objj_msgSend(keys, "count");
        while (count--)
            objj_msgSend(_rangeEntries[current].attributes, "setObject:forKey:", objj_msgSend(aDictionary, "objectForKey:", keys[count]), keys[count]);
        current++;
    }
    objj_msgSend(self, "_coalesceRangeEntriesFromIndex:toIndex:", startingEntryIndex, endingEntryIndex);
    objj_msgSend(self, "endEditing");
}
}), new objj_method(sel_getUid("addAttribute:value:range:"), function $CPAttributedString__addAttribute_value_range_(self, _cmd, anAttribute, aValue, aRange)
{ with(self)
{
    objj_msgSend(self, "addAttributes:range:", objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", aValue, anAttribute), aRange);
}
}), new objj_method(sel_getUid("removeAttribute:range:"), function $CPAttributedString__removeAttribute_range_(self, _cmd, anAttribute, aRange)
{ with(self)
{
    objj_msgSend(self, "addAttribute:value:range:", anAttribute, nil, aRange);
}
}), new objj_method(sel_getUid("appendAttributedString:"), function $CPAttributedString__appendAttributedString_(self, _cmd, aString)
{ with(self)
{
    objj_msgSend(self, "insertAttributedString:atIndex:", aString, _string.length);
}
}), new objj_method(sel_getUid("insertAttributedString:atIndex:"), function $CPAttributedString__insertAttributedString_atIndex_(self, _cmd, aString, anIndex)
{ with(self)
{
    objj_msgSend(self, "beginEditing");
    if (anIndex < 0 || anIndex > objj_msgSend(self, "length"))
        objj_msgSend(CPException, "raise:reason:", CPRangeException, "tried to insert attributed string at an invalid index: "+anIndex);
    var entryIndexOfNextEntry = objj_msgSend(self, "_indexOfRangeEntryForIndex:splitOnMaxIndex:", anIndex, YES),
        otherRangeEntries = aString._rangeEntries,
        length = objj_msgSend(aString, "length");
    if (entryIndexOfNextEntry == CPNotFound)
        entryIndexOfNextEntry = _rangeEntries.length;
    _string = _string.substring(0, anIndex) + aString._string + _string.substring(anIndex);
    var current = entryIndexOfNextEntry;
    while (current < _rangeEntries.length)
        _rangeEntries[current++].range.location += length;
    var newRangeEntryCount = otherRangeEntries.length,
        index = 0;
    while (index < newRangeEntryCount)
    {
        var entryCopy = copyRangeEntry(otherRangeEntries[index++]);
        entryCopy.range.location += anIndex;
        _rangeEntries.splice(entryIndexOfNextEntry-1+index, 0, entryCopy);
    }
    objj_msgSend(self, "endEditing");
}
}), new objj_method(sel_getUid("replaceCharactersInRange:withAttributedString:"), function $CPAttributedString__replaceCharactersInRange_withAttributedString_(self, _cmd, aRange, aString)
{ with(self)
{
    objj_msgSend(self, "beginEditing");
    objj_msgSend(self, "deleteCharactersInRange:", aRange);
    objj_msgSend(self, "insertAttributedString:atIndex:", aString, aRange.location);
    objj_msgSend(self, "endEditing");
}
}), new objj_method(sel_getUid("setAttributedString:"), function $CPAttributedString__setAttributedString_(self, _cmd, aString)
{ with(self)
{
    objj_msgSend(self, "beginEditing");
    _string = aString._string;
    _rangeEntries = [];
    for (var i=0, count = aString._rangeEntries.length; i<count; i++)
        _rangeEntries.push(copyRangeEntry(aString._rangeEntries[i]));
    objj_msgSend(self, "endEditing");
}
}), new objj_method(sel_getUid("_indexOfRangeEntryForIndex:splitOnMaxIndex:"), function $CPAttributedString___indexOfRangeEntryForIndex_splitOnMaxIndex_(self, _cmd, characterIndex, split)
{ with(self)
{
    var index = objj_msgSend(self, "_indexOfEntryWithIndex:", characterIndex);
    if (index < 0)
        return index;
    var rangeEntry = _rangeEntries[index];
    if (rangeEntry.range.location == characterIndex || (CPMaxRange(rangeEntry.range) - 1 == characterIndex && !split))
        return index;
    var newEntries = splitRangeEntryAtIndex(rangeEntry, characterIndex);
    _rangeEntries.splice(index, 1, newEntries[0], newEntries[1]);
    index++;
    return index;
}
}), new objj_method(sel_getUid("_coalesceRangeEntriesFromIndex:toIndex:"), function $CPAttributedString___coalesceRangeEntriesFromIndex_toIndex_(self, _cmd, start, end)
{ with(self)
{
    var current = start;
    if (end >= _rangeEntries.length)
        end = _rangeEntries.length -1;
    while (current < end)
    {
        var a = _rangeEntries[current],
            b = _rangeEntries[current+1];
        if (objj_msgSend(a.attributes, "isEqualToDictionary:", b.attributes))
        {
            a.range.length = CPMaxRange(b.range) - a.range.location;
            _rangeEntries.splice(current+1, 1);
            end--;
        }
        else
            current++;
    }
}
}), new objj_method(sel_getUid("beginEditing"), function $CPAttributedString__beginEditing(self, _cmd)
{ with(self)
{
}
}), new objj_method(sel_getUid("endEditing"), function $CPAttributedString__endEditing(self, _cmd)
{ with(self)
{
}
})]);
}
{var the_class = objj_allocateClassPair(CPAttributedString, "CPMutableAttributedString"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
}
var isEqual = isEqual= function(a, b)
{
    if (a == b)
        return YES;
    if (objj_msgSend(a, "respondsToSelector:", sel_getUid("isEqual:")) && objj_msgSend(a, "isEqual:", b))
        return YES;
    return NO;
}
var makeRangeEntry = makeRangeEntry= function( aRange, attributes)
{
    return {range:aRange, attributes:objj_msgSend(attributes, "copy")};
}
var copyRangeEntry = copyRangeEntry= function( aRangeEntry)
{
    return makeRangeEntry(CPCopyRange(aRangeEntry.range), objj_msgSend(aRangeEntry.attributes, "copy"));
}
var splitRangeEntry = splitRangeEntryAtIndex= function( aRangeEntry, anIndex)
{
    var newRangeEntry = copyRangeEntry(aRangeEntry),
        cachedIndex = CPMaxRange(aRangeEntry.range);
    aRangeEntry.range.length = anIndex - aRangeEntry.range.location;
    newRangeEntry.range.location = anIndex;
    newRangeEntry.range.length = cachedIndex - anIndex;
    newRangeEntry.attributes = objj_msgSend(newRangeEntry.attributes, "copy");
    return [aRangeEntry, newRangeEntry];
}

p;10;CPBundle.ji;10;CPObject.ji;14;CPDictionary.ji;14;CPURLRequest.jc;5166;
{var the_class = objj_allocateClassPair(CPObject, "CPBundle"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithPath:"), function $CPBundle__initWithPath_(self, _cmd, aPath)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        path = aPath;
        objj_setBundleForPath(path, self);
    }
    return self;
}
}), new objj_method(sel_getUid("classNamed:"), function $CPBundle__classNamed_(self, _cmd, aString)
{ with(self)
{
}
}), new objj_method(sel_getUid("bundlePath"), function $CPBundle__bundlePath(self, _cmd)
{ with(self)
{
    return objj_msgSend(path, "stringByDeletingLastPathComponent");
}
}), new objj_method(sel_getUid("resourcePath"), function $CPBundle__resourcePath(self, _cmd)
{ with(self)
{
    var resourcePath = objj_msgSend(self, "bundlePath");
    if (resourcePath.length)
        resourcePath += '/';
    return resourcePath + "Resources";
}
}), new objj_method(sel_getUid("principalClass"), function $CPBundle__principalClass(self, _cmd)
{ with(self)
{
    var className = objj_msgSend(self, "objectForInfoDictionaryKey:", "CPPrincipalClass");
    return className ? CPClassFromString(className) : Nil;
}
}), new objj_method(sel_getUid("pathForResource:"), function $CPBundle__pathForResource_(self, _cmd, aFilename)
{ with(self)
{
    return objj_msgSend(self, "resourcePath") + '/' + aFilename;
}
}), new objj_method(sel_getUid("infoDictionary"), function $CPBundle__infoDictionary(self, _cmd)
{ with(self)
{
    return info;
}
}), new objj_method(sel_getUid("objectForInfoDictionaryKey:"), function $CPBundle__objectForInfoDictionaryKey_(self, _cmd, aKey)
{ with(self)
{
    return objj_msgSend(info, "objectForKey:", aKey);
}
}), new objj_method(sel_getUid("loadWithDelegate:"), function $CPBundle__loadWithDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    self._delegate = aDelegate;
    self._infoConnection = objj_msgSend(CPURLConnection, "connectionWithRequest:delegate:", objj_msgSend(CPURLRequest, "requestWithURL:", objj_msgSend(self, "bundlePath") + "/Info.plist"), self);
}
}), new objj_method(sel_getUid("connection:didReceiveData:"), function $CPBundle__connection_didReceiveData_(self, _cmd, aConnection, data)
{ with(self)
{
    if (aConnection === self._infoConnection)
    {
        info = CPPropertyListCreateFromData(objj_msgSend(CPData, "dataWithString:", data));
        var platform = '/',
            platforms = objj_msgSend(self, "objectForInfoDictionaryKey:", "CPBundlePlatforms");
        if (platforms)
        {
            platform = objj_msgSend(platforms, "firstObjectCommonWithArray:", OBJJ_PLATFORMS);
            platform = platform ? '/' + platform + ".platform/" : '/';
        }
        objj_msgSend(CPURLConnection, "connectionWithRequest:delegate:", objj_msgSend(CPURLRequest, "requestWithURL:", objj_msgSend(self, "bundlePath") + platform + objj_msgSend(self, "objectForInfoDictionaryKey:", "CPBundleExecutable")), self);
    }
    else
    {
        objj_decompile(objj_msgSend(data, "string"), self);
        var context = new objj_context();
        if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("bundleDidFinishLoading:")))
            context.didCompleteCallback = function() { objj_msgSend(_delegate, "bundleDidFinishLoading:", self); };
        var files = objj_msgSend(self, "objectForInfoDictionaryKey:", "CPBundleReplacedFiles"),
            count = files.length,
            bundlePath = objj_msgSend(self, "bundlePath");
        while (count--)
        {
            var fileName = files[count];
            if (fileName.indexOf(".j") === fileName.length - 2)
                context.pushFragment(fragment_create_file(bundlePath + '/' + fileName, new objj_bundle(""), YES, NULL));
        }
        if (context.fragments.length)
            context.evaluate();
        else
            objj_msgSend(_delegate, "bundleDidFinishLoading:", self);
    }
}
}), new objj_method(sel_getUid("connection:didFailWithError:"), function $CPBundle__connection_didFailWithError_(self, _cmd, aConnection, anError)
{ with(self)
{
    alert("Couldnot find bundle:" + anError)
}
}), new objj_method(sel_getUid("connectionDidFinishLoading:"), function $CPBundle__connectionDidFinishLoading_(self, _cmd, aConnection)
{ with(self)
{
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $CPBundle__alloc(self, _cmd)
{ with(self)
{
    return new objj_bundle;
}
}), new objj_method(sel_getUid("bundleWithPath:"), function $CPBundle__bundleWithPath_(self, _cmd, aPath)
{ with(self)
{
    return objj_getBundleWithPath(aPath);
}
}), new objj_method(sel_getUid("bundleForClass:"), function $CPBundle__bundleForClass_(self, _cmd, aClass)
{ with(self)
{
    return objj_bundleForClass(aClass);
}
}), new objj_method(sel_getUid("mainBundle"), function $CPBundle__mainBundle(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPBundle, "bundleWithPath:", "Info.plist");
}
})]);
}
objj_bundle.prototype.isa = CPBundle;

p;9;CPCoder.ji;10;CPObject.ji;13;CPException.jc;2598;
{var the_class = objj_allocateClassPair(CPObject, "CPCoder"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("allowsKeyedCoding"), function $CPCoder__allowsKeyedCoding(self, _cmd)
{ with(self)
{
   return NO;
}
}), new objj_method(sel_getUid("encodeValueOfObjCType:at:"), function $CPCoder__encodeValueOfObjCType_at_(self, _cmd, aType, anObject)
{ with(self)
{
   CPInvalidAbstractInvocation();
}
}), new objj_method(sel_getUid("encodeDataObject:"), function $CPCoder__encodeDataObject_(self, _cmd, aData)
{ with(self)
{
   CPInvalidAbstractInvocation();
}
}), new objj_method(sel_getUid("encodeObject:"), function $CPCoder__encodeObject_(self, _cmd, anObject)
{ with(self)
{
}
}), new objj_method(sel_getUid("encodePoint:"), function $CPCoder__encodePoint_(self, _cmd, aPoint)
{ with(self)
{
    objj_msgSend(self, "encodeNumber:", aPoint.x);
    objj_msgSend(self, "encodeNumber:", aPoint.y);
}
}), new objj_method(sel_getUid("encodeRect:"), function $CPCoder__encodeRect_(self, _cmd, aRect)
{ with(self)
{
    objj_msgSend(self, "encodePoint:", aRect.origin);
    objj_msgSend(self, "encodeSize:", aRect.size);
}
}), new objj_method(sel_getUid("encodeSize:"), function $CPCoder__encodeSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSend(self, "encodeNumber:", aSize.width);
    objj_msgSend(self, "encodeNumber:", aSize.height);
}
}), new objj_method(sel_getUid("encodePropertyList:"), function $CPCoder__encodePropertyList_(self, _cmd, aPropertyList)
{ with(self)
{
}
}), new objj_method(sel_getUid("encodeRootObject:"), function $CPCoder__encodeRootObject_(self, _cmd, anObject)
{ with(self)
{
   objj_msgSend(self, "encodeObject:", anObject);
}
}), new objj_method(sel_getUid("encodeBycopyObject:"), function $CPCoder__encodeBycopyObject_(self, _cmd, anObject)
{ with(self)
{
   objj_msgSend(self, "encodeObject:", object);
}
}), new objj_method(sel_getUid("encodeConditionalObject:"), function $CPCoder__encodeConditionalObject_(self, _cmd, anObject)
{ with(self)
{
   objj_msgSend(self, "encodeObject:", object);
}
})]);
}
{
var the_class = objj_getClass("CPObject")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPObject\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("awakeAfterUsingCoder:"), function $CPObject__awakeAfterUsingCoder_(self, _cmd, aDecoder)
{ with(self)
{
    return self;
}
})]);
}

p;14;CPCountedSet.ji;7;CPSet.jc;1792;




{var the_class = objj_allocateClassPair(CPMutableSet, "CPCountedSet"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_counts")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("addObject:"), function $CPCountedSet__addObject_(self, _cmd, anObject)
{ with(self)
{
    if (!_counts)
        _counts = {};

    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPMutableSet") }, "addObject:", anObject);

    var hash = objj_msgSend(anObject, "hash");

    if (_counts[hash] === undefined)
        _counts[hash] = 1;
    else
        ++_counts[hash];
}
}), new objj_method(sel_getUid("removeObject:"), function $CPCountedSet__removeObject_(self, _cmd, anObject)
{ with(self)
{
    if (!_counts)
        return;

    var hash = objj_msgSend(anObject, "hash");

    if (_counts[hash] === undefined)
        return;

    else
    {
        --_counts[hash];

        if (_counts[hash] === 0)
        {
            delete _counts[hash];
            objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPMutableSet") }, "removeObject:", anObject);
        }
    }
}
}), new objj_method(sel_getUid("removeAllObjects"), function $CPCountedSet__removeAllObjects(self, _cmd)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPMutableSet") }, "removeAllObjects");
    _counts = {};
}
}), new objj_method(sel_getUid("countForObject:"), function $CPCountedSet__countForObject_(self, _cmd, anObject)
{ with(self)
{
    if (!_counts)
        _counts = {};

    var hash = objj_msgSend(anObject, "hash");

    if (_counts[hash] === undefined)
        return 0;

    return _counts[hash];
}
})]);
}

p;8;CPData.ji;10;CPObject.ji;10;CPString.jc;2933;
{var the_class = objj_allocateClassPair(CPObject, "CPData"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_plistObject")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithString:"), function $CPData__initWithString_(self, _cmd, aString)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
        string = aString;
    return self;
}
}), new objj_method(sel_getUid("initWithPlistObject:"), function $CPData__initWithPlistObject_(self, _cmd, aPlistObject)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
        _plistObject = aPlistObject;
    return self;
}
}), new objj_method(sel_getUid("length"), function $CPData__length(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "string"), "length");
}
}), new objj_method(sel_getUid("description"), function $CPData__description(self, _cmd)
{ with(self)
{
    return string;
}
}), new objj_method(sel_getUid("string"), function $CPData__string(self, _cmd)
{ with(self)
{
    if (!string && _plistObject)
        string = objj_msgSend(objj_msgSend(CPPropertyListSerialization, "dataFromPropertyList:format:errorDescription:", _plistObject, CPPropertyList280NorthFormat_v1_0, NULL), "string");
    return string;
}
}), new objj_method(sel_getUid("setString:"), function $CPData__setString_(self, _cmd, aString)
{ with(self)
{
    string = aString;
    _plistObject = nil;
}
}), new objj_method(sel_getUid("plistObject"), function $CPData__plistObject(self, _cmd)
{ with(self)
{
    if (string && !_plistObject)
        _plistObject = objj_msgSend(CPPropertyListSerialization, "propertyListFromData:format:errorDescription:", self, 0, NULL);
    return _plistObject;
}
}), new objj_method(sel_getUid("setPlistObject:"), function $CPData__setPlistObject_(self, _cmd, aPlistObject)
{ with(self)
{
    string = nil;
    _plistObject = aPlistObject;
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $CPData__alloc(self, _cmd)
{ with(self)
{
    return new objj_data();
}
}), new objj_method(sel_getUid("data"), function $CPData__data(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithPlistObject:", nil);
}
}), new objj_method(sel_getUid("dataWithString:"), function $CPData__dataWithString_(self, _cmd, aString)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithString:", aString);
}
}), new objj_method(sel_getUid("dataWithPlistObject:"), function $CPData__dataWithPlistObject_(self, _cmd, aPlistObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithPlistObject:", aPlistObject);
}
})]);
}
objj_data.prototype.isa = CPData;

p;8;CPDate.ji;10;CPObject.ji;10;CPString.jc;4765;
var CPDateReferenceDate = new Date(Date.UTC(2001,1,1,0,0,0,0));
{var the_class = objj_allocateClassPair(CPObject, "CPDate"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithTimeIntervalSinceNow:"), function $CPDate__initWithTimeIntervalSinceNow_(self, _cmd, seconds)
{ with(self)
{
    self = new Date((new Date()).getTime() + seconds * 1000);
    return self;
}
}), new objj_method(sel_getUid("initWithTimeIntervalSince1970:"), function $CPDate__initWithTimeIntervalSince1970_(self, _cmd, seconds)
{ with(self)
{
    self = new Date(seconds * 1000);
    return self;
}
}), new objj_method(sel_getUid("initWithTimeIntervalSinceReferenceDate:"), function $CPDate__initWithTimeIntervalSinceReferenceDate_(self, _cmd, seconds)
{ with(self)
{
    self = objj_msgSend(self, "initWithTimeInterval:sinceDate:", seconds, CPDateReferenceDate);
    return self;
}
}), new objj_method(sel_getUid("initWithTimeInterval:sinceDate:"), function $CPDate__initWithTimeInterval_sinceDate_(self, _cmd, seconds, refDate)
{ with(self)
{
    self = new Date(refDate.getTime() + seconds * 1000);
    return self;
}
}), new objj_method(sel_getUid("initWithString:"), function $CPDate__initWithString_(self, _cmd, description)
{ with(self)
{
    self = new Date(description);
    return self;
}
}), new objj_method(sel_getUid("timeIntervalSinceDate:"), function $CPDate__timeIntervalSinceDate_(self, _cmd, anotherDate)
{ with(self)
{
    return (self.getTime() - anotherDate.getTime()) / 1000.0;
}
}), new objj_method(sel_getUid("timeIntervalSinceNow"), function $CPDate__timeIntervalSinceNow(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "timeIntervalSinceDate:", objj_msgSend(CPDate, "date"));
}
}), new objj_method(sel_getUid("timeIntervalSince1970"), function $CPDate__timeIntervalSince1970(self, _cmd)
{ with(self)
{
    return self.getTime() / 1000.0;
}
}), new objj_method(sel_getUid("timeIntervalSinceReferenceDate"), function $CPDate__timeIntervalSinceReferenceDate(self, _cmd)
{ with(self)
{
    return (self.getTime() - CPDateReferenceDate.getTime()) / 1000.0;
}
}), new objj_method(sel_getUid("isEqualToDate:"), function $CPDate__isEqualToDate_(self, _cmd, anotherDate)
{ with(self)
{
    return !(self < anotherDate || self > anotherDate);
}
}), new objj_method(sel_getUid("compare:"), function $CPDate__compare_(self, _cmd, anotherDate)
{ with(self)
{
    return (self > anotherDate) ? CPOrderedDescending : ((self < anotherDate) ? CPOrderedAscending : CPOrderedSame);
}
}), new objj_method(sel_getUid("earlierDate:"), function $CPDate__earlierDate_(self, _cmd, anotherDate)
{ with(self)
{
    return (self < anotherDate) ? self : anotherDate;
}
}), new objj_method(sel_getUid("laterDate:"), function $CPDate__laterDate_(self, _cmd, anotherDate)
{ with(self)
{
    return (self > anotherDate) ? self : anotherDate;
}
}), new objj_method(sel_getUid("description"), function $CPDate__description(self, _cmd)
{ with(self)
{
    return self.toString();
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $CPDate__alloc(self, _cmd)
{ with(self)
{
    return new Date;
}
}), new objj_method(sel_getUid("date"), function $CPDate__date(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
}), new objj_method(sel_getUid("dateWithTimeIntervalSinceNow:"), function $CPDate__dateWithTimeIntervalSinceNow_(self, _cmd, seconds)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPDate, "alloc"), "initWithTimeIntervalSinceNow:", seconds);
}
}), new objj_method(sel_getUid("dateWithTimeIntervalSince1970:"), function $CPDate__dateWithTimeIntervalSince1970_(self, _cmd, seconds)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPDate, "alloc"), "initWithTimeIntervalSince1970:", seconds);
}
}), new objj_method(sel_getUid("dateWithTimeIntervalSinceReferenceDate:"), function $CPDate__dateWithTimeIntervalSinceReferenceDate_(self, _cmd, seconds)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPDate, "alloc"), "initWithTimeIntervalSinceReferenceDate:", seconds);
}
}), new objj_method(sel_getUid("distantPast"), function $CPDate__distantPast(self, _cmd)
{ with(self)
{
    return new Date(-10000,1,1,0,0,0,0);
}
}), new objj_method(sel_getUid("distantFuture"), function $CPDate__distantFuture(self, _cmd)
{ with(self)
{
    return new Date(10000,1,1,0,0,0,0);
}
}), new objj_method(sel_getUid("timeIntervalSinceReferenceDate"), function $CPDate__timeIntervalSinceReferenceDate(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPDate, "date"), "timeIntervalSinceReferenceDate");
}
})]);
}
Date.prototype.isa = CPDate;

p;14;CPDictionary.ji;10;CPObject.ji;14;CPEnumerator.ji;13;CPException.jc;10057;
{var the_class = objj_allocateClassPair(CPEnumerator, "_CPDictionaryValueEnumerator"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_keyEnumerator"), new objj_ivar("_dictionary")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithDictionary:"), function $_CPDictionaryValueEnumerator__initWithDictionary_(self, _cmd, aDictionary)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPEnumerator") }, "init");
    if (self)
    {
        _keyEnumerator = objj_msgSend(aDictionary, "keyEnumerator");
        _dictionary = aDictionary;
    }
    return self;
}
}), new objj_method(sel_getUid("nextObject"), function $_CPDictionaryValueEnumerator__nextObject(self, _cmd)
{ with(self)
{
    var key = objj_msgSend(_keyEnumerator, "nextObject");
    if (!key)
        return nil;
    return objj_msgSend(_dictionary, "objectForKey:", key);
}
})]);
}
{var the_class = objj_allocateClassPair(CPObject, "CPDictionary"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithDictionary:"), function $CPDictionary__initWithDictionary_(self, _cmd, aDictionary)
{ with(self)
{
    var key = "",
        dictionary = objj_msgSend(objj_msgSend(CPDictionary, "alloc"), "init");
    for (key in aDictionary._buckets)
        objj_msgSend(dictionary, "setObject:forKey:", objj_msgSend(aDictionary, "objectForKey:", key), key);
    return dictionary;
}
}), new objj_method(sel_getUid("initWithObjects:forKeys:"), function $CPDictionary__initWithObjects_forKeys_(self, _cmd, objects, keyArray)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (objj_msgSend(objects, "count") != objj_msgSend(keyArray, "count"))
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Counts are different.("+objj_msgSend(objects, "count")+"!="+objj_msgSend(keyArray, "count")+")");
    if (self)
    {
        var i = objj_msgSend(keyArray, "count");
        while (i--)
            objj_msgSend(self, "setObject:forKey:", objects[i], keyArray[i]);
    }
    return self;
}
}), new objj_method(sel_getUid("initWithObjectsAndKeys:"), function $CPDictionary__initWithObjectsAndKeys_(self, _cmd, firstObject)
{ with(self)
{
    var argCount = arguments.length;
    if (argCount % 2 !== 0)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Key-value count is mismatched. (" + argCount + " arguments passed)");
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        var index = 2;
        for(; index < argCount; index += 2)
        {
            var value = arguments[index];
            if (value === nil)
                break;
            objj_msgSend(self, "setObject:forKey:", value, arguments[index + 1]);
        }
    }
    return self;
}
}), new objj_method(sel_getUid("copy"), function $CPDictionary__copy(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithDictionary:", self);
}
}), new objj_method(sel_getUid("count"), function $CPDictionary__count(self, _cmd)
{ with(self)
{
    return count;
}
}), new objj_method(sel_getUid("allKeys"), function $CPDictionary__allKeys(self, _cmd)
{ with(self)
{
    return _keys;
}
}), new objj_method(sel_getUid("allValues"), function $CPDictionary__allValues(self, _cmd)
{ with(self)
{
    var index = _keys.length,
        values = [];
    while (index--)
        values.push(dictionary_getValue(self, [_keys[index]]));
    return values;
}
}), new objj_method(sel_getUid("keyEnumerator"), function $CPDictionary__keyEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(_keys, "objectEnumerator");
}
}), new objj_method(sel_getUid("objectEnumerator"), function $CPDictionary__objectEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(_CPDictionaryValueEnumerator, "alloc"), "initWithDictionary:", self);
}
}), new objj_method(sel_getUid("isEqualToDictionary:"), function $CPDictionary__isEqualToDictionary_(self, _cmd, aDictionary)
{ with(self)
{
    if (count !== objj_msgSend(aDictionary, "count"))
        return NO;
    var index = count;
    while (index--)
    {
        var currentKey = _keys[index],
            lhsObject = _buckets[currentKey],
            rhsObject = aDictionary._buckets[currentKey];
        if (lhsObject === rhsObject)
            continue;
        if (lhsObject.isa && rhsObject.isa && objj_msgSend(lhsObject, "respondsToSelector:", sel_getUid("isEqual:")) && objj_msgSend(lhsObject, "isEqual:", rhsObject))
            continue;
        return NO;
    }
    return YES;
}
}), new objj_method(sel_getUid("objectForKey:"), function $CPDictionary__objectForKey_(self, _cmd, aKey)
{ with(self)
{
    var object = _buckets[aKey];
    return (object === undefined) ? nil : object;
}
}), new objj_method(sel_getUid("removeAllObjects"), function $CPDictionary__removeAllObjects(self, _cmd)
{ with(self)
{
    _keys = [];
    count = 0;
    _buckets = {};
}
}), new objj_method(sel_getUid("removeObjectForKey:"), function $CPDictionary__removeObjectForKey_(self, _cmd, aKey)
{ with(self)
{
    dictionary_removeValue(self, aKey);
}
}), new objj_method(sel_getUid("removeObjectsForKeys:"), function $CPDictionary__removeObjectsForKeys_(self, _cmd, allKeys)
{ with(self)
{
    var index = allKeys.length;
    while (index--)
        dictionary_removeValue(self, allKeys[index]);
}
}), new objj_method(sel_getUid("setObject:forKey:"), function $CPDictionary__setObject_forKey_(self, _cmd, anObject, aKey)
{ with(self)
{
    dictionary_setValue(self, aKey, anObject);
}
}), new objj_method(sel_getUid("addEntriesFromDictionary:"), function $CPDictionary__addEntriesFromDictionary_(self, _cmd, aDictionary)
{ with(self)
{
    if (!aDictionary)
        return;
    var keys = objj_msgSend(aDictionary, "allKeys"),
        index = objj_msgSend(keys, "count");
    while (index--)
    {
        var key = keys[index];
        objj_msgSend(self, "setObject:forKey:", objj_msgSend(aDictionary, "objectForKey:", key), key);
    }
}
}), new objj_method(sel_getUid("description"), function $CPDictionary__description(self, _cmd)
{ with(self)
{
    var description = "CPDictionary {\n";
    var i = _keys.length;
    while (i--)
    {
        description += _keys[i] + ":";
        var object = _buckets[_keys[i]];
        if (object && object.isa)
            description += objj_msgSend(object, "description");
        else
            description += object;
        description += "\n";
    }
    description += "}";
    return description;
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $CPDictionary__alloc(self, _cmd)
{ with(self)
{
    return new objj_dictionary();
}
}), new objj_method(sel_getUid("dictionary"), function $CPDictionary__dictionary(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
}), new objj_method(sel_getUid("dictionaryWithDictionary:"), function $CPDictionary__dictionaryWithDictionary_(self, _cmd, aDictionary)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithDictionary:", aDictionary);
}
}), new objj_method(sel_getUid("dictionaryWithObject:forKey:"), function $CPDictionary__dictionaryWithObject_forKey_(self, _cmd, anObject, aKey)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithObjects:forKeys:", [anObject], [aKey]);
}
}), new objj_method(sel_getUid("dictionaryWithObjects:forKeys:"), function $CPDictionary__dictionaryWithObjects_forKeys_(self, _cmd, objects, keys)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithObjects:forKeys:", objects, keys);
}
}), new objj_method(sel_getUid("dictionaryWithJSObject:"), function $CPDictionary__dictionaryWithJSObject_(self, _cmd, object)
{ with(self)
{
    return objj_msgSend(self, "dictionaryWithJSObject:recursively:", object, NO);
}
}), new objj_method(sel_getUid("dictionaryWithJSObject:recursively:"), function $CPDictionary__dictionaryWithJSObject_recursively_(self, _cmd, object, recursively)
{ with(self)
{
    var dictionary = objj_msgSend(objj_msgSend(self, "alloc"), "init");
    for (var key in object)
    {
        var value = object[key];
        if (recursively && value.constructor === Object)
            value = objj_msgSend(CPDictionary, "dictionaryWithJSObject:recursively:", value, YES);
        objj_msgSend(dictionary, "setObject:forKey:", value, key);
    }
    return dictionary;
}
}), new objj_method(sel_getUid("dictionaryWithObjectsAndKeys:"), function $CPDictionary__dictionaryWithObjectsAndKeys_(self, _cmd, firstObject)
{ with(self)
{
    arguments[0] = objj_msgSend(self, "alloc");
    arguments[1] = sel_getUid("initWithObjectsAndKeys:");
    return objj_msgSend.apply(this, arguments);
}
})]);
}
{
var the_class = objj_getClass("CPDictionary")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPDictionary\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPDictionary__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(aCoder, "_decodeDictionaryOfObjectsForKey:", "CP.objects");
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPDictionary__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "_encodeDictionaryOfObjects:forKey:", self, "CP.objects");
}
})]);
}
{var the_class = objj_allocateClassPair(CPDictionary, "CPMutableDictionary"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
}
objj_dictionary.prototype.isa = CPDictionary;

p;14;CPEnumerator.ji;10;CPObject.jc;500;
{var the_class = objj_allocateClassPair(CPObject, "CPEnumerator"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("nextObject"), function $CPEnumerator__nextObject(self, _cmd)
{ with(self)
{
    return nil;
}
}), new objj_method(sel_getUid("allObjects"), function $CPEnumerator__allObjects(self, _cmd)
{ with(self)
{
    return [];
}
})]);
}

p;13;CPException.ji;9;CPCoder.ji;10;CPObject.ji;10;CPString.jc;4340;
CPInvalidArgumentException = "CPInvalidArgumentException";
CPUnsupportedMethodException = "CPUnsupportedMethodException";
CPRangeException = "CPRangeException";
CPInternalInconsistencyException = "CPInternalInconsistencyException";
{var the_class = objj_allocateClassPair(CPObject, "CPException"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithName:reason:userInfo:"), function $CPException__initWithName_reason_userInfo_(self, _cmd, aName, aReason, aUserInfo)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        name = aName;
        reason = aReason;
        userInfo = aUserInfo;
    }
    return self;
}
}), new objj_method(sel_getUid("name"), function $CPException__name(self, _cmd)
{ with(self)
{
    return name;
}
}), new objj_method(sel_getUid("reason"), function $CPException__reason(self, _cmd)
{ with(self)
{
    return reason;
}
}), new objj_method(sel_getUid("userInfo"), function $CPException__userInfo(self, _cmd)
{ with(self)
{
    return userInfo;
}
}), new objj_method(sel_getUid("description"), function $CPException__description(self, _cmd)
{ with(self)
{
    return reason;
}
}), new objj_method(sel_getUid("raise"), function $CPException__raise(self, _cmd)
{ with(self)
{
    objj_exception_throw(self);
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $CPException__alloc(self, _cmd)
{ with(self)
{
    return new objj_exception();
}
}), new objj_method(sel_getUid("raise:reason:"), function $CPException__raise_reason_(self, _cmd, aName, aReason)
{ with(self)
{
    objj_msgSend(objj_msgSend(self, "exceptionWithName:reason:userInfo:", aName, aReason, nil), "raise");
}
}), new objj_method(sel_getUid("exceptionWithName:reason:userInfo:"), function $CPException__exceptionWithName_reason_userInfo_(self, _cmd, aName, aReason, aUserInfo)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithName:reason:userInfo:", aName, aReason, aUserInfo);
}
})]);
}
{
var the_class = objj_getClass("CPException")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPException\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("copy"), function $CPException__copy(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "exceptionWithName:reason:userInfo:", name, reason, userInfo);
}
})]);
}
var CPExceptionNameKey = "CPExceptionNameKey",
    CPExceptionReasonKey = "CPExceptionReasonKey",
    CPExceptionUserInfoKey = "CPExceptionUserInfoKey";
{
var the_class = objj_getClass("CPException")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPException\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPException__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        name = objj_msgSend(aCoder, "decodeObjectForKey:", CPExceptionNameKey);
        reason = objj_msgSend(aCoder, "decodeObjectForKey:", CPExceptionReasonKey);
        userInfo = objj_msgSend(aCoder, "decodeObjectForKey:", CPExceptionUserInfoKey);
    }
    return self;
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPException__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", name, CPExceptionNameKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", reason, CPExceptionReasonKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", userInfo, CPExceptionUserInfoKey);
}
})]);
}
objj_exception.prototype.isa = CPException;
objj_msgSend(CPException, "initialize");
_CPRaiseInvalidAbstractInvocation= function(anObject, aSelector)
{
    objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "*** -" + sel_getName(aSelector) + " cannot be sent to an abstract object of class " + objj_msgSend(anObject, "className") + ": Create a concrete instance!");
}

p;12;CPIndexSet.ji;9;CPRange.ji;10;CPObject.jc;18435;
{var the_class = objj_allocateClassPair(CPObject, "CPIndexSet"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_count"), new objj_ivar("_cachedRangeIndex"), new objj_ivar("_ranges")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPIndexSet__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _count = 0;
        _ranges = [];
        _cachedRangeIndex = 0;
    }
    return self;
}
}), new objj_method(sel_getUid("initWithIndex:"), function $CPIndexSet__initWithIndex_(self, _cmd, anIndex)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _count = 1;
        _ranges = objj_msgSend(CPArray, "arrayWithObject:", CPMakeRange(anIndex, 1));
        _cachedRangeIndex = 0;
    }
    return self;
}
}), new objj_method(sel_getUid("initWithIndexesInRange:"), function $CPIndexSet__initWithIndexesInRange_(self, _cmd, aRange)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _count = aRange.length;
        _ranges = objj_msgSend(CPArray, "arrayWithObject:", aRange);
        _cachedRangeIndex = 0;
    }
    return self;
}
}), new objj_method(sel_getUid("initWithIndexSet:"), function $CPIndexSet__initWithIndexSet_(self, _cmd, anIndexSet)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _count = objj_msgSend(anIndexSet, "count");
        _ranges = [];
        _cachedRangeIndex = 0;
        var index = 0,
            count = anIndexSet._ranges.length;
        for (; index < count; ++index)
            _ranges.push(CPCopyRange(anIndexSet._ranges[index]));
    }
    return self;
}
}), new objj_method(sel_getUid("isEqualToIndexSet:"), function $CPIndexSet__isEqualToIndexSet_(self, _cmd, anIndexSet)
{ with(self)
{
 if (self == anIndexSet)
    return YES;
    var i = 0,
        count = _ranges.length;
        otherRanges = anIndexSet._ranges;
 if (count != otherRanges.length || _count != objj_msgSend(anIndexSet, "count"))
    return NO;
 for (; i < count; ++i)
  if (!CPEqualRanges(_ranges[i], otherRanges[i]))
   return NO;
 return YES;
}
}), new objj_method(sel_getUid("containsIndex:"), function $CPIndexSet__containsIndex_(self, _cmd, anIndex)
{ with(self)
{
    return objj_msgSend(self, "containsIndexesInRange:", CPMakeRange(anIndex, 1));
}
}), new objj_method(sel_getUid("containsIndexesInRange:"), function $CPIndexSet__containsIndexesInRange_(self, _cmd, aRange)
{ with(self)
{
    if(!_count)
        return NO;
    var i = SOERangeIndex(self, aRange.location),
     lower = aRange.location,
     upper = CPMaxRange(aRange),
     count = _ranges.length;
    for(;i < count && _ranges[i].location < upper; ++i)
     if (_ranges[i].location <= lower && CPMaxRange(_ranges[i]) >= upper)
     {
            _cachedRangeIndex = i;
            return YES;
        }
    _cachedRangeIndex = i;
    return NO;
}
}), new objj_method(sel_getUid("containsIndexes:"), function $CPIndexSet__containsIndexes_(self, _cmd, anIndexSet)
{ with(self)
{
    if(!objj_msgSend(anIndexSet, "count"))
        return YES;
    if(!_count)
        return NO;
    var i = 0,
        count = _ranges.length;
    for(; i < count; ++i)
        if (!objj_msgSend(anIndexSet, "containsIndexesInRange:", _ranges[i]))
            return NO;
    return YES;
}
}), new objj_method(sel_getUid("intersectsIndexesInRange:"), function $CPIndexSet__intersectsIndexesInRange_(self, _cmd, aRange)
{ with(self)
{
    if(!_count)
        return NO;
    var i = SOERangeIndex(self, aRange.location),
        count = _ranges.length,
        upper = CPMaxRange(aRange);
    for (; i < count && _ranges[i].location < upper; ++i)
        if(CPIntersectionRange(aRange, _ranges[i]).length)
            return YES;
    return NO;
}
}), new objj_method(sel_getUid("count"), function $CPIndexSet__count(self, _cmd)
{ with(self)
{
    return _count;
}
}), new objj_method(sel_getUid("firstIndex"), function $CPIndexSet__firstIndex(self, _cmd)
{ with(self)
{
    return _count ? _ranges[0].location : CPNotFound;
}
}), new objj_method(sel_getUid("lastIndex"), function $CPIndexSet__lastIndex(self, _cmd)
{ with(self)
{
    return _count ? CPMaxRange(_ranges[_ranges.length - 1]) - 1 : CPNotFound;
}
}), new objj_method(sel_getUid("indexGreaterThanIndex:"), function $CPIndexSet__indexGreaterThanIndex_(self, _cmd, anIndex)
{ with(self)
{
    if(!_count)
        return CPNotFound;
    var i = SOERangeIndex(self, anIndex++),
        count = _ranges.length;
    for(; i < count && anIndex >= CPMaxRange(_ranges[i]); ++i) ;
    if (i == count)
        return CPNotFound;
    _cachedRangeIndex = i;
    if (anIndex < _ranges[i].location)
        return _ranges[i].location;
    return anIndex;
}
}), new objj_method(sel_getUid("indexLessThanIndex:"), function $CPIndexSet__indexLessThanIndex_(self, _cmd, anIndex)
{ with(self)
{
    if (!_count)
        return CPNotFound;
    var i = GOERangeIndex(self, anIndex--);
    for (; i >= 0 && anIndex < _ranges[i].location; --i) ;
    if(i < 0)
        return CPNotFound;
    _cachedRangeIndex = i;
   if (CPLocationInRange(anIndex, _ranges[i]))
        return anIndex;
    if (CPMaxRange(_ranges[i]) - 1 < anIndex)
        return CPMaxRange(_ranges[i]) - 1;
    return CPNotFound;
}
}), new objj_method(sel_getUid("indexGreaterThanOrEqualToIndex:"), function $CPIndexSet__indexGreaterThanOrEqualToIndex_(self, _cmd, anIndex)
{ with(self)
{
 return objj_msgSend(self, "indexGreaterThanIndex:", anIndex - 1);
}
}), new objj_method(sel_getUid("indexLessThanOrEqualToIndex:"), function $CPIndexSet__indexLessThanOrEqualToIndex_(self, _cmd, anIndex)
{ with(self)
{
 return objj_msgSend(self, "indexLessThanIndex:", anIndex + 1);
}
}), new objj_method(sel_getUid("getIndexes:maxCount:inIndexRange:"), function $CPIndexSet__getIndexes_maxCount_inIndexRange_(self, _cmd, anArray, aMaxCount, aRangePointer)
{ with(self)
{
    if (!_count || aMaxCount <= 0 || aRangePointer && !aRangePointer.length)
        return 0;
    var i = SOERangeIndex(self, aRangePointer? aRangePointer.location : 0),
        total = 0,
        count = _ranges.length;
    for (; i < count; ++i)
    {
        var intersection = aRangePointer ? CPIntersectionRange(_ranges[i], aRangePointer) : _ranges[i],
            index = intersection.location,
            maximum = CPMaxRange(intersection);
        for (; index < maximum; ++index)
        {
            anArray[total++] = index;
            if (total == aMaxCount)
            {
                if (aRangePointer)
                {
                    var upper = CPMaxRange(aRangePointer);
                    aRangePointer.location = index + 1;
                    aRangePointer.length = upper - index - 1;
                }
                return aMaxCount;
            }
        }
    }
    if (aRangePointer)
    {
        aRangePointer.location = CPNotFound;
        aRangePointer.length = 0;
    }
    return total;
}
}), new objj_method(sel_getUid("description"), function $CPIndexSet__description(self, _cmd)
{ with(self)
{
    var desc = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "description") + " ";
 if (_count)
 {
  desc += "[number of indexes: " + _count + " (in " + _ranges.length + " ranges), indexes: (";
  for (i = 0; i < _ranges.length; i++)
  {
   desc += _ranges[i].location;
   if (_ranges[i].length > 1) desc += "-" + (CPMaxRange(_ranges[i])-1) + ":"+_ranges[i].length+":";
   if (i+1 < _ranges.length) desc += " ";
  }
  desc += ")]";
 }
 else
  desc += "(no indexes)";
 return desc;
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("indexSet"), function $CPIndexSet__indexSet(self, _cmd)
{ with(self)
{
 return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
}), new objj_method(sel_getUid("indexSetWithIndex:"), function $CPIndexSet__indexSetWithIndex_(self, _cmd, anIndex)
{ with(self)
{
 return objj_msgSend(objj_msgSend(self, "alloc"), "initWithIndex:", anIndex);
}
}), new objj_method(sel_getUid("indexSetWithIndexesInRange:"), function $CPIndexSet__indexSetWithIndexesInRange_(self, _cmd, aRange)
{ with(self)
{
 return objj_msgSend(objj_msgSend(self, "alloc"), "initWithIndexesInRange:", aRange);
}
})]);
}
{
var the_class = objj_getClass("CPIndexSet")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPIndexSet\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("addIndex:"), function $CPIndexSet__addIndex_(self, _cmd, anIndex)
{ with(self)
{
    objj_msgSend(self, "addIndexesInRange:", CPMakeRange(anIndex, 1));
}
}), new objj_method(sel_getUid("addIndexes:"), function $CPIndexSet__addIndexes_(self, _cmd, anIndexSet)
{ with(self)
{
    var i = 0,
        ranges = anIndexSet._ranges,
        count = ranges.length;
    for(; i < count; ++i)
        objj_msgSend(self, "addIndexesInRange:", ranges[i]);
}
}), new objj_method(sel_getUid("addIndexesInRange:"), function $CPIndexSet__addIndexesInRange_(self, _cmd, aRange)
{ with(self)
{
    if (_ranges.length == 0)
    {
        _count = aRange.length;
        return objj_msgSend(_ranges, "addObject:", CPCopyRange(aRange));
    }
    var i = SOERangeIndex(self, aRange.location),
        count = _ranges.length,
        padded = CPMakeRange(aRange.location - 1, aRange.length + 2),
        maximum = CPMaxRange(aRange);
    if (count && CPMaxRange(_ranges[count - 1]) < aRange.location)
        objj_msgSend(_ranges, "addObject:", CPCopyRange(aRange));
    else
        for (; i < count; ++i)
        {
            if (maximum < _ranges[i].location)
            {
                _count += aRange.length;
                if (i < _cachedRangeIndex) ++_cachedRangeIndex;
                return objj_msgSend(_ranges, "insertObject:atIndex:", CPCopyRange(aRange), i);
            }
            if (CPIntersectionRange(_ranges[i], padded).length)
            {
                var union = CPUnionRange(_ranges[i], aRange);
                if (union.length == _ranges[i].length)
                    return;
                 ++union.length;
                var j = i;
                for(; j < count; ++j)
                    if(CPIntersectionRange(union, _ranges[j]).length)
                        _count -= _ranges[j].length;
                    else
                        break;
                --union.length;
                _ranges[i] = union;
                if (j - i - 1 > 0)
                {
                    var remove = CPMakeRange(i + 1, j - i - 1);
                    _ranges[i] = CPUnionRange(_ranges[i], _ranges[j - 1]);
                    objj_msgSend(_ranges, "removeObjectsInRange:", remove);
                    if (_cachedRangeIndex >= CPMaxRange(remove)) _cachedRangedIndex -= remove.length;
                    else if (CPLocationInRange(_cachedRangeIndex, remove)) _cachedRangeIndex = i;
                }
                _count += _ranges[i].length;
                return;
            }
        }
    _count += aRange.length;
}
}), new objj_method(sel_getUid("removeIndex:"), function $CPIndexSet__removeIndex_(self, _cmd, anIndex)
{ with(self)
{
    objj_msgSend(self, "removeIndexesInRange:", CPMakeRange(anIndex, 1));
}
}), new objj_method(sel_getUid("removeIndexes:"), function $CPIndexSet__removeIndexes_(self, _cmd, anIndexSet)
{ with(self)
{
    var i = 0,
        ranges = anIndexSet._ranges,
        count = ranges.length;
    for(; i < count; ++i)
        objj_msgSend(self, "removeIndexesInRange:", ranges[i]);
}
}), new objj_method(sel_getUid("removeAllIndexes"), function $CPIndexSet__removeAllIndexes(self, _cmd)
{ with(self)
{
    _ranges = [];
 _count = 0;
    _cachedRangeIndex = 0;
}
}), new objj_method(sel_getUid("removeIndexesInRange:"), function $CPIndexSet__removeIndexesInRange_(self, _cmd, aRange)
{ with(self)
{
    var i = SOERangeIndex(self, aRange.location),
        count = _ranges.length,
        maximum = CPMaxRange(aRange),
        removal = CPMakeRange(CPNotFound, 0);
    for (; i < count; ++i)
    {
        var range = _ranges[i];
        if (maximum < range.location)
            break;
        var intersection = CPIntersectionRange(range, aRange);
        if (!intersection.length)
            continue;
        else if (intersection.length == range.length)
        {
            if (removal.location == CPNotFound)
                removal = CPMakeRange(i, 1);
            else
                ++removal.length;
        }
        else if (intersection.location > range.location && CPMaxRange(intersection) < CPMaxRange(range))
        {
            var insert = CPMakeRange(CPMaxRange(intersection), CPMaxRange(range) - CPMaxRange(intersection));
            range.length = intersection.location - range.location;
            _count -= intersection.length;
            return objj_msgSend(_ranges, "insertObject:atIndex:", insert, i + 1);
        }
        else
        {
            range.length -= intersection.length;
            if (intersection.location <= range.location)
                range.location += intersection.length;
        }
        _count -= intersection.length;
    }
    if (removal.length)
        objj_msgSend(_ranges, "removeObjectsInRange:", removal);
}
}), new objj_method(sel_getUid("shiftIndexesStartingAtIndex:by:"), function $CPIndexSet__shiftIndexesStartingAtIndex_by_(self, _cmd, anIndex, aDelta)
{ with(self)
{
 if (!_count || aDelta == 0)
    return;
    var i = _ranges.length - 1,
        shifted = CPMakeRange(CPNotFound, 0);
    for(; i >= 0; --i)
    {
        var range = _ranges[i],
            maximum = CPMaxRange(range);
        if (anIndex > maximum)
            break;
        if (anIndex > range.location && anIndex < maximum)
        {
            shifted = CPMakeRange(anIndex + aDelta, maximum - anIndex);
            range.length = anIndex - range.location;
            if (aDelta > 0)
                objj_msgSend(_ranges, "insertObject:atIndex:", shifted, i + 1);
            else if (shifted.location < 0)
            {
                shifted.length = CPMaxRange(shifted);
                shifted.location = 0;
            }
            break;
        }
        if ((range.location += aDelta) < 0)
        {
            range.length = CPMaxRange(range);
            range.location = 0;
        }
    }
    if (aDelta < 0)
    {
        var j = i + 1,
            count = _ranges.length,
            shifts = [];
        for (; j < count; ++j)
            objj_msgSend(shifts, "addObject:", _ranges[j]);
        if ((j = i + 1) < count)
        {
            objj_msgSend(_ranges, "removeObjectsInRange:", CPMakeRange(j, count - j));
            for (j = 0, count = shifts.length; j < count; ++j)
                objj_msgSend(self, "addIndexesInRange:", shifts[j]);
        }
        if (shifted.location != CPNotFound)
            objj_msgSend(self, "addIndexesInRange:", shifted);
    }
}
})]);
}
var CPIndexSetCountKey = "CPIndexSetCountKey",
    CPIndexSetCachedRangeIndexKey = "CPIndexSetCachedRangeIndexKey",
    CPIndexSetRangeStringsKey = "CPIndexSetRangeStringsKey";
{
var the_class = objj_getClass("CPIndexSet")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPIndexSet\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPIndexSet__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _count = objj_msgSend(aCoder, "decodeIntForKey:", CPIndexSetCountKey);
        _cachedRangeIndex = objj_msgSend(aCoder, "decodeIntForKey:", CPIndexSetCachedRangeIndexKey);
        _ranges = [];
        var rangeStrings = objj_msgSend(aCoder, "decodeObjectForKey:", CPIndexSetRangeStringsKey),
            index = 0,
            count = rangeStrings.length;
        for (; index < count; ++index)
            _ranges.push(CPRangeFromString(rangeStrings[index]));
    }
    return self;
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPIndexSet__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeInt:forKey:", _count, CPIndexSetCountKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _cachedRangeIndex, CPIndexSetCachedRangeIndexKey);
    var index = 0,
        count = _ranges.length,
        rangeStrings = [];
    for (; index < count; ++index)
        rangeStrings[index] = CPStringFromRange(_ranges[index]);
    objj_msgSend(aCoder, "encodeObject:forKey:", rangeStrings, CPIndexSetRangeStringsKey);
}
})]);
}
{
var the_class = objj_getClass("CPIndexSet")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPIndexSet\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("copy"), function $CPIndexSet__copy(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "class"), "alloc"), "initWithIndexSet:", self);
}
}), new objj_method(sel_getUid("mutableCopy"), function $CPIndexSet__mutableCopy(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "class"), "alloc"), "initWithIndexSet:", self);
}
})]);
}
{var the_class = objj_allocateClassPair(CPIndexSet, "CPMutableIndexSet"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
}
var SOERangeIndex = function(anIndexSet, anIndex)
{
    var ranges = anIndexSet._ranges,
        cachedRangeIndex = 0;
    if(cachedRangeIndex < ranges.length && anIndex >= ranges[cachedRangeIndex].location)
        return cachedRangeIndex;
    return 0;
}
var GOERangeIndex = function(anIndexSet, anIndex)
{
    var ranges = anIndexSet._ranges,
        cachedRangeIndex = anIndexSet._ranges.length;
    if(cachedRangeIndex < ranges.length && anIndex <= ranges[cachedRangeIndex].location)
        return cachedRangeIndex;
    return ranges.length - 1;
}

p;14;CPInvocation.ji;10;CPObject.ji;13;CPException.jc;3770;
{var the_class = objj_allocateClassPair(CPObject, "CPInvocation"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_returnValue"), new objj_ivar("_arguments"), new objj_ivar("_methodSignature")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithMethodSignature:"), function $CPInvocation__initWithMethodSignature_(self, _cmd, aMethodSignature)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _arguments = [];
        _methodSignature = aMethodSignature;
    }
    return self;
}
}), new objj_method(sel_getUid("setSelector:"), function $CPInvocation__setSelector_(self, _cmd, aSelector)
{ with(self)
{
    _arguments[1] = aSelector;
}
}), new objj_method(sel_getUid("selector"), function $CPInvocation__selector(self, _cmd)
{ with(self)
{
    return _arguments[1];
}
}), new objj_method(sel_getUid("setTarget:"), function $CPInvocation__setTarget_(self, _cmd, aTarget)
{ with(self)
{
    _arguments[0] = aTarget;
}
}), new objj_method(sel_getUid("target"), function $CPInvocation__target(self, _cmd)
{ with(self)
{
    return _arguments[0];
}
}), new objj_method(sel_getUid("setArgument:atIndex:"), function $CPInvocation__setArgument_atIndex_(self, _cmd, anArgument, anIndex)
{ with(self)
{
    _arguments[anIndex] = anArgument;
}
}), new objj_method(sel_getUid("argumentAtIndex:"), function $CPInvocation__argumentAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return _arguments[anIndex];
}
}), new objj_method(sel_getUid("setReturnValue:"), function $CPInvocation__setReturnValue_(self, _cmd, aReturnValue)
{ with(self)
{
    _returnValue = aReturnValue;
}
}), new objj_method(sel_getUid("returnValue"), function $CPInvocation__returnValue(self, _cmd)
{ with(self)
{
    return _returnValue;
}
}), new objj_method(sel_getUid("invoke"), function $CPInvocation__invoke(self, _cmd)
{ with(self)
{
    _returnValue = objj_msgSend.apply(objj_msgSend, _arguments);
}
}), new objj_method(sel_getUid("invokeWithTarget:"), function $CPInvocation__invokeWithTarget_(self, _cmd, aTarget)
{ with(self)
{
    _arguments[0] = aTarget;
    _returnValue = objj_msgSend.apply(objj_msgSend, _arguments);
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("invocationWithMethodSignature:"), function $CPInvocation__invocationWithMethodSignature_(self, _cmd, aMethodSignature)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithMethodSignature:", aMethodSignature);
}
})]);
}
var CPInvocationArguments = "CPInvocationArguments",
    CPInvocationReturnValue = "CPInvocationReturnValue";
{
var the_class = objj_getClass("CPInvocation")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPInvocation\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPInvocation__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _returnValue = objj_msgSend(aCoder, "decodeObjectForKey:", CPInvocationReturnValue);
        _arguments = objj_msgSend(aCoder, "decodeObjectForKey:", CPInvocationArguments);
    }
    return self;
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPInvocation__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _returnValue, CPInvocationReturnValue);
    objj_msgSend(aCoder, "encodeObject:forKey:", _arguments, CPInvocationArguments);
}
})]);
}

p;19;CPJSONPConnection.jI;21;Foundation/CPObject.jc;3725;
CPJSONPConnectionCallbacks = {};
{var the_class = objj_allocateClassPair(CPObject, "CPJSONPConnection"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_request"), new objj_ivar("_delegate"), new objj_ivar("_callbackParameter"), new objj_ivar("_scriptTag")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithRequest:callback:delegate:"), function $CPJSONPConnection__initWithRequest_callback_delegate_(self, _cmd, aRequest, aString, aDelegate)
{ with(self)
{
    return objj_msgSend(self, "initWithRequest:callback:delegate:startImmediately:", aRequest, aString, aDelegate,  NO);
}
}), new objj_method(sel_getUid("initWithRequest:callback:delegate:startImmediately:"), function $CPJSONPConnection__initWithRequest_callback_delegate_startImmediately_(self, _cmd, aRequest, aString, aDelegate, shouldStartImmediately)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    _request = aRequest;
    _delegate = aDelegate;
    _callbackParameter = aString;
    CPJSONPConnectionCallbacks["callback"+objj_msgSend(self, "hash")] = function(data)
    {
        objj_msgSend(_delegate, "connection:didReceiveData:", self, data);
        objj_msgSend(self, "removeScriptTag");
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
    };
    if(shouldStartImmediately)
        objj_msgSend(self, "start");
    return self;
}
}), new objj_method(sel_getUid("start"), function $CPJSONPConnection__start(self, _cmd)
{ with(self)
{
    try
    {
        var head = document.getElementsByTagName("head").item(0);
        var source = objj_msgSend(_request, "URL");
        source += (source.indexOf('?') < 0) ? "?" : "&";
        source += _callbackParameter+"=CPJSONPConnectionCallbacks.callback"+objj_msgSend(self, "hash");
        _scriptTag = document.createElement("script");
        _scriptTag.setAttribute("type", "text/javascript");
        _scriptTag.setAttribute("charset", "utf-8");
        _scriptTag.setAttribute("src", source);
        head.appendChild(_scriptTag);
    }
    catch (exception)
    {
        objj_msgSend(_delegate, "connection:didFailWithError:",  self,  exception);
        objj_msgSend(self, "removeScriptTag");
    }
}
}), new objj_method(sel_getUid("removeScriptTag"), function $CPJSONPConnection__removeScriptTag(self, _cmd)
{ with(self)
{
    var head = document.getElementsByTagName("head").item(0);
    if(_scriptTag.parentNode == head)
        head.removeChild(_scriptTag);
    CPJSONPConnectionCallbacks["callback"+objj_msgSend(self, "hash")] = nil;
    delete CPJSONPConnectionCallbacks["callback"+objj_msgSend(self, "hash")];
}
}), new objj_method(sel_getUid("cancel"), function $CPJSONPConnection__cancel(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "removeScriptTag");
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("sendRequest:callback:delegate:"), function $CPJSONPConnection__sendRequest_callback_delegate_(self, _cmd, aRequest, callbackParameter, aDelegate)
{ with(self)
{
    return objj_msgSend(self, "connectionWithRequest:callback:delegate:", aRequest, callbackParameter, aDelegate);
}
}), new objj_method(sel_getUid("connectionWithRequest:callback:delegate:"), function $CPJSONPConnection__connectionWithRequest_callback_delegate_(self, _cmd, aRequest, callbackParameter, aDelegate)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "class"), "alloc"), "initWithRequest:callback:delegate:startImmediately:", aRequest, callbackParameter, aDelegate, YES);;
}
})]);
}

p;17;CPKeyedArchiver.ji;8;CPData.ji;9;CPCoder.ji;9;CPArray.ji;10;CPString.ji;10;CPNumber.ji;14;CPDictionary.ji;9;CPValue.jc;16071;
var CPArchiverReplacementClassNames = nil;
var _CPKeyedArchiverDidEncodeObjectSelector = 1,
    _CPKeyedArchiverWillEncodeObjectSelector = 2,
    _CPKeyedArchiverWillReplaceObjectWithObjectSelector = 4,
    _CPKeyedArchiverDidFinishSelector = 8,
    _CPKeyedArchiverWillFinishSelector = 16;
var _CPKeyedArchiverNullString = "$null",
    _CPKeyedArchiverNullReference = nil,
    _CPKeyedArchiverUIDKey = "CP$UID",
    _CPKeyedArchiverTopKey = "$top",
    _CPKeyedArchiverObjectsKey = "$objects",
    _CPKeyedArchiverArchiverKey = "$archiver",
    _CPKeyedArchiverVersionKey = "$version",
    _CPKeyedArchiverClassNameKey = "$classname",
    _CPKeyedArchiverClassesKey = "$classes",
    _CPKeyedArchiverClassKey = "$class";
var _CPKeyedArchiverStringClass = Nil,
    _CPKeyedArchiverNumberClass = Nil;
{var the_class = objj_allocateClassPair(CPValue, "_CPKeyedArchiverValue"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
}
{var the_class = objj_allocateClassPair(CPCoder, "CPKeyedArchiver"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_delegate"), new objj_ivar("_delegateSelectors"), new objj_ivar("_data"), new objj_ivar("_objects"), new objj_ivar("_UIDs"), new objj_ivar("_conditionalUIDs"), new objj_ivar("_replacementObjects"), new objj_ivar("_replacementClassNames"), new objj_ivar("_plistObject"), new objj_ivar("_plistObjects"), new objj_ivar("_outputFormat")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initForWritingWithMutableData:"), function $CPKeyedArchiver__initForWritingWithMutableData_(self, _cmd, data)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCoder") }, "init");
    if (self)
    {
        _data = data;
        _objects = [];
        _UIDs = objj_msgSend(CPDictionary, "dictionary");
        _conditionalUIDs = objj_msgSend(CPDictionary, "dictionary");
        _replacementObjects = objj_msgSend(CPDictionary, "dictionary");
        _data = data;
        _plistObject = objj_msgSend(CPDictionary, "dictionary");
        _plistObjects = objj_msgSend(CPArray, "arrayWithObject:", _CPKeyedArchiverNullString);
    }
    return self;
}
}), new objj_method(sel_getUid("finishEncoding"), function $CPKeyedArchiver__finishEncoding(self, _cmd)
{ with(self)
{
    if (_delegate && _delegateSelectors & _CPKeyedArchiverWillFinishSelector)
        objj_msgSend(_delegate, "archiverWillFinish:", self);
    var i = 0,
        topObject = _plistObject,
        classes = [];
    for (; i < _objects.length; ++i)
    {
        var object = _objects[i],
            theClass = objj_msgSend(object, "classForKeyedArchiver");
        _plistObject = _plistObjects[objj_msgSend(_UIDs, "objectForKey:", objj_msgSend(object, "hash"))];
        objj_msgSend(object, "encodeWithCoder:", self);
        if (_delegate && _delegateSelectors & _CPKeyedArchiverDidEncodeObjectSelector)
            objj_msgSend(_delegate, "archiver:didEncodeObject:", self, object);
    }
    _plistObject = objj_msgSend(CPDictionary, "dictionary");
    objj_msgSend(_plistObject, "setObject:forKey:", topObject, _CPKeyedArchiverTopKey);
    objj_msgSend(_plistObject, "setObject:forKey:", _plistObjects, _CPKeyedArchiverObjectsKey);
    objj_msgSend(_plistObject, "setObject:forKey:", objj_msgSend(self, "className"), _CPKeyedArchiverArchiverKey);
    objj_msgSend(_plistObject, "setObject:forKey:", "100000", _CPKeyedArchiverVersionKey);
    objj_msgSend(_data, "setPlistObject:", _plistObject);
    if (_delegate && _delegateSelectors & _CPKeyedArchiverDidFinishSelector)
        objj_msgSend(_delegate, "archiverDidFinish:", self);
}
}), new objj_method(sel_getUid("outputFormat"), function $CPKeyedArchiver__outputFormat(self, _cmd)
{ with(self)
{
    return _outputFormat;
}
}), new objj_method(sel_getUid("setOutputFormat:"), function $CPKeyedArchiver__setOutputFormat_(self, _cmd, aPropertyListFormat)
{ with(self)
{
    _outputFormat = aPropertyListFormat;
}
}), new objj_method(sel_getUid("encodeBool:forKey:"), function $CPKeyedArchiver__encodeBool_forKey_(self, _cmd, aBOOL, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self, aBOOL, NO), aKey);
}
}), new objj_method(sel_getUid("encodeDouble:forKey:"), function $CPKeyedArchiver__encodeDouble_forKey_(self, _cmd, aDouble, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self, aDouble, NO), aKey);
}
}), new objj_method(sel_getUid("encodeFloat:forKey:"), function $CPKeyedArchiver__encodeFloat_forKey_(self, _cmd, aFloat, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self, aFloat, NO), aKey);
}
}), new objj_method(sel_getUid("encodeInt:forKey:"), function $CPKeyedArchiver__encodeInt_forKey_(self, _cmd, anInt, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self, anInt, NO), aKey);
}
}), new objj_method(sel_getUid("setDelegate:"), function $CPKeyedArchiver__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    _delegate = aDelegate;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("archiver:didEncodeObject:")))
        _delegateSelectors |= _CPKeyedArchiverDidEncodeObjectSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("archiver:willEncodeObject:")))
        _delegateSelectors |= _CPKeyedArchiverWillEncodeObjectSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("archiver:willReplaceObject:withObject:")))
        _delegateSelectors |= _CPKeyedArchiverWillReplaceObjectWithObjectSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("archiver:didFinishEncoding:")))
        _delegateSelectors |= _CPKeyedArchiverDidFinishEncodingSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("archiver:willFinishEncoding:")))
        _delegateSelectors |= _CPKeyedArchiverWillFinishEncodingSelector;
}
}), new objj_method(sel_getUid("delegate"), function $CPKeyedArchiver__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
}), new objj_method(sel_getUid("encodePoint:forKey:"), function $CPKeyedArchiver__encodePoint_forKey_(self, _cmd, aPoint, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self, CPStringFromPoint(aPoint), NO), aKey);
}
}), new objj_method(sel_getUid("encodeRect:forKey:"), function $CPKeyedArchiver__encodeRect_forKey_(self, _cmd, aRect, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self, CPStringFromRect(aRect), NO), aKey);
}
}), new objj_method(sel_getUid("encodeSize:forKey:"), function $CPKeyedArchiver__encodeSize_forKey_(self, _cmd, aSize, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self, CPStringFromSize(aSize), NO), aKey);
}
}), new objj_method(sel_getUid("encodeConditionalObject:forKey:"), function $CPKeyedArchiver__encodeConditionalObject_forKey_(self, _cmd, anObject, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self, anObject, YES), aKey);
}
}), new objj_method(sel_getUid("encodeNumber:forKey:"), function $CPKeyedArchiver__encodeNumber_forKey_(self, _cmd, aNumber, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self, aNumber, NO), aKey);
}
}), new objj_method(sel_getUid("encodeObject:forKey:"), function $CPKeyedArchiver__encodeObject_forKey_(self, _cmd, anObject, aKey)
{ with(self)
{
    objj_msgSend(_plistObject, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self, anObject, NO), aKey);
}
}), new objj_method(sel_getUid("_encodeArrayOfObjects:forKey:"), function $CPKeyedArchiver___encodeArrayOfObjects_forKey_(self, _cmd, objects, aKey)
{ with(self)
{
    var i = 0,
        count = objects.length,
        references = objj_msgSend(CPArray, "arrayWithCapacity:", count);
    for (; i < count; ++i)
        objj_msgSend(references, "addObject:", _CPKeyedArchiverEncodeObject(self, objects[i], NO));
    objj_msgSend(_plistObject, "setObject:forKey:", references, aKey);
}
}), new objj_method(sel_getUid("_encodeDictionaryOfObjects:forKey:"), function $CPKeyedArchiver___encodeDictionaryOfObjects_forKey_(self, _cmd, aDictionary, aKey)
{ with(self)
{
    var key,
        keys = objj_msgSend(aDictionary, "keyEnumerator"),
        references = objj_msgSend(CPDictionary, "dictionary");
    while (key = objj_msgSend(keys, "nextObject"))
        objj_msgSend(references, "setObject:forKey:", _CPKeyedArchiverEncodeObject(self, objj_msgSend(aDictionary, "objectForKey:", key), NO), key);
    objj_msgSend(_plistObject, "setObject:forKey:", references, aKey);
}
}), new objj_method(sel_getUid("setClassName:forClass:"), function $CPKeyedArchiver__setClassName_forClass_(self, _cmd, aClassName, aClass)
{ with(self)
{
    if (!_replacementClassNames)
        _replacementClassNames = objj_msgSend(CPDictionary, "dictionary");
    objj_msgSend(_replacementClassNames, "setObject:forKey:", aClassName, CPStringFromClass(aClass));
}
}), new objj_method(sel_getUid("classNameForClass:"), function $CPKeyedArchiver__classNameForClass_(self, _cmd, aClass)
{ with(self)
{
    if (!_replacementClassNames)
        return aClass.name;
    var className = objj_msgSend(_replacementClassNames, "objectForKey:", CPStringFromClass(aClassName));
    return className ? className : aClass.name;
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $CPKeyedArchiver__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(CPKeyedArchiver, "class"))
        return;
    _CPKeyedArchiverStringClass = objj_msgSend(CPString, "class");
    _CPKeyedArchiverNumberClass = objj_msgSend(CPNumber, "class");
    _CPKeyedArchiverNullReference = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", 0, _CPKeyedArchiverUIDKey);
}
}), new objj_method(sel_getUid("allowsKeyedCoding"), function $CPKeyedArchiver__allowsKeyedCoding(self, _cmd)
{ with(self)
{
    return YES;
}
}), new objj_method(sel_getUid("archivedDataWithRootObject:"), function $CPKeyedArchiver__archivedDataWithRootObject_(self, _cmd, anObject)
{ with(self)
{
    var data = objj_msgSend(CPData, "dataWithPlistObject:", nil),
        archiver = objj_msgSend(objj_msgSend(self, "alloc"), "initForWritingWithMutableData:", data);
    objj_msgSend(archiver, "encodeObject:forKey:", anObject, "root");
    objj_msgSend(archiver, "finishEncoding");
    return data;
}
}), new objj_method(sel_getUid("setClassName:forClass:"), function $CPKeyedArchiver__setClassName_forClass_(self, _cmd, aClassName, aClass)
{ with(self)
{
    if (!CPArchiverReplacementClassNames)
        CPArchiverReplacementClassNames = objj_msgSend(CPDictionary, "dictionary");
    objj_msgSend(CPArchiverReplacementClassNames, "setObject:forKey:", aClassName, CPStringFromClass(aClass));
}
}), new objj_method(sel_getUid("classNameForClass:"), function $CPKeyedArchiver__classNameForClass_(self, _cmd, aClass)
{ with(self)
{
    if (!CPArchiverReplacementClassNames)
        return aClass.name;
    var className = objj_msgSend(CPArchiverReplacementClassNames, "objectForKey:", CPStringFromClass(aClassName));
    return className ? className : aClass.name;
}
})]);
}
var _CPKeyedArchiverEncodeObject = function(self, anObject, isConditional)
{
    if (anObject !== nil && !anObject.isa)
        anObject = objj_msgSend(_CPKeyedArchiverValue, "valueWithJSObject:", anObject);
    var hash = objj_msgSend(anObject, "hash"),
        object = objj_msgSend(self._replacementObjects, "objectForKey:", hash);
    if (object === nil)
    {
        object = objj_msgSend(anObject, "replacementObjectForKeyedArchiver:", self);
        if (self._delegate)
        {
            if (object !== anObject && self._delegateSelectors & _CPKeyedArchiverWillReplaceObjectWithObjectSelector)
                objj_msgSend(self._delegate, "archiver:willReplaceObject:withObject:", self, anObject, object);
            if (self._delegateSelectors & _CPKeyedArchiverWillEncodeObjectSelector)
            {
                anObject = objj_msgSend(self._delegate, "archiver:willEncodeObject:", self, object);
                if (anObject !== object && self._delegateSelectors & _CPKeyedArchiverWillReplaceObjectWithObjectSelector)
                    objj_msgSend(self._delegate, "archiver:willReplaceObject:withObject:", self, object, anObject);
                object = anObject;
            }
        }
        objj_msgSend(self._replacementObjects, "setObject:forKey:", object, hash);
    }
    if (object === nil)
        return _CPKeyedArchiverNullReference;
    var UID = objj_msgSend(self._UIDs, "objectForKey:", hash = objj_msgSend(object, "hash"));
    if (UID === nil)
    {
        if (isConditional)
        {
            if ((UID = objj_msgSend(self._conditionalUIDs, "objectForKey:", hash)) === nil)
            {
                objj_msgSend(self._conditionalUIDs, "setObject:forKey:", UID = objj_msgSend(self._plistObjects, "count"), hash);
                objj_msgSend(self._plistObjects, "addObject:", _CPKeyedArchiverNullString);
            }
        }
        else
        {
            var theClass = objj_msgSend(object, "classForKeyedArchiver"),
                plistObject = nil;
            if ((theClass === _CPKeyedArchiverStringClass) || (theClass === _CPKeyedArchiverNumberClass))
                plistObject = object;
            else
            {
                plistObject = objj_msgSend(CPDictionary, "dictionary");
                objj_msgSend(self._objects, "addObject:", object);
                var className = objj_msgSend(self, "classNameForClass:", theClass);
                if (!className)
                    className = objj_msgSend(objj_msgSend(self, "class"), "classNameForClass:", theClass);
                if (!className)
                    className = theClass.name;
                else
                    theClass = window[className];
                var classUID = objj_msgSend(self._UIDs, "objectForKey:", className);
                if (!classUID)
                {
                    var plistClass = objj_msgSend(CPDictionary, "dictionary"),
                        hierarchy = [];
                    objj_msgSend(plistClass, "setObject:forKey:", className, _CPKeyedArchiverClassNameKey);
                    do
                    {
                        objj_msgSend(hierarchy, "addObject:", CPStringFromClass(theClass));
                    } while (theClass = objj_msgSend(theClass, "superclass"));
                    objj_msgSend(plistClass, "setObject:forKey:", hierarchy, _CPKeyedArchiverClassesKey);
                    classUID = objj_msgSend(self._plistObjects, "count");
                    objj_msgSend(self._plistObjects, "addObject:", plistClass);
                    objj_msgSend(self._UIDs, "setObject:forKey:", classUID, className);
                }
                objj_msgSend(plistObject, "setObject:forKey:", objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", classUID, _CPKeyedArchiverUIDKey), _CPKeyedArchiverClassKey);
            }
            UID = objj_msgSend(self._conditionalUIDs, "objectForKey:", hash);
            if (UID !== nil)
            {
                objj_msgSend(self._UIDs, "setObject:forKey:", UID, hash);
                objj_msgSend(self._plistObjects, "replaceObjectAtIndex:withObject:", UID, plistObject);
            }
            else
            {
                objj_msgSend(self._UIDs, "setObject:forKey:", UID = objj_msgSend(self._plistObjects, "count"), hash);
                objj_msgSend(self._plistObjects, "addObject:", plistObject);
            }
        }
    }
    return objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", UID, _CPKeyedArchiverUIDKey);
}

p;19;CPKeyedUnarchiver.ji;8;CPNull.ji;9;CPCoder.jc;12998;
var _CPKeyedUnarchiverCannotDecodeObjectOfClassNameOriginalClassesSelector = 1,
    _CPKeyedUnarchiverDidDecodeObjectSelector = 1 << 1,
    _CPKeyedUnarchiverWillReplaceObjectWithObjectSelector = 1 << 2,
    _CPKeyedUnarchiverWillFinishSelector = 1 << 3,
    _CPKeyedUnarchiverDidFinishSelector = 1 << 4;
var _CPKeyedArchiverNullString = "$null"
    _CPKeyedArchiverUIDKey = "CP$UID",
    _CPKeyedArchiverTopKey = "$top",
    _CPKeyedArchiverObjectsKey = "$objects",
    _CPKeyedArchiverArchiverKey = "$archiver",
    _CPKeyedArchiverVersionKey = "$version",
    _CPKeyedArchiverClassNameKey = "$classname",
    _CPKeyedArchiverClassesKey = "$classes",
    _CPKeyedArchiverClassKey = "$class";
var _CPKeyedUnarchiverArrayClass = Nil,
    _CPKeyedUnarchiverStringClass = Nil,
    _CPKeyedUnarchiverDictionaryClass = Nil,
    _CPKeyedUnarchiverNumberClass = Nil,
    _CPKeyedUnarchiverDataClass = Nil,
    _CPKeyedUnarchiverArchiverValueClass = Nil;
{var the_class = objj_allocateClassPair(CPCoder, "CPKeyedUnarchiver"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_delegate"), new objj_ivar("_delegateSelectors"), new objj_ivar("_data"), new objj_ivar("_replacementClasses"), new objj_ivar("_objects"), new objj_ivar("_archive"), new objj_ivar("_plistObject"), new objj_ivar("_plistObjects")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initForReadingWithData:"), function $CPKeyedUnarchiver__initForReadingWithData_(self, _cmd, data)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPCoder") }, "init");
    if (self)
    {
        _archive = objj_msgSend(data, "plistObject");
        _objects = objj_msgSend(CPArray, "arrayWithObject:", objj_msgSend(CPNull, "null"));
        _plistObject = objj_msgSend(_archive, "objectForKey:", _CPKeyedArchiverTopKey);
        _plistObjects = objj_msgSend(_archive, "objectForKey:", _CPKeyedArchiverObjectsKey);
        _replacementClasses = objj_msgSend(CPDictionary, "dictionary");
    }
    return self;
}
}), new objj_method(sel_getUid("containsValueForKey:"), function $CPKeyedUnarchiver__containsValueForKey_(self, _cmd, aKey)
{ with(self)
{
    return objj_msgSend(_plistObject, "objectForKey:", aKey) != nil;
}
}), new objj_method(sel_getUid("_decodeDictionaryOfObjectsForKey:"), function $CPKeyedUnarchiver___decodeDictionaryOfObjectsForKey_(self, _cmd, aKey)
{ with(self)
{
    var object = objj_msgSend(_plistObject, "objectForKey:", aKey);
    if (objj_msgSend(object, "isKindOfClass:", _CPKeyedUnarchiverDictionaryClass))
    {
        var key,
            keys = objj_msgSend(object, "keyEnumerator"),
            dictionary = objj_msgSend(CPDictionary, "dictionary");
        while (key = objj_msgSend(keys, "nextObject"))
            objj_msgSend(dictionary, "setObject:forKey:", _CPKeyedUnarchiverDecodeObjectAtIndex(self, objj_msgSend(objj_msgSend(object, "objectForKey:", key), "objectForKey:", _CPKeyedArchiverUIDKey)), key);
        return dictionary;
    }
    return nil;
}
}), new objj_method(sel_getUid("decodeBoolForKey:"), function $CPKeyedUnarchiver__decodeBoolForKey_(self, _cmd, aKey)
{ with(self)
{
    return objj_msgSend(self, "decodeObjectForKey:", aKey);
}
}), new objj_method(sel_getUid("decodeFloatForKey:"), function $CPKeyedUnarchiver__decodeFloatForKey_(self, _cmd, aKey)
{ with(self)
{
    return objj_msgSend(self, "decodeObjectForKey:", aKey);
}
}), new objj_method(sel_getUid("decodeDoubleForKey:"), function $CPKeyedUnarchiver__decodeDoubleForKey_(self, _cmd, aKey)
{ with(self)
{
    return objj_msgSend(self, "decodeObjectForKey:", aKey);
}
}), new objj_method(sel_getUid("decodeIntForKey:"), function $CPKeyedUnarchiver__decodeIntForKey_(self, _cmd, aKey)
{ with(self)
{
    return objj_msgSend(self, "decodeObjectForKey:", aKey);
}
}), new objj_method(sel_getUid("decodePointForKey:"), function $CPKeyedUnarchiver__decodePointForKey_(self, _cmd, aKey)
{ with(self)
{
    var object = objj_msgSend(self, "decodeObjectForKey:", aKey);
    if(object)
        return CPPointFromString(object);
    else
        return CPPointMake(0.0, 0.0);
}
}), new objj_method(sel_getUid("decodeRectForKey:"), function $CPKeyedUnarchiver__decodeRectForKey_(self, _cmd, aKey)
{ with(self)
{
    var object = objj_msgSend(self, "decodeObjectForKey:", aKey);
    if(object)
        return CPRectFromString(object);
    else
        return CPRectMakeZero();
}
}), new objj_method(sel_getUid("decodeSizeForKey:"), function $CPKeyedUnarchiver__decodeSizeForKey_(self, _cmd, aKey)
{ with(self)
{
    var object = objj_msgSend(self, "decodeObjectForKey:", aKey);
    if(object)
        return CPSizeFromString(object);
    else
        return CPSizeMake(0.0, 0.0);
}
}), new objj_method(sel_getUid("decodeObjectForKey:"), function $CPKeyedUnarchiver__decodeObjectForKey_(self, _cmd, aKey)
{ with(self)
{
    var object = objj_msgSend(_plistObject, "objectForKey:", aKey);
    if (objj_msgSend(object, "isKindOfClass:", _CPKeyedUnarchiverDictionaryClass))
        return _CPKeyedUnarchiverDecodeObjectAtIndex(self, objj_msgSend(object, "objectForKey:", _CPKeyedArchiverUIDKey));
    else if (objj_msgSend(object, "isKindOfClass:", _CPKeyedUnarchiverNumberClass) || objj_msgSend(object, "isKindOfClass:", _CPKeyedUnarchiverDataClass))
        return object;
    else if (objj_msgSend(object, "isKindOfClass:", _CPKeyedUnarchiverArrayClass))
    {
        var index = 0,
            count = object.length,
            array = [];
        for (; index < count; ++index)
            array[index] = _CPKeyedUnarchiverDecodeObjectAtIndex(self, objj_msgSend(object[index], "objectForKey:", _CPKeyedArchiverUIDKey));
        return array;
    }
    return nil;
}
}), new objj_method(sel_getUid("decodeBytesForKey:"), function $CPKeyedUnarchiver__decodeBytesForKey_(self, _cmd, aKey)
{ with(self)
{
    var data = objj_msgSend(self, "decodeObjectForKey:", aKey);
    if (objj_msgSend(data, "isKindOfClass:", objj_msgSend(CPData, "class")))
        return data.bytes;
    return nil;
}
}), new objj_method(sel_getUid("finishDecoding"), function $CPKeyedUnarchiver__finishDecoding(self, _cmd)
{ with(self)
{
    if (_delegateSelectors & _CPKeyedUnarchiverWillFinishSelector)
        objj_msgSend(_delegate, "unarchiverWillFinish:", self);
    if (_delegateSelectors & _CPKeyedUnarchiverDidFinishSelector)
        objj_msgSend(_delegate, "unarchiverDidFinish:", self);
}
}), new objj_method(sel_getUid("delegate"), function $CPKeyedUnarchiver__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
}), new objj_method(sel_getUid("setDelegate:"), function $CPKeyedUnarchiver__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    _delegate = aDelegate;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("unarchiver:cannotDecodeObjectOfClassName:originalClasses:")))
        _delegateSelectors |= _CPKeyedUnarchiverCannotDecodeObjectOfClassNameOriginalClassesSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("unarchiver:didDecodeObject:")))
        _delegateSelectors |= _CPKeyedUnarchiverDidDecodeObjectSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("unarchiver:willReplaceObject:withObject:")))
        _delegateSelectors |= _CPKeyedUnarchiverWillReplaceObjectWithObjectSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("unarchiverWillFinish:")))
        _delegateSelectors |= _CPKeyedUnarchiverWilFinishSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("unarchiverDidFinish:")))
        _delegateSelectors |= _CPKeyedUnarchiverDidFinishSelector;
}
}), new objj_method(sel_getUid("setClass:forClassName:"), function $CPKeyedUnarchiver__setClass_forClassName_(self, _cmd, aClass, aClassName)
{ with(self)
{
    objj_msgSend(_replacementClasses, "setObject:forKey:", aClass, aClassName);
}
}), new objj_method(sel_getUid("classForClassName:"), function $CPKeyedUnarchiver__classForClassName_(self, _cmd, aClassName)
{ with(self)
{
    return objj_msgSend(_replacementClasses, "objectForKey:", aClassName);
}
}), new objj_method(sel_getUid("allowsKeyedCoding"), function $CPKeyedUnarchiver__allowsKeyedCoding(self, _cmd)
{ with(self)
{
    return YES;
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $CPKeyedUnarchiver__initialize(self, _cmd)
{ with(self)
{
    if (self !== objj_msgSend(CPKeyedUnarchiver, "class"))
        return;
    _CPKeyedUnarchiverArrayClass = objj_msgSend(CPArray, "class");
    _CPKeyedUnarchiverStringClass = objj_msgSend(CPString, "class");
    _CPKeyedUnarchiverDictionaryClass = objj_msgSend(CPDictionary, "class");
    _CPKeyedUnarchiverNumberClass = objj_msgSend(CPNumber, "class");
    _CPKeyedUnarchiverDataClass = objj_msgSend(CPData, "class");
    _CPKeyedUnarchiverArchiverValueClass = objj_msgSend(_CPKeyedArchiverValue, "class");
}
}), new objj_method(sel_getUid("unarchiveObjectWithData:"), function $CPKeyedUnarchiver__unarchiveObjectWithData_(self, _cmd, data)
{ with(self)
{
    var unarchiver = objj_msgSend(objj_msgSend(self, "alloc"), "initForReadingWithData:", data),
        object = objj_msgSend(unarchiver, "decodeObjectForKey:", "root");
    objj_msgSend(unarchiver, "finishDecoding");
    return object;
}
}), new objj_method(sel_getUid("unarchiveObjectWithFile:"), function $CPKeyedUnarchiver__unarchiveObjectWithFile_(self, _cmd, aFilePath)
{ with(self)
{
}
}), new objj_method(sel_getUid("unarchiveObjectWithFile:asynchronously:"), function $CPKeyedUnarchiver__unarchiveObjectWithFile_asynchronously_(self, _cmd, aFilePath, aFlag)
{ with(self)
{
}
})]);
}
var _CPKeyedUnarchiverDecodeObjectAtIndex = function(self, anIndex)
{
    var object = self._objects[anIndex];
    if (object)
        if (object == self._objects[0])
            return nil;
        else
            return object;
    var object,
        plistObject = self._plistObjects[anIndex];
    if (objj_msgSend(plistObject, "isKindOfClass:", _CPKeyedUnarchiverDictionaryClass))
    {
        var plistClass = self._plistObjects[objj_msgSend(objj_msgSend(plistObject, "objectForKey:", _CPKeyedArchiverClassKey), "objectForKey:", _CPKeyedArchiverUIDKey)],
            className = objj_msgSend(plistClass, "objectForKey:", _CPKeyedArchiverClassNameKey),
            classes = objj_msgSend(plistClass, "objectForKey:", _CPKeyedArchiverClassesKey),
            theClass = objj_msgSend(self, "classForClassName:", className);
        if (!theClass)
            theClass = CPClassFromString(className);
        var savedPlistObject = self._plistObject;
        self._plistObject = plistObject;
        object = objj_msgSend(theClass, "allocWithCoder:", self);
        self._objects[anIndex] = object;
        var processedObject = objj_msgSend(object, "initWithCoder:", self);
        self._plistObject = savedPlistObject;
        if (processedObject != object)
        {
            if (self._delegateSelectors & _CPKeyedUnarchiverWillReplaceObjectWithObjectSelector)
                objj_msgSend(self._delegate, "unarchiver:willReplaceObject:withObject:", self, object, processedObject);
            object = processedObject;
            self._objects[anIndex] = processedObject;
        }
        processedObject = objj_msgSend(object, "awakeAfterUsingCoder:", self);
        if (processedObject != object)
        {
            if (self._delegateSelectors & _CPKeyedUnarchiverWillReplaceObjectWithObjectSelector)
                objj_msgSend(self._delegate, "unarchiver:willReplaceObject:withObject:", self, object, processedObject);
            object = processedObject;
            self._objects[anIndex] = processedObject;
        }
        if (self._delegate)
        {
            if (self._delegateSelectors & _CPKeyedUnarchiverDidDecodeObjectSelector)
                processedObject = objj_msgSend(self._delegate, "unarchiver:didDecodeObject:", self, object);
            if (processedObject != object)
            {
                if (self._delegateSelectors & _CPKeyedUnarchiverWillReplaceObjectWithObjectSelector)
                    objj_msgSend(self._delegate, "unarchiver:willReplaceObject:withObject:", self, object, processedObject);
                object = processedObject;
                self._objects[anIndex] = processedObject;
            }
        }
    }
    else
    {
        self._objects[anIndex] = object = plistObject;
        if (objj_msgSend(object, "class") == _CPKeyedUnarchiverStringClass)
        {
            if (object == _CPKeyedArchiverNullString)
            {
                self._objects[anIndex] = self._objects[0];
                return nil;
            }
            else
                self._objects[anIndex] = object = plistObject;
        }
    }
    if (objj_msgSend(object, "isMemberOfClass:", _CPKeyedUnarchiverArchiverValueClass))
        object = objj_msgSend(object, "JSObject");
    return object;
}

p;18;CPKeyValueCoding.ji;9;CPArray.ji;10;CPObject.ji;14;CPDictionary.jc;8592;
var CPObjectAccessorsForClass = nil,
    CPObjectModifiersForClass = nil;
CPUndefinedKeyException = "CPUndefinedKeyException";
CPTargetObjectUserInfoKey = "CPTargetObjectUserInfoKey";
CPUnknownUserInfoKey = "CPUnknownUserInfoKey";
{
var the_class = objj_getClass("CPObject")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPObject\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("_ivarForKey:"), function $CPObject___ivarForKey_(self, _cmd, aKey)
{ with(self)
{
    var ivar = '_' + aKey;
    if (typeof self[ivar] != "undefined")
        return ivar;
    var isKey = "is" + aKey.charAt(0).toUpperCase() + aKey.substr(1);
    ivar = '_' + isKey;
    if (typeof self[ivar] != "undefined")
        return ivar;
    ivar = aKey;
    if (typeof self[ivar] != "undefined")
        return ivar;
    ivar = isKey;
    if (typeof self[ivar] != "undefined")
        return ivar;
    return nil;
}
}), new objj_method(sel_getUid("valueForKey:"), function $CPObject__valueForKey_(self, _cmd, aKey)
{ with(self)
{
    var theClass = objj_msgSend(self, "class"),
        selector = objj_msgSend(theClass, "_accessorForKey:", aKey);
    if (selector)
        return objj_msgSend(self, selector);
    if(objj_msgSend(theClass, "accessInstanceVariablesDirectly"))
    {
        var ivar = objj_msgSend(self, "_ivarForKey:", aKey);
        if (ivar)
            return self[ivar];
    }
    return objj_msgSend(self, "valueForUndefinedKey:", aKey);
}
}), new objj_method(sel_getUid("valueForKeyPath:"), function $CPObject__valueForKeyPath_(self, _cmd, aKeyPath)
{ with(self)
{
    var keys = aKeyPath.split("."),
        index = 0,
        count = keys.length,
        value = self;
    for(; index < count; ++index)
        value = objj_msgSend(value, "valueForKey:", keys[index]);
    return value;
}
}), new objj_method(sel_getUid("dictionaryWithValuesForKeys:"), function $CPObject__dictionaryWithValuesForKeys_(self, _cmd, keys)
{ with(self)
{
    var index = 0,
        count = keys.length,
        dictionary = objj_msgSend(CPDictionary, "dictionary");
    for (; index < count; ++index)
    {
        var key = keys[index],
            value = objj_msgSend(self, "valueForKey:", key);
        if (value === nil)
            objj_msgSend(dictionary, "setObject:forKey:", objj_msgSend(CPNull, "null"), key);
        else
            objj_msgSend(dictionary, "setObject:forKey:", value, key);
    }
    return dictionary;
}
}), new objj_method(sel_getUid("valueForUndefinedKey:"), function $CPObject__valueForUndefinedKey_(self, _cmd, aKey)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPException, "exceptionWithName:reason:userInfo:", CPUndefinedKeyException, objj_msgSend(self, "description") + " is not key value coding-compliant for the key " + aKey, objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [self, aKey], [CPTargetObjectUserInfoKey, CPUnknownUserInfoKey])), "raise");
}
}), new objj_method(sel_getUid("setValue:forKeyPath:"), function $CPObject__setValue_forKeyPath_(self, _cmd, aValue, aKeyPath)
{ with(self)
{
    if (!aKeyPath) aKeyPath = "self";
    var i = 0,
        keys = aKeyPath.split("."),
        count = keys.length - 1,
        owner = self;
    for(; i < count; ++i)
        owner = objj_msgSend(owner, "valueForKey:", keys[i]);
    objj_msgSend(owner, "setValue:forKey:", aValue, keys[i]);
}
}), new objj_method(sel_getUid("setValue:forKey:"), function $CPObject__setValue_forKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    var theClass = objj_msgSend(self, "class"),
        selector = objj_msgSend(theClass, "_modifierForKey:", aKey);
    if (selector)
        return objj_msgSend(self, selector, aValue);
    if(objj_msgSend(theClass, "accessInstanceVariablesDirectly"))
    {
        var ivar = objj_msgSend(self, "_ivarForKey:", aKey);
        if (ivar)
        {
            objj_msgSend(self, "willChangeValueForKey:", aKey);
            self[ivar] = aValue;
            objj_msgSend(self, "didChangeValueForKey:", aKey);
            return;
        }
    }
    objj_msgSend(self, "setValue:forUndefinedKey:", aValue, aKey);
}
}), new objj_method(sel_getUid("setValue:forUndefinedKey:"), function $CPObject__setValue_forUndefinedKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPException, "exceptionWithName:reason:userInfo:", CPUndefinedKeyException, objj_msgSend(self, "description") + " is not key value coding-compliant for the key " + aKey, objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [self, aKey], [CPTargetObjectUserInfoKey, CPUnknownUserInfoKey])), "raise");
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("accessInstanceVariablesDirectly"), function $CPObject__accessInstanceVariablesDirectly(self, _cmd)
{ with(self)
{
    return YES;
}
}), new objj_method(sel_getUid("_accessorForKey:"), function $CPObject___accessorForKey_(self, _cmd, aKey)
{ with(self)
{
    if (!CPObjectAccessorsForClass)
        CPObjectAccessorsForClass = objj_msgSend(CPDictionary, "dictionary");
    var hash = objj_msgSend(isa, "hash"),
        selector = nil,
        accessors = objj_msgSend(CPObjectAccessorsForClass, "objectForKey:", hash);
    if (accessors)
    {
        selector = objj_msgSend(accessors, "objectForKey:", aKey);
        if (selector)
            return selector === objj_msgSend(CPNull, "null") ? nil : selector;
    }
    else
    {
        accessors = objj_msgSend(CPDictionary, "dictionary");
        objj_msgSend(CPObjectAccessorsForClass, "setObject:forKey:", accessors, hash);
    }
    var capitalizedKey = aKey.charAt(0).toUpperCase() + aKey.substr(1);
    if (objj_msgSend(self, "instancesRespondToSelector:", selector = CPSelectorFromString("get" + capitalizedKey)) ||
        objj_msgSend(self, "instancesRespondToSelector:", selector = CPSelectorFromString(aKey)) ||
        objj_msgSend(self, "instancesRespondToSelector:", selector = CPSelectorFromString("is" + capitalizedKey)) ||
        objj_msgSend(self, "instancesRespondToSelector:", selector = CPSelectorFromString("_get" + capitalizedKey)) ||
        objj_msgSend(self, "instancesRespondToSelector:", selector = CPSelectorFromString("_" + aKey)) ||
        objj_msgSend(self, "instancesRespondToSelector:", selector = CPSelectorFromString("_is" + capitalizedKey)))
    {
        objj_msgSend(accessors, "setObject:forKey:", selector, aKey);
        return selector;
    }
    objj_msgSend(accessors, "setObject:forKey:", objj_msgSend(CPNull, "null"), aKey);
    return nil;
}
}), new objj_method(sel_getUid("_modifierForKey:"), function $CPObject___modifierForKey_(self, _cmd, aKey)
{ with(self)
{
    if (!CPObjectModifiersForClass)
        CPObjectModifiersForClass = objj_msgSend(CPDictionary, "dictionary");
    var hash = objj_msgSend(isa, "hash"),
        selector = nil,
        modifiers = objj_msgSend(CPObjectModifiersForClass, "objectForKey:", hash);
    if (modifiers)
    {
        selector = objj_msgSend(modifiers, "objectForKey:", aKey);
        if (selector)
            return selector === objj_msgSend(CPNull, "null") ? nil : selector;
    }
    else
    {
        modifiers = objj_msgSend(CPDictionary, "dictionary");
        objj_msgSend(CPObjectModifiersForClass, "setObject:forKey:", modifiers, hash);
    }
    if (selector)
        return selector === objj_msgSend(CPNull, "null") ? nil : selector;
    var capitalizedKey = aKey.charAt(0).toUpperCase() + aKey.substr(1) + ':';
    if (objj_msgSend(self, "instancesRespondToSelector:", selector = CPSelectorFromString("set" + capitalizedKey)) ||
        objj_msgSend(self, "instancesRespondToSelector:", selector = CPSelectorFromString("_set" + capitalizedKey)))
    {
        objj_msgSend(modifiers, "setObject:forKey:", selector, aKey);
        return selector;
    }
    objj_msgSend(modifiers, "setObject:forKey:", objj_msgSend(CPNull, "null"), aKey);
    return nil;
}
})]);
}
{
var the_class = objj_getClass("CPDictionary")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPDictionary\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("valueForKey:"), function $CPDictionary__valueForKey_(self, _cmd, aKey)
{ with(self)
{
 return objj_msgSend(self, "objectForKey:", aKey);
}
}), new objj_method(sel_getUid("setValue:forKey:"), function $CPDictionary__setValue_forKey_(self, _cmd, aValue, aKey)
{ with(self)
{
    objj_msgSend(self, "setObject:forKey:", aValue, aKey);
}
})]);
}
i;13;CPArray+KVO.jp;21;CPKeyValueObserving.ji;9;CPArray.ji;14;CPDictionary.ji;13;CPException.ji;10;CPObject.ji;7;CPSet.jc;21303;
{
var the_class = objj_getClass("CPObject")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPObject\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("willChangeValueForKey:"), function $CPObject__willChangeValueForKey_(self, _cmd, aKey)
{ with(self)
{
}
}), new objj_method(sel_getUid("didChangeValueForKey:"), function $CPObject__didChangeValueForKey_(self, _cmd, aKey)
{ with(self)
{
}
}), new objj_method(sel_getUid("willChange:valuesAtIndexes:forKey:"), function $CPObject__willChange_valuesAtIndexes_forKey_(self, _cmd, change, indexes, key)
{ with(self)
{
}
}), new objj_method(sel_getUid("didChange:valuesAtIndexes:forKey:"), function $CPObject__didChange_valuesAtIndexes_forKey_(self, _cmd, change, indexes, key)
{ with(self)
{
}
}), new objj_method(sel_getUid("addObserver:forKeyPath:options:context:"), function $CPObject__addObserver_forKeyPath_options_context_(self, _cmd, anObserver, aPath, options, aContext)
{ with(self)
{
    if (!anObserver || !aPath)
        return;
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_addObserver:forKeyPath:options:context:", anObserver, aPath, options, aContext);
}
}), new objj_method(sel_getUid("removeObserver:forKeyPath:"), function $CPObject__removeObserver_forKeyPath_(self, _cmd, anObserver, aPath)
{ with(self)
{
    if (!anObserver || !aPath)
        return;
    objj_msgSend(objj_msgSend(KVOProxyMap, "objectForKey:", objj_msgSend(self, "hash")), "_removeObserver:forKeyPath:", anObserver, aPath);
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("automaticallyNotifiesObserversForKey:"), function $CPObject__automaticallyNotifiesObserversForKey_(self, _cmd, aKey)
{ with(self)
{
    return YES;
}
}), new objj_method(sel_getUid("keyPathsForValuesAffectingValueForKey:"), function $CPObject__keyPathsForValuesAffectingValueForKey_(self, _cmd, aKey)
{ with(self)
{
    var capitalizedKey = aKey.charAt(0).toUpperCase()+aKey.substring(1);
        selector = "keyPathsForValuesAffectingValueFor"+capitalizedKey;
    if (objj_msgSend(objj_msgSend(self, "class"), "respondsToSelector:", selector))
        return objj_msgSend(objj_msgSend(self, "class"), selector);
    return objj_msgSend(CPSet, "set");
}
})]);
}
CPKeyValueObservingOptionNew = 1 << 0;
CPKeyValueObservingOptionOld = 1 << 1;
CPKeyValueObservingOptionInitial = 1 << 2;
CPKeyValueObservingOptionPrior = 1 << 3;
CPKeyValueChangeKindKey = "CPKeyValueChangeKindKey";
CPKeyValueChangeNewKey = "CPKeyValueChangeNewKey";
CPKeyValueChangeOldKey = "CPKeyValueChangeOldKey";
CPKeyValueChangeIndexesKey = "CPKeyValueChangeIndexesKey";
CPKeyValueChangeNotificationIsPriorKey = "CPKeyValueChangeNotificationIsPriorKey";
CPKeyValueChangeSetting = 1;
CPKeyValueChangeInsertion = 2;
CPKeyValueChangeRemoval = 3;
CPKeyValueChangeReplacement = 4;
var kvoNewAndOld = CPKeyValueObservingOptionNew|CPKeyValueObservingOptionOld;
var KVOProxyMap = objj_msgSend(CPDictionary, "dictionary"),
    DependentKeysMap = objj_msgSend(CPDictionary, "dictionary");
{var the_class = objj_allocateClassPair(CPObject, "_CPKVOProxy"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_targetObject"), new objj_ivar("_nativeClass"), new objj_ivar("_changesForKey"), new objj_ivar("_observersForKey"), new objj_ivar("_replacedKeys")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithTarget:"), function $_CPKVOProxy__initWithTarget_(self, _cmd, aTarget)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    _targetObject = aTarget;
    _nativeClass = objj_msgSend(aTarget, "class");
    _observersForKey = objj_msgSend(CPDictionary, "dictionary");
    _changesForKey = objj_msgSend(CPDictionary, "dictionary");
    _replacedKeys = objj_msgSend(CPSet, "set");
    return self;
}
}), new objj_method(sel_getUid("_replaceClass"), function $_CPKVOProxy___replaceClass(self, _cmd)
{ with(self)
{
    var currentClass = _nativeClass,
        kvoClassName = "$KVO_"+class_getName(_nativeClass),
        existingKVOClass = objj_lookUpClass(kvoClassName);
    if (existingKVOClass)
    {
        _targetObject.isa = existingKVOClass;
        return;
    }
    var kvoClass = objj_allocateClassPair(currentClass, kvoClassName);
    objj_registerClassPair(kvoClass);
    _class_initialize(kvoClass);
    var methodList = _CPKVOModelSubclass.method_list,
        count = methodList.length;
    for (var i=0; i<count; i++)
    {
        var method = methodList[i];
        class_addMethod(kvoClass, method_getName(method), method_getImplementation(method), "");
    }
    _targetObject.isa = kvoClass;
}
}), new objj_method(sel_getUid("_replaceSetterForKey:"), function $_CPKVOProxy___replaceSetterForKey_(self, _cmd, aKey)
{ with(self)
{
    if (objj_msgSend(_replacedKeys, "containsObject:", aKey) || !objj_msgSend(_nativeClass, "automaticallyNotifiesObserversForKey:", aKey))
        return;
    var currentClass = _nativeClass,
        capitalizedKey = aKey.charAt(0).toUpperCase() + aKey.substring(1),
        found = false,
        replacementMethods = [
            "set"+capitalizedKey+":", _kvoMethodForMethod,
            "_set"+capitalizedKey+":", _kvoMethodForMethod,
            "insertObject:in"+capitalizedKey+"AtIndex:", _kvoInsertMethodForMethod,
            "replaceObjectIn"+capitalizedKey+"AtIndex:withObject:", _kvoReplaceMethodForMethod,
            "removeObjectFrom"+capitalizedKey+"AtIndex:", _kvoRemoveMethodForMethod
        ];
    for (var i=0, count=replacementMethods.length; i<count; i+=2)
    {
        var theSelector = sel_getName(replacementMethods[i]),
            theReplacementMethod = replacementMethods[i+1];
        if (objj_msgSend(_nativeClass, "instancesRespondToSelector:", theSelector))
        {
            var theMethod = class_getInstanceMethod(_nativeClass, theSelector);
            class_addMethod(_targetObject.isa, theSelector, theReplacementMethod(aKey, theMethod), "");
            found = true;
        }
    }
    if (found)
        return;
    var composedOfKeys = objj_msgSend(objj_msgSend(_nativeClass, "keyPathsForValuesAffectingValueForKey:", aKey), "allObjects");
    if (!composedOfKeys)
        return;
    var dependentKeysForClass = objj_msgSend(DependentKeysMap, "objectForKey:", objj_msgSend(_nativeClass, "hash"));
    if (!dependentKeysForClass)
    {
        dependentKeysForClass = objj_msgSend(CPDictionary, "new");
        objj_msgSend(DependentKeysMap, "setObject:forKey:", dependentKeysForClass, objj_msgSend(_nativeClass, "hash"));
    }
    for (var i=0, count=composedOfKeys.length; i<count; i++)
    {
        var componentKey = composedOfKeys[i],
            keysComposedOfKey = objj_msgSend(dependentKeysForClass, "objectForKey:", componentKey);
        if (!keysComposedOfKey)
        {
            keysComposedOfKey = objj_msgSend(CPSet, "new");
            objj_msgSend(dependentKeysForClass, "setObject:forKey:", keysComposedOfKey, componentKey);
        }
        objj_msgSend(keysComposedOfKey, "addObject:", aKey);
        objj_msgSend(self, "_replaceSetterForKey:", componentKey);
    }
}
}), new objj_method(sel_getUid("_addObserver:forKeyPath:options:context:"), function $_CPKVOProxy___addObserver_forKeyPath_options_context_(self, _cmd, anObserver, aPath, options, aContext)
{ with(self)
{
    if (!anObserver)
        return;
    var forwarder = nil;
    if (aPath.indexOf('.') != CPNotFound)
        forwarder = objj_msgSend(objj_msgSend(_CPKVOForwardingObserver, "alloc"), "initWithKeyPath:object:observer:options:context:", aPath, _targetObject, anObserver, options, aContext);
    else
        objj_msgSend(self, "_replaceSetterForKey:", aPath);
    var observers = objj_msgSend(_observersForKey, "objectForKey:", aPath);
    if (!observers)
    {
        observers = objj_msgSend(CPDictionary, "dictionary");
        objj_msgSend(_observersForKey, "setObject:forKey:", observers, aPath);
    }
    objj_msgSend(observers, "setObject:forKey:", _CPKVOInfoMake(anObserver, options, aContext, forwarder), objj_msgSend(anObserver, "hash"));
    if (options & CPKeyValueObservingOptionInitial)
    {
        var newValue = objj_msgSend(_targetObject, "valueForKeyPath:", aPath);
        if (newValue === nil || newValue === undefined)
            newValue = objj_msgSend(CPNull, "null");
        var changes = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", newValue, CPKeyValueChangeNewKey);
        objj_msgSend(anObserver, "observeValueForKeyPath:ofObject:change:context:", aPath, self, changes, aContext);
    }
}
}), new objj_method(sel_getUid("_removeObserver:forKeyPath:"), function $_CPKVOProxy___removeObserver_forKeyPath_(self, _cmd, anObserver, aPath)
{ with(self)
{
    var observers = objj_msgSend(_observersForKey, "objectForKey:", aPath);
    if (aPath.indexOf('.') != CPNotFound)
    {
        var forwarder = objj_msgSend(observers, "objectForKey:", objj_msgSend(anObserver, "hash")).forwarder;
        objj_msgSend(forwarder, "finalize");
    }
    objj_msgSend(observers, "removeObjectForKey:", objj_msgSend(anObserver, "hash"));
    if (!objj_msgSend(observers, "count"))
        objj_msgSend(_observersForKey, "removeObjectForKey:", aPath);
    if (!objj_msgSend(_observersForKey, "count"))
    {
        _targetObject.isa = _nativeClass;
        objj_msgSend(KVOProxyMap, "removeObjectForKey:", objj_msgSend(_targetObject, "hash"));
    }
}
}), new objj_method(sel_getUid("_sendNotificationsForKey:changeOptions:isBefore:"), function $_CPKVOProxy___sendNotificationsForKey_changeOptions_isBefore_(self, _cmd, aKey, changeOptions, isBefore)
{ with(self)
{
    var changes = objj_msgSend(_changesForKey, "objectForKey:", aKey);
    if (isBefore)
    {
        changes = changeOptions;
        var indexes = objj_msgSend(changes, "objectForKey:", CPKeyValueChangeIndexesKey);
        if (indexes)
        {
            var type = objj_msgSend(changes, "objectForKey:", CPKeyValueChangeKindKey);
            if (type == CPKeyValueChangeReplacement || type == CPKeyValueChangeRemoval)
            {
                var oldValues = objj_msgSend(objj_msgSend(_targetObject, "mutableArrayValueForKeyPath:", aKey), "objectsAtIndexes:", indexes);
                objj_msgSend(changes, "setValue:forKey:", oldValues, CPKeyValueChangeOldKey);
            }
        }
        else
        {
            var oldValue = objj_msgSend(_targetObject, "valueForKey:", aKey);
            if (oldValue === nil || oldValue === undefined)
                oldValue = objj_msgSend(CPNull, "null");
            objj_msgSend(changes, "setObject:forKey:", oldValue, CPKeyValueChangeOldKey);
        }
        objj_msgSend(changes, "setObject:forKey:", 1, CPKeyValueChangeNotificationIsPriorKey);
        objj_msgSend(_changesForKey, "setObject:forKey:", changes, aKey);
    }
    else
    {
        objj_msgSend(changes, "removeObjectForKey:", CPKeyValueChangeNotificationIsPriorKey);
        var indexes = objj_msgSend(changes, "objectForKey:", CPKeyValueChangeIndexesKey);
        if (indexes)
        {
            var type = objj_msgSend(changes, "objectForKey:", CPKeyValueChangeKindKey);
            if (type == CPKeyValueChangeReplacement || type == CPKeyValueChangeInsertion)
            {
                var oldValues = objj_msgSend(objj_msgSend(_targetObject, "mutableArrayValueForKeyPath:", aKey), "objectsAtIndexes:", indexes);
                objj_msgSend(changes, "setValue:forKey:", oldValues, CPKeyValueChangeNewKey);
            }
        }
        else
        {
            var newValue = objj_msgSend(_targetObject, "valueForKey:", aKey);
            if (newValue === nil || newValue === undefined)
                newValue = objj_msgSend(CPNull, "null");
            objj_msgSend(changes, "setObject:forKey:", newValue, CPKeyValueChangeNewKey);
        }
    }
    var observers = objj_msgSend(objj_msgSend(_observersForKey, "objectForKey:", aKey), "allValues"),
        count = objj_msgSend(observers, "count");
    while (count--)
    {
        var observerInfo = observers[count];
        if (isBefore && (observerInfo.options & CPKeyValueObservingOptionPrior))
            objj_msgSend(observerInfo.observer, "observeValueForKeyPath:ofObject:change:context:", aKey, _targetObject, changes, observerInfo.context);
        else if (!isBefore)
            objj_msgSend(observerInfo.observer, "observeValueForKeyPath:ofObject:change:context:", aKey, _targetObject, changes, observerInfo.context);
    }
    var keysComposedOfKey = objj_msgSend(objj_msgSend(objj_msgSend(DependentKeysMap, "objectForKey:", objj_msgSend(_nativeClass, "hash")), "objectForKey:", aKey), "allObjects");
    if (!keysComposedOfKey)
        return;
    for (var i=0, count=keysComposedOfKey.length; i<count; i++)
        objj_msgSend(self, "_sendNotificationsForKey:changeOptions:isBefore:", keysComposedOfKey[i], changeOptions, isBefore);
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("proxyForObject:"), function $_CPKVOProxy__proxyForObject_(self, _cmd, anObject)
{ with(self)
{
    var proxy = objj_msgSend(KVOProxyMap, "objectForKey:", objj_msgSend(anObject, "hash"));
    if (proxy)
        return proxy;
    proxy = objj_msgSend(objj_msgSend(self, "alloc"), "initWithTarget:", anObject);
    objj_msgSend(proxy, "_replaceClass");
    objj_msgSend(KVOProxyMap, "setObject:forKey:", proxy, objj_msgSend(anObject, "hash"));
    return proxy;
}
})]);
}
{var the_class = objj_allocateClassPair(Nil, "_CPKVOModelSubclass"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("willChangeValueForKey:"), function $_CPKVOModelSubclass__willChangeValueForKey_(self, _cmd, aKey)
{ with(self)
{
    if (!aKey)
        return;
    var changeOptions = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", CPKeyValueChangeSetting, CPKeyValueChangeKindKey);
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_sendNotificationsForKey:changeOptions:isBefore:", aKey, changeOptions, YES);
}
}), new objj_method(sel_getUid("didChangeValueForKey:"), function $_CPKVOModelSubclass__didChangeValueForKey_(self, _cmd, aKey)
{ with(self)
{
    if (!aKey)
        return;
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_sendNotificationsForKey:changeOptions:isBefore:", aKey, nil, NO);
}
}), new objj_method(sel_getUid("willChange:valuesAtIndexes:forKey:"), function $_CPKVOModelSubclass__willChange_valuesAtIndexes_forKey_(self, _cmd, change, indexes, aKey)
{ with(self)
{
    if (!aKey)
        return;
    var changeOptions = objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [change, indexes], [CPKeyValueChangeKindKey, CPKeyValueChangeIndexesKey]);
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_sendNotificationsForKey:changeOptions:isBefore:", aKey, changeOptions, YES);
}
}), new objj_method(sel_getUid("didChange:valuesAtIndexes:forKey:"), function $_CPKVOModelSubclass__didChange_valuesAtIndexes_forKey_(self, _cmd, change, indexes, aKey)
{ with(self)
{
    if (!aKey)
        return;
    objj_msgSend(objj_msgSend(_CPKVOProxy, "proxyForObject:", self), "_sendNotificationsForKey:changeOptions:isBefore:", aKey, nil, NO);
}
}), new objj_method(sel_getUid("class"), function $_CPKVOModelSubclass__class(self, _cmd)
{ with(self)
{
    return objj_msgSend(KVOProxyMap, "objectForKey:", objj_msgSend(self, "hash"))._nativeClass;
}
}), new objj_method(sel_getUid("superclass"), function $_CPKVOModelSubclass__superclass(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "superclass");
}
}), new objj_method(sel_getUid("isKindOfClass:"), function $_CPKVOModelSubclass__isKindOfClass_(self, _cmd, aClass)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "isSubclassOfClass:", aClass);
}
}), new objj_method(sel_getUid("isMemberOfClass:"), function $_CPKVOModelSubclass__isMemberOfClass_(self, _cmd, aClass)
{ with(self)
{
    return objj_msgSend(self, "class") == aClass;
}
}), new objj_method(sel_getUid("className"), function $_CPKVOModelSubclass__className(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "class").name;
}
})]);
}
{var the_class = objj_allocateClassPair(CPObject, "_CPKVOForwardingObserver"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_object"), new objj_ivar("_observer"), new objj_ivar("_context"), new objj_ivar("_firstPart"), new objj_ivar("_secondPart"), new objj_ivar("_value")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithKeyPath:object:observer:options:context:"), function $_CPKVOForwardingObserver__initWithKeyPath_object_observer_options_context_(self, _cmd, aKeyPath, anObject, anObserver, options, aContext)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    _context = aContext;
    _observer = anObserver;
    _object = anObject;
    var dotIndex = aKeyPath.indexOf('.');
    if (dotIndex == CPNotFound)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "Created _CPKVOForwardingObserver without compound key path: "+aKeyPath);
    _firstPart = aKeyPath.substring(0, dotIndex);
    _secondPart = aKeyPath.substring(dotIndex+1);
    objj_msgSend(_object, "addObserver:forKeyPath:options:context:", self, _firstPart, kvoNewAndOld, nil);
    _value = objj_msgSend(_object, "valueForKey:", _firstPart);
    if (_value)
        objj_msgSend(_value, "addObserver:forKeyPath:options:context:", self, _secondPart, kvoNewAndOld, nil);
    return self;
}
}), new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"), function $_CPKVOForwardingObserver__observeValueForKeyPath_ofObject_change_context_(self, _cmd, aKeyPath, anObject, changes, aContext)
{ with(self)
{
    if (anObject == _object)
    {
        objj_msgSend(_observer, "observeValueForKeyPath:ofObject:change:context:", _firstPart, _object, changes, _context);
        if (_value)
            objj_msgSend(_value, "removeObserver:forKeyPath:", self, _secondPart);
        _value = objj_msgSend(_object, "valueForKey:", _firstPart);
        if (_value)
            objj_msgSend(_value, "addObserver:forKeyPath:options:context:", self, _secondPart, kvoNewAndOld, nil);
    }
    else
    {
        objj_msgSend(_observer, "observeValueForKeyPath:ofObject:change:context:", _firstPart+"."+aKeyPath, _object, changes, _context);
    }
}
}), new objj_method(sel_getUid("finalize"), function $_CPKVOForwardingObserver__finalize(self, _cmd)
{ with(self)
{
    if (_value)
        objj_msgSend(_value, "removeObserver:forKeyPath:", self, _secondPart);
    objj_msgSend(_object, "removeObserver:forKeyPath:", self, _firstPart);
    _object = nil;
    _observer = nil;
    _context = nil;
    _value = nil;
}
})]);
}
var _CPKVOInfoMake = _CPKVOInfoMake= function(anObserver, theOptions, aContext, aForwarder)
{
    return {
        observer: anObserver,
        options: theOptions,
        context: aContext,
        forwarder: aForwarder
    };
}
var _kvoMethodForMethod = _kvoMethodForMethod= function(theKey, theMethod)
{
    return function(self, _cmd, object)
    {
        objj_msgSend(self, "willChangeValueForKey:", theKey);
        theMethod.method_imp(self, _cmd, object);
        objj_msgSend(self, "didChangeValueForKey:", theKey);
    }
}
var _kvoInsertMethodForMethod = _kvoInsertMethodForMethod= function(theKey, theMethod)
{
    return function(self, _cmd, object, index)
    {
        objj_msgSend(self, "willChange:valuesAtIndexes:forKey:", CPKeyValueChangeInsertion, objj_msgSend(CPIndexSet, "indexSetWithIndex:", index), theKey);
        theMethod.method_imp(self, _cmd, object, index);
        objj_msgSend(self, "didChange:valuesAtIndexes:forKey:", CPKeyValueChangeInsertion, objj_msgSend(CPIndexSet, "indexSetWithIndex:", index), theKey)
    }
}
var _kvoReplaceMethodForMethod = _kvoReplaceMethodForMethod= function(theKey, theMethod)
{
    return function(self, _cmd, index, object)
    {
        objj_msgSend(self, "willChange:valuesAtIndexes:forKey:", CPKeyValueChangeReplacement, objj_msgSend(CPIndexSet, "indexSetWithIndex:", index), theKey);
        theMethod.method_imp(self, _cmd, index, object);
        objj_msgSend(self, "didChange:valuesAtIndexes:forKey:", CPKeyValueChangeReplacement, objj_msgSend(CPIndexSet, "indexSetWithIndex:", index), theKey)
    }
}
var _kvoRemoveMethodForMethod = _kvoRemoveMethodForMethod= function(theKey, theMethod)
{
    return function(self, _cmd, index)
    {
        objj_msgSend(self, "willChange:valuesAtIndexes:forKey:", CPKeyValueChangeRemoval, objj_msgSend(CPIndexSet, "indexSetWithIndex:", index), theKey);
        theMethod.method_imp(self, _cmd, index);
        objj_msgSend(self, "didChange:valuesAtIndexes:forKey:", CPKeyValueChangeRemoval, objj_msgSend(CPIndexSet, "indexSetWithIndex:", index), theKey)
    }
}
i;13;CPArray+KVO.jp;7;CPLog.jc;10117;window.CPLogDisable = false;
var CPLogDefaultTitle = "Cappuccino";
var CPLogLevels = ["fatal", "error", "warn", "info", "debug", "trace"];
var CPLogDefaultLevel = CPLogLevels[0];
var _CPLogLevelsInverted = {};
for (var i = 0; i < CPLogLevels.length; i++)
    _CPLogLevelsInverted[CPLogLevels[i]] = i;
var _CPLogRegistrations = {};
var _CPFormatLogMessage = function(aString, aLevel, aTitle)
{
    var now = new Date();
    aLevel = ( aLevel == null ? '' : ' [' + aLevel + ']' );
    if (typeof sprintf == "function")
        return sprintf("%4d-%02d-%02d %02d:%02d:%02d.%03d %s%s: %s",
            now.getFullYear(), now.getMonth(), now.getDate(),
            now.getHours(), now.getMinutes(), now.getSeconds(), now.getMilliseconds(),
            aTitle, aLevel, aString);
    else
        return now + " " + aTitle + aLevel + ": " + aString;
}
CPLogRegister= function(aProvider, aMaxLevel)
{
    CPLogRegisterRange(aProvider, CPLogLevels[0], aMaxLevel || CPLogLevels[CPLogLevels.length-1]);
}
CPLogRegisterRange= function(aProvider, aMinLevel, aMaxLevel)
{
    var min = _CPLogLevelsInverted[aMinLevel];
    var max = _CPLogLevelsInverted[aMaxLevel];
    if (min != undefined && max != undefined)
        for (var i = 0; i <= max; i++)
            CPLogRegisterSingle(aProvider, CPLogLevels[i]);
}
CPLogRegisterSingle= function(aProvider, aLevel)
{
    if (_CPLogRegistrations[aLevel] == undefined)
        _CPLogRegistrations[aLevel] = [aProvider];
    else
        _CPLogRegistrations[aLevel].push(aProvider);
}
_CPLogDispatch= function(parameters, aLevel, aTitle)
{
    if (aTitle == undefined)
        aTitle = CPLogDefaultTitle;
    if (aLevel == undefined)
        aLevel = CPLogDefaultLevel;
    var message = (typeof parameters[0] == "string" && parameters.length > 1) ? sprintf.apply(null, parameters) : String(parameters[0]);
    if (_CPLogRegistrations[aLevel])
        for (var i = 0; i < _CPLogRegistrations[aLevel].length; i++)
             _CPLogRegistrations[aLevel][i](message, aLevel, aTitle);
}
CPLog= function() { _CPLogDispatch(arguments); }
for (var i = 0; i < CPLogLevels.length; i++)
    CPLog[CPLogLevels[i]] = (function(level) { return function() { _CPLogDispatch(arguments, level); }; })(CPLogLevels[i]);
ANSI_ESC = String.fromCharCode(0x1B);
ANSI_CSI = ANSI_ESC + '[';
ANSI_TEXT_PROP = 'm';
ANSI_RESET = '0';
ANSI_BOLD = '1';
ANSI_FAINT = '2';
ANSI_NORMAL = '22';
ANSI_ITALIC = '3';
ANSI_UNDER = '4';
ANSI_UNDER_DBL = '21';
ANSI_UNDER_OFF = '24';
ANSI_BLINK = '5';
ANSI_BLINK_FAST = '6';
ANSI_BLINK_OFF = '25';
ANSI_REVERSE = '7';
ANSI_POSITIVE = '27';
ANSI_CONCEAL = '8';
ANSI_REVEAL = '28';
ANSI_FG = '3';
ANSI_BG = '4';
ANSI_FG_INTENSE = '9';
ANSI_BG_INTENSE = '10';
ANSI_BLACK = '0';
ANSI_RED = '1';
ANSI_GREEN = '2';
ANSI_YELLOW = '3';
ANSI_BLUE = '4';
ANSI_MAGENTA = '5';
ANSI_CYAN = '6';
ANSI_WHITE = '7';
var colorCodeMap = {
    "black" : ANSI_BLACK,
    "red" : ANSI_RED,
    "green" : ANSI_GREEN,
    "yellow" : ANSI_YELLOW,
    "blue" : ANSI_BLUE,
    "magenta" : ANSI_MAGENTA,
    "cyan" : ANSI_CYAN,
    "white" : ANSI_WHITE
}
ANSIControlCode = function(code, parameters)
{
    if (parameters == undefined)
        parameters = "";
    else if (typeof(parameters) == 'object' && (parameters instanceof Array))
        parameters = parameters.join(';');
    return ANSI_CSI + String(parameters) + String(code);
}
ANSITextApplyProperties = function(string, properties)
{
    return ANSIControlCode(ANSI_TEXT_PROP, properties) + String(string) + ANSIControlCode(ANSI_TEXT_PROP);
}
ANSITextColorize = function(string, color)
{
    if (colorCodeMap[color] == undefined)
        return string;
    return ANSITextApplyProperties(string, ANSI_FG + colorCodeMap[color]);
}
var levelColorMap = {
    "fatal": "red",
    "error": "red",
    "warn" : "yellow",
    "info" : "green",
    "debug": "cyan",
    "trace": "blue"
}
CPLogPrint= function(aString, aLevel, aTitle)
{
    if (typeof print != "undefined")
    {
        if (aLevel == "fatal" || aLevel == "error" || aLevel == "warn")
            var message = ANSITextColorize(_CPFormatLogMessage(aString, aLevel, aTitle), levelColorMap[aLevel]);
        else
            var message = _CPFormatLogMessage(aString, ANSITextColorize(aLevel, levelColorMap[aLevel]), aTitle);
        print(message);
    }
}
CPLogAlert= function(aString, aLevel, aTitle)
{
    if (typeof alert != "undefined" && !window.CPLogDisable)
    {
        var message = _CPFormatLogMessage(aString, aLevel, aTitle);
        window.CPLogDisable = !confirm(message + "\n\n(Click cancel to stop log alerts)");
    }
}
CPLogConsole= function(aString, aLevel, aTitle)
{
    if (typeof console != "undefined")
    {
        var message = _CPFormatLogMessage(aString, aLevel, aTitle);
        var logger = {
            "fatal": "error",
            "error": "error",
            "warn": "warn",
            "info": "info",
            "debug": "debug",
            "trace": "debug"
        }[aLevel];
        if (logger && console[logger])
            console[logger](message);
        else if (console.log)
            console.log(message);
    }
}
var CPLogWindow = null;
CPLogPopup = function(aString, aLevel, aTitle)
{
    try {
        if (window.CPLogDisable || window.open == undefined)
            return;
        if (!CPLogWindow || !CPLogWindow.document)
        {
            CPLogWindow = window.open("", "_blank", "width=600,height=400,status=no,resizable=yes,scrollbars=yes");
            if (!CPLogWindow) {
                window.CPLogDisable = !confirm(aString + "\n\n(Disable pop-up blocking for CPLog window; Click cancel to stop log alerts)");
                return;
            }
            _CPLogInitPopup(CPLogWindow);
        }
        var logDiv = CPLogWindow.document.createElement("div");
        logDiv.setAttribute("class", aLevel || "fatal");
        var message = _CPFormatLogMessage(aString, null, aTitle);
        logDiv.appendChild(CPLogWindow.document.createTextNode(message));
        CPLogWindow.log.appendChild(logDiv);
        if (CPLogWindow.focusEnabled.checked)
            CPLogWindow.focus();
        if (CPLogWindow.blockEnabled.checked)
            CPLogWindow.blockEnabled.checked = CPLogWindow.confirm(message+"\nContinue blocking?");
        if (CPLogWindow.scrollEnabled.checked)
            CPLogWindow.scrollToBottom();
    } catch(e) {
    }
}
var _CPLogInitPopup = function(logWindow)
{
    var doc = logWindow.document;
    doc.writeln("<html><head><title></title></head><body></body></html>");
    doc.title = CPLogDefaultTitle + " Run Log";
    var head = doc.getElementsByTagName("head")[0];
    var body = doc.getElementsByTagName("body")[0];
    var base = window.location.protocol + "//" + window.location.host + window.location.pathname;
    base = base.substring(0,base.lastIndexOf("/")+1);
    var link = doc.createElement("link");
    link.setAttribute("type", "text/css");
    link.setAttribute("rel", "stylesheet");
    link.setAttribute("href", base+"Frameworks/Foundation/Resources/log.css");
    link.setAttribute("media", "screen");
    head.appendChild(link);
    var div = doc.createElement("div");
    div.setAttribute("id", "header");
    body.appendChild(div);
    var ul = doc.createElement("ul");
    ul.setAttribute("id", "enablers");
    div.appendChild(ul);
    for (var i = 0; i < CPLogLevels.length; i++) {
        var li = doc.createElement("li");
        li.setAttribute("id", "en"+CPLogLevels[i]);
        li.setAttribute("class", CPLogLevels[i]);
        li.setAttribute("onclick", "toggle(this);");
        li.setAttribute("enabled", "yes");
        li.appendChild(doc.createTextNode(CPLogLevels[i]));
        ul.appendChild(li);
    }
    var ul = doc.createElement("ul");
    ul.setAttribute("id", "options");
    div.appendChild(ul);
    var options = {"focus":["Focus",false], "block":["Block",false], "wrap":["Wrap",false], "scroll":["Scroll",true], "close":["Close",true]};
    for (o in options) {
        var li = doc.createElement("li");
        ul.appendChild(li);
        logWindow[o+"Enabled"] = doc.createElement("input");
        logWindow[o+"Enabled"].setAttribute("id", o);
        logWindow[o+"Enabled"].setAttribute("type", "checkbox");
        if (options[o][1])
            logWindow[o+"Enabled"].setAttribute("checked", "checked");
        li.appendChild(logWindow[o+"Enabled"]);
        var label = doc.createElement("label");
        label.setAttribute("for", o);
        label.appendChild(doc.createTextNode(options[o][0]));
        li.appendChild(label);
    }
    logWindow.log = doc.createElement("div");
    logWindow.log.setAttribute("class", "enerror endebug enwarn eninfo enfatal entrace");
    body.appendChild(logWindow.log);
    logWindow.toggle = function(elem) {
        var enabled = (elem.getAttribute("enabled") == "yes") ? "no" : "yes";
        elem.setAttribute("enabled", enabled);
        if (enabled == "yes")
            logWindow.log.className += " " + elem.id
        else
            logWindow.log.className = logWindow.log.className.replace(new RegExp("[\\s]*"+elem.id, "g"), "");
    }
    logWindow.scrollToBottom = function() {
        logWindow.scrollTo(0, body.offsetHeight);
    }
    logWindow.wrapEnabled.addEventListener("click", function() {
        logWindow.log.setAttribute("wrap", logWindow.wrapEnabled.checked ? "yes" : "no");
    }, false);
    logWindow.addEventListener("keydown", function(e) {
        var e = e || logWindow.event;
        if (e.keyCode == 75 && (e.ctrlKey || e.metaKey)) {
            while (logWindow.log.firstChild) {
                logWindow.log.removeChild(logWindow.log.firstChild);
            }
            e.preventDefault();
        }
    }, "false");
    window.addEventListener("unload", function() {
        if (logWindow && logWindow.closeEnabled && logWindow.closeEnabled.checked) {
            window.CPLogDisable = true;
            logWindow.close();
        }
    }, false);
    logWindow.addEventListener("unload", function() {
        if (!window.CPLogDisable) {
            window.CPLogDisable = !confirm("Click cancel to stop logging");
        }
    }, false);
}

p;16;CPNotification.ji;10;CPObject.ji;13;CPException.jc;2045;
{var the_class = objj_allocateClassPair(CPObject, "CPNotification"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_name"), new objj_ivar("_object"), new objj_ivar("_userInfo")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPNotification__init(self, _cmd)
{ with(self)
{
    objj_msgSend(CPException, "raise:reason:", CPUnsupportedMethodException, "CPNotification's init method should not be used");
}
}), new objj_method(sel_getUid("initWithName:object:userInfo:"), function $CPNotification__initWithName_object_userInfo_(self, _cmd, aNotificationName, anObject, aUserInfo)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _name = aNotificationName;
        _object = anObject;
        _userInfo = aUserInfo;
    }
    return self;
}
}), new objj_method(sel_getUid("name"), function $CPNotification__name(self, _cmd)
{ with(self)
{
    return _name;
}
}), new objj_method(sel_getUid("object"), function $CPNotification__object(self, _cmd)
{ with(self)
{
    return _object;
}
}), new objj_method(sel_getUid("userInfo"), function $CPNotification__userInfo(self, _cmd)
{ with(self)
{
    return _userInfo;
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("notificationWithName:object:userInfo:"), function $CPNotification__notificationWithName_object_userInfo_(self, _cmd, aNotificationName, anObject, aUserInfo)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithName:object:userInfo:", aNotificationName, anObject, aUserInfo);
}
}), new objj_method(sel_getUid("notificationWithName:object:"), function $CPNotification__notificationWithName_object_(self, _cmd, aNotificationName, anObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithName:object:userInfo:", aNotificationName, anObject, nil);
}
})]);
}

p;22;CPNotificationCenter.ji;9;CPArray.ji;14;CPDictionary.ji;16;CPNotification.ji;13;CPException.jc;10027;
var CPNotificationDefaultCenter = nil;
{var the_class = objj_allocateClassPair(CPObject, "CPNotificationCenter"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_namedRegistries"), new objj_ivar("_unnamedRegistry")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPNotificationCenter__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _namedRegistries = objj_msgSend(CPDictionary, "dictionary");
        _unnamedRegistry = objj_msgSend(objj_msgSend(_CPNotificationRegistry, "alloc"), "init");
    }
   return self;
}
}), new objj_method(sel_getUid("addObserver:selector:name:object:"), function $CPNotificationCenter__addObserver_selector_name_object_(self, _cmd, anObserver, aSelector, aNotificationName, anObject)
{ with(self)
{
    var registry,
        observer = objj_msgSend(objj_msgSend(_CPNotificationObserver, "alloc"), "initWithObserver:selector:", anObserver, aSelector);
    if (aNotificationName == nil)
        registry = _unnamedRegistry;
    else if (!(registry = objj_msgSend(_namedRegistries, "objectForKey:", aNotificationName)))
    {
        registry = objj_msgSend(objj_msgSend(_CPNotificationRegistry, "alloc"), "init");
        objj_msgSend(_namedRegistries, "setObject:forKey:", registry, aNotificationName);
    }
    objj_msgSend(registry, "addObserver:object:", observer, anObject);
}
}), new objj_method(sel_getUid("removeObserver:"), function $CPNotificationCenter__removeObserver_(self, _cmd, anObserver)
{ with(self)
{
    var name = nil,
        names = objj_msgSend(_namedRegistries, "keyEnumerator");
    while (name = objj_msgSend(names, "nextObject"))
        objj_msgSend(objj_msgSend(_namedRegistries, "objectForKey:", name), "removeObserver:object:", anObserver, nil);
    objj_msgSend(_unnamedRegistry, "removeObserver:object:", anObserver, nil);
}
}), new objj_method(sel_getUid("removeObserver:name:object:"), function $CPNotificationCenter__removeObserver_name_object_(self, _cmd, anObserver, aNotificationName, anObject)
{ with(self)
{
    if (aNotificationName == nil)
    {
        var name = nil,
            names = objj_msgSend(_namedRegistries, "keyEnumerator");
        while (name = objj_msgSend(names, "nextObject"))
            objj_msgSend(objj_msgSend(_namedRegistries, "objectForKey:", name), "removeObserver:object:", anObserver, anObject);
        objj_msgSend(_unnamedRegistry, "removeObserver:object:", anObserver, anObject);
    }
    else
        objj_msgSend(objj_msgSend(_namedRegistries, "objectForKey:", aNotificationName), "removeObserver:object:", anObserver, anObject);
}
}), new objj_method(sel_getUid("postNotification:"), function $CPNotificationCenter__postNotification_(self, _cmd, aNotification)
{ with(self)
{
    if (!aNotification)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "postNotification: does not except 'nil' notifications");
    _CPNotificationCenterPostNotification(self, aNotification);
}
}), new objj_method(sel_getUid("postNotificationName:object:userInfo:"), function $CPNotificationCenter__postNotificationName_object_userInfo_(self, _cmd, aNotificationName, anObject, aUserInfo)
{ with(self)
{
   _CPNotificationCenterPostNotification(self, objj_msgSend(objj_msgSend(CPNotification, "alloc"), "initWithName:object:userInfo:", aNotificationName, anObject, aUserInfo));
}
}), new objj_method(sel_getUid("postNotificationName:object:"), function $CPNotificationCenter__postNotificationName_object_(self, _cmd, aNotificationName, anObject)
{ with(self)
{
   _CPNotificationCenterPostNotification(self, objj_msgSend(objj_msgSend(CPNotification, "alloc"), "initWithName:object:userInfo:", aNotificationName, anObject, nil));
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultCenter"), function $CPNotificationCenter__defaultCenter(self, _cmd)
{ with(self)
{
    if (!CPNotificationDefaultCenter)
        CPNotificationDefaultCenter = objj_msgSend(objj_msgSend(CPNotificationCenter, "alloc"), "init");
    return CPNotificationDefaultCenter;
}
})]);
}
var _CPNotificationCenterPostNotification = function( self, aNotification)
{
    objj_msgSend(self._unnamedRegistry, "postNotification:", aNotification);
    objj_msgSend(objj_msgSend(self._namedRegistries, "objectForKey:", objj_msgSend(aNotification, "name")), "postNotification:", aNotification);
}
{var the_class = objj_allocateClassPair(CPObject, "_CPNotificationRegistry"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_objectObservers"), new objj_ivar("_observerRemoval"), new objj_ivar("_postingObservers")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $_CPNotificationRegistry__init(self, _cmd)
{ with(self)
{
    if (self)
        _objectObservers = objj_msgSend(CPDictionary, "dictionary");
   return self;
}
}), new objj_method(sel_getUid("addObserver:object:"), function $_CPNotificationRegistry__addObserver_object_(self, _cmd, anObserver, anObject)
{ with(self)
{
    if (!anObject)
        anObject = objj_msgSend(CPNull, "null");
    var observers = objj_msgSend(_objectObservers, "objectForKey:", objj_msgSend(anObject, "hash"));
    if (!observers)
    {
        observers = [];
        objj_msgSend(_objectObservers, "setObject:forKey:", observers, objj_msgSend(anObject, "hash"));
    }
    if (observers == _postingObservers)
        _postingObservers = objj_msgSend(observers, "copy");
    observers.push(anObserver);
}
}), new objj_method(sel_getUid("removeObserver:object:"), function $_CPNotificationRegistry__removeObserver_object_(self, _cmd, anObserver, anObject)
{ with(self)
{
    var removedKeys = [];
    if (anObject == nil)
    {
        var key = nil,
            keys = objj_msgSend(_objectObservers, "keyEnumerator");
        while (key = objj_msgSend(keys, "nextObject"))
        {
            var observers = objj_msgSend(_objectObservers, "objectForKey:", key),
                count = observers ? observers.length : 0;
            while (count--)
                if (objj_msgSend(observers[count], "observer") == anObserver)
                {
                    _observerRemoval = YES;
                    if (observers == _postingObservers)
                        _postingObservers = objj_msgSend(observers, "copy");
                    observers.splice(count, 1);
                }
            if (!observers || observers.length == 0)
                removedKeys.push(key);
        }
    }
    else
    {
        var key = objj_msgSend(anObject, "hash"),
            observers = objj_msgSend(_objectObservers, "objectForKey:", key);
            count = observers ? observers.length : 0;
        while (count--)
            if (objj_msgSend(observers[count], "observer") == anObserver)
            {
                _observerRemoval = YES;
                if (observers == _postingObservers)
                    _postingObservers = objj_msgSend(observers, "copy");
                observers.splice(count, 1)
            }
        if (!observers || observers.length == 0)
            removedKeys.push(key);
    }
    var count = removedKeys.length;
    while (count--)
        objj_msgSend(_objectObservers, "removeObjectForKey:", removedKeys[count]);
}
}), new objj_method(sel_getUid("postNotification:"), function $_CPNotificationRegistry__postNotification_(self, _cmd, aNotification)
{ with(self)
{
    var object = objj_msgSend(aNotification, "object");
    if (object != nil && (_postingObservers = objj_msgSend(_objectObservers, "objectForKey:", objj_msgSend(object, "hash"))))
    {
        var observers = _postingObservers,
            count = observers.length;
        _observerRemoval = NO;
        while (count--)
        {
            var observer = _postingObservers[count];
            if (!_observerRemoval || objj_msgSend(observers, "indexOfObjectIdenticalTo:", observer) != CPNotFound)
                objj_msgSend(observer, "postNotification:", aNotification);
        }
    }
    _postingObservers = objj_msgSend(_objectObservers, "objectForKey:", objj_msgSend(objj_msgSend(CPNull, "null"), "hash"));
    if (!_postingObservers)
        return;
    var observers = _postingObservers,
        count = observers.length;
    _observerRemoval = NO;
    while (count--)
    {
        var observer = _postingObservers[count];
        if (!_observerRemoval || objj_msgSend(observers, "indexOfObjectIdenticalTo:", observer) != CPNotFound)
            objj_msgSend(observer, "postNotification:", aNotification);
    }
    _postingObservers = nil;
}
}), new objj_method(sel_getUid("count"), function $_CPNotificationRegistry__count(self, _cmd)
{ with(self)
{
    return objj_msgSend(_objectObservers, "count");
}
})]);
}
{var the_class = objj_allocateClassPair(CPObject, "_CPNotificationObserver"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_observer"), new objj_ivar("_selector")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithObserver:selector:"), function $_CPNotificationObserver__initWithObserver_selector_(self, _cmd, anObserver, aSelector)
{ with(self)
{
    if (self)
    {
        _observer = anObserver;
        _selector = aSelector;
    }
   return self;
}
}), new objj_method(sel_getUid("observer"), function $_CPNotificationObserver__observer(self, _cmd)
{ with(self)
{
    return _observer;
}
}), new objj_method(sel_getUid("postNotification:"), function $_CPNotificationObserver__postNotification_(self, _cmd, aNotification)
{ with(self)
{
    objj_msgSend(_observer, "performSelector:withObject:", _selector, aNotification);
}
})]);
}

p;8;CPNull.ji;10;CPObject.jc;500;
var CPNullSharedNull = nil;
{var the_class = objj_allocateClassPair(CPObject, "CPNull"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(meta_class, [new objj_method(sel_getUid("null"), function $CPNull__null(self, _cmd)
{ with(self)
{
    if (!CPNullSharedNull)
        CPNullSharedNull = objj_msgSend(objj_msgSend(CPNull, "alloc"), "init");
    return CPNullSharedNull;
}
})]);
}

p;10;CPNumber.ji;10;CPObject.ji;15;CPObjJRuntime.jc;8497;
var __placeholder = new Number(),
    _CPNumberHashes = { };
{var the_class = objj_allocateClassPair(CPObject, "CPNumber"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithBool:"), function $CPNumber__initWithBool_(self, _cmd, aBoolean)
{ with(self)
{
    return aBoolean;
}
}), new objj_method(sel_getUid("initWithChar:"), function $CPNumber__initWithChar_(self, _cmd, aChar)
{ with(self)
{
    if (aChar.charCodeAt)
        return aChar.charCodeAt(0);
    return aChar;
}
}), new objj_method(sel_getUid("initWithDouble:"), function $CPNumber__initWithDouble_(self, _cmd, aDouble)
{ with(self)
{
    return aDouble;
}
}), new objj_method(sel_getUid("initWithFloat:"), function $CPNumber__initWithFloat_(self, _cmd, aFloat)
{ with(self)
{
    return aFloat;
}
}), new objj_method(sel_getUid("initWithInt:"), function $CPNumber__initWithInt_(self, _cmd, anInt)
{ with(self)
{
    return anInt;
}
}), new objj_method(sel_getUid("initWithLong:"), function $CPNumber__initWithLong_(self, _cmd, aLong)
{ with(self)
{
    return aLong;
}
}), new objj_method(sel_getUid("initWithLongLong:"), function $CPNumber__initWithLongLong_(self, _cmd, aLongLong)
{ with(self)
{
    return aLongLong;
}
}), new objj_method(sel_getUid("initWithShort:"), function $CPNumber__initWithShort_(self, _cmd, aShort)
{ with(self)
{
    return aShort;
}
}), new objj_method(sel_getUid("initWithUnsignedChar:"), function $CPNumber__initWithUnsignedChar_(self, _cmd, aChar)
{ with(self)
{
    if (aChar.charCodeAt)
        return aChar.charCodeAt(0);
    return aChar;
}
}), new objj_method(sel_getUid("initWithUnsignedInt:"), function $CPNumber__initWithUnsignedInt_(self, _cmd, anUnsignedInt)
{ with(self)
{
    return anUnsignedInt;
}
}), new objj_method(sel_getUid("initWithUnsignedLong:"), function $CPNumber__initWithUnsignedLong_(self, _cmd, anUnsignedLong)
{ with(self)
{
    return anUnsignedLong;
}
}), new objj_method(sel_getUid("initWithUnsignedShort:"), function $CPNumber__initWithUnsignedShort_(self, _cmd, anUnsignedShort)
{ with(self)
{
    return anUnsignedShort;
}
}), new objj_method(sel_getUid("UID"), function $CPNumber__UID(self, _cmd)
{ with(self)
{
    if (!_CPNumberHashes[self])
        _CPNumberHashes[self] = _objj_generateObjectHash();
    return _CPNumberHashes[self];
}
}), new objj_method(sel_getUid("boolValue"), function $CPNumber__boolValue(self, _cmd)
{ with(self)
{
    return self ? true : false;
}
}), new objj_method(sel_getUid("charValue"), function $CPNumber__charValue(self, _cmd)
{ with(self)
{
    return String.fromCharCode(self);
}
}), new objj_method(sel_getUid("decimalValue"), function $CPNumber__decimalValue(self, _cmd)
{ with(self)
{
    objj_throw_exception("decimalValue: NOT YET IMPLEMENTED");
}
}), new objj_method(sel_getUid("descriptionWithLocale:"), function $CPNumber__descriptionWithLocale_(self, _cmd, aDictionary)
{ with(self)
{
    if (!aDictionary) return toString();
    objj_throw_exception("descriptionWithLocale: NOT YET IMPLEMENTED");
}
}), new objj_method(sel_getUid("description"), function $CPNumber__description(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "descriptionWithLocale:", nil);
}
}), new objj_method(sel_getUid("doubleValue"), function $CPNumber__doubleValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
}), new objj_method(sel_getUid("floatValue"), function $CPNumber__floatValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
}), new objj_method(sel_getUid("intValue"), function $CPNumber__intValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
}), new objj_method(sel_getUid("longLongValue"), function $CPNumber__longLongValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
}), new objj_method(sel_getUid("longValue"), function $CPNumber__longValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
}), new objj_method(sel_getUid("shortValue"), function $CPNumber__shortValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
}), new objj_method(sel_getUid("stringValue"), function $CPNumber__stringValue(self, _cmd)
{ with(self)
{
    return toString();
}
}), new objj_method(sel_getUid("unsignedCharValue"), function $CPNumber__unsignedCharValue(self, _cmd)
{ with(self)
{
    return String.fromCharCode(self);
}
}), new objj_method(sel_getUid("unsignedIntValue"), function $CPNumber__unsignedIntValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
}), new objj_method(sel_getUid("unsignedLongValue"), function $CPNumber__unsignedLongValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
}), new objj_method(sel_getUid("unsignedShortValue"), function $CPNumber__unsignedShortValue(self, _cmd)
{ with(self)
{
    if (typeof self == "boolean") return self ? 1 : 0;
    return self;
}
}), new objj_method(sel_getUid("compare:"), function $CPNumber__compare_(self, _cmd, aNumber)
{ with(self)
{
    if (self > aNumber) return CPOrderedDescending;
    else if (self < aNumber) return CPOrderedAscending;
    return CPOrderedSame;
}
}), new objj_method(sel_getUid("isEqualToNumber:"), function $CPNumber__isEqualToNumber_(self, _cmd, aNumber)
{ with(self)
{
    return self == aNumber;
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $CPNumber__alloc(self, _cmd)
{ with(self)
{
    return __placeholder;
}
}), new objj_method(sel_getUid("numberWithBool:"), function $CPNumber__numberWithBool_(self, _cmd, aBoolean)
{ with(self)
{
    return aBoolean;
}
}), new objj_method(sel_getUid("numberWithChar:"), function $CPNumber__numberWithChar_(self, _cmd, aChar)
{ with(self)
{
    if (aChar.charCodeAt)
        return aChar.charCodeAt(0);
    return aChar;
}
}), new objj_method(sel_getUid("numberWithDouble:"), function $CPNumber__numberWithDouble_(self, _cmd, aDouble)
{ with(self)
{
    return aDouble;
}
}), new objj_method(sel_getUid("numberWithFloat:"), function $CPNumber__numberWithFloat_(self, _cmd, aFloat)
{ with(self)
{
    return aFloat;
}
}), new objj_method(sel_getUid("numberWithInt:"), function $CPNumber__numberWithInt_(self, _cmd, anInt)
{ with(self)
{
    return anInt;
}
}), new objj_method(sel_getUid("numberWithLong:"), function $CPNumber__numberWithLong_(self, _cmd, aLong)
{ with(self)
{
    return aLong;
}
}), new objj_method(sel_getUid("numberWithLongLong:"), function $CPNumber__numberWithLongLong_(self, _cmd, aLongLong)
{ with(self)
{
    return aLongLong;
}
}), new objj_method(sel_getUid("numberWithShort:"), function $CPNumber__numberWithShort_(self, _cmd, aShort)
{ with(self)
{
    return aShort;
}
}), new objj_method(sel_getUid("numberWithUnsignedChar:"), function $CPNumber__numberWithUnsignedChar_(self, _cmd, aChar)
{ with(self)
{
    if (aChar.charCodeAt)
        return aChar.charCodeAt(0);
    return aChar;
}
}), new objj_method(sel_getUid("numberWithUnsignedInt:"), function $CPNumber__numberWithUnsignedInt_(self, _cmd, anUnsignedInt)
{ with(self)
{
    return anUnsignedInt;
}
}), new objj_method(sel_getUid("numberWithUnsignedLong:"), function $CPNumber__numberWithUnsignedLong_(self, _cmd, anUnsignedLong)
{ with(self)
{
    return anUnsignedLong;
}
}), new objj_method(sel_getUid("numberWithUnsignedShort:"), function $CPNumber__numberWithUnsignedShort_(self, _cmd, anUnsignedShort)
{ with(self)
{
    return anUnsignedShort;
}
})]);
}
{
var the_class = objj_getClass("CPNumber")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPNumber\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPNumber__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(aCoder, "decodeNumber");
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPNumber__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeNumber:forKey:", self, "self");
}
})]);
}
Number.prototype.isa = CPNumber;
Boolean.prototype.isa = CPNumber;
objj_msgSend(CPNumber, "initialize");

p;10;CPObject.jc;9139;{var the_class = objj_allocateClassPair(Nil, "CPObject"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("isa")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPObject__init(self, _cmd)
{ with(self)
{
    return self;
}
}), new objj_method(sel_getUid("copy"), function $CPObject__copy(self, _cmd)
{ with(self)
{
    return self;
}
}), new objj_method(sel_getUid("mutableCopy"), function $CPObject__mutableCopy(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "copy");
}
}), new objj_method(sel_getUid("dealloc"), function $CPObject__dealloc(self, _cmd)
{ with(self)
{
}
}), new objj_method(sel_getUid("class"), function $CPObject__class(self, _cmd)
{ with(self)
{
    return isa;
}
}), new objj_method(sel_getUid("isKindOfClass:"), function $CPObject__isKindOfClass_(self, _cmd, aClass)
{ with(self)
{
    return objj_msgSend(isa, "isSubclassOfClass:", aClass);
}
}), new objj_method(sel_getUid("isMemberOfClass:"), function $CPObject__isMemberOfClass_(self, _cmd, aClass)
{ with(self)
{
    return self.isa === aClass;
}
}), new objj_method(sel_getUid("isProxy"), function $CPObject__isProxy(self, _cmd)
{ with(self)
{
    return NO;
}
}), new objj_method(sel_getUid("respondsToSelector:"), function $CPObject__respondsToSelector_(self, _cmd, aSelector)
{ with(self)
{
    return !!class_getInstanceMethod(isa, aSelector);
}
}), new objj_method(sel_getUid("methodForSelector:"), function $CPObject__methodForSelector_(self, _cmd, aSelector)
{ with(self)
{
    return class_getMethodImplementation(isa, aSelector);
}
}), new objj_method(sel_getUid("methodSignatureForSelector:"), function $CPObject__methodSignatureForSelector_(self, _cmd, aSelector)
{ with(self)
{
    return nil;
}
}), new objj_method(sel_getUid("description"), function $CPObject__description(self, _cmd)
{ with(self)
{
    return "<" + isa.name + " 0x" + objj_msgSend(CPString, "stringWithHash:", objj_msgSend(self, "hash")) + ">";
}
}), new objj_method(sel_getUid("performSelector:"), function $CPObject__performSelector_(self, _cmd, aSelector)
{ with(self)
{
    return objj_msgSend(self, aSelector);
}
}), new objj_method(sel_getUid("performSelector:withObject:"), function $CPObject__performSelector_withObject_(self, _cmd, aSelector, anObject)
{ with(self)
{
    return objj_msgSend(self, aSelector, anObject);
}
}), new objj_method(sel_getUid("performSelector:withObject:withObject:"), function $CPObject__performSelector_withObject_withObject_(self, _cmd, aSelector, anObject, anotherObject)
{ with(self)
{
    return objj_msgSend(self, aSelector, anObject, anotherObject);
}
}), new objj_method(sel_getUid("forwardInvocation:"), function $CPObject__forwardInvocation_(self, _cmd, anInvocation)
{ with(self)
{
    objj_msgSend(self, "doesNotRecognizeSelector:", objj_msgSend(anInvocation, "selector"));
}
}), new objj_method(sel_getUid("forward::"), function $CPObject__forward__(self, _cmd, aSelector, args)
{ with(self)
{
    var signature = objj_msgSend(self, "methodSignatureForSelector:", aSelector);
    if (signature)
    {
        invocation = objj_msgSend(CPInvocation, "invocationWithMethodSignature:", signature);
        objj_msgSend(invocation, "setTarget:", self);
        objj_msgSend(invocation, "setSelector:", aSelector);
        var index = 2,
            count = args.length;
        for (; index < count; ++index)
            objj_msgSend(invocation, "setArgument:atIndex:", args[index], index);
        objj_msgSend(self, "forwardInvocation:", invocation);
        return objj_msgSend(invocation, "returnValue");
    }
    objj_msgSend(self, "doesNotRecognizeSelector:", aSelector);
}
}), new objj_method(sel_getUid("doesNotRecognizeSelector:"), function $CPObject__doesNotRecognizeSelector_(self, _cmd, aSelector)
{ with(self)
{
    objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, 
        (class_isMetaClass(isa) ? "+" : "-") + " [" + objj_msgSend(self, "className") + " " + aSelector + "] unrecognized selector sent to " +
        (class_isMetaClass(isa) ? "class" : "instance") + " 0x" + objj_msgSend(CPString, "stringWithHash:", objj_msgSend(self, "hash")));
}
}), new objj_method(sel_getUid("awakeAfterUsingCoder:"), function $CPObject__awakeAfterUsingCoder_(self, _cmd, aCoder)
{ with(self)
{
    return self;
}
}), new objj_method(sel_getUid("classForKeyedArchiver"), function $CPObject__classForKeyedArchiver(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "classForCoder");
}
}), new objj_method(sel_getUid("classForCoder"), function $CPObject__classForCoder(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "class");
}
}), new objj_method(sel_getUid("replacementObjectForArchiver:"), function $CPObject__replacementObjectForArchiver_(self, _cmd, anArchiver)
{ with(self)
{
    return objj_msgSend(self, "replacementObjectForCoder:", anArchiver);
}
}), new objj_method(sel_getUid("replacementObjectForKeyedArchiver:"), function $CPObject__replacementObjectForKeyedArchiver_(self, _cmd, anArchiver)
{ with(self)
{
    return objj_msgSend(self, "replacementObjectForCoder:", anArchiver);
}
}), new objj_method(sel_getUid("replacementObjectForCoder:"), function $CPObject__replacementObjectForCoder_(self, _cmd, aCoder)
{ with(self)
{
    return self;
}
}), new objj_method(sel_getUid("className"), function $CPObject__className(self, _cmd)
{ with(self)
{
    return isa.name;
}
}), new objj_method(sel_getUid("autorelease"), function $CPObject__autorelease(self, _cmd)
{ with(self)
{
    return self;
}
}), new objj_method(sel_getUid("hash"), function $CPObject__hash(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "UID");
}
}), new objj_method(sel_getUid("UID"), function $CPObject__UID(self, _cmd)
{ with(self)
{
    if (typeof self.__address === "undefined")
        self.__address = _objj_generateObjectHash();
    return __address;
}
}), new objj_method(sel_getUid("isEqual:"), function $CPObject__isEqual_(self, _cmd, anObject)
{ with(self)
{
    return self === anObject || objj_msgSend(self, "hash") === objj_msgSend(anObject, "hash");
}
}), new objj_method(sel_getUid("retain"), function $CPObject__retain(self, _cmd)
{ with(self)
{
    return self;
}
}), new objj_method(sel_getUid("release"), function $CPObject__release(self, _cmd)
{ with(self)
{
}
}), new objj_method(sel_getUid("self"), function $CPObject__self(self, _cmd)
{ with(self)
{
    return self;
}
}), new objj_method(sel_getUid("superclass"), function $CPObject__superclass(self, _cmd)
{ with(self)
{
    return isa.super_class;
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("load"), function $CPObject__load(self, _cmd)
{ with(self)
{
}
}), new objj_method(sel_getUid("initialize"), function $CPObject__initialize(self, _cmd)
{ with(self)
{
}
}), new objj_method(sel_getUid("new"), function $CPObject__new(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
}), new objj_method(sel_getUid("alloc"), function $CPObject__alloc(self, _cmd)
{ with(self)
{
    return class_createInstance(self);
}
}), new objj_method(sel_getUid("allocWithCoder:"), function $CPObject__allocWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "alloc");
}
}), new objj_method(sel_getUid("class"), function $CPObject__class(self, _cmd)
{ with(self)
{
    return self;
}
}), new objj_method(sel_getUid("superclass"), function $CPObject__superclass(self, _cmd)
{ with(self)
{
    return super_class;
}
}), new objj_method(sel_getUid("isSubclassOfClass:"), function $CPObject__isSubclassOfClass_(self, _cmd, aClass)
{ with(self)
{
    var theClass = self;
    for(; theClass; theClass = theClass.super_class)
        if(theClass === aClass)
            return YES;
    return NO;
}
}), new objj_method(sel_getUid("isKindOfClass:"), function $CPObject__isKindOfClass_(self, _cmd, aClass)
{ with(self)
{
    return objj_msgSend(self, "isSubclassOfClass:", aClass);
}
}), new objj_method(sel_getUid("isMemberOfClass:"), function $CPObject__isMemberOfClass_(self, _cmd, aClass)
{ with(self)
{
    return self === aClass;
}
}), new objj_method(sel_getUid("instancesRespondToSelector:"), function $CPObject__instancesRespondToSelector_(self, _cmd, aSelector)
{ with(self)
{
    return !!class_getInstanceMethod(self, aSelector);
}
}), new objj_method(sel_getUid("instanceMethodForSelector:"), function $CPObject__instanceMethodForSelector_(self, _cmd, aSelector)
{ with(self)
{
    return class_getMethodImplementation(self, aSelector);
}
}), new objj_method(sel_getUid("setVersion:"), function $CPObject__setVersion_(self, _cmd, aVersion)
{ with(self)
{
    version = aVersion;
    return self;
}
}), new objj_method(sel_getUid("version"), function $CPObject__version(self, _cmd)
{ with(self)
{
    return version;
}
})]);
}
objj_object.prototype.toString = function()
{
    if (this.isa && class_getInstanceMethod(this.isa, "description") != NULL)
        return objj_msgSend(this, "description")
    else
        return String(this) + " (-description not implemented)";
}

p;15;CPObjJRuntime.ji;7;CPLog.jc;467;
CPStringFromSelector= function(aSelector)
{
    return sel_getName(aSelector);
}
CPSelectorFromString= function(aSelectorName)
{
    return sel_registerName(aSelectorName);
}
CPClassFromString= function(aClassName)
{
    return objj_getClass(aClassName);
}
CPStringFromClass= function(aClass)
{
    return class_getName(aClass);
}
CPOrderedAscending = -1;
CPOrderedSame = 0;
CPOrderedDescending = 1;
CPNotFound = -1;
MIN = Math.min;
MAX = Math.max;
ABS = Math.abs;

p;29;CPPropertyListSerialization.ji;10;CPObject.jc;1089;
CPPropertyListOpenStepFormat = kCFPropertyListOpenStepFormat;
CPPropertyListXMLFormat_v1_0 = kCFPropertyListXMLFormat_v1_0;
CPPropertyListBinaryFormat_v1_0 = kCFPropertyListBinaryFormat_v1_0;
CPPropertyList280NorthFormat_v1_0 = kCFPropertyList280NorthFormat_v1_0;
{var the_class = objj_allocateClassPair(CPObject, "CPPropertyListSerialization"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(meta_class, [new objj_method(sel_getUid("dataFromPropertyList:format:errorDescription:"), function $CPPropertyListSerialization__dataFromPropertyList_format_errorDescription_(self, _cmd, aPlist, aFormat, anErrorString)
{ with(self)
{
    return CPPropertyListCreateData(aPlist, aFormat);
}
}), new objj_method(sel_getUid("propertyListFromData:format:errorDescription:"), function $CPPropertyListSerialization__propertyListFromData_format_errorDescription_(self, _cmd, data, aFormat, errorString)
{ with(self)
{
    return CPPropertyListCreateFromData(data, aFormat);
}
})]);
}

p;9;CPRange.jc;1714;CPMakeRange= function(location, length)
{
    return { location: location, length: length };
}
CPCopyRange= function(aRange)
{
    return { location: aRange.location, length: aRange.length };
}
CPMakeRangeCopy= function(aRange)
{
    return { location:aRange.location, length:aRange.length };
}
CPEmptyRange= function(aRange)
{
    return aRange.length === 0;
}
CPMaxRange= function(aRange)
{
    return aRange.location + aRange.length;
}
CPEqualRanges= function(lhsRange, rhsRange)
{
    return ((lhsRange.location === rhsRange.location) && (lhsRange.length === rhsRange.length));
}
CPLocationInRange= function(aLocation, aRange)
{
    return (aLocation >= aRange.location) && (aLocation < CPMaxRange(aRange));
}
CPUnionRange= function(lhsRange, rhsRange)
{
    var location = MIN(lhsRange.location, rhsRange.location);
    return CPMakeRange(location, MAX(CPMaxRange(lhsRange), CPMaxRange(rhsRange)) - location);
}
CPIntersectionRange= function(lhsRange, rhsRange)
{
    if(CPMaxRange(lhsRange) < rhsRange.location || CPMaxRange(rhsRange) < lhsRange.location)
        return CPMakeRange(0, 0);
    var location = MAX(lhsRange.location, rhsRange.location);
    return CPMakeRange(location, MIN(CPMaxRange(lhsRange), CPMaxRange(rhsRange)) - location);
}
CPRangeInRange= function(lhsRange, rhsRange)
{
    return (lhsRange.location <= rhsRange.location && CPMaxRange(lhsRange) >= CPMaxRange(rhsRange));
}
CPStringFromRange= function(aRange)
{
    return "{" + aRange.location + ", " + aRange.length + "}";
}
CPRangeFromString= function(aString)
{
    var comma = aString.indexOf(',');
    return { location:parseInt(aString.substr(1, comma - 1)), length:parseInt(aString.substring(comma + 1, aString.length)) };
}

p;11;CPRunLoop.ji;10;CPObject.ji;9;CPArray.ji;10;CPString.jc;9636;
CPDefaultRunLoopMode = "CPDefaultRunLoopMode";
_CPRunLoopPerformCompare= function(lhs, rhs)
{
    return objj_msgSend(rhs, "order") - objj_msgSend(lhs, "order");
}
var _CPRunLoopPerformPool = [],
    _CPRunLoopPerformPoolCapacity = 5;
{var the_class = objj_allocateClassPair(CPObject, "_CPRunLoopPerform"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_target"), new objj_ivar("_selector"), new objj_ivar("_argument"), new objj_ivar("_order"), new objj_ivar("_runLoopModes"), new objj_ivar("_isValid")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithSelector:target:argument:order:modes:"), function $_CPRunLoopPerform__initWithSelector_target_argument_order_modes_(self, _cmd, aSelector, aTarget, anArgument, anOrder, modes)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _selector = aSelector;
        _target = aTarget;
        _argument = anArgument;
        _order = anOrder;
        _runLoopModes = modes;
        _isValid = YES;
    }
    return self;
}
}), new objj_method(sel_getUid("selector"), function $_CPRunLoopPerform__selector(self, _cmd)
{ with(self)
{
    return _selector;
}
}), new objj_method(sel_getUid("target"), function $_CPRunLoopPerform__target(self, _cmd)
{ with(self)
{
    return _target;
}
}), new objj_method(sel_getUid("argument"), function $_CPRunLoopPerform__argument(self, _cmd)
{ with(self)
{
    return _argument;
}
}), new objj_method(sel_getUid("order"), function $_CPRunLoopPerform__order(self, _cmd)
{ with(self)
{
    return _order;
}
}), new objj_method(sel_getUid("fireInMode:"), function $_CPRunLoopPerform__fireInMode_(self, _cmd, aRunLoopMode)
{ with(self)
{
    if (!_isValid)
        return YES;
    if (objj_msgSend(_runLoopModes, "containsObject:", aRunLoopMode))
    {
        objj_msgSend(_target, "performSelector:withObject:", _selector, _argument);
        return YES;
    }
    return NO;
}
}), new objj_method(sel_getUid("invalidate"), function $_CPRunLoopPerform__invalidate(self, _cmd)
{ with(self)
{
    _isValid = NO;
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("_poolPerform:"), function $_CPRunLoopPerform___poolPerform_(self, _cmd, aPerform)
{ with(self)
{
    if (!aPerform || _CPRunLoopPerformPool.length >= _CPRunLoopPerformPoolCapacity)
        return;
    _CPRunLoopPerformPool.push(aPerform);
}
}), new objj_method(sel_getUid("performWithSelector:target:argument:order:modes:"), function $_CPRunLoopPerform__performWithSelector_target_argument_order_modes_(self, _cmd, aSelector, aTarget, anArgument, anOrder, modes)
{ with(self)
{
    if (_CPRunLoopPerformPool.length)
    {
        var perform = _CPRunLoopPerformPool.pop();
        perform._target = aTarget;
        perform._selector = aSelector;
        perform._argument = anArgument;
        perform._order = anOrder;
        perform._runLoopModes = modes;
        perform._isValid = YES;
        return perform;
    }
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithSelector:target:argument:order:modes:", aSelector, aTarget, anArgument, anOrder, modes);
}
})]);
}
var CPRunLoopLastNativeRunLoop = 0;
{var the_class = objj_allocateClassPair(CPObject, "CPRunLoop"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_runLoopLock"), new objj_ivar("_timersForModes"), new objj_ivar("_nativeTimersForModes"), new objj_ivar("_nextTimerFireDatesForModes"), new objj_ivar("_didAddTimer"), new objj_ivar("_effectiveDate"), new objj_ivar("_orderedPerforms")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPRunLoop__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _orderedPerforms = [];
        _timersForModes = {};
        _nativeTimersForModes = {};
        _nextTimerFireDatesForModes = {};
    }
    return self;
}
}), new objj_method(sel_getUid("performSelector:target:argument:order:modes:"), function $CPRunLoop__performSelector_target_argument_order_modes_(self, _cmd, aSelector, aTarget, anArgument, anOrder, modes)
{ with(self)
{
    var perform = objj_msgSend(_CPRunLoopPerform, "performWithSelector:target:argument:order:modes:", aSelector, aTarget, anArgument, anOrder, modes),
        count = _orderedPerforms.length;
    while (count--)
        if (anOrder < objj_msgSend(_orderedPerforms[count], "order"))
            break;
    _orderedPerforms.splice(count + 1, 0, perform);
}
}), new objj_method(sel_getUid("cancelPerformSelector:target:argument:"), function $CPRunLoop__cancelPerformSelector_target_argument_(self, _cmd, aSelector, aTarget, anArgument)
{ with(self)
{
    var count = _orderedPerforms.length;
    while (count--)
    {
        var perform = _orderedPerforms[count];
        if (objj_msgSend(perform, "selector") === aSelector && objj_msgSend(perform, "target") == aTarget && objj_msgSend(perform, "argument") == anArgument)
            objj_msgSend(_orderedPerforms[count], "invalidate");
    }
}
}), new objj_method(sel_getUid("performSelectors"), function $CPRunLoop__performSelectors(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "limitDateForMode:", CPDefaultRunLoopMode);
}
}), new objj_method(sel_getUid("addTimer:forMode:"), function $CPRunLoop__addTimer_forMode_(self, _cmd, aTimer, aMode)
{ with(self)
{
    if (_timersForModes[aMode])
        _timersForModes[aMode].push(aTimer);
    else
        _timersForModes[aMode] = [aTimer];
    _didAddTimer = YES;
    if (!aTimer._lastNativeRunLoopsForModes)
        aTimer._lastNativeRunLoopsForModes = {};
    aTimer._lastNativeRunLoopsForModes[aMode] = CPRunLoopLastNativeRunLoop;
}
}), new objj_method(sel_getUid("limitDateForMode:"), function $CPRunLoop__limitDateForMode_(self, _cmd, aMode)
{ with(self)
{
    if (_runLoopLock)
        return;
    _runLoopLock = YES;
    var now = _effectiveDate ? objj_msgSend(_effectiveDate, "laterDate:", objj_msgSend(CPDate, "date")) : objj_msgSend(CPDate, "date"),
        nextFireDate = nil,
        nextTimerFireDate = _nextTimerFireDatesForModes[aMode];
    if (_didAddTimer || nextTimerFireDate && nextTimerFireDate <= now)
    {
        _didAddTimer = NO;
        if (_nativeTimersForModes[aMode] !== nil)
        {
            window.clearNativeTimeout(_nativeTimersForModes[aMode]);
            _nativeTimersForModes[aMode] = nil;
        }
        var timers = _timersForModes[aMode],
            index = timers.length;
        _timersForModes[aMode] = nil;
        while (index--)
        {
            var timer = timers[index];
            if (timer._lastNativeRunLoopsForModes[aMode] < CPRunLoopLastNativeRunLoop && timer._isValid && timer._fireDate <= now)
                objj_msgSend(timer, "fire");
            if (timer._isValid)
                nextFireDate = (nextFireDate === nil) ? timer._fireDate : objj_msgSend(nextFireDate, "earlierDate:", timer._fireDate);
            else
            {
                timer._lastNativeRunLoopsForModes[aMode] = 0;
                timers.splice(index, 1);
            }
        }
        var newTimers = _timersForModes[aMode];
        if (newTimers && newTimers.length)
        {
            index = newTimers.length;
            while (index--)
            {
                var timer = newTimers[index];
                if (objj_msgSend(timer, "isValid"))
                    nextFireDate = (nextFireDate === nil) ? timer._fireDate : objj_msgSend(nextFireDate, "earlierDate:", timer._fireDate);
                else
                    newTimers.splice(index, 1);
            }
            _timersForModes[aMode] = newTimers.concat(timers);
        }
        else
            _timersForModes[aMode] = timers;
        _nextTimerFireDatesForModes[aMode] = nextFireDate;
        if (_nextTimerFireDatesForModes[aMode] !== nil)
            _nativeTimersForModes[aMode] = window.setNativeTimeout(function() { _effectiveDate = nextFireDate; _nativeTimersForModes[aMode] = nil; ++CPRunLoopLastNativeRunLoop; objj_msgSend(self, "limitDateForMode:", aMode); _effectiveDate = nil; }, MAX(0, objj_msgSend(nextFireDate, "timeIntervalSinceNow") * 1000));
    }
    var performs = _orderedPerforms,
        index = performs.length;
    _orderedPerforms = [];
    while (index--)
    {
        var perform = performs[index];
        if (objj_msgSend(perform, "fireInMode:", CPDefaultRunLoopMode))
        {
            objj_msgSend(_CPRunLoopPerform, "_poolPerform:", perform);
            performs.splice(index, 1);
        }
    }
    if (_orderedPerforms.length)
    {
        _orderedPerforms = _orderedPerforms.concat(performs);
        _orderedPerforms.sort(_CPRunLoopPerformCompare);
    }
    else
        _orderedPerforms = performs;
    _runLoopLock = NO;
    return nextFireDate;
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $CPRunLoop__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(CPRunLoop, "class"))
        return;
    CPMainRunLoop = objj_msgSend(objj_msgSend(CPRunLoop, "alloc"), "init");
}
}), new objj_method(sel_getUid("currentRunLoop"), function $CPRunLoop__currentRunLoop(self, _cmd)
{ with(self)
{
    return CPMainRunLoop;
}
}), new objj_method(sel_getUid("mainRunLoop"), function $CPRunLoop__mainRunLoop(self, _cmd)
{ with(self)
{
    return CPMainRunLoop;
}
})]);
}

p;7;CPSet.ji;10;CPObject.ji;9;CPArray.ji;10;CPNumber.ji;14;CPEnumerator.jc;10411;
{var the_class = objj_allocateClassPair(CPObject, "CPSet"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_contents"), new objj_ivar("_count")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPSet__init(self, _cmd)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init"))
    {
        _count = 0;
        _contents = {};
    }
    return self;
}
}), new objj_method(sel_getUid("initWithArray:"), function $CPSet__initWithArray_(self, _cmd, anArray)
{ with(self)
{
    if (self = objj_msgSend(self, "init"))
    {
        var count = anArray.length;
        while (count--)
            objj_msgSend(self, "addObject:", anArray[count]);
    }
    return self;
}
}), new objj_method(sel_getUid("initWithObjects:count:"), function $CPSet__initWithObjects_count_(self, _cmd, objects, count)
{ with(self)
{
    return objj_msgSend(self, "initWithArray:", objects.splice(0, count));
}
}), new objj_method(sel_getUid("initWithObjects:"), function $CPSet__initWithObjects_(self, _cmd, anObject)
{ with(self)
{
    if (self = objj_msgSend(self, "init"))
    {
  var argLength = arguments.length,
   i = 2;
        for(; i < argLength && (argument = arguments[i]) != nil; ++i)
            objj_msgSend(self, "addObject:", argument);
    }
    return self;
}
}), new objj_method(sel_getUid("initWithSet:"), function $CPSet__initWithSet_(self, _cmd, aSet)
{ with(self)
{
    return objj_msgSend(self, "initWithSet:copyItems:", aSet, NO);
}
}), new objj_method(sel_getUid("initWithSet:copyItems:"), function $CPSet__initWithSet_copyItems_(self, _cmd, aSet, shouldCopyItems)
{ with(self)
{
    self = objj_msgSend(self, "init");
    if (!aSet)
        return self;
    var contents = aSet._contents;
    for (var property in contents)
    {
        if (contents.hasOwnProperty(property))
        {
            if (shouldCopyItems)
                objj_msgSend(self, "addObject:", objj_msgSend(contents[property], "copy"));
            else
                objj_msgSend(self, "addObject:", contents[property]);
        }
    }
    return self;
}
}), new objj_method(sel_getUid("allObjects"), function $CPSet__allObjects(self, _cmd)
{ with(self)
{
    var array = [];
    for (var property in _contents)
    {
        if (_contents.hasOwnProperty(property))
            array.push(_contents[property]);
    }
    return array;
}
}), new objj_method(sel_getUid("anyObject"), function $CPSet__anyObject(self, _cmd)
{ with(self)
{
    for (var property in _contents)
    {
        if (_contents.hasOwnProperty(property))
            return _contents[property];
    }
    return nil;
}
}), new objj_method(sel_getUid("containsObject:"), function $CPSet__containsObject_(self, _cmd, anObject)
{ with(self)
{
    if (_contents[objj_msgSend(anObject, "hash")] && objj_msgSend(_contents[objj_msgSend(anObject, "hash")], "isEqual:", anObject))
        return YES;
    return NO;
}
}), new objj_method(sel_getUid("count"), function $CPSet__count(self, _cmd)
{ with(self)
{
    return _count;
}
}), new objj_method(sel_getUid("intersectsSet:"), function $CPSet__intersectsSet_(self, _cmd, set)
{ with(self)
{
    var items = objj_msgSend(set, "allObjects");
    for (var i = items.length; i > 0; i--)
    {
        if (objj_msgSend(self, "containsObject:", items[i]))
            return YES;
    }
    return NO;
}
}), new objj_method(sel_getUid("isEqualToSet:"), function $CPSet__isEqualToSet_(self, _cmd, set)
{ with(self)
{
    return self === set || (objj_msgSend(self, "count") === objj_msgSend(set, "count") && objj_msgSend(set, "isSubsetOfSet:", self));
}
}), new objj_method(sel_getUid("isSubsetOfSet:"), function $CPSet__isSubsetOfSet_(self, _cmd, set)
{ with(self)
{
    var items = objj_msgSend(self, "allObjects");
    for (var i = 0; i < items.length; i++)
    {
        if (!objj_msgSend(set, "containsObject:", items[i]))
            return NO;
    }
    return YES;
}
}), new objj_method(sel_getUid("makeObjectsPerformSelector:"), function $CPSet__makeObjectsPerformSelector_(self, _cmd, aSelector)
{ with(self)
{
    objj_msgSend(self, "makeObjectsPerformSelector:withObject:", aSelector, nil);
}
}), new objj_method(sel_getUid("makeObjectsPerformSelector:withObject:"), function $CPSet__makeObjectsPerformSelector_withObject_(self, _cmd, aSelector, argument)
{ with(self)
{
    var items = objj_msgSend(self, "allObjects");
    for (var i = 0; i < items.length; i++)
    {
        objj_msgSend(items[i], "performSelector:withObject:", aSelector, argument);
    }
}
}), new objj_method(sel_getUid("member:"), function $CPSet__member_(self, _cmd, object)
{ with(self)
{
    if (objj_msgSend(self, "containsObject:", object))
        return object;
    return nil;
}
}), new objj_method(sel_getUid("objectEnumerator"), function $CPSet__objectEnumerator(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "allObjects"), "objectEnumerator");
}
}), new objj_method(sel_getUid("initWithCapacity:"), function $CPSet__initWithCapacity_(self, _cmd, numItems)
{ with(self)
{
    self = objj_msgSend(self, "init");
    return self;
}
}), new objj_method(sel_getUid("setSet:"), function $CPSet__setSet_(self, _cmd, set)
{ with(self)
{
    objj_msgSend(self, "removeAllObjects");
    objj_msgSend(self, "addObjectsFromArray:", objj_msgSend(set, "allObjects"));
}
}), new objj_method(sel_getUid("addObject:"), function $CPSet__addObject_(self, _cmd, anObject)
{ with(self)
{
    _contents[objj_msgSend(anObject, "hash")] = anObject;
    _count++;
}
}), new objj_method(sel_getUid("addObjectsFromArray:"), function $CPSet__addObjectsFromArray_(self, _cmd, array)
{ with(self)
{
    for (var i = 0, count = array.length; i < count; i++)
    {
        objj_msgSend(self, "addObject:", array[i]);
    }
}
}), new objj_method(sel_getUid("removeObject:"), function $CPSet__removeObject_(self, _cmd, anObject)
{ with(self)
{
    if (objj_msgSend(self, "containsObject:", anObject))
    {
        delete _contents[objj_msgSend(anObject, "hash")];
        _count--;
    }
}
}), new objj_method(sel_getUid("removeAllObjects"), function $CPSet__removeAllObjects(self, _cmd)
{ with(self)
{
    _contents = {};
    _count = 0;
}
}), new objj_method(sel_getUid("intersectSet:"), function $CPSet__intersectSet_(self, _cmd, set)
{ with(self)
{
    var items = objj_msgSend(self, "allObjects");
    for (var i = 0, count = items.length; i < count; i++)
    {
        if (!objj_msgSend(set, "containsObject:", items[i]))
            objj_msgSend(self, "removeObject:", items[i]);
    }
}
}), new objj_method(sel_getUid("minusSet:"), function $CPSet__minusSet_(self, _cmd, set)
{ with(self)
{
    var items = objj_msgSend(set, "allObjects");
    for (var i = 0; i < items.length; i++)
    {
        if (objj_msgSend(self, "containsObject:", items[i]))
            objj_msgSend(self, "removeObject:", items[i]);
    }
}
}), new objj_method(sel_getUid("unionSet:"), function $CPSet__unionSet_(self, _cmd, set)
{ with(self)
{
    var items = objj_msgSend(set, "allObjects");
    for (var i = 0, count = items.length; i < count; i++)
    {
        objj_msgSend(self, "addObject:", items[i]);
    }
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("set"), function $CPSet__set(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
}), new objj_method(sel_getUid("setWithArray:"), function $CPSet__setWithArray_(self, _cmd, array)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithArray:", array);
}
}), new objj_method(sel_getUid("setWithObject:"), function $CPSet__setWithObject_(self, _cmd, anObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithArray:", [anObject]);
}
}), new objj_method(sel_getUid("setWithObjects:count:"), function $CPSet__setWithObjects_count_(self, _cmd, objects, count)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithObjects:count:", objects, count);
}
}), new objj_method(sel_getUid("setWithObjects:"), function $CPSet__setWithObjects_(self, _cmd, anObject)
{ with(self)
{
    var set = objj_msgSend(objj_msgSend(self, "alloc"), "init"),
        argLength = arguments.length,
        i = 2;
    for(; i < argLength && ((argument = arguments[i]) !== nil); ++i)
        objj_msgSend(set, "addObject:", argument);
    return set;
}
}), new objj_method(sel_getUid("setWithSet:"), function $CPSet__setWithSet_(self, _cmd, set)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithSet:", set);
}
}), new objj_method(sel_getUid("setWithCapacity:"), function $CPSet__setWithCapacity_(self, _cmd, numItems)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithCapacity:", numItems);
}
})]);
}
{
var the_class = objj_getClass("CPSet")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPSet\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("copy"), function $CPSet__copy(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPSet, "alloc"), "initWithSet:", self);
}
}), new objj_method(sel_getUid("mutableCopy"), function $CPSet__mutableCopy(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "copy");
}
})]);
}
var CPSetObjectsKey = "CPSetObjectsKey";
{
var the_class = objj_getClass("CPSet")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPSet\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPSet__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    return objj_msgSend(self, "initWithArray:", objj_msgSend(aCoder, "decodeObjectForKey:", CPSetObjectsKey));
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPSet__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", objj_msgSend(self, "allObjects"), CPSetObjectsKey);
}
})]);
}
{var the_class = objj_allocateClassPair(CPSet, "CPMutableSet"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
}

p;18;CPSortDescriptor.ji;10;CPObject.ji;15;CPObjJRuntime.jc;2123;
CPOrderedAscending = -1;
CPOrderedSame = 0;
CPOrderedDescending = 1;
{var the_class = objj_allocateClassPair(CPObject, "CPSortDescriptor"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_key"), new objj_ivar("_selector"), new objj_ivar("_ascending")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithKey:ascending:"), function $CPSortDescriptor__initWithKey_ascending_(self, _cmd, aKey, isAscending)
{ with(self)
{
    return objj_msgSend(self, "initWithKey:ascending:selector:", aKey, isAscending, sel_getUid("compare:"));
}
}), new objj_method(sel_getUid("initWithKey:ascending:selector:"), function $CPSortDescriptor__initWithKey_ascending_selector_(self, _cmd, aKey, isAscending, aSelector)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _key = aKey;
        _ascending = isAscending;
        _selector = aSelector;
    }
    return self;
}
}), new objj_method(sel_getUid("ascending"), function $CPSortDescriptor__ascending(self, _cmd)
{ with(self)
{
    return _ascending;
}
}), new objj_method(sel_getUid("key"), function $CPSortDescriptor__key(self, _cmd)
{ with(self)
{
    return _key;
}
}), new objj_method(sel_getUid("selector"), function $CPSortDescriptor__selector(self, _cmd)
{ with(self)
{
    return _selector;
}
}), new objj_method(sel_getUid("compareObject:withObject:"), function $CPSortDescriptor__compareObject_withObject_(self, _cmd, lhsObject, rhsObject)
{ with(self)
{
    return (_ascending ? 1 : -1) * objj_msgSend(objj_msgSend(lhsObject, "valueForKey:", _key), "performSelector:withObject:", _selector, objj_msgSend(rhsObject, "valueForKey:", _key));
}
}), new objj_method(sel_getUid("reversedSortDescriptor"), function $CPSortDescriptor__reversedSortDescriptor(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "class"), "alloc"), "initWithKey:ascending:selector:", _key, !_ascending, _selector);
}
})]);
}

p;10;CPString.ji;10;CPObject.ji;13;CPException.ji;18;CPSortDescriptor.ji;9;CPValue.jc;12737;
CPCaseInsensitiveSearch = 1;
CPLiteralSearch = 2;
CPBackwardsSearch = 4;
CPAnchoredSearch = 8;
CPNumericSearch = 64;
var CPStringHashes = new objj_dictionary();
{var the_class = objj_allocateClassPair(CPObject, "CPString"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithString:"), function $CPString__initWithString_(self, _cmd, aString)
{ with(self)
{
    return String(aString);
}
}), new objj_method(sel_getUid("initWithFormat:"), function $CPString__initWithFormat_(self, _cmd, format)
{ with(self)
{
    if (!format)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "initWithFormat: the format can't be 'nil'");
    self = sprintf.apply(this, Array.prototype.slice.call(arguments, 2));
    return self;
}
}), new objj_method(sel_getUid("description"), function $CPString__description(self, _cmd)
{ with(self)
{
    return self;
}
}), new objj_method(sel_getUid("length"), function $CPString__length(self, _cmd)
{ with(self)
{
    return length;
}
}), new objj_method(sel_getUid("characterAtIndex:"), function $CPString__characterAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    return charAt(anIndex);
}
}), new objj_method(sel_getUid("stringByAppendingFormat:"), function $CPString__stringByAppendingFormat_(self, _cmd, format)
{ with(self)
{
    if (!format)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "initWithFormat: the format can't be 'nil'");
    return self + sprintf.apply(this, Array.prototype.slice.call(arguments, 2));
}
}), new objj_method(sel_getUid("stringByAppendingString:"), function $CPString__stringByAppendingString_(self, _cmd, aString)
{ with(self)
{
    return self + aString;
}
}), new objj_method(sel_getUid("stringByPaddingToLength:withString:startingAtIndex:"), function $CPString__stringByPaddingToLength_withString_startingAtIndex_(self, _cmd, aLength, aString, anIndex)
{ with(self)
{
    if (length == aLength)
        return self;
    if (aLength < length)
        return substr(0, aLength);
    var string = self,
        substring = aString.substring(anIndex),
        difference = aLength - length;
    while ((difference -= substring.length) >= 0)
        string += substring;
    if (-difference < substring.length)
        string += substring.substring(0, -difference);
    return string;
}
}), new objj_method(sel_getUid("componentsSeparatedByString:"), function $CPString__componentsSeparatedByString_(self, _cmd, aString)
{ with(self)
{
    return split(aString);
}
}), new objj_method(sel_getUid("substringFromIndex:"), function $CPString__substringFromIndex_(self, _cmd, anIndex)
{ with(self)
{
    return substr(anIndex);
}
}), new objj_method(sel_getUid("substringWithRange:"), function $CPString__substringWithRange_(self, _cmd, aRange)
{ with(self)
{
    return substr(aRange.location, aRange.length);
}
}), new objj_method(sel_getUid("substringToIndex:"), function $CPString__substringToIndex_(self, _cmd, anIndex)
{ with(self)
{
    return substring(0, anIndex);
}
}), new objj_method(sel_getUid("rangeOfString:"), function $CPString__rangeOfString_(self, _cmd, aString)
{ with(self)
{
   return objj_msgSend(self, "rangeOfString:options:", aString, 0);
}
}), new objj_method(sel_getUid("rangeOfString:options:"), function $CPString__rangeOfString_options_(self, _cmd, aString, aMask)
{ with(self)
{
    return objj_msgSend(self, "rangeOfString:options:range:", aString, aMask, nil);
}
}), new objj_method(sel_getUid("rangeOfString:options:range:"), function $CPString__rangeOfString_options_range_(self, _cmd, aString, aMask, aRange)
{ with(self)
{
    var string = (aRange == nil) ? self : objj_msgSend(self, "substringWithRange:", aRange),
        location = CPNotFound;
    if (aMask & CPCaseInsensitiveSearch)
    {
        string = string.toLowerCase();
        aString = aString.toLowerCase();
    }
    if (aMask & CPBackwardsSearch)
        location = string.lastIndexOf(aString, aMask & CPAnchoredSearch ? length - aString.length : 0);
    else if (aMask & CPAnchoredSearch)
        location = string.substr(0, aString.length).indexOf(aString) != CPNotFound ? 0 : CPNotFound;
    else
        location = string.indexOf(aString);
    return CPMakeRange(location, location == CPNotFound ? 0 : aString.length);
}
}), new objj_method(sel_getUid("stringByReplacingOccurrencesOfString:withString:"), function $CPString__stringByReplacingOccurrencesOfString_withString_(self, _cmd, target, replacement)
{ with(self)
{
    return self.replace(new RegExp(target, "g"), replacement);
}
}), new objj_method(sel_getUid("stringByReplacingOccurrencesOfString:withString:options:range:"), function $CPString__stringByReplacingOccurrencesOfString_withString_options_range_(self, _cmd, target, replacement, options, searchRange)
{ with(self)
{
    var start = substring(0, searchRange.location),
        stringSegmentToSearch = substr(searchRange.location, searchRange.length),
        end = substring(searchRange.location + searchRange.length, self.length),
        regExp;
    if (options & CPCaseInsensitiveSearch)
        regExp = new RegExp(target, "gi");
    else
        regExp = new RegExp(target, "g");
    return start + '' + stringSegmentToSearch.replace(regExp, replacement) + '' + end;
}
}), new objj_method(sel_getUid("stringByReplacingCharactersInRange:withString:"), function $CPString__stringByReplacingCharactersInRange_withString_(self, _cmd, range, replacement)
{ with(self)
{
 return '' + substring(0, range.location) + replacement + substring(range.location + range.length, self.length);
}
}), new objj_method(sel_getUid("compare:"), function $CPString__compare_(self, _cmd, aString)
{ with(self)
{
    return objj_msgSend(self, "compare:options:", aString, nil);
}
}), new objj_method(sel_getUid("caseInsensitiveCompare:"), function $CPString__caseInsensitiveCompare_(self, _cmd, aString)
{ with(self)
{
    return objj_msgSend(self, "compare:options:", aString, CPCaseInsensitiveSearch);
}
}), new objj_method(sel_getUid("compare:options:"), function $CPString__compare_options_(self, _cmd, aString, aMask)
{ with(self)
{
    var lhs = self,
        rhs = aString;
    if (aMask & CPCaseInsensitiveSearch)
    {
        lhs = lhs.toLowerCase();
        rhs = rhs.toLowerCase();
    }
    if (lhs < rhs)
        return CPOrderedAscending;
    else if (lhs > rhs)
        return CPOrderedDescending;
    return CPOrderedSame;
}
}), new objj_method(sel_getUid("compare:options:range:"), function $CPString__compare_options_range_(self, _cmd, aString, aMask, range)
{ with(self)
{
    var lhs = objj_msgSend(self, "substringWithRange:", range),
        rhs = aString;
    return objj_msgSend(lhs, "compare:options:", rhs, aMask);
}
}), new objj_method(sel_getUid("hasPrefix:"), function $CPString__hasPrefix_(self, _cmd, aString)
{ with(self)
{
    return aString && aString != "" && indexOf(aString) == 0;
}
}), new objj_method(sel_getUid("hasSuffix:"), function $CPString__hasSuffix_(self, _cmd, aString)
{ with(self)
{
    return aString && aString != "" && lastIndexOf(aString) == (length - aString.length);
}
}), new objj_method(sel_getUid("isEqualToString:"), function $CPString__isEqualToString_(self, _cmd, aString)
{ with(self)
{
    return self == aString;
}
}), new objj_method(sel_getUid("UID"), function $CPString__UID(self, _cmd)
{ with(self)
{
    var hash = dictionary_getValue(CPStringHashes, self);
    if (!hash)
    {
        hash = _objj_generateObjectHash();
        dictionary_setValue(CPStringHashes, self, hash);
    }
    return hash;
}
}), new objj_method(sel_getUid("capitalizedString"), function $CPString__capitalizedString(self, _cmd)
{ with(self)
{
    var parts = self.split(/\b/g);
    for (var i = 0; i < parts.length; i++)
    {
        if (i == 0 || (/\s$/).test(parts[i-1]))
            parts[i] = parts[i].substring(0, 1).toUpperCase() + parts[i].substring(1).toLowerCase();
        else
            parts[i] = parts[i].toLowerCase();
    }
    return parts.join("");
}
}), new objj_method(sel_getUid("lowercaseString"), function $CPString__lowercaseString(self, _cmd)
{ with(self)
{
    return toLowerCase();
}
}), new objj_method(sel_getUid("uppercaseString"), function $CPString__uppercaseString(self, _cmd)
{ with(self)
{
    return toUpperCase();
}
}), new objj_method(sel_getUid("doubleValue"), function $CPString__doubleValue(self, _cmd)
{ with(self)
{
    return parseFloat(self, 10);
}
}), new objj_method(sel_getUid("boolValue"), function $CPString__boolValue(self, _cmd)
{ with(self)
{
    var replaceRegExp = new RegExp("^\\s*[\\+,\\-]*0*");
    return RegExp("^[Y,y,t,T,1-9]").test(self.replace(replaceRegExp, ''));
}
}), new objj_method(sel_getUid("floatValue"), function $CPString__floatValue(self, _cmd)
{ with(self)
{
    return parseFloat(self, 10);
}
}), new objj_method(sel_getUid("intValue"), function $CPString__intValue(self, _cmd)
{ with(self)
{
    return parseInt(self, 10);
}
}), new objj_method(sel_getUid("pathComponents"), function $CPString__pathComponents(self, _cmd)
{ with(self)
{
    var result = split('/');
    if (result[0] === "")
        result[0] = "/";
    if (result[result.length - 1] === "")
        result.pop();
    return result;
}
}), new objj_method(sel_getUid("pathExtension"), function $CPString__pathExtension(self, _cmd)
{ with(self)
{
    return substr(lastIndexOf('.') + 1);
}
}), new objj_method(sel_getUid("lastPathComponent"), function $CPString__lastPathComponent(self, _cmd)
{ with(self)
{
    var components = objj_msgSend(self, "pathComponents");
    return components[components.length -1];
}
}), new objj_method(sel_getUid("stringByDeletingLastPathComponent"), function $CPString__stringByDeletingLastPathComponent(self, _cmd)
{ with(self)
{
    var path = self,
        start = length - 1;
    while (path.charAt(start) === '/')
        start--;
    path = path.substr(0, path.lastIndexOf('/', start));
    if (path === "" && charAt(0) === '/')
        return '/';
    return path;
}
}), new objj_method(sel_getUid("stringByStandardizingPath"), function $CPString__stringByStandardizingPath(self, _cmd)
{ with(self)
{
    return objj_standardize_path(self);
}
}), new objj_method(sel_getUid("copy"), function $CPString__copy(self, _cmd)
{ with(self)
{
    return new String(self);
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("alloc"), function $CPString__alloc(self, _cmd)
{ with(self)
{
    return new String;
}
}), new objj_method(sel_getUid("string"), function $CPString__string(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "init");
}
}), new objj_method(sel_getUid("stringWithHash:"), function $CPString__stringWithHash_(self, _cmd, aHash)
{ with(self)
{
    var hashString = parseInt(aHash, 10).toString(16);
    return "000000".substring(0, MAX(6-hashString.length, 0)) + hashString;
}
}), new objj_method(sel_getUid("stringWithString:"), function $CPString__stringWithString_(self, _cmd, aString)
{ with(self)
{
    if (!aString)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "stringWithString: the string can't be 'nil'");
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithString:", aString);
}
}), new objj_method(sel_getUid("stringWithFormat:"), function $CPString__stringWithFormat_(self, _cmd, format)
{ with(self)
{
    if (!format)
        objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "initWithFormat: the format can't be 'nil'");
    return sprintf.apply(this, Array.prototype.slice.call(arguments, 2));
}
})]);
}
{
var the_class = objj_getClass("CPString")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPString\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("objectFromJSON"), function $CPString__objectFromJSON(self, _cmd)
{ with(self)
{
    return JSON.parse(self);
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("JSONFromObject:"), function $CPString__JSONFromObject_(self, _cmd, anObject)
{ with(self)
{
    return JSON.stringify(anObject);
}
})]);
}
{
var the_class = objj_getClass("CPString")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPString\""));
var meta_class = the_class.isa;class_addMethods(meta_class, [new objj_method(sel_getUid("UUID"), function $CPString__UUID(self, _cmd)
{ with(self)
{
    var g = "";
    for(var i = 0; i < 32; i++)
        g += FLOOR(RAND() * 0xF).toString(0xF);
    return g;
}
})]);
}
String.prototype.isa = CPString;

p;9;CPTimer.ji;10;CPObject.ji;14;CPInvocation.ji;8;CPDate.ji;11;CPRunLoop.jc;7723;
{var the_class = objj_allocateClassPair(CPObject, "CPTimer"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_timeInterval"), new objj_ivar("_invocation"), new objj_ivar("_callback"), new objj_ivar("_repeats"), new objj_ivar("_isValid"), new objj_ivar("_fireDate"), new objj_ivar("_userInfo")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFireDate:interval:invocation:repeats:"), function $CPTimer__initWithFireDate_interval_invocation_repeats_(self, _cmd, aDate, seconds, anInvocation, shouldRepeat)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _timeInterval = seconds;
        _invocation = anInvocation;
        _repeats = shouldRepeat;
        _isValid = YES;
        _fireDate = aDate;
    }
    return self;
}
}), new objj_method(sel_getUid("initWithFireDate:interval:target:selector:userInfo:repeats:"), function $CPTimer__initWithFireDate_interval_target_selector_userInfo_repeats_(self, _cmd, aDate, seconds, aTarget, aSelector, userInfo, shouldRepeat)
{ with(self)
{
    var invocation = objj_msgSend(CPInvocation, "invocationWithMethodSignature:", 1);
    objj_msgSend(invocation, "setTarget:", aTarget);
    objj_msgSend(invocation, "setSelector:", aSelector);
    objj_msgSend(invocation, "setArgument:atIndex:", self, 2);
    self = objj_msgSend(self, "initWithFireDate:interval:invocation:repeats:", aDate, seconds, invocation, shouldRepeat);
    if (self)
        _userInfo = userInfo;
    return self;
}
}), new objj_method(sel_getUid("initWithFireDate:interval:callback:repeats:"), function $CPTimer__initWithFireDate_interval_callback_repeats_(self, _cmd, aDate, seconds, aFunction, shouldRepeat)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _timeInterval = seconds;
        _callback = aFunction;
        _repeats = shouldRepeat;
        _isValid = YES;
        _fireDate = aDate;
    }
    return self;
}
}), new objj_method(sel_getUid("timeInterval"), function $CPTimer__timeInterval(self, _cmd)
{ with(self)
{
   return _timeInterval;
}
}), new objj_method(sel_getUid("fireDate"), function $CPTimer__fireDate(self, _cmd)
{ with(self)
{
   return _fireDate;
}
}), new objj_method(sel_getUid("setFireDate:"), function $CPTimer__setFireDate_(self, _cmd, aDate)
{ with(self)
{
    _fireDate = aDate;
}
}), new objj_method(sel_getUid("fire"), function $CPTimer__fire(self, _cmd)
{ with(self)
{
    if (!_isValid)
        return;
    if (_callback)
        _callback();
    else
        objj_msgSend(_invocation, "invoke");
    if (!_isValid)
        return;
    if (_repeats)
        _fireDate = objj_msgSend(CPDate, "dateWithTimeIntervalSinceNow:", _timeInterval);
    else
        objj_msgSend(self, "invalidate");
}
}), new objj_method(sel_getUid("isValid"), function $CPTimer__isValid(self, _cmd)
{ with(self)
{
   return _isValid;
}
}), new objj_method(sel_getUid("invalidate"), function $CPTimer__invalidate(self, _cmd)
{ with(self)
{
   _isValid = NO;
   _userInfo = nil;
   _invocation = nil;
   _callback = nil;
}
}), new objj_method(sel_getUid("userInfo"), function $CPTimer__userInfo(self, _cmd)
{ with(self)
{
   return _userInfo;
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("scheduledTimerWithTimeInterval:invocation:repeats:"), function $CPTimer__scheduledTimerWithTimeInterval_invocation_repeats_(self, _cmd, seconds, anInvocation, shouldRepeat)
{ with(self)
{
    var timer = objj_msgSend(objj_msgSend(self, "alloc"), "initWithFireDate:interval:invocation:repeats:", objj_msgSend(CPDate, "dateWithTimeIntervalSinceNow:", seconds), seconds, anInvocation, shouldRepeat);
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "addTimer:forMode:", timer, CPDefaultRunLoopMode);
    return timer;
}
}), new objj_method(sel_getUid("scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:"), function $CPTimer__scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(self, _cmd, seconds, aTarget, aSelector, userInfo, shouldRepeat)
{ with(self)
{
    var timer = objj_msgSend(objj_msgSend(self, "alloc"), "initWithFireDate:interval:target:selector:userInfo:repeats:", objj_msgSend(CPDate, "dateWithTimeIntervalSinceNow:", seconds), seconds, aTarget, aSelector, userInfo, shouldRepeat)
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "addTimer:forMode:", timer, CPDefaultRunLoopMode);
    return timer;
}
}), new objj_method(sel_getUid("scheduledTimerWithTimeInterval:callback:repeats:"), function $CPTimer__scheduledTimerWithTimeInterval_callback_repeats_(self, _cmd, seconds, aFunction, shouldRepeat)
{ with(self)
{
    var timer = objj_msgSend(objj_msgSend(self, "alloc"), "initWithFireDate:interval:callback:repeats:", objj_msgSend(CPDate, "dateWithTimeIntervalSinceNow:", seconds), seconds, aFunction, shouldRepeat);
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "addTimer:forMode:", timer, CPDefaultRunLoopMode);
    return timer;
}
}), new objj_method(sel_getUid("timerWithTimeInterval:invocation:repeats:"), function $CPTimer__timerWithTimeInterval_invocation_repeats_(self, _cmd, seconds, anInvocation, shouldRepeat)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithFireDate:interval:invocation:repeats:", nil, seconds, anInvocation, shouldRepeat);
}
}), new objj_method(sel_getUid("timerWithTimeInterval:target:selector:userInfo:repeats:"), function $CPTimer__timerWithTimeInterval_target_selector_userInfo_repeats_(self, _cmd, seconds, aTarget, aSelector, userInfo, shouldRepeat)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithFireDate:interval:target:selector:userInfo:repeats:", nil, seconds, aTarget, aSelector, userInfo, shouldRepeat);
}
}), new objj_method(sel_getUid("timerWithTimeInterval:callback:repeats:"), function $CPTimer__timerWithTimeInterval_callback_repeats_(self, _cmd, seconds, aFunction, shouldRepeat)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithFireDate:interval:callback:repeats:", nil, seconds, aFunction, shouldRepeat);
}
})]);
}
var CPTimersTimeoutID = 1000,
    CPTimersForTimeoutIDs = {};
var _CPTimerBridgeTimer = function(codeOrFunction, aDelay, shouldRepeat, functionArgs)
{
    var timeoutID = CPTimersTimeoutID++,
        theFunction = nil;
    if (typeof codeOrFunction === "string")
        theFunction = function() { new Function(codeOrFunction)(); if (!shouldRepeat) CPTimersForTimeoutIDs[timeoutID] = nil; }
    else
    {
        if (!functionArgs)
            functionArgs = [];
        theFunction = function() { codeOrFunction.apply(window, functionArgs); if (!shouldRepeat) CPTimersForTimeoutIDs[timeoutID] = nil; }
    }
    CPTimersForTimeoutIDs[timeoutID] = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:callback:repeats:", aDelay / 1000, theFunction, shouldRepeat);
    return timeoutID;
}
window.setTimeout = function(codeOrFunction, aDelay)
{
    return _CPTimerBridgeTimer(codeOrFunction, aDelay, NO, Array.prototype.slice.apply(arguments, [2]));
}
window.clearTimeout = function(aTimeoutID)
{
    var timer = CPTimersForTimeoutIDs[aTimeoutID];
    if (timer)
        objj_msgSend(timer, "invalidate");
    CPTimersForTimeoutIDs[aTimeoutID] = nil;
}
window.setInterval = function(codeOrFunction, aDelay, functionArgs)
{
    return _CPTimerBridgeTimer(codeOrFunction, aDelay, YES, Array.prototype.slice.apply(arguments, [2]));
}
window.clearInterval = function(aTimeoutID)
{
    window.clearTimeout(aTimeoutID);
}

p;15;CPUndoManager.ji;10;CPObject.ji;14;CPInvocation.jc;18634;
var CPUndoManagerNormal = 0,
    CPUndoManagerUndoing = 1,
    CPUndoManagerRedoing = 2;
CPUndoManagerCheckpointNotification = "CPUndoManagerCheckpointNotification";
CPUndoManagerDidOpenUndoGroupNotification = "CPUndoManagerDidOpenUndoGroupNotification";
CPUndoManagerDidRedoChangeNotification = "CPUndoManagerDidRedoChangeNotification";
CPUndoManagerDidUndoChangeNotification = "CPUndoManagerDidUndoChangeNotification";
CPUndoManagerWillCloseUndoGroupNotification = "CPUndoManagerWillCloseUndoGroupNotification";
CPUndoManagerWillRedoChangeNotification = "CPUndoManagerWillRedoChangeNotification";
CPUndoManagerWillUndoChangeNotification = "CPUndoManagerWillUndoChangeNotification";
CPUndoCloseGroupingRunLoopOrdering = 350000;
var _CPUndoGroupingPool = [],
    _CPUndoGroupingPoolCapacity = 5;
{var the_class = objj_allocateClassPair(CPObject, "_CPUndoGrouping"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_parent"), new objj_ivar("_invocations")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithParent:"), function $_CPUndoGrouping__initWithParent_(self, _cmd, anUndoGrouping)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _parent = anUndoGrouping;
        _invocations = [];
    }
    return self;
}
}), new objj_method(sel_getUid("parent"), function $_CPUndoGrouping__parent(self, _cmd)
{ with(self)
{
    return _parent;
}
}), new objj_method(sel_getUid("addInvocation:"), function $_CPUndoGrouping__addInvocation_(self, _cmd, anInvocation)
{ with(self)
{
    _invocations.push(anInvocation);
}
}), new objj_method(sel_getUid("addInvocationsFromArray:"), function $_CPUndoGrouping__addInvocationsFromArray_(self, _cmd, invocations)
{ with(self)
{
    objj_msgSend(_invocations, "addObjectsFromArray:", invocations);
}
}), new objj_method(sel_getUid("removeInvocationsWithTarget:"), function $_CPUndoGrouping__removeInvocationsWithTarget_(self, _cmd, aTarget)
{ with(self)
{
    var index = _invocations.length;
    while (index--)
        if (objj_msgSend(_invocations[index], "target") == aTarget)
            _invocations.splice(index, 1);
}
}), new objj_method(sel_getUid("invocations"), function $_CPUndoGrouping__invocations(self, _cmd)
{ with(self)
{
    return _invocations;
}
}), new objj_method(sel_getUid("invoke"), function $_CPUndoGrouping__invoke(self, _cmd)
{ with(self)
{
    var index = _invocations.length;
    while (index--)
        objj_msgSend(_invocations[index], "invoke");
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("_poolUndoGrouping:"), function $_CPUndoGrouping___poolUndoGrouping_(self, _cmd, anUndoGrouping)
{ with(self)
{
    if (!anUndoGrouping || _CPUndoGroupingPool.length >= _CPUndoGroupingPoolCapacity)
        return;
    _CPUndoGroupingPool.push(anUndoGrouping);
}
}), new objj_method(sel_getUid("undoGroupingWithParent:"), function $_CPUndoGrouping__undoGroupingWithParent_(self, _cmd, anUndoGrouping)
{ with(self)
{
    if (_CPUndoGroupingPool.length)
    {
        var grouping = _CPUndoGroupingPool.pop();
        grouping._parent = anUndoGrouping;
        if (grouping._invocations.length)
            grouping._invocations = [];
        return grouping;
    }
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithParent:", anUndoGrouping);
}
})]);
}
var _CPUndoGroupingParentKey = "_CPUndoGroupingParentKey",
    _CPUndoGroupingInvocationsKey = "_CPUndoGroupingInvocationsKey";
{
var the_class = objj_getClass("_CPUndoGrouping")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"_CPUndoGrouping\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $_CPUndoGrouping__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _parent = objj_msgSend(aCoder, "decodeObjectForKey:", _CPUndoGroupingParentKey);
        _invocations = objj_msgSend(aCoder, "decodeObjectForKey:", _CPUndoGroupingInvocationsKey);
    }
    return self;
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $_CPUndoGrouping__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _parent, _CPUndoGroupingParentKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _invocations, _CPUndoGroupingInvocationsKey);
}
})]);
}
{var the_class = objj_allocateClassPair(CPObject, "CPUndoManager"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_redoStack"), new objj_ivar("_undoStack"), new objj_ivar("_groupsByEvent"), new objj_ivar("_disableCount"), new objj_ivar("_levelsOfUndo"), new objj_ivar("_currentGrouping"), new objj_ivar("_state"), new objj_ivar("_actionName"), new objj_ivar("_preparedTarget"), new objj_ivar("_runLoopModes"), new objj_ivar("_registeredWithRunLoop")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPUndoManager__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _redoStack = [];
        _undoStack = [];
        _state = CPUndoManagerNormal;
        objj_msgSend(self, "setRunLoopModes:", [CPDefaultRunLoopMode]);
        objj_msgSend(self, "setGroupsByEvent:", YES);
        _performRegistered = NO;
    }
    return self;
}
}), new objj_method(sel_getUid("registerUndoWithTarget:selector:object:"), function $CPUndoManager__registerUndoWithTarget_selector_object_(self, _cmd, aTarget, aSelector, anObject)
{ with(self)
{
    if (!_currentGrouping)
        objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, "No undo group is currently open");
    if (_disableCount > 0)
        return;
    var invocation = objj_msgSend(CPInvocation, "invocationWithMethodSignature:", nil);
    objj_msgSend(invocation, "setTarget:", aTarget);
    objj_msgSend(invocation, "setSelector:", aSelector);
    objj_msgSend(invocation, "setArgument:atIndex:", anObject, 2);
    objj_msgSend(_currentGrouping, "addInvocation:", invocation);
    if (_state == CPUndoManagerNormal)
        objj_msgSend(_redoStack, "removeAllObjects");
}
}), new objj_method(sel_getUid("prepareWithInvocationTarget:"), function $CPUndoManager__prepareWithInvocationTarget_(self, _cmd, aTarget)
{ with(self)
{
    _preparedTarget = aTarget;
    return self;
}
}), new objj_method(sel_getUid("methodSignatureForSelector:"), function $CPUndoManager__methodSignatureForSelector_(self, _cmd, aSelector)
{ with(self)
{
    if (objj_msgSend(_preparedTarget, "respondsToSelector:", aSelector))
        return 1;
    return nil;
}
}), new objj_method(sel_getUid("forwardInvocation:"), function $CPUndoManager__forwardInvocation_(self, _cmd, anInvocation)
{ with(self)
{
    if (_disableCount > 0)
        return;
    objj_msgSend(anInvocation, "setTarget:", _preparedTarget);
    objj_msgSend(_currentGrouping, "addInvocation:", anInvocation);
    if (_state == CPUndoManagerNormal)
        objj_msgSend(_redoStack, "removeAllObjects");
    _preparedTarget = nil;
}
}), new objj_method(sel_getUid("canRedo"), function $CPUndoManager__canRedo(self, _cmd)
{ with(self)
{
    return _redoStack.length > 0;
}
}), new objj_method(sel_getUid("canUndo"), function $CPUndoManager__canUndo(self, _cmd)
{ with(self)
{
    if (_undoStack.length > 0)
        return YES;
    return objj_msgSend(_currentGrouping, "actions").length > 0;
}
}), new objj_method(sel_getUid("undo"), function $CPUndoManager__undo(self, _cmd)
{ with(self)
{
    if (objj_msgSend(self, "groupingLevel") == 1)
        objj_msgSend(self, "endUndoGrouping");
    objj_msgSend(self, "undoNestedGroup");
}
}), new objj_method(sel_getUid("undoNestedGroup"), function $CPUndoManager__undoNestedGroup(self, _cmd)
{ with(self)
{
    if (_undoStack.length == 0)
        return;
    var defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter");
    objj_msgSend(defaultCenter, "postNotificationName:object:", CPUndoManagerWillUndoChangeNotification, self);
    var undoGrouping = _undoStack.pop();
    _state = CPUndoManagerUndoing;
    objj_msgSend(self, "beginUndoGrouping");
    objj_msgSend(undoGrouping, "invoke");
    objj_msgSend(self, "endUndoGrouping");
    objj_msgSend(_CPUndoGrouping, "_poolUndoGrouping:", undoGrouping);
    _state = CPUndoManagerNormal;
    objj_msgSend(defaultCenter, "postNotificationName:object:", CPUndoManagerDidUndoChangeNotification, self);
}
}), new objj_method(sel_getUid("redo"), function $CPUndoManager__redo(self, _cmd)
{ with(self)
{
    if (_redoStack.length == 0)
        return;
    var defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter");
    objj_msgSend(defaultCenter, "postNotificationName:object:", CPUndoManagerWillRedoChangeNotification, self);
    var oldUndoGrouping = _currentGrouping,
        undoGrouping = _redoStack.pop();
    _currentGrouping = nil;
    _state = CPUndoManagerRedoing;
    objj_msgSend(self, "beginUndoGrouping");
    objj_msgSend(undoGrouping, "invoke");
    objj_msgSend(self, "endUndoGrouping");
    objj_msgSend(_CPUndoGrouping, "_poolUndoGrouping:", undoGrouping);
    _currentGrouping = oldUndoGrouping;
    _state = CPUndoManagerNormal;
    objj_msgSend(defaultCenter, "postNotificationName:object:", CPUndoManagerDidRedoChangeNotification, self);
}
}), new objj_method(sel_getUid("beginUndoGrouping"), function $CPUndoManager__beginUndoGrouping(self, _cmd)
{ with(self)
{
    _currentGrouping = objj_msgSend(_CPUndoGrouping, "undoGroupingWithParent:", _currentGrouping);
}
}), new objj_method(sel_getUid("endUndoGrouping"), function $CPUndoManager__endUndoGrouping(self, _cmd)
{ with(self)
{
    if (!_currentGrouping)
        objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, "endUndoGrouping. No undo group is currently open.");
    var parent = objj_msgSend(_currentGrouping, "parent");
    if (!parent && objj_msgSend(_currentGrouping, "invocations").length > 0)
    {
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPUndoManagerWillCloseUndoGroupNotification, self);
        var stack = _state == CPUndoManagerUndoing ? _redoStack : _undoStack;
        stack.push(_currentGrouping);
        if (_levelsOfUndo > 0 && stack.length > _levelsOfUndo)
            stack.splice(0, 1);
    }
    else
    {
        objj_msgSend(parent, "addInvocationsFromArray:", objj_msgSend(_currentGrouping, "invocations"));
        objj_msgSend(_CPUndoGrouping, "_poolUndoGrouping:", _currentGrouping);
    }
    _currentGrouping = parent;
}
}), new objj_method(sel_getUid("enableUndoRegistration"), function $CPUndoManager__enableUndoRegistration(self, _cmd)
{ with(self)
{
    if (_disableCount <= 0)
        objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, "enableUndoRegistration. There are no disable messages in effect right now.");
    _disableCount--;
}
}), new objj_method(sel_getUid("groupsByEvent"), function $CPUndoManager__groupsByEvent(self, _cmd)
{ with(self)
{
    return _groupsByEvent;
}
}), new objj_method(sel_getUid("setGroupsByEvent:"), function $CPUndoManager__setGroupsByEvent_(self, _cmd, aFlag)
{ with(self)
{
    if (_groupsByEvent == aFlag)
        return;
    _groupsByEvent = aFlag;
    if (_groupsByEvent)
    {
        objj_msgSend(self, "_registerWithRunLoop");
        if (!_currentGrouping)
            objj_msgSend(self, "beginUndoGrouping");
    }
    else
        objj_msgSend(self, "_unregisterWithRunLoop");
}
}), new objj_method(sel_getUid("groupingLevel"), function $CPUndoManager__groupingLevel(self, _cmd)
{ with(self)
{
    var grouping = _currentGrouping,
        level = _currentGrouping != nil;
    while (grouping = objj_msgSend(grouping, "parent"))
        ++level;
    return level;
}
}), new objj_method(sel_getUid("disableUndoRegistration"), function $CPUndoManager__disableUndoRegistration(self, _cmd)
{ with(self)
{
    ++_disableCount;
}
}), new objj_method(sel_getUid("isUndoRegistrationEnabled"), function $CPUndoManager__isUndoRegistrationEnabled(self, _cmd)
{ with(self)
{
    return _disableCount == 0;
}
}), new objj_method(sel_getUid("isUndoing"), function $CPUndoManager__isUndoing(self, _cmd)
{ with(self)
{
    return _state == CPUndoManagerUndoing;
}
}), new objj_method(sel_getUid("isRedoing"), function $CPUndoManager__isRedoing(self, _cmd)
{ with(self)
{
    return _state == CPUndoManagerRedoing;
}
}), new objj_method(sel_getUid("removeAllActions"), function $CPUndoManager__removeAllActions(self, _cmd)
{ with(self)
{
    _redoStack = [];
    _undoStack = [];
    _disableCount = 0;
}
}), new objj_method(sel_getUid("removeAllActionsWithTarget:"), function $CPUndoManager__removeAllActionsWithTarget_(self, _cmd, aTarget)
{ with(self)
{
    objj_msgSend(_currentGrouping, "removeInvocationsWithTarget:", aTarget);
    var index = _redoStack.length;
    while (index--)
    {
        var grouping = _redoStack[index];
        objj_msgSend(grouping, "removeInvocationsWithTarget:", aTarget);
        if (!objj_msgSend(grouping, "invocations").length)
            _redoStack.splice(index, 1);
    }
    index = _undoStack.length;
    while (index--)
    {
        var grouping = _undoStack[index];
        objj_msgSend(grouping, "removeInvocationsWithTarget:", aTarget);
        if (!objj_msgSend(grouping, "invocations").length)
            _undoStack.splice(index, 1);
    }
}
}), new objj_method(sel_getUid("setActionName:"), function $CPUndoManager__setActionName_(self, _cmd, anActionName)
{ with(self)
{
    _actionName = anActionName;
}
}), new objj_method(sel_getUid("redoActionName"), function $CPUndoManager__redoActionName(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "canRedo") ? _actionName : nil;
}
}), new objj_method(sel_getUid("undoActionName"), function $CPUndoManager__undoActionName(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "canUndo") ? _actionName : nil;
}
}), new objj_method(sel_getUid("runLoopModes"), function $CPUndoManager__runLoopModes(self, _cmd)
{ with(self)
{
    return _runLoopModes;
}
}), new objj_method(sel_getUid("setRunLoopModes:"), function $CPUndoManager__setRunLoopModes_(self, _cmd, modes)
{ with(self)
{
    _runLoopModes = modes;
    objj_msgSend(self, "_unregisterWithRunLoop");
    if (_groupsByEvent)
        objj_msgSend(self, "_registerWithRunLoop");
}
}), new objj_method(sel_getUid("beginUndoGroupingForEvent"), function $CPUndoManager__beginUndoGroupingForEvent(self, _cmd)
{ with(self)
{
    if (!_groupsByEvent)
        return;
    if (_currentGrouping != nil)
        objj_msgSend(self, "endUndoGrouping");
    objj_msgSend(self, "beginUndoGrouping");
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "performSelector:target:argument:order:modes:", sel_getUid("beginUndoGroupingForEvent"), self, nil, CPUndoCloseGroupingRunLoopOrdering, _runLoopModes);
}
}), new objj_method(sel_getUid("_registerWithRunLoop"), function $CPUndoManager___registerWithRunLoop(self, _cmd)
{ with(self)
{
    if (_registeredWithRunLoop)
        return;
    _registeredWithRunLoop = YES;
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "performSelector:target:argument:order:modes:", sel_getUid("beginUndoGroupingForEvent"), self, nil, CPUndoCloseGroupingRunLoopOrdering, _runLoopModes);
}
}), new objj_method(sel_getUid("_unregisterWithRunLoop"), function $CPUndoManager___unregisterWithRunLoop(self, _cmd)
{ with(self)
{
    if (!_registeredWithRunLoop)
        return;
    _registeredWithRunLoop = NO;
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "cancelPerformSelector:target:argument:", sel_getUid("beginUndoGroupingForEvent"), self, nil);
}
})]);
}
var CPUndoManagerRedoStackKey = "CPUndoManagerRedoStackKey",
    CPUndoManagerUndoStackKey = "CPUndoManagerUndoStackKey";
    CPUndoManagerLevelsOfUndoKey = "CPUndoManagerLevelsOfUndoKey";
    CPUndoManagerActionNameKey = "CPUndoManagerActionNameKey";
    CPUndoManagerCurrentGroupingKey = "CPUndoManagerCurrentGroupingKey";
    CPUndoManagerRunLoopModesKey = "CPUndoManagerRunLoopModesKey";
    CPUndoManagerGroupsByEventKey = "CPUndoManagerGroupsByEventKey";
{
var the_class = objj_getClass("CPUndoManager")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPUndoManager\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPUndoManager__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _redoStack = objj_msgSend(aCoder, "decodeObjectForKey:", CPUndoManagerRedoStackKey);
        _undoStack = objj_msgSend(aCoder, "decodeObjectForKey:", CPUndoManagerUndoStackKey);
        _levelsOfUndo = objj_msgSend(aCoder, "decodeObjectForKey:", CPUndoManagerLevelsOfUndoKey);
        _actionName = objj_msgSend(aCoder, "decodeObjectForKey:", CPUndoManagerActionNameKey);
        _currentGrouping = objj_msgSend(aCoder, "decodeObjectForKey:", CPUndoManagerCurrentGroupingKey);
        _state = CPUndoManagerNormal;
        objj_msgSend(self, "setRunLoopModes:", objj_msgSend(aCoder, "decodeObjectForKey:", CPUndoManagerRunLoopModesKey));
        objj_msgSend(self, "setGroupsByEvent:", objj_msgSend(aCoder, "decodeBoolForKey:", CPUndoManagerGroupsByEventKey));
    }
    return self;
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPUndoManager__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _redoStack, CPUndoManagerRedoStackKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _undoStack, CPUndoManagerUndoStackKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _levelsOfUndo, CPUndoManagerLevelsOfUndoKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _actionName, CPUndoManagerActionNameKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _currentGrouping, CPUndoManagerCurrentGroupingKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _runLoopModes, CPUndoManagerRunLoopModesKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _groupsByEvent, CPUndoManagerGroupsByEventKey);
}
})]);
}

p;17;CPURLConnection.ji;10;CPObject.ji;11;CPRunLoop.ji;14;CPURLRequest.ji;15;CPURLResponse.jc;6650;
var XMLHTTPRequestUninitialized = 0,
    XMLHTTPRequestLoading = 1,
    XMLHTTPRequestLoaded = 2,
    XMLHTTPRequestInteractive = 3,
    XMLHTTPRequestComplete = 4;
var CPURLConnectionDelegate = nil;
{var the_class = objj_allocateClassPair(CPObject, "CPURLConnection"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_request"), new objj_ivar("_delegate"), new objj_ivar("_isCanceled"), new objj_ivar("_isLocalFileConnection"), new objj_ivar("_XMLHTTPRequest")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithRequest:delegate:startImmediately:"), function $CPURLConnection__initWithRequest_delegate_startImmediately_(self, _cmd, aRequest, aDelegate, shouldStartImmediately)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _request = aRequest;
        _delegate = aDelegate;
        _isCanceled = NO;
        var path = objj_msgSend(_request, "URL");
        _isLocalFileConnection = path.indexOf("file:") === 0 ||
                                    ((path.indexOf("http:") !== 0 || path.indexOf("https:") !== 0) &&
                                    window.location &&
                                    (window.location.protocol === "file:" || window.location.protocol === "app:"));
        _XMLHTTPRequest = objj_request_xmlhttp();
        if (shouldStartImmediately)
            objj_msgSend(self, "start");
    }
    return self;
}
}), new objj_method(sel_getUid("initWithRequest:delegate:"), function $CPURLConnection__initWithRequest_delegate_(self, _cmd, aRequest, aDelegate)
{ with(self)
{
    return objj_msgSend(self, "initWithRequest:delegate:startImmediately:", aRequest, aDelegate, YES);
}
}), new objj_method(sel_getUid("delegate"), function $CPURLConnection__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
}), new objj_method(sel_getUid("start"), function $CPURLConnection__start(self, _cmd)
{ with(self)
{
    _isCanceled = NO;
    try
    {
        _XMLHTTPRequest.open(objj_msgSend(_request, "HTTPMethod"), objj_msgSend(_request, "URL"), YES);
        _XMLHTTPRequest.onreadystatechange = function() { objj_msgSend(self, "_readyStateDidChange"); }
        var fields = objj_msgSend(_request, "allHTTPHeaderFields"),
            key = nil,
            keys = objj_msgSend(fields, "keyEnumerator");
        while (key = objj_msgSend(keys, "nextObject"))
            _XMLHTTPRequest.setRequestHeader(key, objj_msgSend(fields, "objectForKey:", key));
        _XMLHTTPRequest.send(objj_msgSend(_request, "HTTPBody"));
    }
    catch (anException)
    {
        if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("connection:didFailWithError:")))
            objj_msgSend(_delegate, "connection:didFailWithError:", self, anException);
    }
}
}), new objj_method(sel_getUid("cancel"), function $CPURLConnection__cancel(self, _cmd)
{ with(self)
{
    _isCanceled = YES;
    try
    {
        _XMLHTTPRequest.abort();
    }
    catch (anException)
    {
    }
}
}), new objj_method(sel_getUid("isLocalFileConnection"), function $CPURLConnection__isLocalFileConnection(self, _cmd)
{ with(self)
{
    return _isLocalFileConnection;
}
}), new objj_method(sel_getUid("_readyStateDidChange"), function $CPURLConnection___readyStateDidChange(self, _cmd)
{ with(self)
{
    if (_XMLHTTPRequest.readyState == XMLHTTPRequestComplete)
    {
        var statusCode = _XMLHTTPRequest.status,
            URL = objj_msgSend(_request, "URL");
        if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("connection:didReceiveResponse:")))
        {
            if (_isLocalFileConnection)
                objj_msgSend(_delegate, "connection:didReceiveResponse:", self, objj_msgSend(objj_msgSend(CPURLResponse, "alloc"), "initWithURL:", URL));
            else
            {
                var response = objj_msgSend(objj_msgSend(CPHTTPURLResponse, "alloc"), "initWithURL:", URL);
                objj_msgSend(response, "_setStatusCode:", statusCode);
                objj_msgSend(_delegate, "connection:didReceiveResponse:", self, response);
            }
        }
        if (!_isCanceled)
        {
            if (statusCode == 401 && objj_msgSend(CPURLConnectionDelegate, "respondsToSelector:", sel_getUid("connectionDidReceiveAuthenticationChallenge:")))
                objj_msgSend(CPURLConnectionDelegate, "connectionDidReceiveAuthenticationChallenge:", self);
            else
            {
                if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("connection:didReceiveData:")))
                    objj_msgSend(_delegate, "connection:didReceiveData:", self, _XMLHTTPRequest.responseText);
                if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("connectionDidFinishLoading:")))
                    objj_msgSend(_delegate, "connectionDidFinishLoading:", self);
            }
        }
    }
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
}
}), new objj_method(sel_getUid("_XMLHTTPRequest"), function $CPURLConnection___XMLHTTPRequest(self, _cmd)
{ with(self)
{
    return _XMLHTTPRequest;
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("setClassDelegate:"), function $CPURLConnection__setClassDelegate_(self, _cmd, delegate)
{ with(self)
{
    CPURLConnectionDelegate = delegate;
}
}), new objj_method(sel_getUid("sendSynchronousRequest:returningResponse:error:"), function $CPURLConnection__sendSynchronousRequest_returningResponse_error_(self, _cmd, aRequest, aURLResponse, anError)
{ with(self)
{
    try
    {
        var request = objj_request_xmlhttp();
        request.open(objj_msgSend(aRequest, "HTTPMethod"), objj_msgSend(aRequest, "URL"), NO);
        var fields = objj_msgSend(aRequest, "allHTTPHeaderFields"),
            key = nil,
            keys = objj_msgSend(fields, "keyEnumerator");
        while (key = objj_msgSend(keys, "nextObject"))
            request.setRequestHeader(key, objj_msgSend(fields, "objectForKey:", key));
        request.send(objj_msgSend(aRequest, "HTTPBody"));
        return objj_msgSend(CPData, "dataWithString:", request.responseText);
    }
    catch (anException)
    {
    }
    return nil;
}
}), new objj_method(sel_getUid("connectionWithRequest:delegate:"), function $CPURLConnection__connectionWithRequest_delegate_(self, _cmd, aRequest, aDelegate)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithRequest:delegate:", aRequest, aDelegate);
}
})]);
}

p;14;CPURLRequest.ji;10;CPObject.jc;2769;
{var the_class = objj_allocateClassPair(CPObject, "CPURLRequest"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_URL"), new objj_ivar("_HTTPBody"), new objj_ivar("_HTTPMethod"), new objj_ivar("_HTTPHeaderFields")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithURL:"), function $CPURLRequest__initWithURL_(self, _cmd, aURL)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _URL = aURL;
        _HTTPBody = "";
        _HTTPMethod = "GET";
        _HTTPHeaderFields = objj_msgSend(CPDictionary, "dictionary");
        objj_msgSend(self, "setValue:forHTTPHeaderField:", "Thu, 1 Jan 1970 00:00:00 GMT", "If-Modified-Since");
        objj_msgSend(self, "setValue:forHTTPHeaderField:", "no-cache", "Cache-Control");
        objj_msgSend(self, "setValue:forHTTPHeaderField:", "XMLHttpRequest", "X-Requested-With");
    }
    return self;
}
}), new objj_method(sel_getUid("URL"), function $CPURLRequest__URL(self, _cmd)
{ with(self)
{
    return _URL;
}
}), new objj_method(sel_getUid("setURL:"), function $CPURLRequest__setURL_(self, _cmd, aURL)
{ with(self)
{
    _URL = aURL;
}
}), new objj_method(sel_getUid("setHTTPBody:"), function $CPURLRequest__setHTTPBody_(self, _cmd, anHTTPBody)
{ with(self)
{
    _HTTPBody = anHTTPBody;
}
}), new objj_method(sel_getUid("HTTPBody"), function $CPURLRequest__HTTPBody(self, _cmd)
{ with(self)
{
    return _HTTPBody;
}
}), new objj_method(sel_getUid("setHTTPMethod:"), function $CPURLRequest__setHTTPMethod_(self, _cmd, anHTTPMethod)
{ with(self)
{
    _HTTPMethod = anHTTPMethod;
}
}), new objj_method(sel_getUid("HTTPMethod"), function $CPURLRequest__HTTPMethod(self, _cmd)
{ with(self)
{
    return _HTTPMethod;
}
}), new objj_method(sel_getUid("allHTTPHeaderFields"), function $CPURLRequest__allHTTPHeaderFields(self, _cmd)
{ with(self)
{
    return _HTTPHeaderFields;
}
}), new objj_method(sel_getUid("valueForHTTPHeaderField:"), function $CPURLRequest__valueForHTTPHeaderField_(self, _cmd, aField)
{ with(self)
{
    return objj_msgSend(_HTTPHeaderFields, "objectForKey:", aField);
}
}), new objj_method(sel_getUid("setValue:forHTTPHeaderField:"), function $CPURLRequest__setValue_forHTTPHeaderField_(self, _cmd, aValue, aField)
{ with(self)
{
    objj_msgSend(_HTTPHeaderFields, "setObject:forKey:", aValue, aField);
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("requestWithURL:"), function $CPURLRequest__requestWithURL_(self, _cmd, aURL)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPURLRequest, "alloc"), "initWithURL:", aURL);
}
})]);
}

p;15;CPURLResponse.ji;10;CPObject.jc;1309;
{var the_class = objj_allocateClassPair(CPObject, "CPURLResponse"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_URL")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithURL:"), function $CPURLResponse__initWithURL_(self, _cmd, aURL)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
        _URL = aURL;
    return self;
}
}), new objj_method(sel_getUid("URL"), function $CPURLResponse__URL(self, _cmd)
{ with(self)
{
    return _URL;
}
})]);
}
{var the_class = objj_allocateClassPair(CPURLResponse, "CPHTTPURLResponse"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_statusCode")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("_setStatusCode:"), function $CPHTTPURLResponse___setStatusCode_(self, _cmd, aStatusCode)
{ with(self)
{
    _statusCode = aStatusCode;
}
}), new objj_method(sel_getUid("statusCode"), function $CPHTTPURLResponse__statusCode(self, _cmd)
{ with(self)
{
    return _statusCode;
}
})]);
}

p;22;CPUserSessionManager.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jc;2478;
CPUserSessionUndeterminedStatus = 0;
CPUserSessionLoggedInStatus = 1;
CPUserSessionLoggedOutStatus = 2;
CPUserSessionManagerStatusDidChangeNotification = "CPUserSessionManagerStatusDidChangeNotification";
CPUserSessionManagerUserIdentifierDidChangeNotification = "CPUserSessionManagerUserIdentifierDidChangeNotification";
var CPDefaultUserSessionManager = nil;
{var the_class = objj_allocateClassPair(CPObject, "CPUserSessionManager"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_status"), new objj_ivar("_userIdentifier")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $CPUserSessionManager__init(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
        _status = CPUserSessionUndeterminedStatus;
    return self;
}
}), new objj_method(sel_getUid("status"), function $CPUserSessionManager__status(self, _cmd)
{ with(self)
{
    return _status;
}
}), new objj_method(sel_getUid("setStatus:"), function $CPUserSessionManager__setStatus_(self, _cmd, aStatus)
{ with(self)
{
    if (_status == aStatus)
        return;
    _status = aStatus;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPUserSessionManagerStatusDidChangeNotification, self);
    if (_status != CPUserSessionLoggedInStatus)
        objj_msgSend(self, "setUserIdentifier:", nil);
}
}), new objj_method(sel_getUid("userIdentifier"), function $CPUserSessionManager__userIdentifier(self, _cmd)
{ with(self)
{
    return _userIdentifier;
}
}), new objj_method(sel_getUid("setUserIdentifier:"), function $CPUserSessionManager__setUserIdentifier_(self, _cmd, anIdentifier)
{ with(self)
{
    if (_userIdentifier == anIdentifier)
        return;
    _userIdentifier = anIdentifier;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPUserSessionManagerUserIdentifierDidChangeNotification, self);
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultManager"), function $CPUserSessionManager__defaultManager(self, _cmd)
{ with(self)
{
    if (!CPDefaultUserSessionManager)
        CPDefaultUserSessionManager = objj_msgSend(objj_msgSend(CPUserSessionManager, "alloc"), "init");
    return CPDefaultUserSessionManager;
}
})]);
}

p;9;CPValue.ji;10;CPObject.ji;9;CPCoder.jc;2179;
{var the_class = objj_allocateClassPair(CPObject, "CPValue"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_JSObject")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithJSObject:"), function $CPValue__initWithJSObject_(self, _cmd, aJSObject)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
        _JSObject = aJSObject;
    return self;
}
}), new objj_method(sel_getUid("JSObject"), function $CPValue__JSObject(self, _cmd)
{ with(self)
{
    return _JSObject;
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("valueWithJSObject:"), function $CPValue__valueWithJSObject_(self, _cmd, aJSObject)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithJSObject:", aJSObject);
}
})]);
}
var CPValueValueKey = "CPValueValueKey";
{
var the_class = objj_getClass("CPValue")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPValue\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPValue__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
        _JSObject = JSON.parse(objj_msgSend(aCoder, "decodeObjectForKey:", CPValueValueKey));
    return self;
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPValue__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", JSON.stringify(_JSObject), CPValueValueKey);
}
})]);
}
CPJSObjectCreateJSON= function(aJSObject)
{
    CPLog.warn("CPJSObjectCreateJSON deprecated, use JSON.stringify() or CPString's objectFromJSON");
    return JSON.stringify(aJSObject);
}
CPJSObjectCreateWithJSON= function(aString)
{
    CPLog.warn("CPJSObjectCreateWithJSON deprecated, use JSON.parse() or CPString's JSONFromObject");
    return JSON.parse(aString);
}

p;12;Foundation.ji;9;CPArray.ji;10;CPBundle.ji;9;CPCoder.ji;8;CPData.ji;8;CPDate.ji;14;CPDictionary.ji;14;CPEnumerator.ji;13;CPException.ji;12;CPIndexSet.ji;14;CPInvocation.ji;19;CPJSONPConnection.ji;17;CPKeyedArchiver.ji;19;CPKeyedUnarchiver.ji;18;CPKeyValueCoding.ji;21;CPKeyValueObserving.ji;7;CPLog.ji;16;CPNotification.ji;22;CPNotificationCenter.ji;8;CPNull.ji;10;CPNumber.ji;10;CPObject.ji;15;CPObjJRuntime.ji;29;CPPropertyListSerialization.ji;9;CPRange.ji;11;CPRunLoop.ji;7;CPSet.ji;18;CPSortDescriptor.ji;10;CPString.ji;9;CPTimer.ji;15;CPUndoManager.ji;17;CPURLConnection.ji;14;CPURLRequest.ji;15;CPURLResponse.ji;22;CPUserSessionManager.ji;9;CPValue.j