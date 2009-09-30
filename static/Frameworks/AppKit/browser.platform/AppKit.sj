@STATIC;1.0;p;31;_CPBorderlessBridgeWindowView.ji;15;_CPWindowView.jc;1901;
var _1=nil;
var _2=objj_allocateClassPair(_CPWindowView,"_CPBorderlessBridgeWindowView"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_toolbarBackgroundView")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("tile"),function(_4,_5){
with(_4){
objj_msgSendSuper({receiver:_4,super_class:objj_getClass("_CPWindowView")},"tile");
var _6=objj_msgSend(_4,"window"),_7=objj_msgSend(_4,"bounds");
objj_msgSend(objj_msgSend(_6,"contentView"),"setFrame:",CGRectMake(0,objj_msgSend(_4,"toolbarMaxY"),CGRectGetWidth(_7),CGRectGetHeight(_7)-objj_msgSend(_4,"toolbarMaxY")));
if(!objj_msgSend(objj_msgSend(_6,"toolbar"),"isVisible")){
objj_msgSend(_toolbarBackgroundView,"removeFromSuperview");
_toolbarBackgroundView=nil;
return;
}
if(!_toolbarBackgroundView){
_toolbarBackgroundView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_toolbarBackgroundView,"setBackgroundColor:",objj_msgSend(objj_msgSend(_4,"class"),"toolbarBackgroundColor"));
objj_msgSend(_toolbarBackgroundView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_4,"addSubview:positioned:relativeTo:",_toolbarBackgroundView,CPWindowBelow,nil);
}
var _8=CGRectMakeZero();
_8.origin=CGPointMakeCopy(objj_msgSend(_4,"toolbarOffset"));
_8.size=objj_msgSend(_toolbarView,"frame").size;
objj_msgSend(_toolbarBackgroundView,"setFrame:",_8);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("toolbarBackgroundColor"),function(_9,_a){
with(_9){
if(!_1){
_1=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_CPBorderlessBridgeWindowView,"class")),"pathForResource:","_CPToolbarView/_CPToolbarViewBackground.png"),CGSizeMake(1,59)));
}
return _1;
}
})]);
p;25;_CPBorderlessWindowView.ji;15;_CPWindowView.jc;188;
var _1=objj_allocateClassPair(_CPWindowView,"_CPBorderlessWindowView"),_2=_1.isa;
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
p;20;_CPCibClassSwapper.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jc;1259;
var _1="_CPCibClassSwapperClassNameKey",_2="_CPCibClassSwapperOriginalClassNameKey";
var _3=objj_allocateClassPair(CPObject,"_CPCibClassSwapper"),_4=_3.isa;
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("allocObjectWithCoder:className:"),function(_5,_6,_7,_8){
with(_5){
var _9=objj_msgSend(_7,"classForClassName:",_8);
if(!_9){
_9=objj_lookUpClass(_8);
if(!_9){
return nil;
}
}
return objj_msgSend(_9,"alloc");
}
}),new objj_method(sel_getUid("allocWithCoder:"),function(_a,_b,_c){
with(_a){
if(objj_msgSend(_c,"respondsToSelector:",sel_getUid("usesOriginalClasses"))&&objj_msgSend(_c,"usesOriginalClasses")){
var _d=objj_msgSend(_c,"decodeObjectForKey:",_2),_e=objj_msgSend(_a,"allocObjectWithCoder:className:",_c,_d);
}else{
var _d=objj_msgSend(_c,"decodeObjectForKey:",_1),_e=objj_msgSend(_a,"allocObjectWithCoder:className:",_c,_d);
if(!_e){
CPLog.error("Unable to find class "+_d+" in cib file.");
_e=objj_msgSend(_a,"allocObjectWithCoder:className:",_c,objj_msgSend(_c,"decodeObjectForKey:",_2));
}
}
if(!_e){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Unable to find class "+_d+" in cib file.");
}
return _e;
}
})]);
p;17;_CPCibConnector.jI;21;Foundation/CPObject.jI;29;Foundation/CPKeyValueCoding.jc;3017;
var _1="_CPCibConnectorSourceKey",_2="_CPCibConnectorDestinationKey",_3="_CPCibConnectorLabelKey";
var _4=objj_allocateClassPair(CPObject,"_CPCibConnector"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_source"),new objj_ivar("_destination"),new objj_ivar("_label")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("replaceObjects:"),function(_6,_7,_8){
with(_6){
var _9=_8[objj_msgSend(_source,"hash")];
if(_9!==undefined){
_source=_9;
}
_9=_8[objj_msgSend(_destination,"hash")];
if(_9!==undefined){
_destination=_9;
}
}
})]);
var _4=objj_getClass("_CPCibConnector");
if(!_4){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"_CPCibConnector\""));
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_a,_b,_c){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPObject")},"init");
if(_a){
_source=objj_msgSend(_c,"decodeObjectForKey:",_1);
_destination=objj_msgSend(_c,"decodeObjectForKey:",_2);
_label=objj_msgSend(_c,"decodeObjectForKey:",_3);
}
return _a;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_d,_e,_f){
with(_d){
objj_msgSend(_f,"encodeObject:forKey:",_source,_1);
objj_msgSend(_f,"encodeObject:forKey:",_destination,_2);
objj_msgSend(_f,"encodeObject:forKey:",_label,_3);
}
})]);
var _4=objj_allocateClassPair(_CPCibConnector,"_CPCibControlConnector"),_5=_4.isa;
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("establishConnection"),function(_10,_11){
with(_10){
var _12=_label;
if(!objj_msgSend(_12,"hasSuffix:",":")){
_12+=":";
}
var _13=CPSelectorFromString(_12);
if(!_13){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"-["+objj_msgSend(_10,"className")+" "+_11+"] selector "+_12+" does not exist.");
}
if(objj_msgSend(_source,"respondsToSelector:",sel_getUid("setAction:"))){
objj_msgSend(_source,sel_getUid("setAction:"),_13);
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"-["+objj_msgSend(_10,"className")+" "+_11+"] "+objj_msgSend(_source,"description")+" does not respond to setAction:");
}
if(objj_msgSend(_source,"respondsToSelector:",sel_getUid("setTarget:"))){
objj_msgSend(_source,sel_getUid("setTarget:"),_destination);
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"-["+objj_msgSend(_10,"className")+" "+_11+"] "+objj_msgSend(_source,"description")+" does not respond to setTarget:");
}
}
})]);
var _4=objj_allocateClassPair(_CPCibConnector,"_CPCibOutletConnector"),_5=_4.isa;
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("establishConnection"),function(_14,_15){
with(_14){
objj_msgSend(_source,"setValue:forKey:",_destination,_label);
}
})]);
p;20;_CPCibCustomObject.jI;21;Foundation/CPObject.jc;1478;
var _1="_CPCibCustomObjectClassName";
var _2=objj_allocateClassPair(CPObject,"_CPCibCustomObject"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_className")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("customClassName"),function(_4,_5){
with(_4){
return _className;
}
}),new objj_method(sel_getUid("description"),function(_6,_7){
with(_6){
return objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPObject")},"description")+" ("+objj_msgSend(_6,"customClassName")+")";
}
})]);
var _2=objj_getClass("_CPCibCustomObject");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"_CPCibCustomObject\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("CPObject")},"init");
if(_8){
_className=objj_msgSend(_a,"decodeObjectForKey:",_1);
}
return _8;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_b,_c,_d){
with(_b){
objj_msgSend(_d,"encodeObject:forKey:",_className,_1);
}
}),new objj_method(sel_getUid("_cibInstantiate"),function(_e,_f){
with(_e){
var _10=CPClassFromString(_className);
if(_10===objj_msgSend(CPApplication,"class")){
return objj_msgSend(CPApplication,"sharedApplication");
}
return objj_msgSend(objj_msgSend(_10,"alloc"),"init");
}
})]);
p;22;_CPCibCustomResource.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jc;2848;
var _1="_CPCibCustomResourceClassNameKey",_2="_CPCibCustomResourceResourceNameKey",_3="_CPCibCustomResourcePropertiesKey";
var _4=objj_allocateClassPair(CPObject,"_CPCibCustomResource"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_className"),new objj_ivar("_resourceName"),new objj_ivar("_properties")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("initWithClassName:resourceName:properties:"),function(_6,_7,_8,_9,_a){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPObject")},"init");
if(_6){
_className=_8;
_resourceName=_9;
_properties=_a;
}
return _6;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_b,_c,_d){
with(_b){
_b=objj_msgSendSuper({receiver:_b,super_class:objj_getClass("CPObject")},"init");
if(_b){
_className=objj_msgSend(_d,"decodeObjectForKey:",_1);
_resourceName=objj_msgSend(_d,"decodeObjectForKey:",_2);
_properties=objj_msgSend(_d,"decodeObjectForKey:",_3);
}
return _b;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_e,_f,_10){
with(_e){
objj_msgSend(_10,"encodeObject:forKey:",_className,_1);
objj_msgSend(_10,"encodeObject:forKey:",_resourceName,_2);
objj_msgSend(_10,"encodeObject:forKey:",_properties,_3);
}
}),new objj_method(sel_getUid("awakeAfterUsingCoder:"),function(_11,_12,_13){
with(_11){
if(objj_msgSend(_13,"respondsToSelector:",sel_getUid("bundle"))&&(!objj_msgSend(_13,"respondsToSelector:",sel_getUid("awakenCustomResources"))||objj_msgSend(_13,"awakenCustomResources"))){
if(_className==="CPImage"){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(_13,"bundle"),"pathForResource:",_resourceName),objj_msgSend(_properties,"objectForKey:","size"));
}
}
return _11;
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("imageResourceWithName:size:"),function(_14,_15,_16,_17){
with(_14){
return objj_msgSend(objj_msgSend(_14,"alloc"),"initWithClassName:resourceName:properties:","CPImage",_16,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_17,"size"));
}
})]);
var _4=objj_getClass("_CPCibCustomResource");
if(!_4){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"_CPCibCustomResource\""));
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("filename"),function(_18,_19){
with(_18){
return objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:",_resourceName);
}
}),new objj_method(sel_getUid("size"),function(_1a,_1b){
with(_1a){
return objj_msgSend(_properties,"objectForKey:","size");
}
}),new objj_method(sel_getUid("isThreePartImage"),function(_1c,_1d){
with(_1c){
return NO;
}
}),new objj_method(sel_getUid("isNinePartImage"),function(_1e,_1f){
with(_1e){
return NO;
}
})]);
p;18;_CPCibCustomView.ji;8;CPView.jc;2703;
var _1=objj_allocateClassPair(CPView,"_CPCibCustomView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_className")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("customClassName"),function(_3,_4){
with(_3){
return _className;
}
})]);
var _5="_CPCibCustomViewClassNameKey";
var _1=objj_getClass("_CPCibCustomView");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"_CPCibCustomView\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPView")},"initWithCoder:",_8);
if(_6){
_className=objj_msgSend(_8,"decodeObjectForKey:",_5);
}
return _6;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_9,_a,_b){
with(_9){
objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPView")},"encodeWithCoder:",_b);
objj_msgSend(_b,"encodeObject:forKey:",_className,_5);
}
}),new objj_method(sel_getUid("drawRect:"),function(_c,_d,_e){
with(_c){
var _f=objj_msgSend(_c,"bounds"),_10=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextSetLineWidth(_10,1);
CGContextSetStrokeColor(_10,objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",169/255,173/255,178/255,1));
CGContextStrokeRect(_10,CGRectInset(CGRectIntegral(_f),0.5,0.5));
CGContextSetFillColor(_10,objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",224/255,236/255,250/255,1));
CGContextFillRect(_10,CGRectInset(_f,2,2));
}
}),new objj_method(sel_getUid("_cibInstantiate"),function(_11,_12){
with(_11){
var _13=CPClassFromString(_className);
if(!_13){
_13=objj_msgSend(CPView,"class");
}
if(_13===objj_msgSend(_11,"class")){
_className="CPView";
return _11;
}
var _14=objj_msgSend(objj_msgSend(_13,"alloc"),"initWithFrame:",objj_msgSend(_11,"frame"));
if(_14){
objj_msgSend(_14,"setBounds:",objj_msgSend(_11,"bounds"));
var _15=objj_msgSend(objj_msgSend(_11,"subviews"),"copy"),_16=0,_17=_15.length;
for(;_16<_17;++_16){
objj_msgSend(_14,"addSubview:",_15[_16]);
}
objj_msgSend(_14,"setAutoresizingMask:",objj_msgSend(_11,"autoresizingMask"));
objj_msgSend(_14,"setAutoresizesSubviews:",objj_msgSend(_11,"autoresizesSubviews"));
objj_msgSend(_14,"setHitTests:",objj_msgSend(_11,"hitTests"));
objj_msgSend(_14,"setHidden:",objj_msgSend(_11,"isHidden"));
objj_msgSend(_14,"setAlphaValue:",objj_msgSend(_11,"alphaValue"));
objj_msgSend(_superview,"replaceSubview:with:",_11,_14);
objj_msgSend(_14,"setBackgroundColor:",objj_msgSend(_11,"backgroundColor"));
}
return _14;
}
})]);
p;23;_CPCibKeyedUnarchiver.jI;30;Foundation/CPKeyedUnarchiver.jc;1054;
var _1=objj_allocateClassPair(CPKeyedUnarchiver,"_CPCibKeyedUnarchiver"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_bundle"),new objj_ivar("_awakenCustomResources")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initForReadingWithData:bundle:awakenCustomResources:"),function(_3,_4,_5,_6,_7){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPKeyedUnarchiver")},"initForReadingWithData:",_5);
if(_3){
_bundle=_6;
_awakenCustomResources=_7;
objj_msgSend(_3,"setDelegate:",_3);
}
return _3;
}
}),new objj_method(sel_getUid("bundle"),function(_8,_9){
with(_8){
return _bundle;
}
}),new objj_method(sel_getUid("awakenCustomResources"),function(_a,_b){
with(_a){
return _awakenCustomResources;
}
}),new objj_method(sel_getUid("replaceObjectAtUID:withObject:"),function(_c,_d,_e,_f){
with(_c){
_objects[_e]=_f;
}
}),new objj_method(sel_getUid("objectAtUID:"),function(_10,_11,_12){
with(_10){
return _objects[_12];
}
})]);
p;18;_CPCibObjectData.jI;20;Foundation/CPArray.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.ji;7;CPCib.ji;17;_CPCibConnector.jc;6115;
var _1=objj_allocateClassPair(CPObject,"_CPCibObjectData"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_namesKeys"),new objj_ivar("_namesValues"),new objj_ivar("_accessibilityConnectors"),new objj_ivar("_accessibilityOidsKeys"),new objj_ivar("_accessibilityOidsValues"),new objj_ivar("_classesKeys"),new objj_ivar("_classesValues"),new objj_ivar("_connections"),new objj_ivar("_fontManager"),new objj_ivar("_framework"),new objj_ivar("_nextOid"),new objj_ivar("_objectsKeys"),new objj_ivar("_objectsValues"),new objj_ivar("_oidKeys"),new objj_ivar("_oidValues"),new objj_ivar("_fileOwner"),new objj_ivar("_visibleWindows"),new objj_ivar("_replacementObjects")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_namesKeys=[];
_namesValues=[];
_classesKeys=[];
_classesValues=[];
_connections=[];
_framework="";
_nextOid=[];
_objectsKeys=[];
_objectsValues=[];
_oidKeys=[];
_oidValues=[];
_fileOwner=nil;
_visibleWindows=objj_msgSend(CPSet,"set");
}
return _3;
}
}),new objj_method(sel_getUid("mainMenu"),function(_5,_6){
with(_5){
var _7=objj_msgSend(_namesValues,"indexOfObjectIdenticalTo:","MainMenu");
if(_7===CPNotFound){
_7=objj_msgSend(_namesValues,"indexOfObjectIdenticalTo:","Main Menu");
if(_7===CPNotFound){
return nil;
}
}
return _namesKeys[_7];
}
}),new objj_method(sel_getUid("displayVisibleWindows"),function(_8,_9){
with(_8){
var _a=nil,_b=objj_msgSend(_visibleWindows,"objectEnumerator");
while(_a=objj_msgSend(_b,"nextObject")){
objj_msgSend(_replacementObjects[objj_msgSend(_a,"hash")],"makeKeyAndOrderFront:",_8);
}
}
})]);
var _c="_CPCibObjectDataNamesKeysKey",_d="_CPCibObjectDataNamesValuesKey",_e="_CPCibObjectDataAccessibilityConnectors",_f="_CPCibObjectDataAccessibilityOidsKeys",_10="_CPCibObjectDataAccessibilityOidsValues",_11="_CPCibObjectDataClassesKeysKey",_12="_CPCibObjectDataClassesValuesKey",_13="_CPCibObjectDataConnectionsKey",_14="_CPCibObjectDataFontManagerKey",_15="_CPCibObjectDataFrameworkKey",_16="_CPCibObjectDataNextOidKey",_17="_CPCibObjectDataObjectsKeysKey",_18="_CPCibObjectDataObjectsValuesKey",_19="_CPCibObjectDataOidKeysKey",_1a="_CPCibObjectDataOidValuesKey",_1b="_CPCibObjectDataFileOwnerKey",_1c="_CPCibObjectDataVisibleWindowsKey";
var _1=objj_getClass("_CPCibObjectData");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"_CPCibObjectData\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_1d,_1e,_1f){
with(_1d){
_1d=objj_msgSendSuper({receiver:_1d,super_class:objj_getClass("CPObject")},"init");
if(_1d){
_replacementObjects={};
_namesKeys=objj_msgSend(_1f,"decodeObjectForKey:",_c);
_namesValues=objj_msgSend(_1f,"decodeObjectForKey:",_d);
_classesKeys=objj_msgSend(_1f,"decodeObjectForKey:",_11);
_classesValues=objj_msgSend(_1f,"decodeObjectForKey:",_12);
_connections=objj_msgSend(_1f,"decodeObjectForKey:",_13);
_framework=objj_msgSend(_1f,"decodeObjectForKey:",_15);
_nextOid=objj_msgSend(_1f,"decodeIntForKey:",_16);
_objectsKeys=objj_msgSend(_1f,"decodeObjectForKey:",_17);
_objectsValues=objj_msgSend(_1f,"decodeObjectForKey:",_18);
_oidKeys=objj_msgSend(_1f,"decodeObjectForKey:",_19);
_oidValues=objj_msgSend(_1f,"decodeObjectForKey:",_1a);
_fileOwner=objj_msgSend(_1f,"decodeObjectForKey:",_1b);
_visibleWindows=objj_msgSend(_1f,"decodeObjectForKey:",_1c);
}
return _1d;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_20,_21,_22){
with(_20){
objj_msgSend(_22,"encodeObject:forKey:",_namesKeys,_c);
objj_msgSend(_22,"encodeObject:forKey:",_namesValues,_d);
objj_msgSend(_22,"encodeObject:forKey:",_classesKeys,_11);
objj_msgSend(_22,"encodeObject:forKey:",_classesValues,_12);
objj_msgSend(_22,"encodeObject:forKey:",_connections,_13);
objj_msgSend(_22,"encodeObject:forKey:",_framework,_15);
objj_msgSend(_22,"encodeInt:forKey:",_nextOid,_16);
objj_msgSend(_22,"encodeObject:forKey:",_objectsKeys,_17);
objj_msgSend(_22,"encodeObject:forKey:",_objectsValues,_18);
objj_msgSend(_22,"encodeObject:forKey:",_oidKeys,_19);
objj_msgSend(_22,"encodeObject:forKey:",_oidValues,_1a);
objj_msgSend(_22,"encodeObject:forKey:",_fileOwner,_1b);
objj_msgSend(_22,"encodeObject:forKey:",_visibleWindows,_1c);
}
}),new objj_method(sel_getUid("instantiateWithOwner:topLevelObjects:"),function(_23,_24,_25,_26){
with(_23){
var _27=objj_msgSend(_objectsKeys,"count");
while(_27--){
var _28=_objectsKeys[_27],_29=_objectsValues[_27],_2a=_28;
if(objj_msgSend(_28,"respondsToSelector:",sel_getUid("_cibInstantiate"))){
var _2a=objj_msgSend(_28,"_cibInstantiate");
if(_2a!==_28){
_replacementObjects[objj_msgSend(_28,"hash")]=_2a;
if(objj_msgSend(_2a,"isKindOfClass:",objj_msgSend(CPView,"class"))){
var _2b=objj_msgSend(_2a,"superview");
if(objj_msgSend(_2b,"isKindOfClass:",objj_msgSend(CPClipView,"class"))){
var _2c=objj_msgSend(_2b,"superview");
if(objj_msgSend(_2c,"isKindOfClass:",objj_msgSend(CPScrollView,"class"))){
objj_msgSend(_2c,"setDocumentView:",_2a);
}
}
}
}
}
if(_26&&_29===_fileOwner&&_28!==_fileOwner){
_26.push(_2a);
}
}
}
}),new objj_method(sel_getUid("establishConnectionsWithOwner:topLevelObjects:"),function(_2d,_2e,_2f,_30){
with(_2d){
_replacementObjects[objj_msgSend(_fileOwner,"hash")]=_2f;
var _31=0,_32=_connections.length;
for(;_31<_32;++_31){
var _33=_connections[_31];
objj_msgSend(_33,"replaceObjects:",_replacementObjects);
objj_msgSend(_33,"establishConnection");
}
}
}),new objj_method(sel_getUid("awakeWithOwner:topLevelObjects:"),function(_34,_35,_36,_37){
with(_34){
var _38=objj_msgSend(_objectsKeys,"count");
while(_38--){
var _39=_objectsKeys[_38],_3a=_replacementObjects[objj_msgSend(_39,"hash")];
if(_3a){
_39=_3a;
}
if(_39!==_36&&objj_msgSend(_39,"respondsToSelector:",sel_getUid("awakeFromCib"))){
objj_msgSend(_39,"awakeFromCib");
}
}
if(objj_msgSend(_36,"respondsToSelector:",sel_getUid("awakeFromCib"))){
objj_msgSend(_36,"awakeFromCib");
}
}
})]);
p;22;_CPCibWindowTemplate.jI;21;Foundation/CPObject.jc;3174;
var _1="_CPCibWindowTemplateMinSizeKey",_2="_CPCibWindowTemplateMaxSizeKey",_3="_CPCibWindowTemplateViewClassKey",_4="_CPCibWindowTemplateWindowClassKey",_5="_CPCibWindowTemplateWindowRectKey",_6="_CPCibWindowTempatStyleMaskKey",_7="_CPCibWindowTemplateWindowTitleKey",_8="_CPCibWindowTemplateWindowViewKey",_9="_CPCibWindowTemplateWindowIsFullBridgeKey";
var _a=objj_allocateClassPair(CPObject,"_CPCibWindowTemplate"),_b=_a.isa;
class_addIvars(_a,[new objj_ivar("_minSize"),new objj_ivar("_maxSize"),new objj_ivar("_viewClass"),new objj_ivar("_windowClass"),new objj_ivar("_windowRect"),new objj_ivar("_windowStyleMask"),new objj_ivar("_windowTitle"),new objj_ivar("_windowView"),new objj_ivar("_windowIsFullBridge")]);
objj_registerClassPair(_a);
objj_addClassForBundle(_a,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_a,[new objj_method(sel_getUid("initWithCoder:"),function(_c,_d,_e){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("CPObject")},"init");
if(_c){
if(objj_msgSend(_e,"containsValueForKey:",_1)){
_minSize=objj_msgSend(_e,"decodeSizeForKey:",_1);
}
if(objj_msgSend(_e,"containsValueForKey:",_2)){
_maxSize=objj_msgSend(_e,"decodeSizeForKey:",_2);
}
_viewClass=objj_msgSend(_e,"decodeObjectForKey:",_3);
_windowClass=objj_msgSend(_e,"decodeObjectForKey:",_4);
_windowRect=objj_msgSend(_e,"decodeRectForKey:",_5);
_windowStyleMask=objj_msgSend(_e,"decodeIntForKey:",_6);
_windowTitle=objj_msgSend(_e,"decodeObjectForKey:",_7);
_windowView=objj_msgSend(_e,"decodeObjectForKey:",_8);
_windowIsFullBridge=objj_msgSend(_e,"decodeObjectForKey:",_9);
}
return _c;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_f,_10,_11){
with(_f){
if(_minSize){
objj_msgSend(_11,"encodeSize:forKey:",_minSize,_1);
}
if(_maxSize){
objj_msgSend(_11,"encodeSize:forKey:",_maxSize,_2);
}
objj_msgSend(_11,"encodeObject:forKey:",_viewClass,_3);
objj_msgSend(_11,"encodeObject:forKey:",_windowClass,_4);
objj_msgSend(_11,"encodeRect:forKey:",_windowRect,_5);
objj_msgSend(_11,"encodeInt:forKey:",_windowStyleMask,_6);
objj_msgSend(_11,"encodeObject:forKey:",_windowTitle,_7);
objj_msgSend(_11,"encodeObject:forKey:",_windowView,_8);
objj_msgSend(_11,"encodeObject:forKey:",_windowIsFullBridge,_9);
}
}),new objj_method(sel_getUid("windowClass"),function(_12,_13){
with(_12){
return _windowClass;
}
}),new objj_method(sel_getUid("_cibInstantiate"),function(_14,_15){
with(_14){
var _16=CPClassFromString(objj_msgSend(_14,"windowClass"));
var _17=objj_msgSend(objj_msgSend(_16,"alloc"),"initWithContentRect:styleMask:",_windowRect,_windowStyleMask);
if(_minSize){
objj_msgSend(_17,"setMinSize:",_minSize);
}
if(_maxSize){
objj_msgSend(_17,"setMaxSize:",_maxSize);
}
objj_msgSend(_17,"setLevel:",CPFloatingWindowLevel);
objj_msgSend(_17,"setTitle:",_windowTitle);
objj_msgSend(_windowView,"setAutoresizesSubviews:",NO);
objj_msgSend(_17,"setContentView:",_windowView);
objj_msgSend(_windowView,"setAutoresizesSubviews:",YES);
if(objj_msgSend(_viewClass,"isKindOfClass:",objj_msgSend(CPToolbar,"class"))){
objj_msgSend(_17,"setToolbar:",_viewClass);
}
objj_msgSend(_17,"setFullBridge:",_windowIsFullBridge);
return _17;
}
})]);
p;18;_CPHUDWindowView.jc;6989;
var _1=nil,_2=nil;
var _3=26;
var _4=objj_allocateClassPair(_CPWindowView,"_CPHUDWindowView"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_toolbarView"),new objj_ivar("_titleField"),new objj_ivar("_closeButton")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("contentRectForFrameRect:"),function(_6,_7,_8){
with(_6){
var _9=objj_msgSend(objj_msgSend(_6,"class"),"contentRectForFrameRect:",_8);
if(objj_msgSend(objj_msgSend(objj_msgSend(_6,"window"),"toolbar"),"isVisible")){
toolbarHeight=CGRectGetHeight(objj_msgSend(objj_msgSend(_6,"toolbarView"),"frame"));
_9.origin.y+=toolbarHeight;
_9.size.height-=toolbarHeight;
}
return _9;
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_a,_b,_c){
with(_a){
var _d=objj_msgSend(objj_msgSend(_a,"class"),"frameRectForContentRect:",_c);
if(objj_msgSend(objj_msgSend(objj_msgSend(_a,"window"),"toolbar"),"isVisible")){
toolbarHeight=CGRectGetHeight(objj_msgSend(objj_msgSend(_a,"toolbarView"),"frame"));
_d.origin.y-=toolbarHeight;
_d.size.height+=toolbarHeight;
}
return _d;
}
}),new objj_method(sel_getUid("initWithFrame:styleMask:"),function(_e,_f,_10,_11){
with(_e){
_e=objj_msgSendSuper({receiver:_e,super_class:objj_getClass("_CPWindowView")},"initWithFrame:styleMask:",_10,_11);
if(_e){
var _12=objj_msgSend(_e,"bounds");
objj_msgSend(_e,"setBackgroundColor:",_1);
_titleField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_titleField,"setHitTests:",NO);
objj_msgSend(_titleField,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",11));
objj_msgSend(_titleField,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_titleField,"setTextShadowColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_titleField,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_titleField,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_titleField,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_titleField,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_titleField,"setStringValue:","Untitled");
objj_msgSend(_titleField,"sizeToFit");
objj_msgSend(_titleField,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_titleField,"setStringValue:","");
objj_msgSend(_titleField,"setFrame:",CGRectMake(20,3,CGRectGetWidth(objj_msgSend(_e,"bounds"))-40,CGRectGetHeight(objj_msgSend(_titleField,"frame"))));
objj_msgSend(_e,"addSubview:",_titleField);
if(_styleMask&CPClosableWindowMask){
var _13=objj_msgSend(_CPHUDWindowViewCloseImage,"size");
_closeButton=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(4,4,_13.width,_13.height));
objj_msgSend(_closeButton,"setBordered:",NO);
objj_msgSend(_closeButton,"setImage:",_CPHUDWindowViewCloseImage);
objj_msgSend(_closeButton,"setAlternateImage:",_CPHUDWindowViewCloseActiveImage);
objj_msgSend(_e,"addSubview:",_closeButton);
}
objj_msgSend(_e,"setResizeIndicatorOffset:",CGSizeMake(5,5));
}
return _e;
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_14,_15){
with(_14){
objj_msgSend(_closeButton,"setTarget:",objj_msgSend(_14,"window"));
objj_msgSend(_closeButton,"setAction:",sel_getUid("performClose:"));
}
}),new objj_method(sel_getUid("setTitle:"),function(_16,_17,_18){
with(_16){
objj_msgSend(_titleField,"setStringValue:",_18);
}
}),new objj_method(sel_getUid("toolbarView"),function(_19,_1a){
with(_19){
return _toolbarView;
}
}),new objj_method(sel_getUid("toolbarLabelColor"),function(_1b,_1c){
with(_1b){
return objj_msgSend(CPColor,"whiteColor");
}
}),new objj_method(sel_getUid("toolbarLabelShadowColor"),function(_1d,_1e){
with(_1d){
return objj_msgSend(CPColor,"blackColor");
}
}),new objj_method(sel_getUid("toolbarOffset"),function(_1f,_20){
with(_1f){
return CGSizeMake(0,_3);
}
}),new objj_method(sel_getUid("tile"),function(_21,_22){
with(_21){
objj_msgSendSuper({receiver:_21,super_class:objj_getClass("_CPWindowView")},"tile");
var _23=objj_msgSend(_21,"window"),_24=objj_msgSend(_21,"bounds"),_25=CGRectGetWidth(_24);
objj_msgSend(_titleField,"setFrame:",CGRectMake(20,3,_25-40,CGRectGetHeight(objj_msgSend(_titleField,"frame"))));
var _26=objj_msgSend(_21,"toolbarMaxY");
objj_msgSend(objj_msgSend(_23,"contentView"),"setFrameOrigin:",CGPointMake(0,_26,_25,CGRectGetHeight(_24)-_26));
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("initialize"),function(_27,_28){
with(_27){
if(_27!=objj_msgSend(_CPHUDWindowView,"class")){
return;
}
var _29=objj_msgSend(CPBundle,"bundleForClass:",_27);
_1=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_29,"pathForResource:","CPWindow/HUD/CPWindowHUDBackground0.png"),CPSizeMake(6,78)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_29,"pathForResource:","CPWindow/HUD/CPWindowHUDBackground1.png"),CPSizeMake(1,78)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_29,"pathForResource:","CPWindow/HUD/CPWindowHUDBackground2.png"),CPSizeMake(6,78)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_29,"pathForResource:","CPWindow/HUD/CPWindowHUDBackground3.png"),CPSizeMake(6,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_29,"pathForResource:","CPWindow/HUD/CPWindowHUDBackground4.png"),CPSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_29,"pathForResource:","CPWindow/HUD/CPWindowHUDBackground5.png"),CPSizeMake(6,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_29,"pathForResource:","CPWindow/HUD/CPWindowHUDBackground6.png"),CPSizeMake(6,6)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_29,"pathForResource:","CPWindow/HUD/CPWindowHUDBackground7.png"),CPSizeMake(6,6)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_29,"pathForResource:","CPWindow/HUD/CPWindowHUDBackground8.png"),CPSizeMake(6,6))]));
_CPHUDWindowViewCloseImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_29,"pathForResource:","HUDTheme/WindowClose.png"),CPSizeMake(20,20));
_CPHUDWindowViewCloseActiveImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_29,"pathForResource:","HUDTheme/WindowCloseActive.png"),CPSizeMake(20,20));
}
}),new objj_method(sel_getUid("contentRectForFrameRect:"),function(_2a,_2b,_2c){
with(_2a){
var _2d=CGRectMakeCopy(_2c),_2e=_3;
_2d.origin.y+=_2e;
_2d.size.height-=_2e;
return _2d;
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_2f,_30,_31){
with(_2f){
var _32=CGRectMakeCopy(_31),_33=_3;
_32.origin.y-=_33;
_32.size.height+=_33;
return _32;
}
})]);
p;21;_CPImageAndTextView.jI;21;Foundation/CPString.ji;9;CPColor.ji;8;CPFont.ji;9;CPImage.ji;13;CPTextField.ji;8;CPView.jc;12437;
CPTopVerticalTextAlignment=1,CPCenterVerticalTextAlignment=2,CPBottomVerticalTextAlignment=3;
var _1=1<<0,_2=1<<1,_3=1<<2,_4=1<<3,_5=1<<4,_6=1<<5,_7=1<<6,_8=1<<7,_9=1<<8,_a=1<<9,_b=1<<10;
var _c=3,_d=5;
var _e=objj_allocateClassPair(CPView,"_CPImageAndTextView"),_f=_e.isa;
class_addIvars(_e,[new objj_ivar("_alignment"),new objj_ivar("_verticalAlignment"),new objj_ivar("_lineBreakMode"),new objj_ivar("_textColor"),new objj_ivar("_font"),new objj_ivar("_textShadowColor"),new objj_ivar("_textShadowOffset"),new objj_ivar("_imagePosition"),new objj_ivar("_imageScaling"),new objj_ivar("_image"),new objj_ivar("_text"),new objj_ivar("_textSize"),new objj_ivar("_flags"),new objj_ivar("_DOMImageElement"),new objj_ivar("_DOMTextElement"),new objj_ivar("_DOMTextShadowElement")]);
objj_registerClassPair(_e);
objj_addClassForBundle(_e,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_e,[new objj_method(sel_getUid("initWithFrame:control:"),function(_10,_11,_12,_13){
with(_10){
_10=objj_msgSendSuper({receiver:_10,super_class:objj_getClass("CPView")},"initWithFrame:",_12);
if(_10){
_textShadowOffset={width:0,height:0};
objj_msgSend(_10,"setVerticalAlignment:",CPTopVerticalTextAlignment);
if(_13){
objj_msgSend(_10,"setLineBreakMode:",objj_msgSend(_13,"lineBreakMode"));
objj_msgSend(_10,"setTextColor:",objj_msgSend(_13,"textColor"));
objj_msgSend(_10,"setAlignment:",objj_msgSend(_13,"alignment"));
objj_msgSend(_10,"setVerticalAlignment:",objj_msgSend(_13,"verticalAlignment"));
objj_msgSend(_10,"setFont:",objj_msgSend(_13,"font"));
objj_msgSend(_10,"setImagePosition:",objj_msgSend(_13,"imagePosition"));
objj_msgSend(_10,"setImageScaling:",objj_msgSend(_13,"imageScaling"));
}else{
objj_msgSend(_10,"setLineBreakMode:",CPLineBreakByClipping);
objj_msgSend(_10,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_10,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",12));
objj_msgSend(_10,"setImagePosition:",CPNoImage);
objj_msgSend(_10,"setImageScaling:",CPScaleNone);
}
_textSize=NULL;
}
return _10;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_14,_15,_16){
with(_14){
return objj_msgSend(_14,"initWithFrame:control:",_16,nil);
}
}),new objj_method(sel_getUid("setAlignment:"),function(_17,_18,_19){
with(_17){
if(_alignment===_19){
return;
}
_alignment=_19;
switch(_alignment){
case CPLeftTextAlignment:
_DOMElement.style.textAlign="left";
break;
case CPRightTextAlignment:
_DOMElement.style.textAlign="right";
break;
case CPCenterTextAlignment:
_DOMElement.style.textAlign="center";
break;
case CPJustifiedTextAlignment:
_DOMElement.style.textAlign="justify";
break;
case CPNaturalTextAlignment:
_DOMElement.style.textAlign="";
break;
}
}
}),new objj_method(sel_getUid("alignment"),function(_1a,_1b){
with(_1a){
return _alignment;
}
}),new objj_method(sel_getUid("setVerticalAlignment:"),function(_1c,_1d,_1e){
with(_1c){
if(_verticalAlignment===_1e){
return;
}
_verticalAlignment=_1e;
_flags|=_5;
objj_msgSend(_1c,"setNeedsLayout");
}
}),new objj_method(sel_getUid("verticalAlignment"),function(_1f,_20){
with(_1f){
return _verticalAlignment;
}
}),new objj_method(sel_getUid("setLineBreakMode:"),function(_21,_22,_23){
with(_21){
if(_lineBreakMode===_23){
return;
}
_lineBreakMode=_23;
_flags|=_6;
objj_msgSend(_21,"setNeedsLayout");
}
}),new objj_method(sel_getUid("lineBreakMode"),function(_24,_25){
with(_24){
return _lineBreakMode;
}
}),new objj_method(sel_getUid("setImagePosition:"),function(_26,_27,_28){
with(_26){
if(_imagePosition==_28){
return;
}
_imagePosition=_28;
_flags|=_a;
objj_msgSend(_26,"setNeedsLayout");
}
}),new objj_method(sel_getUid("imagePosition"),function(_29,_2a){
with(_29){
return _imagePosition;
}
}),new objj_method(sel_getUid("setImageScaling:"),function(_2b,_2c,_2d){
with(_2b){
if(_imageScaling==_2d){
return;
}
_imageScaling=_2d;
_flags|=_b;
objj_msgSend(_2b,"setNeedsLayout");
}
}),new objj_method(sel_getUid("imageScaling"),function(_2e,_2f){
with(_2e){
return _imageScaling;
}
}),new objj_method(sel_getUid("setTextColor:"),function(_30,_31,_32){
with(_30){
if(_textColor===_32){
return;
}
_textColor=_32;
_DOMElement.style.color=objj_msgSend(_textColor,"cssString");
}
}),new objj_method(sel_getUid("textColor"),function(_33,_34){
with(_33){
return _textColor;
}
}),new objj_method(sel_getUid("setFont:"),function(_35,_36,_37){
with(_35){
if(_font===_37){
return;
}
_font=_37;
_flags|=_8;
_textSize=NULL;
objj_msgSend(_35,"setNeedsLayout");
}
}),new objj_method(sel_getUid("font"),function(_38,_39){
with(_38){
return _font;
}
}),new objj_method(sel_getUid("setTextShadowColor:"),function(_3a,_3b,_3c){
with(_3a){
if(_textShadowColor===_3c){
return;
}
_textShadowColor=_3c;
_flags|=_9;
objj_msgSend(_3a,"setNeedsLayout");
}
}),new objj_method(sel_getUid("textShadowColor"),function(_3d,_3e){
with(_3d){
return _textShadowColor;
}
}),new objj_method(sel_getUid("setTextShadowOffset:"),function(_3f,_40,_41){
with(_3f){
if((_textShadowOffset.width==_41.width&&_textShadowOffset.height==_41.height)){
return;
}
_textShadowOffset={width:_41.width,height:_41.height};
objj_msgSend(_3f,"setNeedsLayout");
}
}),new objj_method(sel_getUid("textShadowOffset"),function(_42,_43){
with(_42){
return _textShadowOffset;
}
}),new objj_method(sel_getUid("setImage:"),function(_44,_45,_46){
with(_44){
if(_image==_46){
return;
}
_image=_46;
_flags|=_2;
objj_msgSend(_44,"setNeedsLayout");
}
}),new objj_method(sel_getUid("image"),function(_47,_48){
with(_47){
return _image;
}
}),new objj_method(sel_getUid("setText:"),function(_49,_4a,_4b){
with(_49){
if(_text===_4b){
return;
}
_text=_4b;
_flags|=_3;
_textSize=NULL;
objj_msgSend(_49,"setNeedsLayout");
}
}),new objj_method(sel_getUid("text"),function(_4c,_4d){
with(_4c){
return _text;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_4e,_4f){
with(_4e){
var _50=_imagePosition!==CPImageOnly&&(objj_msgSend(_text,"length")>0),_51=!!_DOMTextElement;
if(_50!==_51){
if(_51){
_DOMElement.removeChild(_DOMTextElement);
_DOMTextElement=NULL;
_51=NO;
}else{
_DOMTextElement=document.createElement("div");
var _52=_DOMTextElement.style;
_52.position="absolute";
_52.whiteSpace="pre";
_52.cursor="default";
_52.zIndex=200;
_52.overflow="hidden";
_DOMElement.appendChild(_DOMTextElement);
_51=YES;
_flags|=_3|_8|_6;
}
}
var _52=_51?_DOMTextElement.style:nil;
var _53=_51&&!!_textShadowColor,_54=!!_DOMTextShadowElement;
if(_53!==_54){
if(_54){
_DOMElement.removeChild(_DOMTextShadowElement);
_DOMTextShadowElement=NULL;
_54=NO;
}else{
_DOMTextShadowElement=document.createElement("div");
var _55=_DOMTextShadowElement.style;
_55.font=objj_msgSend(_font?_font:objj_msgSend(CPFont,"systemFontOfSize:",12),"cssString");
_55.position="absolute";
_55.whiteSpace=_52.whiteSpace;
_55.cursor="default";
_55.zIndex=150;
_55.textOverflow=_52.textOverflow;
if(document.attachEvent){
_55.overflow=_52.overflow;
_55.wordWrap=_52.wordWrap;
}else{
_55.overflowX=_52.overflowX;
_55.overflowY=_52.overflowY;
}
_DOMElement.appendChild(_DOMTextShadowElement);
_54=YES;
_flags|=_3;
}
}
var _55=_54?_DOMTextShadowElement.style:nil;
if(_51){
if(_flags&_3){
if(CPFeatureIsCompatible(CPJavascriptInnerTextFeature)){
_DOMTextElement.innerText=_text;
if(_DOMTextShadowElement){
_DOMTextShadowElement.innerText=_text;
}
}else{
if(CPFeatureIsCompatible(CPJavascriptTextContentFeature)){
_DOMTextElement.textContent=_text;
if(_DOMTextShadowElement){
_DOMTextShadowElement.textContent=_text;
}
}
}
}
if(_flags&_8){
var _56=objj_msgSend(_font?_font:objj_msgSend(CPFont,"systemFontOfSize:",12),"cssString");
_52.font=_56;
if(_55){
_55.font=_56;
}
}
if(_flags&_6){
switch(_lineBreakMode){
case CPLineBreakByClipping:
_52.overflow="hidden";
_52.textOverflow="clip";
_52.whiteSpace="pre";
if(document.attachEvent){
_52.wordWrap="normal";
}
break;
case CPLineBreakByTruncatingHead:
case CPLineBreakByTruncatingMiddle:
case CPLineBreakByTruncatingTail:
_52.textOverflow="ellipsis";
_52.whiteSpace="nowrap";
_52.overflow="hidden";
if(document.attachEvent){
_52.wordWrap="normal";
}
break;
case CPLineBreakByCharWrapping:
case CPLineBreakByWordWrapping:
if(document.attachEvent){
_52.whiteSpace="pre";
_52.wordWrap="break-word";
}else{
_52.whiteSpace="-o-pre-wrap";
_52.whiteSpace="-pre-wrap";
_52.whiteSpace="-moz-pre-wrap";
_52.whiteSpace="pre-wrap";
}
_52.overflow="hidden";
_52.textOverflow="clip";
break;
}
if(_55){
if(document.attachEvent){
_55.wordWrap=_52.wordWrap;
_55.overflow=_52.overflow;
}else{
_55.overflowX=_52.overflowX;
_55.overflowY=_52.overflowY;
}
_55.whiteSpace=_52.whiteSpace;
_55.textOverflow=_52.textOverflow;
}
}
}
var _57=_image!==nil&&_imagePosition!==CPNoImage,_58=!!_DOMImageElement;
if(_57!==_58){
if(_58){
_DOMElement.removeChild(_DOMImageElement);
_DOMImageElement=NULL;
_58=NO;
}else{
_DOMImageElement=document.createElement("img");
var _59=_DOMImageElement.style;
_59.top="0px";
_59.left="0px";
_59.position="absolute";
_59.zIndex=100;
_DOMElement.appendChild(_DOMImageElement);
_58=YES;
}
}
var _5a=objj_msgSend(_4e,"bounds").size,_5b={origin:{x:0,y:0},size:{width:_5a.width,height:_5a.height}};
if(_58){
if(!_59){
var _59=_DOMImageElement.style;
}
if(_flags&_2){
_DOMImageElement.src=objj_msgSend(_image,"filename");
}
var _5c=_5a.width/2,_5d=_5a.height/2,_5e=objj_msgSend(_image,"size"),_5f=_5e.width,_60=_5e.height;
if(_imageScaling===CPScaleToFit){
_5f=_5a.width;
_60=_5a.height;
}else{
if(_imageScaling===CPScaleProportionally){
var _61=MIN(MIN(_5a.width,_5f)/_5f,MIN(_5a.height,_60)/_60);
_5f*=_61;
_60*=_61;
}
}
_DOMImageElement.width=_5f;
_DOMImageElement.height=_60;
_59.width=_5f+"px";
_59.height=_60+"px";
if(_imagePosition===CPImageBelow){
_59.left=FLOOR(_5c-_5f/2)+"px";
_59.top=FLOOR(_5a.height-_60)+"px";
_5b.size.height=_5a.height-_60-_d;
}else{
if(_imagePosition===CPImageAbove){
if(!_DOMImageElement.CPDOMDisplayContext){
_DOMImageElement.CPDOMDisplayContext=[];
}
var _62=_DOMImageElement.CPDOMDisplayContext[0];
if(!(_62>=0)){
_62=_DOMImageElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_62]=0;
CPDOMDisplayServerInstructions[_62+1]=_DOMImageElement;
CPDOMDisplayServerInstructions[_62+2]=NULL;
CPDOMDisplayServerInstructions[_62+3]=FLOOR(_5c-_5f/2);
CPDOMDisplayServerInstructions[_62+4]=0;
_5b.origin.y+=_60+_d;
_5b.size.height=_5a.height-_60-_d;
}else{
if(_imagePosition===CPImageLeft){
_59.top=FLOOR(_5d-_60/2)+"px";
_59.left="0px";
_5b.origin.x=_5f+_c;
_5b.size.width-=_5f+_c;
}else{
if(_imagePosition===CPImageRight){
_59.top=FLOOR(_5d-_60/2)+"px";
_59.left=FLOOR(_5a.width-_5f)+"px";
_5b.size.width-=_5f+_c;
}else{
if(_imagePosition===CPImageOnly){
_59.top=FLOOR(_5d-_60/2)+"px";
_59.left=FLOOR(_5c-_5f/2)+"px";
}
}
}
}
}
}
if(_51){
var _63=(_5b.origin.x),_64=(_5b.origin.y),_65=(_5b.size.width),_66=(_5b.size.height);
if(_verticalAlignment!==CPTopVerticalTextAlignment){
if(!_textSize){
if(_lineBreakMode===CPLineBreakByCharWrapping||_lineBreakMode===CPLineBreakByWordWrapping){
_textSize=objj_msgSend(_text,"sizeWithFont:inWidth:",_font,_65);
}else{
_textSize=objj_msgSend(_text,"sizeWithFont:",_font);
}
}
if(_verticalAlignment===CPCenterVerticalTextAlignment){
_64=_64+(_66-_textSize.height)/2;
_66=_textSize.height;
}else{
_64=_64+_66-_textSize.height;
_66=_textSize.height;
}
}
_52.top=ROUND(_64)+"px";
_52.left=ROUND(_63)+"px";
_52.width=ROUND(_65)+"px";
_52.height=ROUND(_66)+"px";
if(_55){
if(_flags&_9){
_55.color=objj_msgSend(_textShadowColor,"cssString");
}
_55.top=ROUND(_64+_textShadowOffset.height)+"px";
_55.left=ROUND(_63+_textShadowOffset.width)+"px";
_55.width=ROUND(_65)+"px";
_55.height=ROUND(_66)+"px";
}
}
_flags=0;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_67,_68){
with(_67){
var _69=CGSizeMakeZero();
if((_imagePosition!==CPNoImage)&&_image){
var _6a=objj_msgSend(_image,"size");
_69.width+=_6a.width;
_69.height+=_6a.height;
}
if((_imagePosition!==CPImageOnly)&&objj_msgSend(_text,"length")>0){
if(!_textSize){
_textSize=objj_msgSend(_text,"sizeWithFont:",_font?_font:objj_msgSend(CPFont,"systemFontOfSize:",12));
}
if(_imagePosition===CPImageLeft||_imagePosition===CPImageRight){
_69.width+=_textSize.width+_c;
_69.height=MAX(_69.height,_textSize.height);
}else{
if(_imagePosition===CPImageAbove||_imagePosition===CPImageBelow){
_69.width=MAX(_69.width,_textSize.width);
_69.height+=_textSize.height+_d;
}else{
_69.width=MAX(_69.width,_textSize.width);
_69.height=MAX(_69.height,_textSize.height);
}
}
}
objj_msgSend(_67,"setFrameSize:",_69);
}
})]);
p;23;_CPStandardWindowView.ji;15;_CPWindowView.jc;9845;
var _1=41;
var _2=nil,_3=nil;
var _4=objj_allocateClassPair(CPView,"_CPTexturedWindowHeadView"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_gradientView"),new objj_ivar("_solidView"),new objj_ivar("_dividerView")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("initWithFrame:"),function(_6,_7,_8){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPView")},"initWithFrame:",_8);
if(_6){
var _9=objj_msgSend(_6,"class"),_a=objj_msgSend(_6,"bounds");
_gradientView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(_a),_1));
objj_msgSend(_gradientView,"setBackgroundColor:",objj_msgSend(_9,"gradientColor"));
objj_msgSend(_6,"addSubview:",_gradientView);
_solidView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,_1,CGRectGetWidth(_a),CGRectGetHeight(_a)-_1));
objj_msgSend(_solidView,"setBackgroundColor:",objj_msgSend(_9,"solidColor"));
objj_msgSend(_6,"addSubview:",_solidView);
}
return _6;
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_b,_c,_d){
with(_b){
var _e=objj_msgSend(_b,"bounds");
objj_msgSend(_gradientView,"setFrameSize:",CGSizeMake(CGRectGetWidth(_e),_1));
objj_msgSend(_solidView,"setFrameSize:",CGSizeMake(CGRectGetWidth(_e),CGRectGetHeight(_e)-_1));
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("gradientColor"),function(_f,_10){
with(_f){
if(!_2){
var _11=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_CPWindowView,"class"));
_2=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_11,"pathForResource:","CPWindow/Standard/CPWindowStandardTop0.png"),CGSizeMake(6,41)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_11,"pathForResource:","CPWindow/Standard/CPWindowStandardTop1.png"),CGSizeMake(1,41)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_11,"pathForResource:","CPWindow/Standard/CPWindowStandardTop2.png"),CGSizeMake(6,41))],NO));
}
return _2;
}
}),new objj_method(sel_getUid("solidColor"),function(_12,_13){
with(_12){
if(!_3){
_3=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",195/255,195/255,195/255,1);
}
return _3;
}
})]);
var _14=nil,_15=nil,_16=nil,_17=nil,_18=nil;
var _19=41;
STANDARD_TITLEBAR_HEIGHT=25;
var _4=objj_allocateClassPair(_CPWindowView,"_CPStandardWindowView"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_headView"),new objj_ivar("_dividerView"),new objj_ivar("_bodyView"),new objj_ivar("_toolbarView"),new objj_ivar("_titleField"),new objj_ivar("_closeButton")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("contentRectForFrameRect:"),function(_1a,_1b,_1c){
with(_1a){
var _1d=objj_msgSend(objj_msgSend(_1a,"class"),"contentRectForFrameRect:",_1c),_1e=objj_msgSend(objj_msgSend(_1a,"window"),"toolbar");
if(objj_msgSend(_1e,"isVisible")){
toolbarHeight=CGRectGetHeight(objj_msgSend(objj_msgSend(_1e,"_toolbarView"),"frame"));
_1d.origin.y+=toolbarHeight;
_1d.size.height-=toolbarHeight;
}
return _1d;
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_1f,_20,_21){
with(_1f){
var _22=objj_msgSend(objj_msgSend(_1f,"class"),"frameRectForContentRect:",_21),_23=objj_msgSend(objj_msgSend(_1f,"window"),"toolbar");
if(objj_msgSend(_23,"isVisible")){
toolbarHeight=CGRectGetHeight(objj_msgSend(objj_msgSend(_23,"_toolbarView"),"frame"));
_22.origin.y-=toolbarHeight;
_22.size.height+=toolbarHeight;
}
return _22;
}
}),new objj_method(sel_getUid("initWithFrame:styleMask:"),function(_24,_25,_26,_27){
with(_24){
_24=objj_msgSendSuper({receiver:_24,super_class:objj_getClass("_CPWindowView")},"initWithFrame:styleMask:",_26,_27);
if(_24){
var _28=objj_msgSend(_24,"class"),_29=objj_msgSend(_24,"bounds");
_headView=objj_msgSend(objj_msgSend(_CPTexturedWindowHeadView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(_29),objj_msgSend(objj_msgSend(_24,"class"),"titleBarHeight")));
objj_msgSend(_headView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_headView,"setHitTests:",NO);
objj_msgSend(_24,"addSubview:",_headView);
_dividerView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_headView,"frame")),CGRectGetWidth(_29),1));
objj_msgSend(_dividerView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_dividerView,"setBackgroundColor:",objj_msgSend(_28,"dividerBackgroundColor"));
objj_msgSend(_dividerView,"setHitTests:",NO);
objj_msgSend(_24,"addSubview:",_dividerView);
var y=CGRectGetMaxY(objj_msgSend(_dividerView,"frame"));
_bodyView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,y,CGRectGetWidth(_29),CGRectGetHeight(_29)-y));
objj_msgSend(_bodyView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_bodyView,"setBackgroundColor:",objj_msgSend(_28,"bodyBackgroundColor"));
objj_msgSend(_bodyView,"setHitTests:",NO);
objj_msgSend(_24,"addSubview:",_bodyView);
objj_msgSend(_24,"setResizeIndicatorOffset:",CGSizeMake(2,2));
_titleField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_titleField,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",12));
objj_msgSend(_titleField,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_titleField,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_titleField,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_titleField,"setTextShadowColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_titleField,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_titleField,"setStringValue:","Untitled");
objj_msgSend(_titleField,"sizeToFit");
objj_msgSend(_titleField,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_titleField,"setStringValue:","");
objj_msgSend(_24,"addSubview:",_titleField);
if(_styleMask&CPClosableWindowMask){
if(!_17){
var _2b=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_17=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_2b,"pathForResource:","CPWindow/Standard/CPWindowStandardCloseButton.png"),CGSizeMake(16,16));
_18=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_2b,"pathForResource:","CPWindow/Standard/CPWindowStandardCloseButtonHighlighted.png"),CGSizeMake(16,16));
}
_closeButton=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(8,7,16,16));
objj_msgSend(_closeButton,"setBordered:",NO);
objj_msgSend(_closeButton,"setImage:",_17);
objj_msgSend(_closeButton,"setAlternateImage:",_18);
objj_msgSend(_24,"addSubview:",_closeButton);
}
objj_msgSend(_24,"tile");
}
return _24;
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_2c,_2d){
with(_2c){
objj_msgSend(_closeButton,"setTarget:",objj_msgSend(_2c,"window"));
objj_msgSend(_closeButton,"setAction:",sel_getUid("performClose:"));
}
}),new objj_method(sel_getUid("toolbarOffset"),function(_2e,_2f){
with(_2e){
return CGSizeMake(0,objj_msgSend(objj_msgSend(_2e,"class"),"titleBarHeight"));
}
}),new objj_method(sel_getUid("tile"),function(_30,_31){
with(_30){
objj_msgSendSuper({receiver:_30,super_class:objj_getClass("_CPWindowView")},"tile");
var _32=objj_msgSend(_30,"window"),_33=objj_msgSend(_30,"bounds"),_34=CGRectGetWidth(_33);
objj_msgSend(_headView,"setFrameSize:",CGSizeMake(_34,objj_msgSend(_30,"toolbarMaxY")));
objj_msgSend(_dividerView,"setFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_headView,"frame")),_34,1));
var _35=CGRectGetMaxY(objj_msgSend(_dividerView,"frame"));
objj_msgSend(_bodyView,"setFrame:",CGRectMake(0,_35,_34,CGRectGetHeight(_33)-_35));
objj_msgSend(_titleField,"setFrame:",CGRectMake(10,3,_34-20,CGRectGetHeight(objj_msgSend(_titleField,"frame"))));
objj_msgSend(objj_msgSend(_32,"contentView"),"setFrameOrigin:",CGPointMake(0,CGRectGetMaxY(objj_msgSend(_dividerView,"frame"))));
}
}),new objj_method(sel_getUid("setTitle:"),function(_36,_37,_38){
with(_36){
objj_msgSend(_titleField,"setStringValue:",_38);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_39,_3a,_3b){
with(_39){
if(CGRectContainsPoint(objj_msgSend(_headView,"frame"),objj_msgSend(_39,"convertPoint:fromView:",objj_msgSend(_3b,"locationInWindow"),nil))){
return objj_msgSend(_39,"trackMoveWithEvent:",_3b);
}
objj_msgSendSuper({receiver:_39,super_class:objj_getClass("_CPWindowView")},"mouseDown:",_3b);
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("bodyBackgroundColor"),function(_3c,_3d){
with(_3c){
if(!_14){
_14=objj_msgSend(CPColor,"colorWithWhite:alpha:",0.96,1);
}
return _14;
}
}),new objj_method(sel_getUid("dividerBackgroundColor"),function(_3e,_3f){
with(_3e){
if(!_15){
_15=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",125/255,125/255,125/255,1);
}
return _15;
}
}),new objj_method(sel_getUid("titleColor"),function(_40,_41){
with(_40){
if(!_16){
_16=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",44/255,44/255,44/255,1);
}
return _16;
}
}),new objj_method(sel_getUid("contentRectForFrameRect:"),function(_42,_43,_44){
with(_42){
var _45=CGRectMakeCopy(_44),_46=objj_msgSend(_42,"titleBarHeight")+1;
_45.origin.y+=_46;
_45.size.height-=_46;
return _45;
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_47,_48,_49){
with(_47){
var _4a=CGRectMakeCopy(_49),_4b=objj_msgSend(_47,"titleBarHeight")+1;
_4a.origin.y-=_4b;
_4a.size.height+=_4b;
return _4a;
}
}),new objj_method(sel_getUid("titleBarHeight"),function(_4c,_4d){
with(_4c){
return STANDARD_TITLEBAR_HEIGHT;
}
})]);
p;15;_CPWindowView.ji;8;CPView.ji;13;CPImageView.jc;9039;
var _1=nil;
var _2=objj_allocateClassPair(CPView,"_CPWindowView"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_styleMask"),new objj_ivar("_resizeIndicator"),new objj_ivar("_resizeIndicatorOffset"),new objj_ivar("_toolbarView"),new objj_ivar("_resizeFrame"),new objj_ivar("_mouseDraggedPoint"),new objj_ivar("_cachedScreenFrame")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("contentRectForFrameRect:"),function(_4,_5,_6){
with(_4){
return objj_msgSend(objj_msgSend(_4,"class"),"contentRectForFrameRect:",_6);
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(objj_msgSend(_7,"class"),"frameRectForContentRect:",_9);
}
}),new objj_method(sel_getUid("initWithFrame:styleMask:"),function(_a,_b,_c,_d){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPView")},"initWithFrame:",_c);
if(_a){
_styleMask=_d;
_resizeIndicatorOffset=CGSizeMake(0,0);
_toolbarOffset=CGSizeMake(0,0);
objj_msgSend(_a,"setShowsResizeIndicator:",!(_styleMask&CPBorderlessBridgeWindowMask)&&(_styleMask&CPResizableWindowMask));
}
return _a;
}
}),new objj_method(sel_getUid("setTitle:"),function(_e,_f,_10){
with(_e){
}
}),new objj_method(sel_getUid("acceptsFirstMouse:"),function(_11,_12,_13){
with(_11){
return YES;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_14,_15,_16){
with(_14){
var _17=objj_msgSend(_14,"window");
if((_styleMask&CPResizableWindowMask)&&_resizeIndicator){
var _18=objj_msgSend(_resizeIndicator,"frame");
if(CGRectContainsPoint(_18,objj_msgSend(_14,"convertPoint:fromView:",objj_msgSend(_16,"locationInWindow"),nil))){
return objj_msgSend(_14,"trackResizeWithEvent:",_16);
}
}
if(objj_msgSend(_17,"isMovableByWindowBackground")){
objj_msgSend(_14,"trackMoveWithEvent:",_16);
}else{
objj_msgSendSuper({receiver:_14,super_class:objj_getClass("CPView")},"mouseDown:",_16);
}
}
}),new objj_method(sel_getUid("trackResizeWithEvent:"),function(_19,_1a,_1b){
with(_19){
var _1c=objj_msgSend(_1b,"locationInWindow"),_1d=objj_msgSend(_1b,"type");
if(_1d===CPLeftMouseUp){
return;
}
var _1e=objj_msgSend(_19,"window");
if(_1d===CPLeftMouseDown){
var _1f=objj_msgSend(_1e,"frame");
_resizeFrame=CGRectMake(_1c.x,_1c.y,CGRectGetWidth(_1f),CGRectGetHeight(_1f));
}else{
if(_1d===CPLeftMouseDragged){
objj_msgSend(_1e,"setFrameSize:",CGSizeMake(CGRectGetWidth(_resizeFrame)+_1c.x-CGRectGetMinX(_resizeFrame),CGRectGetHeight(_resizeFrame)+_1c.y-CGRectGetMinY(_resizeFrame)));
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_19,sel_getUid("trackResizeWithEvent:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("_pointWithinScreenFrame:"),function(_20,_21,_22){
with(_20){
var _23=_cachedScreenFrame;
if(!_23){
_23=objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"visibleFrame");
}
var _24=CGPointMake(0,0);
_24.x=MIN(MAX(_22.x,-_frame.size.width+4),CGRectGetMaxX(_23)-4);
_24.y=MIN(MAX(_22.y,0),CGRectGetMaxY(_23)-8);
return _24;
}
}),new objj_method(sel_getUid("trackMoveWithEvent:"),function(_25,_26,_27){
with(_25){
var _28=objj_msgSend(_27,"type");
if(_28===CPLeftMouseUp){
_cachedScreenFrame=nil;
return;
}else{
if(_28===CPLeftMouseDown){
_mouseDraggedPoint=objj_msgSend(objj_msgSend(_25,"window"),"convertBaseToBridge:",objj_msgSend(_27,"locationInWindow"));
_cachedScreenFrame=objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"visibleFrame");
}else{
if(_28===CPLeftMouseDragged){
var _29=objj_msgSend(_25,"window"),_2a=objj_msgSend(_29,"frame"),_2b=objj_msgSend(_29,"convertBaseToBridge:",objj_msgSend(_27,"locationInWindow")),_2c=objj_msgSend(_25,"_pointWithinScreenFrame:",CGPointMake((_2a.origin.x)+(_2b.x-_mouseDraggedPoint.x),(_2a.origin.y)+(_2b.y-_mouseDraggedPoint.y)));
objj_msgSend(_29,"setFrameOrigin:",_2c);
_mouseDraggedPoint=objj_msgSend(_25,"_pointWithinScreenFrame:",_2b);
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_25,sel_getUid("trackMoveWithEvent:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("setShowsResizeIndicator:"),function(_2d,_2e,_2f){
with(_2d){
if(_2f){
var _30=objj_msgSend(_1,"size"),_31=objj_msgSend(_2d,"frame").size;
_resizeIndicator=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(_31.width-_30.width-_resizeIndicatorOffset.width,_31.height-_30.height-_resizeIndicatorOffset.height,_30.width,_30.height));
objj_msgSend(_resizeIndicator,"setImage:",_1);
objj_msgSend(_resizeIndicator,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_2d,"addSubview:",_resizeIndicator);
}else{
objj_msgSend(_resizeIndicator,"removeFromSuperview");
_resizeIndicator=nil;
}
}
}),new objj_method(sel_getUid("showsResizeIndicator"),function(_32,_33){
with(_32){
return _resizeIndicator!==nil;
}
}),new objj_method(sel_getUid("setResizeIndicatorOffset:"),function(_34,_35,_36){
with(_34){
if(CGSizeEqualToSize(_resizeIndicatorOffset,_36)){
return;
}
_resizeIndicatorOffset=_36;
if(!_resizeIndicator){
return;
}
var _37=objj_msgSend(_resizeIndicator,"frame").size,_38=objj_msgSend(_34,"frame").size;
objj_msgSend(_resizeIndicator,"setFrameOrigin:",CGPointMake(_38.width-_37.width-_36.width,_38.height-_37.height-_36.height));
}
}),new objj_method(sel_getUid("resizeIndicatorOffset"),function(_39,_3a){
with(_39){
return _resizeIndicatorOffset;
}
}),new objj_method(sel_getUid("windowDidChangeDocumentEdited"),function(_3b,_3c){
with(_3b){
}
}),new objj_method(sel_getUid("windowDidChangeDocumentSaving"),function(_3d,_3e){
with(_3d){
}
}),new objj_method(sel_getUid("showsToolbar"),function(_3f,_40){
with(_3f){
return YES;
}
}),new objj_method(sel_getUid("toolbarOffset"),function(_41,_42){
with(_41){
return CGSizeMakeZero();
}
}),new objj_method(sel_getUid("toolbarLabelColor"),function(_43,_44){
with(_43){
return objj_msgSend(CPColor,"blackColor");
}
}),new objj_method(sel_getUid("toolbarMaxY"),function(_45,_46){
with(_45){
if(!_toolbarView||objj_msgSend(_toolbarView,"isHidden")){
return objj_msgSend(_45,"toolbarOffset").height;
}
return CGRectGetMaxY(objj_msgSend(_toolbarView,"frame"));
}
}),new objj_method(sel_getUid("toolbarView"),function(_47,_48){
with(_47){
return _toolbarView;
}
}),new objj_method(sel_getUid("tile"),function(_49,_4a){
with(_49){
var _4b=objj_msgSend(_49,"window"),_4c=objj_msgSend(_49,"bounds"),_4d=CGRectGetWidth(_4c);
if(objj_msgSend(objj_msgSend(_4b,"toolbar"),"isVisible")){
var _4e=objj_msgSend(_49,"toolbarView"),_4f=objj_msgSend(_49,"toolbarOffset");
objj_msgSend(_4e,"setFrame:",CGRectMake(_4f.width,_4f.height,_4d,CGRectGetHeight(objj_msgSend(_4e,"frame"))));
}
if(objj_msgSend(_49,"showsResizeIndicator")){
var _50=objj_msgSend(_resizeIndicator,"frame").size,_51=objj_msgSend(_49,"bounds").size;
objj_msgSend(_resizeIndicator,"setFrameOrigin:",CGPointMake(_51.width-_50.width-_resizeIndicatorOffset.width,_51.height-_50.height-_resizeIndicatorOffset.height));
}
}
}),new objj_method(sel_getUid("noteToolbarChanged"),function(_52,_53){
with(_52){
var _54=objj_msgSend(_52,"window"),_55=objj_msgSend(_54,"toolbar"),_56=objj_msgSend(_55,"_toolbarView");
if(_toolbarView!==_56){
objj_msgSend(_toolbarView,"removeFromSuperview");
if(_56){
objj_msgSend(_56,"removeFromSuperview");
objj_msgSend(_56,"setLabelColor:",objj_msgSend(_52,"toolbarLabelColor"));
if(objj_msgSend(_52,"respondsToSelector:",sel_getUid("toolbarLabelShadowColor"))){
objj_msgSend(_56,"setLabelShadowColor:",objj_msgSend(_52,"toolbarLabelShadowColor"));
}
objj_msgSend(_52,"addSubview:",_56);
}
_toolbarView=_56;
}
objj_msgSend(_56,"setHidden:",!objj_msgSend(_52,"showsToolbar")||!objj_msgSend(_55,"isVisible"));
if(_54){
var _57=objj_msgSend(_52,"convertRect:toView:",objj_msgSend(objj_msgSend(_54,"contentView"),"frame"),nil);
_57.origin=objj_msgSend(_54,"convertBaseToBridge:",_57.origin);
objj_msgSend(_52,"setAutoresizesSubviews:",NO);
objj_msgSend(_54,"setFrame:",objj_msgSend(_54,"frameRectForContentRect:",_57));
objj_msgSend(_52,"setAutoresizesSubviews:",YES);
}
objj_msgSend(_52,"tile");
}
}),new objj_method(sel_getUid("didAddSubview:"),function(_58,_59,_5a){
with(_58){
if(!_resizeIndicator||_5a===_resizeIndicator){
return;
}
objj_msgSend(_58,"addSubview:",_resizeIndicator);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("initialize"),function(_5b,_5c){
with(_5b){
if(_5b!=objj_msgSend(_CPWindowView,"class")){
return;
}
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class")),"pathForResource:","_CPWindowView/_CPWindowViewResizeIndicator.png"),CGSizeMake(12,12));
}
}),new objj_method(sel_getUid("contentRectForFrameRect:"),function(_5d,_5e,_5f){
with(_5d){
return CGRectMakeCopy(_5f);
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_60,_61,_62){
with(_60){
return CGRectMakeCopy(_62);
}
})]);
p;8;AppKit.ji;9;CALayer.ji;9;CPAlert.ji;13;CPAnimation.ji;15;CPApplication.ji;14;CPBezierPath.ji;10;CPButton.ji;13;CPButtonBar.ji;12;CPCheckBox.ji;7;CPCib.ji;14;CPCibLoading.ji;12;CPClipView.ji;18;CPCollectionView.ji;9;CPColor.ji;14;CPColorPanel.ji;13;CPColorWell.ji;17;CPCompatibility.ji;11;CPControl.ji;10;CPCookie.ji;12;CPDocument.ji;22;CPDocumentController.ji;9;CPEvent.ji;14;CPFlashMovie.ji;13;CPFlashView.ji;8;CPFont.ji;15;CPFontManager.ji;12;CPGeometry.ji;9;CPImage.ji;13;CPImageView.ji;8;CPMenu.ji;12;CPMenuItem.ji;9;CPPanel.ji;14;CPPasteboard.ji;15;CPPopUpButton.ji;21;CPProgressIndicator.ji;9;CPRadio.ji;13;CPResponder.ji;14;CPScrollView.ji;12;CPScroller.ji;19;CPSecureTextField.ji;20;CPSegmentedControl.ji;10;CPShadow.ji;10;CPSlider.ji;13;CPSplitView.ji;11;CPTabView.ji;15;CPTableColumn.ji;13;CPTableView.ji;13;CPTextField.ji;11;CPToolbar.ji;15;CPToolbarItem.ji;8;CPView.ji;11;CPWebView.ji;10;CPWindow.ji;20;CPWindowController.jp;13;CAAnimation.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.ji;23;CAMediaTimingFunction.jc;3790;
var _1=objj_allocateClassPair(CPObject,"CAAnimation"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_isRemovedOnCompletion"),new objj_ivar("_delegate")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_isRemovedOnCompletion=YES;
}
return _3;
}
}),new objj_method(sel_getUid("shouldArchiveValueForKey:"),function(_5,_6,_7){
with(_5){
return YES;
}
}),new objj_method(sel_getUid("setRemovedOnCompletion:"),function(_8,_9,_a){
with(_8){
_isRemovedOnCompletion=_a;
}
}),new objj_method(sel_getUid("removedOnCompletion"),function(_b,_c){
with(_b){
return _isRemovedOnCompletion;
}
}),new objj_method(sel_getUid("isRemovedOnCompletion"),function(_d,_e){
with(_d){
return _isRemovedOnCompletion;
}
}),new objj_method(sel_getUid("timingFunction"),function(_f,_10){
with(_f){
return nil;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_11,_12,_13){
with(_11){
_delegate=_13;
}
}),new objj_method(sel_getUid("delegate"),function(_14,_15){
with(_14){
return _delegate;
}
}),new objj_method(sel_getUid("runActionForKey:object:arguments:"),function(_16,_17,_18,_19,_1a){
with(_16){
objj_msgSend(_19,"addAnimation:forKey:",_16,_18);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("animation"),function(_1b,_1c){
with(_1b){
return objj_msgSend(objj_msgSend(_1b,"alloc"),"init");
}
}),new objj_method(sel_getUid("defaultValueForKey:"),function(_1d,_1e,_1f){
with(_1d){
return nil;
}
})]);
var _1=objj_allocateClassPair(CAAnimation,"CAPropertyAnimation"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_keyPath"),new objj_ivar("_isCumulative"),new objj_ivar("_isAdditive")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("setKeyPath:"),function(_20,_21,_22){
with(_20){
_keyPath=_22;
}
}),new objj_method(sel_getUid("keyPath"),function(_23,_24){
with(_23){
return _keyPath;
}
}),new objj_method(sel_getUid("setCumulative:"),function(_25,_26,_27){
with(_25){
_isCumulative=_27;
}
}),new objj_method(sel_getUid("cumulative"),function(_28,_29){
with(_28){
return _isCumulative;
}
}),new objj_method(sel_getUid("isCumulative"),function(_2a,_2b){
with(_2a){
return _isCumulative;
}
}),new objj_method(sel_getUid("setAdditive:"),function(_2c,_2d,_2e){
with(_2c){
_isAdditive=_2e;
}
}),new objj_method(sel_getUid("additive"),function(_2f,_30){
with(_2f){
return _isAdditive;
}
}),new objj_method(sel_getUid("isAdditive"),function(_31,_32){
with(_31){
return _isAdditive;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("animationWithKeyPath:"),function(_33,_34,_35){
with(_33){
var _36=objj_msgSend(_33,"animation");
objj_msgSend(_36,"setKeyPath:",_35);
return _36;
}
})]);
var _1=objj_allocateClassPair(CAPropertyAnimation,"CABasicAnimation"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_fromValue"),new objj_ivar("_toValue"),new objj_ivar("_byValue")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("setFromValue:"),function(_37,_38,_39){
with(_37){
_fromValue=_39;
}
}),new objj_method(sel_getUid("fromValue"),function(_3a,_3b){
with(_3a){
return _fromValue;
}
}),new objj_method(sel_getUid("setToValue:"),function(_3c,_3d,_3e){
with(_3c){
_toValue=_3e;
}
}),new objj_method(sel_getUid("toValue"),function(_3f,_40){
with(_3f){
return _toValue;
}
}),new objj_method(sel_getUid("setByValue:"),function(_41,_42,_43){
with(_41){
_byValue=_43;
}
}),new objj_method(sel_getUid("byValue"),function(_44,_45){
with(_44){
return _byValue;
}
})]);
p;16;CABackingStore.ji;12;CGGeometry.ji;17;CPCompatibility.jc;599;
CABackingStoreGetContext=function(_1){
return _1.context;
};
if(CPFeatureIsCompatible(CPHTMLCanvasFeature)){
CABackingStoreCreate=function(){
var _2=document.createElement("canvas");
_2.style.position="absolute";
return {context:_2.getContext("2d"),buffer:_2,_image:_2};
};
CABackingStoreSetSize=function(_3,_4){
var _5=_3.buffer;
_5.width=_4.width;
_5.height=_4.height;
_5.style.width=_4.width+"px";
_5.style.height=_4.height+"px";
};
}else{
CABackingStoreCreate=function(){
var _6=CGBitmapGraphicsContextCreate();
_6.buffer="";
return {context:_6};
};
CABackingStoreSetSize=function(_7,_8){
};
}
p;14;CAFlashLayer.ji;9;CALayer.ji;14;CPFlashMovie.jc;803;
var _1=objj_allocateClassPair(CALayer,"CAFlashLayer"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_flashMovie")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("setFlashMovie:"),function(_3,_4,_5){
with(_3){
if(_flashMovie==_5){
return;
}
_flashMovie=_5;
_DOMElement.innerHTML="<object width = \"100%\" height = \"100%\"><param name = \"movie\" value = \""+_5._fileName+"\"></param><param name = \"wmode\" value = \"transparent\"></param><embed src = \""+_5._fileName+"\" type = \"application/x-shockwave-flash\" wmode = \"transparent\" width = \"100%\" height = \"100%\"></embed></object>";
}
}),new objj_method(sel_getUid("flashMovie"),function(_6,_7){
with(_6){
return _flashMovie;
}
})]);
p;9;CALayer.jI;21;Foundation/CPObject.jI;23;AppKit/CABackingStore.jI;18;AppKit/CGContext.jI;19;AppKit/CGGeometry.ji;12;CGGeometry.jc;24770;
CGAffineTransformMake=function(a,b,c,d,tx,ty){
return {a:a,b:b,c:c,d:d,tx:tx,ty:ty};
};
CGAffineTransformMakeIdentity=function(){
return {a:1,b:0,c:0,d:1,tx:0,ty:0};
};
CGAffineTransformMakeCopy=function(_7){
return {a:_7.a,b:_7.b,c:_7.c,d:_7.d,tx:_7.tx,ty:_7.ty};
};
CGAffineTransformMakeScale=function(sx,sy){
return {a:sx,b:0,c:0,d:sy,tx:0,ty:0};
};
CGAffineTransformMakeTranslation=function(tx,ty){
return {a:1,b:0,c:0,d:1,tx:tx,ty:ty};
};
CGAffineTransformTranslate=function(_c,tx,ty){
return {a:_c.a,b:_c.b,c:_c.c,d:_c.d,tx:_c.tx+_c.a*tx+_c.c*ty,ty:_c.ty+_c.b*tx+_c.d*ty};
};
CGAffineTransformScale=function(_f,sx,sy){
return {a:_f.a*sx,b:_f.b*sx,c:_f.c*sy,d:_f.d*sy,tx:_f.tx,ty:_f.ty};
};
CGAffineTransformConcat=function(lhs,rhs){
return {a:lhs.a*rhs.a+lhs.b*rhs.c,b:lhs.a*rhs.b+lhs.b*rhs.d,c:lhs.c*rhs.a+lhs.d*rhs.c,d:lhs.c*rhs.b+lhs.d*rhs.d,tx:lhs.tx*rhs.a+lhs.ty*rhs.c+rhs.tx,ty:lhs.tx*rhs.b+lhs.ty*rhs.d+rhs.ty};
};
CGPointApplyAffineTransform=function(_14,_15){
return {x:_14.x*_15.a+_14.y*_15.c+_15.tx,y:_14.x*_15.b+_14.y*_15.d+_15.ty};
};
CGSizeApplyAffineTransform=function(_16,_17){
return {width:_16.width*_17.a+_16.height*_17.c,height:_16.width*_17.b+_16.height*_17.d};
};
CGAffineTransformIsIdentity=function(_18){
return (_18.a==1&&_18.b==0&&_18.c==0&&_18.d==1&&_18.tx==0&&_18.ty==0);
};
CGAffineTransformEqualToTransform=function(lhs,rhs){
return (lhs.a==rhs.a&&lhs.b==rhs.b&&lhs.c==rhs.c&&lhs.d==rhs.d&&lhs.tx==rhs.tx&&lhs.ty==rhs.ty);
};
CGStringCreateWithCGAffineTransform=function(_1b){
return (" [[ "+_1b.a+", "+_1b.b+", 0 ], [ "+_1b.c+", "+_1b.d+", 0 ], [ "+_1b.tx+", "+_1b.ty+", 1]]");
};
CGAffineTransformCreateCopy=function(_1c){
return {a:_1c.a,b:_1c.b,c:_1c.c,d:_1c.d,tx:_1c.tx,ty:_1c.ty};
};
CGAffineTransformMakeRotation=function(_1d){
var sin=SIN(_1d),cos=COS(_1d);
return {a:cos,b:sin,c:-sin,d:cos,tx:0,ty:0};
};
CGAffineTransformRotate=function(_20,_21){
var sin=SIN(_21),cos=COS(_21);
return {a:_20.a*cos+_20.c*sin,b:_20.b*cos+_20.d*sin,c:_20.c*cos-_20.a*sin,d:_20.d*cos-_20.b*sin,tx:_20.tx,ty:_20.ty};
};
CGAffineTransformInvert=function(_24){
var _25=1/(_24.a*_24.d-_24.b*_24.c);
return {a:_25*_24.d,b:-_25*_24.b,c:-_25*_24.c,d:_25*_24.a,tx:_25*(_24.c*_24.ty-_24.d*_24.tx),ty:_25*(_24.b*_24.tx-_24.a*_24.ty)};
};
CGRectApplyAffineTransform=function(_26,_27){
var top=(_26.origin.y),_29=(_26.origin.x),_2a=(_26.origin.x+_26.size.width),_2b=(_26.origin.y+_26.size.height),_2c=CGPointApplyAffineTransform({x:_29,y:top},_27),_2d=CGPointApplyAffineTransform({x:_2a,y:top},_27),_2e=CGPointApplyAffineTransform({x:_29,y:_2b},_27),_2f=CGPointApplyAffineTransform({x:_2a,y:_2b},_27),_30=MIN(_2c.x,_2d.x,_2e.x,_2f.x),_31=MAX(_2c.x,_2d.x,_2e.x,_2f.x),_32=MIN(_2c.y,_2d.y,_2e.y,_2f.y),_33=MAX(_2c.y,_2d.y,_2e.y,_2f.y);
return {origin:{x:_30,y:_32},size:{width:(_31-_30),height:(_33-_32)}};
};
CPStringFromCGAffineTransform=function(_34){
return "{"+_34.a+", "+_34.b+", "+_34.c+", "+_34.d+", "+_34.tx+", "+_34.ty+"}";
};
var _35=1,_36=2,_37=4,_38=8,_39=16;
var _3a=NO;
var _3b=1,_3c=2,_3d=4,_3e=8,_3f=16,_40=_3d|_3b|_3c;
var _41=nil;
var _42=objj_allocateClassPair(CPObject,"CALayer"),_43=_42.isa;
class_addIvars(_42,[new objj_ivar("_frame"),new objj_ivar("_bounds"),new objj_ivar("_position"),new objj_ivar("_zPosition"),new objj_ivar("_anchorPoint"),new objj_ivar("_affineTransform"),new objj_ivar("_sublayerTransform"),new objj_ivar("_sublayerTransformForSublayers"),new objj_ivar("_backingStoreFrame"),new objj_ivar("_standardBackingStoreFrame"),new objj_ivar("_hasSublayerTransform"),new objj_ivar("_hasCustomBackingStoreFrame"),new objj_ivar("_opacity"),new objj_ivar("_isHidden"),new objj_ivar("_backgroundColor"),new objj_ivar("_superlayer"),new objj_ivar("_sublayers"),new objj_ivar("_runLoopUpdateMask"),new objj_ivar("_needsDisplayOnBoundsChange"),new objj_ivar("_delegate"),new objj_ivar("_delegateRespondsToDisplayLayerSelector"),new objj_ivar("_delegateRespondsToDrawLayerInContextSelector"),new objj_ivar("_DOMElement"),new objj_ivar("_DOMContentsElement"),new objj_ivar("_contents"),new objj_ivar("_context"),new objj_ivar("_owningView"),new objj_ivar("_transformToLayer"),new objj_ivar("_transformFromLayer")]);
objj_registerClassPair(_42);
objj_addClassForBundle(_42,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_42,[new objj_method(sel_getUid("init"),function(_44,_45){
with(_44){
_44=objj_msgSendSuper({receiver:_44,super_class:objj_getClass("CPObject")},"init");
if(_44){
_frame=CGRectMakeZero();
_backingStoreFrame=CGRectMakeZero();
_standardBackingStoreFrame=CGRectMakeZero();
_bounds=CGRectMakeZero();
_position=CGPointMakeZero();
_zPosition=0;
_anchorPoint=CGPointMake(0.5,0.5);
_affineTransform=CGAffineTransformMakeIdentity();
_sublayerTransform=CGAffineTransformMakeIdentity();
_transformToLayer=CGAffineTransformMakeIdentity();
_transformFromLayer=CGAffineTransformMakeIdentity();
_opacity=1;
_isHidden=NO;
_masksToBounds=NO;
_sublayers=[];
_DOMElement=document.createElement("div");
_DOMElement.style.overflow="visible";
_DOMElement.style.position="absolute";
_DOMElement.style.visibility="visible";
_DOMElement.style.top="0px";
_DOMElement.style.left="0px";
_DOMElement.style.zIndex=0;
_DOMElement.style.width="0px";
_DOMElement.style.height="0px";
}
return _44;
}
}),new objj_method(sel_getUid("setBounds:"),function(_46,_47,_48){
with(_46){
if(CGRectEqualToRect(_bounds,_48)){
return;
}
var _49=_bounds.origin;
_bounds={origin:{x:_48.origin.x,y:_48.origin.y},size:{width:_48.size.width,height:_48.size.height}};
if(_hasSublayerTransform){
_CALayerUpdateSublayerTransformForSublayers(_46);
}
_CALayerRecalculateGeometry(_46,_35);
}
}),new objj_method(sel_getUid("bounds"),function(_4a,_4b){
with(_4a){
return _bounds;
}
}),new objj_method(sel_getUid("setPosition:"),function(_4c,_4d,_4e){
with(_4c){
if(CGPointEqualToPoint(_position,_4e)){
return;
}
_position={x:_4e.x,y:_4e.y};
_CALayerRecalculateGeometry(_4c,_36);
}
}),new objj_method(sel_getUid("position"),function(_4f,_50){
with(_4f){
return _position;
}
}),new objj_method(sel_getUid("setZPosition:"),function(_51,_52,_53){
with(_51){
if(_zPosition==_53){
return;
}
_zPosition=_53;
objj_msgSend(_51,"registerRunLoopUpdateWithMask:",_3d);
}
}),new objj_method(sel_getUid("setAnchorPoint:"),function(_54,_55,_56){
with(_54){
_56={x:_56.x,y:_56.y};
_56.x=MIN(1,MAX(0,_56.x));
_56.y=MIN(1,MAX(0,_56.y));
if(CGPointEqualToPoint(_anchorPoint,_56)){
return;
}
_anchorPoint=_56;
if(_hasSublayerTransform){
_CALayerUpdateSublayerTransformForSublayers(_54);
}
if(_owningView){
_position=CGPointMake((_bounds.size.width)*_anchorPoint.x,(_bounds.size.height)*_anchorPoint.y);
}
_CALayerRecalculateGeometry(_54,_37);
}
}),new objj_method(sel_getUid("anchorPoint"),function(_57,_58){
with(_57){
return _anchorPoint;
}
}),new objj_method(sel_getUid("setAffineTransform:"),function(_59,_5a,_5b){
with(_59){
if(CGAffineTransformEqualToTransform(_affineTransform,_5b)){
return;
}
_affineTransform={a:_5b.a,b:_5b.b,c:_5b.c,d:_5b.d,tx:_5b.tx,ty:_5b.ty};
_CALayerRecalculateGeometry(_59,_38);
}
}),new objj_method(sel_getUid("affineTransform"),function(_5c,_5d){
with(_5c){
return _affineTransform;
}
}),new objj_method(sel_getUid("setSublayerTransform:"),function(_5e,_5f,_60){
with(_5e){
if(CGAffineTransformEqualToTransform(_sublayerTransform,_60)){
return;
}
var _61=_hasSublayerTransform;
_sublayerTransform={a:_60.a,b:_60.b,c:_60.c,d:_60.d,tx:_60.tx,ty:_60.ty};
_hasSublayerTransform=!(_sublayerTransform.a==1&&_sublayerTransform.b==0&&_sublayerTransform.c==0&&_sublayerTransform.d==1&&_sublayerTransform.tx==0&&_sublayerTransform.ty==0);
if(_hasSublayerTransform){
_CALayerUpdateSublayerTransformForSublayers(_5e);
var _62=_sublayers.length;
while(_62--){
_CALayerRecalculateGeometry(_sublayers[_62],_39);
}
}
}
}),new objj_method(sel_getUid("sublayerTransform"),function(_63,_64){
with(_63){
return _sublayerTransform;
}
}),new objj_method(sel_getUid("transformToLayer"),function(_65,_66){
with(_65){
return _transformToLayer;
}
}),new objj_method(sel_getUid("setFrame:"),function(_67,_68,_69){
with(_67){
alert("FIXME IMPLEMENT");
}
}),new objj_method(sel_getUid("frame"),function(_6a,_6b){
with(_6a){
if(!_frame){
_frame=objj_msgSend(_6a,"convertRect:toLayer:",_bounds,_superlayer);
}
return _frame;
}
}),new objj_method(sel_getUid("backingStoreFrame"),function(_6c,_6d){
with(_6c){
return _backingStoreFrame;
}
}),new objj_method(sel_getUid("setBackingStoreFrame:"),function(_6e,_6f,_70){
with(_6e){
_hasCustomBackingStoreFrame=(_70!=nil);
if(_70==nil){
_70=CGRectMakeCopy(_standardBackingStoreFrame);
}else{
if(_superlayer){
_70=objj_msgSend(_superlayer,"convertRect:toLayer:",_70,nil);
var _71=objj_msgSend(_superlayer,"bounds"),_72=objj_msgSend(_superlayer,"convertRect:toLayer:",_71,nil);
_70.origin.x-=(_72.origin.x);
_70.origin.y-=(_72.origin.y);
}else{
_70=CGRectMakeCopy(_70);
}
}
if(!CGPointEqualToPoint(_backingStoreFrame.origin,_70.origin)){
objj_msgSend(_6e,"registerRunLoopUpdateWithMask:",_3b);
}
if(!CGSizeEqualToSize(_backingStoreFrame.size,_70.size)){
objj_msgSend(_6e,"registerRunLoopUpdateWithMask:",_3c);
}
_backingStoreFrame=_70;
}
}),new objj_method(sel_getUid("contents"),function(_73,_74){
with(_73){
return _contents;
}
}),new objj_method(sel_getUid("setContents:"),function(_75,_76,_77){
with(_75){
if(_contents==_77){
return;
}
_contents=_77;
objj_msgSend(_75,"composite");
}
}),new objj_method(sel_getUid("composite"),function(_78,_79){
with(_78){
if(_3a&&!_contents||!_context){
return;
}
CGContextClearRect(_context,{origin:{x:0,y:0},size:{width:(_backingStoreFrame.size.width),height:(_backingStoreFrame.size.height)}});
var _7a=_transformFromLayer;
if(_superlayer){
var _7b=_CALayerGetTransform(_superlayer,nil),_7c=CGPointApplyAffineTransform(_superlayer._bounds.origin,_7b);
_7a=CGAffineTransformConcat(_7a,_7b);
_7a.tx-=_7c.x;
_7a.ty-=_7c.y;
}
_7a.tx-=(_backingStoreFrame.origin.x);
_7a.ty-=(_backingStoreFrame.origin.y);
CGContextSaveGState(_context);
CGContextConcatCTM(_context,_7a);
if(_3a){
_context.drawImage(_contents.buffer,(_bounds.origin.x),(_bounds.origin.y));
}else{
objj_msgSend(_78,"drawInContext:",_context);
}
CGContextRestoreGState(_context);
}
}),new objj_method(sel_getUid("display"),function(_7d,_7e){
with(_7d){
if(!_context){
_context=CGBitmapGraphicsContextCreate();
_DOMContentsElement=_context.DOMElement;
_DOMContentsElement.style.zIndex=-100;
_DOMContentsElement.style.overflow="hidden";
_DOMContentsElement.style.position="absolute";
_DOMContentsElement.style.visibility="visible";
_DOMContentsElement.width=ROUND((_backingStoreFrame.size.width));
_DOMContentsElement.height=ROUND((_backingStoreFrame.size.height));
_DOMContentsElement.style.top="0px";
_DOMContentsElement.style.left="0px";
_DOMContentsElement.style.width=ROUND((_backingStoreFrame.size.width))+"px";
_DOMContentsElement.style.height=ROUND((_backingStoreFrame.size.height))+"px";
_DOMElement.appendChild(_DOMContentsElement);
}
if(_3a){
if(_delegateRespondsToDisplayLayerSelector){
return objj_msgSend(_delegate,"displayInLayer:",_7d);
}
if((_backingStoreFrame.size.width)==0||(_backingStoreFrame.size.height)==0){
return;
}
if(!_contents){
_contents=CABackingStoreCreate();
}
CABackingStoreSetSize(_contents,_bounds.size);
objj_msgSend(_7d,"drawInContext:",CABackingStoreGetContext(_contents));
}
objj_msgSend(_7d,"composite");
}
}),new objj_method(sel_getUid("drawInContext:"),function(_7f,_80,_81){
with(_7f){
if(_backgroundColor){
CGContextSetFillColor(_81,_backgroundColor);
CGContextFillRect(_81,_bounds);
}
if(_delegateRespondsToDrawLayerInContextSelector){
objj_msgSend(_delegate,"drawLayer:inContext:",_7f,_81);
}
}
}),new objj_method(sel_getUid("opacity"),function(_82,_83){
with(_82){
return _opacity;
}
}),new objj_method(sel_getUid("setOpacity:"),function(_84,_85,_86){
with(_84){
if(_opacity==_86){
return;
}
_opacity=_86;
_DOMElement.style.opacity=_86;
_DOMElement.style.filter="alpha(opacity="+_86*100+")";
}
}),new objj_method(sel_getUid("setHidden:"),function(_87,_88,_89){
with(_87){
_isHidden=_89;
_DOMElement.style.display=_89?"none":"block";
}
}),new objj_method(sel_getUid("hidden"),function(_8a,_8b){
with(_8a){
return _isHidden;
}
}),new objj_method(sel_getUid("isHidden"),function(_8c,_8d){
with(_8c){
return _isHidden;
}
}),new objj_method(sel_getUid("setMasksToBounds:"),function(_8e,_8f,_90){
with(_8e){
if(_masksToBounds==_90){
return;
}
_masksToBounds=_90;
_DOMElement.style.overflow=_masksToBounds?"hidden":"visible";
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_91,_92,_93){
with(_91){
_backgroundColor=_93;
objj_msgSend(_91,"setNeedsDisplay");
}
}),new objj_method(sel_getUid("backgroundColor"),function(_94,_95){
with(_94){
return _backgroundColor;
}
}),new objj_method(sel_getUid("sublayers"),function(_96,_97){
with(_96){
return _sublayers;
}
}),new objj_method(sel_getUid("superlayer"),function(_98,_99){
with(_98){
return _superlayer;
}
}),new objj_method(sel_getUid("addSublayer:"),function(_9a,_9b,_9c){
with(_9a){
objj_msgSend(_9a,"insertSublayer:atIndex:",_9c,_sublayers.length);
return;
if(_DOMContentsElement&&_9c._zPosition>_DOMContentsElement.style.zIndex){
_DOMContentsElement.style.zIndex-=100;
}
objj_msgSend(_sublayers,"addObject:",_9c);
_DOMElement.appendChild(_9c._DOMElement);
}
}),new objj_method(sel_getUid("removeFromSuperlayer"),function(_9d,_9e){
with(_9d){
if(_owningView){
objj_msgSend(_owningView,"setLayer:",nil);
}
if(!_superlayer){
return;
}
_superlayer._DOMElement.removeChild(_DOMElement);
objj_msgSend(_superlayer._sublayers,"removeObject:",_9d);
_superlayer=nil;
}
}),new objj_method(sel_getUid("insertSublayer:atIndex:"),function(_9f,_a0,_a1,_a2){
with(_9f){
if(!_a1){
return;
}
var _a3=objj_msgSend(_a1,"superlayer");
if(_a3==_9f){
var _a4=objj_msgSend(_sublayers,"indexOfObjectIdenticalTo:",_a1);
if(_a4==_a2){
return;
}
objj_msgSend(_sublayers,"removeObjectAtIndex:",_a4);
if(_a4<_a2){
--_a2;
}
}else{
if(_a3!=nil){
objj_msgSend(_a1,"removeFromSuperlayer");
}
}
if(_DOMContentsElement&&_a1._zPosition>_DOMContentsElement.style.zIndex){
_DOMContentsElement.style.zIndex-=100;
}
objj_msgSend(_sublayers,"insertObject:atIndex:",_a1,_a2);
if(_a2>=_sublayers.length-1){
_DOMElement.appendChild(_a1._DOMElement);
}else{
_DOMElement.insertBefore(_a1._DOMElement,_sublayers[_a2+1]._DOMElement);
}
_a1._superlayer=_9f;
if(_9f!=_a3){
_CALayerRecalculateGeometry(_a1,268435455);
}
}
}),new objj_method(sel_getUid("insertSublayer:below:"),function(_a5,_a6,_a7,_a8){
with(_a5){
var _a9=_a8?objj_msgSend(_sublayers,"indexOfObjectIdenticalTo:",_a8):0;
objj_msgSend(_a5,"insertSublayer:atIndex:",_a7,_a9==CPNotFound?_sublayers.length:_a9);
}
}),new objj_method(sel_getUid("insertSublayer:above:"),function(_aa,_ab,_ac,_ad){
with(_aa){
var _ae=_ad?objj_msgSend(_sublayers,"indexOfObjectIdenticalTo:",_ad):_sublayers.length;
if(_ae==CPNotFound){
objj_msgSend(CPException,"raise:reason:","CALayerNotFoundException","aSublayer is not a sublayer of this layer");
}
objj_msgSend(_sublayers,"insertObject:atIndex:",_ac,_ae==CPNotFound?_sublayers.length:_ae+1);
}
}),new objj_method(sel_getUid("replaceSublayer:with:"),function(_af,_b0,_b1,_b2){
with(_af){
if(_b1==_b2){
return;
}
if(_b1._superlayer!=_af){
alert("EXCEPTION");
return;
}
if(_DOMContentsElement&&_b2._zPosition>_DOMContentsElement.style.zIndex){
_DOMContentsElement.style.zIndex-=100;
}
objj_msgSend(_sublayers,"replaceObjectAtIndex:withObject:",objj_msgSend(_sublayers,"indexOfObjectIdenticalTo:",_b1),_b2);
_DOMElement.replaceChild(_b1._DOMElement,_b2._DOMElement);
}
}),new objj_method(sel_getUid("registerRunLoopUpdateWithMask:"),function(_b3,_b4,_b5){
with(_b3){
if(_41==nil){
_41={};
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("runLoopUpdateLayers"),CALayer,nil,0,[CPDefaultRunLoopMode]);
}
_runLoopUpdateMask|=_b5;
_41[objj_msgSend(_b3,"hash")]=_b3;
}
}),new objj_method(sel_getUid("setNeedsComposite"),function(_b6,_b7){
with(_b6){
objj_msgSend(_b6,"registerRunLoopUpdateWithMask:",_3f);
}
}),new objj_method(sel_getUid("setNeedsDisplay"),function(_b8,_b9){
with(_b8){
objj_msgSend(_b8,"registerRunLoopUpdateWithMask:",_3e);
}
}),new objj_method(sel_getUid("setNeedsDisplayOnBoundsChange:"),function(_ba,_bb,_bc){
with(_ba){
_needsDisplayOnBoundsChange=_bc;
}
}),new objj_method(sel_getUid("needsDisplayOnBoundsChange"),function(_bd,_be){
with(_bd){
return _needsDisplayOnBoundsChange;
}
}),new objj_method(sel_getUid("setNeedsDisplayInRect:"),function(_bf,_c0,_c1){
with(_bf){
_dirtyRect=_c1;
objj_msgSend(_bf,"display");
}
}),new objj_method(sel_getUid("convertPoint:fromLayer:"),function(_c2,_c3,_c4,_c5){
with(_c2){
return CGPointApplyAffineTransform(_c4,_CALayerGetTransform(_c5,_c2));
}
}),new objj_method(sel_getUid("convertPoint:toLayer:"),function(_c6,_c7,_c8,_c9){
with(_c6){
return CGPointApplyAffineTransform(_c8,_CALayerGetTransform(_c6,_c9));
}
}),new objj_method(sel_getUid("convertRect:fromLayer:"),function(_ca,_cb,_cc,_cd){
with(_ca){
return CGRectApplyAffineTransform(_cc,_CALayerGetTransform(_cd,_ca));
}
}),new objj_method(sel_getUid("convertRect:toLayer:"),function(_ce,_cf,_d0,_d1){
with(_ce){
return CGRectApplyAffineTransform(_d0,_CALayerGetTransform(_ce,_d1));
}
}),new objj_method(sel_getUid("containsPoint:"),function(_d2,_d3,_d4){
with(_d2){
return (_d4.x>=(_bounds.origin.x)&&_d4.y>=(_bounds.origin.y)&&_d4.x<(_bounds.origin.x+_bounds.size.width)&&_d4.y<(_bounds.origin.y+_bounds.size.height));
}
}),new objj_method(sel_getUid("hitTest:"),function(_d5,_d6,_d7){
with(_d5){
if(_isHidden){
return nil;
}
var _d8=CGPointApplyAffineTransform(_d7,_transformToLayer);
if(!(_d8.x>=(_bounds.origin.x)&&_d8.y>=(_bounds.origin.y)&&_d8.x<(_bounds.origin.x+_bounds.size.width)&&_d8.y<(_bounds.origin.y+_bounds.size.height))){
return nil;
}
var _d9=nil,_da=_sublayers.length;
while(_da--){
if(_d9=objj_msgSend(_sublayers[_da],"hitTest:",_d8)){
return _d9;
}
}
return _d5;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_db,_dc,_dd){
with(_db){
if(_delegate==_dd){
return;
}
_delegate=_dd;
_delegateRespondsToDisplayLayerSelector=objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("displayLayer:"));
_delegateRespondsToDrawLayerInContextSelector=objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("drawLayer:inContext:"));
if(_delegateRespondsToDisplayLayerSelector||_delegateRespondsToDrawLayerInContextSelector){
objj_msgSend(_db,"setNeedsDisplay");
}
}
}),new objj_method(sel_getUid("delegate"),function(_de,_df){
with(_de){
return _delegate;
}
}),new objj_method(sel_getUid("_setOwningView:"),function(_e0,_e1,_e2){
with(_e0){
_owningView=_e2;
if(_owningView){
_owningView=_e2;
_bounds.size=CGSizeMakeCopy(objj_msgSend(_owningView,"bounds").size);
_position=CGPointMake((_bounds.size.width)*_anchorPoint.x,(_bounds.size.height)*_anchorPoint.y);
}
_CALayerRecalculateGeometry(_e0,_36|_35);
}
}),new objj_method(sel_getUid("_owningViewBoundsChanged"),function(_e3,_e4){
with(_e3){
_bounds.size=CGSizeMakeCopy(objj_msgSend(_owningView,"bounds").size);
_position=CGPointMake((_bounds.size.width)*_anchorPoint.x,(_bounds.size.height)*_anchorPoint.y);
_CALayerRecalculateGeometry(_e3,_36|_35);
}
}),new objj_method(sel_getUid("_update"),function(_e5,_e6){
with(_e5){
window.loop=true;
var _e7=_runLoopUpdateMask;
if(_e7&_40){
_CALayerUpdateDOM(_e5,_e7);
}
if(_e7&_3e){
objj_msgSend(_e5,"display");
}else{
if(_e7&_3c||_e7&_3f){
objj_msgSend(_e5,"composite");
}
}
_runLoopUpdateMask=0;
window.loop=false;
}
})]);
class_addMethods(_43,[new objj_method(sel_getUid("layer"),function(_e8,_e9){
with(_e8){
return objj_msgSend(objj_msgSend(objj_msgSend(_e8,"class"),"alloc"),"init");
}
}),new objj_method(sel_getUid("runLoopUpdateLayers"),function(_ea,_eb){
with(_ea){
if(window.oops){
alert(window.latest);
objj_debug_print_backtrace();
}
window.loop=true;
for(hash in _41){
var _ec=_41[hash],_ed=_ec._runLoopUpdateMask;
if(_ed&_40){
_CALayerUpdateDOM(_ec,_ed);
}
if(_ed&_3e){
objj_msgSend(_ec,"display");
}else{
if(_ed&_3c||_ed&_3f){
objj_msgSend(_ec,"composite");
}
}
_ec._runLoopUpdateMask=0;
}
window.loop=false;
_41=nil;
}
})]);
_CALayerUpdateSublayerTransformForSublayers=function(_ee){
var _ef=_ee._bounds,_f0=_ee._anchorPoint,_f1=(_ef.size.width)*_f0.x,_f2=(_ef.size.height)*_f0.y;
_ee._sublayerTransformForSublayers=CGAffineTransformConcat(CGAffineTransformMakeTranslation(-_f1,-_f2),CGAffineTransformConcat(_ee._sublayerTransform,CGAffineTransformMakeTranslation(_f1,_f2)));
};
_CALayerUpdateDOM=function(_f3,_f4){
var _f5=_f3._DOMElement.style;
if(_f4&_3d){
_f5.zIndex=_f3._zPosition;
}
var _f6=_f3._backingStoreFrame;
if(_f4&_3b){
_f5.top=ROUND((_f6.origin.y))+"px";
_f5.left=ROUND((_f6.origin.x))+"px";
}
if(_f4&_3c){
var _f7=MAX(0,ROUND((_f6.size.width))),_f8=MAX(0,ROUND((_f6.size.height))),_f9=_f3._DOMContentsElement;
_f5.width=_f7+"px";
_f5.height=_f8+"px";
if(_f9){
_f9.width=_f7;
_f9.height=_f8;
_f9.style.width=_f7+"px";
_f9.style.height=_f8+"px";
}
}
};
_CALayerRecalculateGeometry=function(_fa,_fb){
var _fc=_fa._bounds,_fd=_fa._superlayer,_fe=(_fc.size.width),_ff=(_fc.size.height),_100=_fa._position,_101=_fa._anchorPoint,_102=_fa._affineTransform,_103={width:_fa._backingStoreFrame.width,height:_fa._backingStoreFrame.height},_104=_fa._hasCustomBackingStoreFrame;
_fa._transformFromLayer=CGAffineTransformConcat(CGAffineTransformMakeTranslation(-_fe*_101.x-(_fa._bounds.origin.x),-_ff*_101.y-(_fa._bounds.origin.y)),CGAffineTransformConcat(_102,CGAffineTransformMakeTranslation(_100.x,_100.y)));
if(_fd&&_fd._hasSublayerTransform){
var tx=_fa._transformFromLayer.tx*_fd._sublayerTransformForSublayers.a+_fa._transformFromLayer.ty*_fd._sublayerTransformForSublayers.c+_fd._sublayerTransformForSublayers.tx;
_fa._transformFromLayer.ty=_fa._transformFromLayer.tx*_fd._sublayerTransformForSublayers.b+_fa._transformFromLayer.ty*_fd._sublayerTransformForSublayers.d+_fd._sublayerTransformForSublayers.ty;
_fa._transformFromLayer.tx=tx;
var a=_fa._transformFromLayer.a*_fd._sublayerTransformForSublayers.a+_fa._transformFromLayer.b*_fd._sublayerTransformForSublayers.c,b=_fa._transformFromLayer.a*_fd._sublayerTransformForSublayers.b+_fa._transformFromLayer.b*_fd._sublayerTransformForSublayers.d,c=_fa._transformFromLayer.c*_fd._sublayerTransformForSublayers.a+_fa._transformFromLayer.d*_fd._sublayerTransformForSublayers.c;
_fa._transformFromLayer.d=_fa._transformFromLayer.c*_fd._sublayerTransformForSublayers.b+_fa._transformFromLayer.d*_fd._sublayerTransformForSublayers.d;
_fa._transformFromLayer.a=a;
_fa._transformFromLayer.b=b;
_fa._transformFromLayer.c=c;
}
_fa._transformToLayer=CGAffineTransformInvert(_fa._transformFromLayer);
_fa._frame=nil;
_fa._standardBackingStoreFrame=objj_msgSend(_fa,"convertRect:toLayer:",_fc,nil);
if(_fd){
var _fc=objj_msgSend(_fd,"bounds"),_109=objj_msgSend(_fd,"convertRect:toLayer:",_fc,nil);
_fa._standardBackingStoreFrame.origin.x-=(_109.origin.x);
_fa._standardBackingStoreFrame.origin.y-=(_109.origin.y);
}
var _10a=_fa._standardBackingStoreFrame.origin,size=_fa._standardBackingStoreFrame.size;
_10a.x=FLOOR(_10a.x);
_10a.y=FLOOR(_10a.y);
size.width=CEIL(size.width)+1;
size.height=CEIL(size.height)+1;
if(!_104){
var _10c=CGRectMakeCopy(_fa._standardBackingStoreFrame);
if(ROUND((_10c.origin.x))!=ROUND((_fa._backingStoreFrame.origin.x))||ROUND((_10c.origin.y))!=ROUND((_fa._backingStoreFrame.origin.y))){
objj_msgSend(_fa,"registerRunLoopUpdateWithMask:",_3b);
}
if(((_10c.size.width)!=ROUND((_fa._backingStoreFrame.size.width))||(_10c.size.height)!=ROUND((_fa._backingStoreFrame.size.height)))){
objj_msgSend(_fa,"registerRunLoopUpdateWithMask:",_3c);
}
_fa._backingStoreFrame=_10c;
}
if(_fb&_35&&_fa._needsDisplayOnBoundsChange){
objj_msgSend(_fa,"setNeedsDisplay");
}else{
if(_104||(_fb&~(_36|_37))){
objj_msgSend(_fa,"setNeedsComposite");
}
}
var _10d=_fa._sublayers,_10e=0,_10f=_10d.length;
for(;_10e<_10f;++_10e){
_CALayerRecalculateGeometry(_10d[_10e],_fb);
}
};
_CALayerGetTransform=function(_110,_111){
var _112=CGAffineTransformMakeIdentity();
if(_110){
var _113=_110;
while(_113&&_113!=_111){
var _114=_113._transformFromLayer;
var tx=_112.tx*_114.a+_112.ty*_114.c+_114.tx;
_112.ty=_112.tx*_114.b+_112.ty*_114.d+_114.ty;
_112.tx=tx;
var a=_112.a*_114.a+_112.b*_114.c,b=_112.a*_114.b+_112.b*_114.d,c=_112.c*_114.a+_112.d*_114.c;
_112.d=_112.c*_114.b+_112.d*_114.d;
_112.a=a;
_112.b=b;
_112.c=c;
_113=_113._superlayer;
}
if(_113==_111){
return _112;
}
}
var _119=[],_113=_111;
while(_113){
_119.push(_113);
_113=_113._superlayer;
}
var _11a=_119.length;
while(_11a--){
var _11b=_119[_11a]._transformToLayer;
var tx=_112.tx*_11b.a+_112.ty*_11b.c+_11b.tx;
_112.ty=_112.tx*_11b.b+_112.ty*_11b.d+_11b.ty;
_112.tx=tx;
var a=_112.a*_11b.a+_112.b*_11b.c,b=_112.a*_11b.b+_112.b*_11b.d,c=_112.c*_11b.a+_112.d*_11b.c;
_112.d=_112.c*_11b.b+_112.d*_11b.d;
_112.a=a;
_112.b=b;
_112.c=c;
}
return _112;
};
p;23;CAMediaTimingFunction.jI;21;Foundation/CPObject.jI;25;Foundation/CPDictionary.jI;21;Foundation/CPString.jc;2072;
kCAMediaTimingFunctionLinear="kCAMediaTimingFunctionLinear";
kCAMediaTimingFunctionEaseIn="kCAMediaTimingFunctionEaseIn";
kCAMediaTimingFunctionEaseOut="kCAMediaTimingFunctionEaseOut";
kCAMediaTimingFunctionEaseInEaseOut="kCAMediaTimingFunctionEaseInEaseOut";
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CAMediaTimingFunction"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_c1x"),new objj_ivar("_c1y"),new objj_ivar("_c2x"),new objj_ivar("_c2y")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("initWithControlPoints::::"),function(_4,_5,_6,_7,_8,_9){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPObject")},"init");
if(_4){
_c1x=_6;
_c1y=_7;
_c2x=_8;
_c2y=_9;
}
return _4;
}
}),new objj_method(sel_getUid("getControlPointAtIndex:values:"),function(_a,_b,_c,_d){
with(_a){
if(_c==0){
_d[0]=0;
_d[1]=0;
}else{
if(_c==1){
_d[0]=_c1x;
_d[1]=_c1y;
}else{
if(_c==2){
_d[0]=_c2x;
_d[1]=_c2y;
}else{
_d[0]=1;
_d[1]=1;
}
}
}
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("functionWithName:"),function(_e,_f,_10){
with(_e){
if(!_1){
_1=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_1,"setObject:forKey:",objj_msgSend(CAMediaTimingFunction,"functionWithControlPoints::::",0,0,1,1),kCAMediaTimingFunctionLinear);
objj_msgSend(_1,"setObject:forKey:",objj_msgSend(CAMediaTimingFunction,"functionWithControlPoints::::",0.42,0,1,1),kCAMediaTimingFunctionEaseIn);
objj_msgSend(_1,"setObject:forKey:",objj_msgSend(CAMediaTimingFunction,"functionWithControlPoints::::",0,0,0.58,1),kCAMediaTimingFunctionEaseOut);
objj_msgSend(_1,"setObject:forKey:",objj_msgSend(CAMediaTimingFunction,"functionWithControlPoints::::",0.42,0,0.58,1),kCAMediaTimingFunctionEaseInEaseOut);
}
return objj_msgSend(_1,"objectForKey:",_10);
}
}),new objj_method(sel_getUid("functionWithControlPoints::::"),function(_11,_12,c1x,c1y,c2x,c2y){
with(_11){
return objj_msgSend(objj_msgSend(_11,"alloc"),"initWithControlPoints::::",c1x,c1y,c2x,c2y);
}
})]);
p;19;CGAffineTransform.ji;12;CGGeometry.jc;2950;
CGAffineTransformMake=function(a,b,c,d,tx,ty){
return {a:a,b:b,c:c,d:d,tx:tx,ty:ty};
};
CGAffineTransformMakeIdentity=function(){
return {a:1,b:0,c:0,d:1,tx:0,ty:0};
};
CGAffineTransformMakeCopy=function(_7){
return {a:_7.a,b:_7.b,c:_7.c,d:_7.d,tx:_7.tx,ty:_7.ty};
};
CGAffineTransformMakeScale=function(sx,sy){
return {a:sx,b:0,c:0,d:sy,tx:0,ty:0};
};
CGAffineTransformMakeTranslation=function(tx,ty){
return {a:1,b:0,c:0,d:1,tx:tx,ty:ty};
};
CGAffineTransformTranslate=function(_c,tx,ty){
return {a:_c.a,b:_c.b,c:_c.c,d:_c.d,tx:_c.tx+_c.a*tx+_c.c*ty,ty:_c.ty+_c.b*tx+_c.d*ty};
};
CGAffineTransformScale=function(_f,sx,sy){
return {a:_f.a*sx,b:_f.b*sx,c:_f.c*sy,d:_f.d*sy,tx:_f.tx,ty:_f.ty};
};
CGAffineTransformConcat=function(lhs,rhs){
return {a:lhs.a*rhs.a+lhs.b*rhs.c,b:lhs.a*rhs.b+lhs.b*rhs.d,c:lhs.c*rhs.a+lhs.d*rhs.c,d:lhs.c*rhs.b+lhs.d*rhs.d,tx:lhs.tx*rhs.a+lhs.ty*rhs.c+rhs.tx,ty:lhs.tx*rhs.b+lhs.ty*rhs.d+rhs.ty};
};
CGPointApplyAffineTransform=function(_14,_15){
return {x:_14.x*_15.a+_14.y*_15.c+_15.tx,y:_14.x*_15.b+_14.y*_15.d+_15.ty};
};
CGSizeApplyAffineTransform=function(_16,_17){
return {width:_16.width*_17.a+_16.height*_17.c,height:_16.width*_17.b+_16.height*_17.d};
};
CGAffineTransformIsIdentity=function(_18){
return (_18.a==1&&_18.b==0&&_18.c==0&&_18.d==1&&_18.tx==0&&_18.ty==0);
};
CGAffineTransformEqualToTransform=function(lhs,rhs){
return (lhs.a==rhs.a&&lhs.b==rhs.b&&lhs.c==rhs.c&&lhs.d==rhs.d&&lhs.tx==rhs.tx&&lhs.ty==rhs.ty);
};
CGStringCreateWithCGAffineTransform=function(_1b){
return (" [[ "+_1b.a+", "+_1b.b+", 0 ], [ "+_1b.c+", "+_1b.d+", 0 ], [ "+_1b.tx+", "+_1b.ty+", 1]]");
};
CGAffineTransformCreateCopy=function(_1c){
return {a:_1c.a,b:_1c.b,c:_1c.c,d:_1c.d,tx:_1c.tx,ty:_1c.ty};
};
CGAffineTransformMakeRotation=function(_1d){
var sin=SIN(_1d),cos=COS(_1d);
return {a:cos,b:sin,c:-sin,d:cos,tx:0,ty:0};
};
CGAffineTransformRotate=function(_20,_21){
var sin=SIN(_21),cos=COS(_21);
return {a:_20.a*cos+_20.c*sin,b:_20.b*cos+_20.d*sin,c:_20.c*cos-_20.a*sin,d:_20.d*cos-_20.b*sin,tx:_20.tx,ty:_20.ty};
};
CGAffineTransformInvert=function(_24){
var _25=1/(_24.a*_24.d-_24.b*_24.c);
return {a:_25*_24.d,b:-_25*_24.b,c:-_25*_24.c,d:_25*_24.a,tx:_25*(_24.c*_24.ty-_24.d*_24.tx),ty:_25*(_24.b*_24.tx-_24.a*_24.ty)};
};
CGRectApplyAffineTransform=function(_26,_27){
var top=(_26.origin.y),_29=(_26.origin.x),_2a=(_26.origin.x+_26.size.width),_2b=(_26.origin.y+_26.size.height),_2c=CGPointApplyAffineTransform({x:_29,y:top},_27),_2d=CGPointApplyAffineTransform({x:_2a,y:top},_27),_2e=CGPointApplyAffineTransform({x:_29,y:_2b},_27),_2f=CGPointApplyAffineTransform({x:_2a,y:_2b},_27),_30=MIN(_2c.x,_2d.x,_2e.x,_2f.x),_31=MAX(_2c.x,_2d.x,_2e.x,_2f.x),_32=MIN(_2c.y,_2d.y,_2e.y,_2f.y),_33=MAX(_2c.y,_2d.y,_2e.y,_2f.y);
return {origin:{x:_30,y:_32},size:{width:(_31-_30),height:(_33-_32)}};
};
CPStringFromCGAffineTransform=function(_34){
return "{"+_34.a+", "+_34.b+", "+_34.c+", "+_34.d+", "+_34.tx+", "+_34.ty+"}";
};
p;9;CGColor.ji;14;CGColorSpace.jc;2065;
var _1=0;
CFHashCode=function(_2){
if(!_2.hash){
_2.hash=++_1;
}
return _2;
};
kCGColorWhite="kCGColorWhite";
kCGColorBlack="kCGColorBlack";
kCGColorClear="kCGColorClear";
var _3={};
CGColorGetConstantColor=function(_4){
alert("FIX ME");
};
CGColorRetain=function(_5){
return _5;
};
CGColorRelease=function(){
};
CGColorCreate=function(_6,_7){
if(!_6||!_7){
return NULL;
}
var _7=_7.slice();
CGColorSpaceStandardizeComponents(_6,_7);
var _8=CFHashCode(_6)+_7.join("");
if(_3[_8]){
return _3[_8];
}
return _3[_8]={colorspace:_6,pattern:NULL,components:_7};
};
CGColorCreateCopy=function(_9){
return _9;
};
CGColorCreateGenericGray=function(_a,_b){
return CGColorCreate(0,[_a,_b]);
};
CGColorCreateGenericRGB=function(_c,_d,_e,_f){
return CGColorCreate(0,[_c,_d,_e,_f]);
};
CGColorCreateGenericCMYK=function(_10,_11,_12,_13,_14){
return CGColorCreate(0,[_10,_11,_12,_13,_14]);
};
CGColorCreateCopyWithAlpha=function(_15,_16){
var _17=_15.components;
if(!_15||_16==_17[_17.length-1]){
return _15;
}
if(_15.pattern){
var _18=CGColorCreateWithPattern(_15.colorspace,_15.pattern,_17);
}else{
var _18=CGColorCreate(_15.colorspace,_17);
}
_18.components[_17.length-1]=_16;
return _18;
};
CGColorCreateWithPattern=function(_19,_1a,_1b){
if(!_19||!_1a||!_1b){
return NULL;
}
return {colorspace:_19,pattern:_1a,components:_1b.slice()};
};
CGColorEqualToColor=function(lhs,rhs){
if(lhs==rhs){
return true;
}
if(!lhs||!rhs){
return false;
}
var _1e=lhs.components,_1f=rhs.components,_20=_1e.length;
if(_20!=_1f.length){
return false;
}
while(_20--){
if(_1e[_20]!=_1f[_20]){
return false;
}
}
if(lhs.pattern!=rhs.pattern){
return false;
}
if(CGColorSpaceEqualToColorSpace(lhs.colorspace,rhs.colorspace)){
return false;
}
return true;
};
CGColorGetAlpha=function(_21){
var _22=_21.components;
return _22[_22.length-1];
};
CGColorGetColorSpace=function(_23){
return _23.colorspace;
};
CGColorGetComponents=function(_24){
return _24.components;
};
CGColorGetNumberOfComponents=function(_25){
return _25.components.length;
};
CGColorGetPattern=function(_26){
return _26.pattern;
};
p;14;CGColorSpace.jc;3502;
kCGColorSpaceModelUnknown=-1;
kCGColorSpaceModelMonochrome=0;
kCGColorSpaceModelRGB=1;
kCGColorSpaceModelCMYK=2;
kCGColorSpaceModelLab=3;
kCGColorSpaceModelDeviceN=4;
kCGColorSpaceModelIndexed=5;
kCGColorSpaceModelPattern=6;
kCGColorSpaceGenericGray="CGColorSpaceGenericGray";
kCGColorSpaceGenericRGB="CGColorSpaceGenericRGB";
kCGColorSpaceGenericCMYK="CGColorSpaceGenericCMYK";
kCGColorSpaceGenericRGBLinear="CGColorSpaceGenericRGBLinear";
kCGColorSpaceGenericRGBHDR="CGColorSpaceGenericRGBHDR";
kCGColorSpaceAdobeRGB1998="CGColorSpaceAdobeRGB1998";
kCGColorSpaceSRGB="CGColorSpaceSRGB";
var _1={};
CGColorSpaceCreateCalibratedGray=function(_2,_3,_4){
return {model:kCGColorSpaceModelMonochrome,count:1,base:NULL};
};
CGColorSpaceCreateCalibratedRGB=function(_5,_6,_7){
return {model:kCGColorSpaceModelRGB,count:1,base:NULL};
};
CGColorSpaceCreateICCBased=function(_8,_9,_a,_b){
return NULL;
};
CGColorSpaceCreateLab=function(_c,_d,_e){
return NULL;
};
CGColorSpaceCreateDeviceCMYK=function(){
return CGColorSpaceCreateWithName(kCGColorSpaceGenericCMYK);
};
CGColorSpaceCreateDeviceGray=function(){
return CGColorSpaceCreateWithName(kCGColorSpaceGenericGray);
};
CGColorSpaceCreateDeviceRGB=function(){
return CGColorSpaceCreateWithName(kCGColorSpaceGenericRGB);
};
CGColorSpaceCreateWithPlatformColorSpace=function(){
return NULL;
};
CGColorSpaceCreateIndexed=function(_f,_10,_11){
return NULL;
};
CGColorSpaceCreatePattern=function(_12){
if(_12){
return {model:kCGColorSpaceModelPattern,count:_12.count,base:_12};
}
return {model:kCGColorSpaceModelPattern,count:0,base:NULL};
};
CGColorSpaceCreateWithName=function(_13){
var _14=_1[_13];
if(_14){
return _14;
}
switch(_13){
case kCGColorSpaceGenericGray:
return _1[_13]={model:kCGColorSpaceModelMonochrome,count:1,base:NULL};
case kCGColorSpaceGenericRGB:
return _1[_13]={model:kCGColorSpaceModelRGB,count:3,base:NULL};
case kCGColorSpaceGenericCMYK:
return _1[_13]={model:kCGColorSpaceModelCMYK,count:4,base:NULL};
case kCGColorSpaceGenericRGBLinear:
return _1[_13]={model:kCGColorSpaceModelRGB,count:3,base:NULL};
case kCGColorSpaceGenericRGBHDR:
return _1[_13]={model:kCGColorSpaceModelRGB,count:3,base:NULL};
case kCGColorSpaceAdobeRGB1998:
return _1[_13]={model:kCGColorSpaceModelRGB,count:3,base:NULL};
case kCGColorSpaceSRGB:
return _1[_13]={model:kCGColorSpaceModelRGB,count:3,base:NULL};
}
return NULL;
};
CGColorSpaceCopyICCProfile=function(_15){
return NULL;
};
CGColorSpaceGetNumberOfComponents=function(_16){
return _16.count;
};
CGColorSpaceGetTypeID=function(_17){
};
CGColorSpaceGetModel=function(_18){
return _18.model;
};
CGColorSpaceGetBaseColorSpace=function(_19){
};
CGColorSpaceGetColorTableCount=function(_1a){
};
CGColorSpaceGetColorTable=function(_1b){
};
CGColorSpaceRelease=function(_1c){
};
CGColorSpaceRetain=function(_1d){
return _1d;
};
CGColorSpaceStandardizeComponents=function(_1e,_1f){
var _20=_1e.count;
if(_20>_1f.length){
_1f[_20]=1;
return;
}
var _21=_1f[_20];
if(_21<0){
_1f[_20]=0;
}else{
if(_21>1){
_1f[_20]=1;
}else{
_1f[_20]=ROUND(_21*1000)/1000;
}
}
if(_1e.base){
_1e=_1e.base;
}
switch(_1e.model){
case kCGColorSpaceModelMonochrome:
case kCGColorSpaceModelRGB:
case kCGColorSpaceModelCMYK:
case kCGColorSpaceModelDeviceN:
while(_20--){
if(_20>_1f.length){
_1f[_20]=1;
return;
}
var _21=_1f[_20];
if(_21<0){
_1f[_20]=0;
}else{
if(_21>1){
_1f[_20]=1;
}else{
_1f[_20]=ROUND(_21*255)/255;
}
}
}
break;
case kCGColorSpaceModelIndexed:
case kCGColorSpaceModelLab:
case kCGColorSpaceModelPattern:
break;
}
};
p;11;CGContext.ji;12;CGGeometry.ji;19;CGAffineTransform.ji;8;CGPath.jc;20322;
kCGLineCapButt=0;
kCGLineCapRound=1;
kCGLineCapSquare=2;
kCGLineJoinMiter=0;
kCGLineJoinRound=1;
kCGLineJoinBevel=2;
kCGPathFill=0;
kCGPathEOFill=1;
kCGPathStroke=2;
kCGPathFillStroke=3;
kCGPathEOFillStroke=4;
kCGBlendModeNormal=0;
kCGBlendModeMultiply=1;
kCGBlendModeScreen=2;
kCGBlendModeOverlay=3;
kCGBlendModeDarken=4;
kCGBlendModeLighten=5;
kCGBlendModeColorDodge=6;
kCGBlendModeColorBurn=7;
kCGBlendModeSoftLight=8;
kCGBlendModeHardLight=9;
kCGBlendModeDifference=10;
kCGBlendModeExclusion=11;
kCGBlendModeHue=12;
kCGBlendModeSaturation=13;
kCGBlendModeColor=14;
kCGBlendModeLuminosity=15;
kCGBlendModeClear=16;
kCGBlendModeCopy=17;
kCGBlendModeSourceIn=18;
kCGBlendModeSourceOut=19;
kCGBlendModeSourceAtop=20;
kCGBlendModeDestinationOver=21;
kCGBlendModeDestinationIn=22;
kCGBlendModeDestinationOut=23;
kCGBlendModeDestinationAtop=24;
kCGBlendModeXOR=25;
kCGBlendModePlusDarker=26;
kCGBlendModePlusLighter=27;
CGContextRelease=function(){
};
CGContextRetain=function(_1){
return _1;
};
if(!CPFeatureIsCompatible(CPHTMLCanvasFeature)){
CGGStateCreate=function(){
return {alpha:1,strokeStyle:"#000",fillStyle:"#ccc",lineWidth:1,lineJoin:kCGLineJoinMiter,lineCap:kCGLineCapButt,miterLimit:10,globalAlpha:1,blendMode:kCGBlendModeNormal,shadowOffset:{width:0,height:0},shadowBlur:0,shadowColor:NULL,CTM:{a:1,b:0,c:0,d:1,tx:0,ty:0}};
};
CGGStateCreateCopy=function(_2){
return {alpha:_2.alpha,strokeStyle:_2.strokeStyle,fillStyle:_2.fillStyle,lineWidth:_2.lineWidth,lineJoin:_2.lineJoin,lineCap:_2.lineCap,miterLimit:_2.miterLimit,globalAlpha:_2.globalAlpha,blendMode:_2.blendMode,shadowOffset:_2.shadowOffset,shadowBlur:_2.shadowBlur,shadowColor:_2.shadowColor,CTM:{a:_2.CTM.a,b:_2.CTM.b,c:_2.CTM.c,d:_2.CTM.d,tx:_2.CTM.tx,ty:_2.CTM.ty}};
};
CGBitmapGraphicsContextCreate=function(){
return {DOMElement:document.createElement("div"),path:NULL,gState:CGGStateCreate(),gStateStack:[]};
};
CGContextSaveGState=function(_3){
_3.gStateStack.push(CGGStateCreateCopy(_3.gState));
};
CGContextRestoreGState=function(_4){
_4.gState=_4.gStateStack.pop();
};
CGContextSetLineCap=function(_5,_6){
_5.gState.lineCap=_6;
};
CGContextSetLineJoin=function(_7,_8){
_7.gState.lineJoin=_8;
};
CGContextSetLineWidth=function(_9,_a){
_9.gState.lineWidth=_a;
};
CGContextSetMiterLimit=function(_b,_c){
_b.gState.miterLimit=_c;
};
CGContextSetBlendMode=function(_d,_e){
_d.gState.blendMode=_e;
};
CGContextAddArc=function(_f,x,y,_12,_13,_14,_15){
CGPathAddArc(_f.path,_f.gState.CTM,x,y,_12,_13,_14,_15);
};
CGContextAddArcToPoint=function(_16,x1,y1,x2,y2,_1b){
CGPathAddArcToPoint(_16.path,_16.gState.CTM,x1,y1,x2,y2,_1b);
};
CGContextAddCurveToPoint=function(_1c,_1d,_1e,_1f,_20,x,y){
CGPathAddCurveToPoint(_1c.path,_1c.gState.CTM,_1d,_1e,_1f,_20,x,y);
};
CGContextAddLines=function(_23,_24,_25){
CGPathAddLines(_23.path,_23.gState.CTM,_24,_25);
};
CGContextAddLineToPoint=function(_26,x,y){
CGPathAddLineToPoint(_26.path,_26.gState.CTM,x,y);
};
CGContextAddPath=function(_29,_2a){
if(!_29||CGPathIsEmpty(_2a)){
return;
}
if(!_29.path){
_29.path=CGPathCreateMutable();
}
CGPathAddPath(_29.path,_29.gState.CTM,_2a);
};
CGContextAddQuadCurveToPoint=function(_2b,cpx,cpy,x,y){
CGPathAddQuadCurveToPoint(_2b.path,_2b.gState.CTM,cpx,cpy,x,y);
};
CGContextAddRect=function(_30,_31){
CGPathAddRect(_30.path,_30.gState.CTM,_31);
};
CGContextAddRects=function(_32,_33,_34){
CGPathAddRects(_32.path,_32.gState.CTM,_33,_34);
};
CGContextBeginPath=function(_35){
_35.path=CGPathCreateMutable();
};
CGContextClosePath=function(_36){
CGPathCloseSubpath(_36.path);
};
CGContextMoveToPoint=function(_37,x,y){
if(!_37.path){
_37.path=CGPathCreateMutable();
}
CGPathMoveToPoint(_37.path,_37.gState.CTM,x,y);
};
CGContextFillRect=function(_3a,_3b){
CGContextFillRects(_3a,[_3b],1);
};
CGContextFillRects=function(_3c,_3d,_3e){
if(arguments[2]===undefined){
var _3e=_3d.length;
}
CGContextBeginPath(_3c);
CGContextAddRects(_3c,_3d,_3e);
CGContextClosePath(_3c);
CGContextDrawPath(_3c,kCGPathFill);
};
CGContextStrokeRect=function(_3f,_40){
CGContextBeginPath(_3f);
CGContextAddRect(_3f,_40);
CGContextClosePath(_3f);
CGContextDrawPath(_3f,kCGPathStroke);
};
CGContextStrokeRectWithWidth=function(_41,_42,_43){
CGContextSaveGState(_41);
CGContextSetLineWidth(_41,_43);
CGContextStrokeRect(_41,_42);
CGContextRestoreGState(_41);
};
CGContextConcatCTM=function(_44,_45){
var CTM=_44.gState.CTM;
var tx=CTM.tx*_45.a+CTM.ty*_45.c+_45.tx;
CTM.ty=CTM.tx*_45.b+CTM.ty*_45.d+_45.ty;
CTM.tx=tx;
var a=CTM.a*_45.a+CTM.b*_45.c,b=CTM.a*_45.b+CTM.b*_45.d,c=CTM.c*_45.a+CTM.d*_45.c;
CTM.d=CTM.c*_45.b+CTM.d*_45.d;
CTM.a=a;
CTM.b=b;
CTM.c=c;
};
CGContextGetCTM=function(_4b){
return _4b.gState.CTM;
};
CGContextRotateCTM=function(_4c,_4d){
var _4e=_4c.gState;
_4e.CTM=CGAffineTransformRotate(_4e.CTM,_4d);
};
CGContextScaleCTM=function(_4f,sx,sy){
var _52=_4f.gState;
_52.CTM={a:_52.CTM.a*sx,b:_52.CTM.b*sx,c:_52.CTM.c*sy,d:_52.CTM.d*sy,tx:_52.CTM.tx,ty:_52.CTM.ty};
};
CGContextTranslateCTM=function(_53,tx,ty){
var _56=_53.gState;
_56.CTM={a:_56.CTM.a,b:_56.CTM.b,c:_56.CTM.c,d:_56.CTM.d,tx:_56.CTM.tx+_56.CTM.a*tx+_56.CTM.c*ty,ty:_56.CTM.ty+_56.CTM.b*tx+_56.CTM.d*ty};
};
CGContextSetShadow=function(_57,_58,_59){
var _5a=_57.gState;
_5a.shadowOffset={width:_58.width,height:_58.height};
_5a.shadowBlur=_59;
_5a.shadowColor=objj_msgSend(CPColor,"shadowColor");
};
CGContextSetShadowWithColor=function(_5b,_5c,_5d,_5e){
var _5f=_5b.gState;
_5f.shadowOffset={width:_5c.width,height:_5c.height};
_5f.shadowBlur=_5d;
_5f.shadowColor=_5e;
};
CGContextSetAlpha=function(_60,_61){
_60.gState.alpha=MAX(MIN(_61,1),0);
};
}
CGContextEOFillPath=function(_62){
CGContextDrawPath(_62,kCGPathEOFill);
};
CGContextFillPath=function(_63){
CGContextDrawPath(_63,kCGPathFill);
};
var _64=4*((SQRT2-1)/3);
CGContextAddEllipseInRect=function(_65,_66){
CGContextAddPath(_65,CGPathWithEllipseInRect(_66));
};
CGContextFillEllipseInRect=function(_67,_68){
CGContextBeginPath(_67);
CGContextAddEllipseInRect(_67,_68);
CGContextClosePath(_67);
CGContextFillPath(_67);
};
CGContextStrokeEllipseInRect=function(_69,_6a){
CGContextBeginPath(_69);
CGContextAddEllipseInRect(_69,_6a);
CGContextClosePath(_69);
CGContextStrokePath(_69);
};
CGContextStrokePath=function(_6b){
CGContextDrawPath(_6b,kCGPathStroke);
};
CGContextStrokeLineSegments=function(_6c,_6d,_6e){
var i=0;
if(arguments["count"]==NULL){
var _6e=_6d.length;
}
CGContextBeginPath(_6c);
for(;i<_6e;i+=2){
CGContextMoveToPoint(_6c,_6d[i].x,_6d[i].y);
CGContextAddLineToPoint(_6c,_6d[i+1].x,_6d[i+1].y);
}
CGContextStrokePath(_6c);
};
CGContextSetFillColor=function(_70,_71){
if(_71){
_70.gState.fillStyle=objj_msgSend(_71,"cssString");
}
};
CGContextSetStrokeColor=function(_72,_73){
if(_73){
_72.gState.strokeStyle=objj_msgSend(_73,"cssString");
}
};
CGContextFillRoundedRectangleInRect=function(_74,_75,_76,ne,se,sw,nw){
CGContextAddPath(_74,CGPathWithRoundedRectangleInRect(_75,_76,_76,ne,se,sw,nw));
CGContextFillPath(_74);
};
CGContextStrokeRoundedRectangleInRect=function(_7b,_7c,_7d,ne,se,sw,nw){
CGContextAddPath(_7b,CGPathWithRoundedRectangleInRect(_7c,_7d,_7d,ne,se,sw,nw));
CGContextStrokePath(_7b);
};
if(CPFeatureIsCompatible(CPHTMLCanvasFeature)){
var _82=["butt","round","square"],_83=["miter","round","bevel"],_84=["source-over","source-over","source-over","source-over","darker","lighter","source-over","source-over","source-over","source-over","source-over","source-over","source-over","source-over","source-over","source-over","source-over","copy","source-in","source-out","source-atop","destination-over","destination-in","destination-out","destination-atop","xor","source-over","source-over"];
CGContextSaveGState=function(_85){
_85.save();
};
CGContextRestoreGState=function(_86){
_86.restore();
};
CGContextSetLineCap=function(_87,_88){
_87.lineCap=_82[_88];
};
CGContextSetLineJoin=function(_89,_8a){
_89.lineJoin=_83[_8a];
};
CGContextSetLineWidth=function(_8b,_8c){
_8b.lineWidth=_8c;
};
CGContextSetMiterLimit=function(_8d,_8e){
_8d.miterLimit=_8e;
};
CGContextSetBlendMode=function(_8f,_90){
_8f.globalCompositeOperation=_84[_90];
};
CGContextAddArc=function(_91,x,y,_94,_95,_96,_97){
_91.arc(x,y,_94,_95,_96,!_97);
};
CGContextAddArcToPoint=function(_98,x1,y1,x2,y2,_9d){
_98.arcTo(x1,y1,x2,y2,_9d);
};
CGContextAddCurveToPoint=function(_9e,_9f,_a0,_a1,_a2,x,y){
_9e.bezierCurveTo(_9f,_a0,_a1,_a2,x,y);
};
CGContextAddLineToPoint=function(_a5,x,y){
_a5.lineTo(x,y);
};
CGContextAddPath=function(_a8,_a9){
if(!_a8||CGPathIsEmpty(_a9)){
return;
}
var _aa=_a9.elements,i=0,_ac=_a9.count;
for(;i<_ac;++i){
var _ad=_aa[i],_ae=_ad.type;
switch(_ae){
case kCGPathElementMoveToPoint:
_a8.moveTo(_ad.x,_ad.y);
break;
case kCGPathElementAddLineToPoint:
_a8.lineTo(_ad.x,_ad.y);
break;
case kCGPathElementAddQuadCurveToPoint:
_a8.quadraticCurveTo(_ad.cpx,_ad.cpy,_ad.x,_ad.y);
break;
case kCGPathElementAddCurveToPoint:
_a8.bezierCurveTo(_ad.cp1x,_ad.cp1y,_ad.cp2x,_ad.cp2y,_ad.x,_ad.y);
break;
case kCGPathElementCloseSubpath:
_a8.closePath();
break;
case kCGPathElementAddArc:
_a8.arc(_ad.x,_ad.y,_ad.radius,_ad.startAngle,_ad.endAngle,_ad.clockwise);
break;
case kCGPathElementAddArcTo:
break;
}
}
};
CGContextAddRect=function(_af,_b0){
_af.rect((_b0.origin.x),(_b0.origin.y),(_b0.size.width),(_b0.size.height));
};
CGContextAddRects=function(_b1,_b2,_b3){
var i=0;
if(arguments["count"]==NULL){
var _b3=_b2.length;
}
for(;i<_b3;++i){
var _b5=_b2[i];
_b1.rect((_b5.origin.x),(_b5.origin.y),(_b5.size.width),(_b5.size.height));
}
};
CGContextBeginPath=function(_b6){
_b6.beginPath();
};
CGContextClosePath=function(_b7){
_b7.closePath();
};
CGContextMoveToPoint=function(_b8,x,y){
_b8.moveTo(x,y);
};
CGContextClearRect=function(_bb,_bc){
_bb.clearRect((_bc.origin.x),(_bc.origin.y),(_bc.size.width),(_bc.size.height));
};
CGContextDrawPath=function(_bd,_be){
if(_be==kCGPathFill||_be==kCGPathFillStroke){
_bd.fill();
}else{
if(_be==kCGPathEOFill||_be==kCGPathEOFillStroke){
alert("not implemented!!!");
}
}
if(_be==kCGPathStroke||_be==kCGPathFillStroke||_be==kCGPathEOFillStroke){
_bd.stroke();
}
};
CGContextFillRect=function(_bf,_c0){
_bf.fillRect((_c0.origin.x),(_c0.origin.y),(_c0.size.width),(_c0.size.height));
};
CGContextFillRects=function(_c1,_c2,_c3){
var i=0;
if(arguments["count"]==NULL){
var _c3=_c2.length;
}
for(;i<_c3;++i){
var _c5=_c2[i];
_c1.fillRect((_c5.origin.x),(_c5.origin.y),(_c5.size.width),(_c5.size.height));
}
};
CGContextStrokeRect=function(_c6,_c7){
_c6.strokeRect((_c7.origin.x),(_c7.origin.y),(_c7.size.width),(_c7.size.height));
};
CGContextClip=function(_c8){
_c8.clip();
};
CGContextClipToRect=function(_c9,_ca){
_c9.beginPath();
_c9.rect((_ca.origin.x),(_ca.origin.y),(_ca.size.width),(_ca.size.height));
_c9.closePath();
_c9.clip();
};
CGContextClipToRects=function(_cb,_cc,_cd){
if(arguments["count"]==NULL){
var _cd=_cc.length;
}
_cb.beginPath();
CGContextAddRects(_cb,_cc,_cd);
_cb.clip();
};
CGContextSetAlpha=function(_ce,_cf){
_ce.globalAlpha=_cf;
};
CGContextSetFillColor=function(_d0,_d1){
_d0.fillStyle=objj_msgSend(_d1,"cssString");
};
CGContextSetStrokeColor=function(_d2,_d3){
_d2.strokeStyle=objj_msgSend(_d3,"cssString");
};
CGContextSetShadow=function(_d4,_d5,_d6){
_d4.shadowOffsetX=_d5.width;
_d4.shadowOffsetY=_d5.height;
_d4.shadowBlur=_d6;
};
CGContextSetShadowWithColor=function(_d7,_d8,_d9,_da){
_d7.shadowOffsetX=_d8.width;
_d7.shadowOffsetY=_d8.height;
_d7.shadowBlur=_d9;
_d7.shadowColor=objj_msgSend(_da,"cssString");
};
CGContextRotateCTM=function(_db,_dc){
_db.rotate(_dc);
};
CGContextScaleCTM=function(_dd,sx,sy){
_dd.scale(sx,sy);
};
CGContextTranslateCTM=function(_e0,tx,ty){
_e0.translate(tx,ty);
};
eigen=function(_e3){
alert("IMPLEMENT ME!");
};
if(CPFeatureIsCompatible(CPJavaScriptCanvasTransformFeature)){
CGContextConcatCTM=function(_e4,_e5){
_e4.transform(_e5.a,_e5.b,_e5.c,_e5.d,_e5.tx,_e5.ty);
};
}else{
CGContextConcatCTM=function(_e6,_e7){
var a=_e7.a,b=_e7.b,c=_e7.c,d=_e7.d,tx=_e7.tx,ty=_e7.ty,sx=1,sy=1,a1=0,a2=0;
if(b==0&&c==0){
sx=a;
sy=d;
}else{
if(a*b==-c*d){
var _f2=(a*d<0||b*c>0)?-1:1,a2=(ATAN2(b,d)+ATAN2(-_f2*c,_f2*a))/2,cos=COS(a2),sin=SIN(a2);
if(cos==0){
sx=-c/sin;
sy=b/sin;
}else{
if(sin==0){
sx=a/cos;
sy=d/cos;
}else{
abs_cos=ABS(cos);
abs_sin=ABS(sin);
sx=(abs_cos*a/cos+abs_sin*-c/sin)/(abs_cos+abs_sin);
sy=(abs_cos*d/cos+abs_sin*b/sin)/(abs_cos+abs_sin);
}
}
}else{
if(a*c==-b*d){
var _f2=(a*d<0||b*c>0)?-1:1;
a1=(Math.atan2(_f2*b,_f2*a)+Math.atan2(-c,d))/2,cos=COS(a1),sin=SIN(a1);
if(cos==0){
sx=b/sin;
sy=-c/sin;
}else{
if(sin==0){
sx=a/cos;
sy=d/cos;
}else{
abs_cos=ABS(cos);
abs_sin=ABS(sin);
sx=(abs_cos*a/cos+abs_sin*b/sin)/(abs_cos+abs_sin);
sy=(abs_cos*d/cos+abs_sin*-c/sin)/(abs_cos+abs_sin);
}
}
}else{
var _f5=CGAffineTransformMake(a,c,b,d,0,0),u=eigen(CGAffineTransformConcat(_e7,_f5)),v=eigen(CGAffineTransformConcat(_f5,_e7)),U=CGAffineTransformMake(u.vector_1.x,u.vector_2.x,u.vector_1.y,u.vector_2.y,0,0),VT=CGAffineTransformMake(v.vector_1.x,v.vector_1.y,v.vector_2.x,v.vector_2.y,0,0),S=CGAffineTransformConcat(CGAffineTransformConcat(CGAffineTransformInvert(U),_e7),CGAffineTransformInvert(VT));
a=VT.a;
b=VT.b;
c=VT.c;
d=VT.d;
var _f2=(a*d<0||b*c>0)?-1:1,a2=(ATAN2(b,d)+ATAN2(-_f2*c,_f2*a))/2,cos=COS(a2),sin=SIN(a2);
if(cos==0){
sx=-c/sin;
sy=b/sin;
}else{
if(sin==0){
sx=a/cos;
sy=d/cos;
}else{
abs_cos=ABS(cos);
abs_sin=ABS(sin);
sx=(abs_cos*a/cos+abs_sin*-c/sin)/(abs_cos+abs_sin);
sy=(abs_cos*d/cos+abs_sin*b/sin)/(abs_cos+abs_sin);
}
}
S.a*=sx;
S.d*=sy;
a=U.a;
b=U.b;
c=U.c;
d=U.d;
var _f2=(a*d<0||b*c>0)?-1:1;
a1=(Math.atan2(_f2*b,_f2*a)+Math.atan2(-c,d))/2,cos=COS(a1),sin=SIN(a1);
if(cos==0){
sx=b/sin;
sy=-c/sin;
}else{
if(sin==0){
sx=a/cos;
sy=d/cos;
}else{
abs_cos=ABS(cos);
abs_sin=ABS(sin);
sx=(abs_cos*a/cos+abs_sin*b/sin)/(abs_cos+abs_sin);
sy=(abs_cos*d/cos+abs_sin*-c/sin)/(abs_cos+abs_sin);
}
}
sx=S.a*sx;
sy=S.d*sy;
}
}
}
if(tx!=0||ty!=0){
CGContextTranslateCTM(_e6,tx,ty);
}
if(a1!=0){
CGContextRotateCTM(_e6,a1);
}
if(sx!=1||sy!=1){
CGContextScaleCTM(_e6,sx,sy);
}
if(a2!=0){
CGContextRotateCTM(_e6,a2);
}
};
}
CGContextDrawImage=function(_fb,_fc,_fd){
_fb.drawImage(_fd._image,(_fc.origin.x),(_fc.origin.y),(_fc.size.width),(_fc.size.height));
};
to_string=function(_fe){
return "rgba("+ROUND(_fe.components[0]*255)+", "+ROUND(_fe.components[1]*255)+", "+ROUND(255*_fe.components[2])+", "+_fe.components[3]+")";
};
CGContextDrawLinearGradient=function(_ff,_100,_101,_102,_103){
var _104=_100.colors,_105=_104.length,_106=_ff.createLinearGradient(_101.x,_101.y,_102.x,_102.y);
while(_105--){
_106.addColorStop(_100.locations[_105],to_string(_104[_105]));
}
_ff.fillStyle=_106;
_ff.fill();
};
CGBitmapGraphicsContextCreate=function(){
var _107=document.createElement("canvas"),_108=_107.getContext("2d");
_108.DOMElement=_107;
return _108;
};
}else{
if(CPFeatureIsCompatible(CPVMLFeature)){
var _109=["f","t"],_10a=["flat","round","square"],_10b=["miter","round","bevel"],_10c=[" m "," l ","qb"," c "," x ",[" at "," wa "]];
var _10d=CGBitmapGraphicsContextCreate;
CGBitmapGraphicsContextCreate=function(){
document.namespaces.add("cg_vml_","urn:schemas-microsoft-com:vml");
document.createStyleSheet().cssText="cg_vml_\\:*{behavior:url(#default#VML)}";
CGBitmapGraphicsContextCreate=_10d;
return _10d();
};
CGContextClearRect=function(_10e,_10f){
if(_10e.buffer!=nil){
_10e.buffer="";
}else{
_10e.DOMElement.innerHTML="";
}
_10e.path=NULL;
};
var W=10,H=10,Z=10,Z_2=Z/2;
CGContextDrawImage=function(_114,_115,_116){
var _117="";
if(_116.buffer!=nil){
_117=_116.buffer;
}else{
var ctm=_114.gState.CTM,_119=CGPointApplyAffineTransform(_115.origin,ctm),_11a=ctm.a==ctm.d&&ctm.b==-ctm.c,vml=["<cg_vml_:group coordsize=\"1,1\" coordorigin=\"0,0\" style=\"width:1;height:1;position:absolute"];
var _11c=CGRectApplyAffineTransform(_115,ctm);
vml.push(";padding:0 ",ROUND((_11c.origin.x+_11c.size.width)),"px ",ROUND((_11c.origin.y+_11c.size.height)),"px 0;filter:progid:DXImageTransform.Microsoft.Matrix(","M11='",ctm.a,"',M12='",ctm.c,"',M21='",ctm.b,"',M22='",ctm.d,"',","Dx='",ROUND(_119.x),"', Dy='",ROUND(_119.y),"', sizingmethod='clip');");
vml.push("\"><cg_vml_:image src=\"",_116._image.src,"\" style=\"width:",(_115.size.width),"px;height:",(_115.size.height),"px;\"/></g_vml_:group>");
_117=vml.join("");
}
if(_114.buffer!=nil){
_114.buffer+=_117;
}else{
_114.DOMElement.insertAdjacentHTML("BeforeEnd",_117);
}
};
CGContextDrawPath=function(_11d,_11e){
if(!_11d||CGPathIsEmpty(_11d.path)){
return;
}
var _11f=_11d.path.elements,i=0,_121=_11d.path.count,_122=_11d.gState,fill=(_11e==kCGPathFill||_11e==kCGPathFillStroke)?1:0,_124=(_11e==kCGPathStroke||_11e==kCGPathFillStroke)?1:0,_125=_122.alpha,vml=["<cg_vml_:shape"," fillcolor=\"",_122.fillStyle,"\" filled=\"",_109[fill],"\" style=\"position:absolute;width:",W,";height:",H,";\" coordorigin=\"0 0\" coordsize=\"",Z*W," ",Z*H,"\" stroked=\"",_109[_124],"\" strokeweight=\"",_122.lineWidth,"\" strokecolor=\"",_122.strokeStyle,"\" path=\""];
for(;i<_121;++i){
var _127=_11f[i],type=_127.type;
switch(type){
case kCGPathElementMoveToPoint:
case kCGPathElementAddLineToPoint:
vml.push(_10c[type],(ROUND(Z*(_127.x)-Z_2)),",",(ROUND(Z*(_127.y)-Z_2)));
break;
case kCGPathElementAddQuadCurveToPoint:
vml.push(_10c[type],(ROUND(Z*(_127.cpx)-Z_2)),",",(ROUND(Z*(_127.cpy)-Z_2)),",",(ROUND(Z*(_127.x)-Z_2)),",",(ROUND(Z*(_127.y)-Z_2)));
break;
case kCGPathElementAddCurveToPoint:
vml.push(_10c[type],(ROUND(Z*(_127.cp1x)-Z_2)),",",(ROUND(Z*(_127.cp1y)-Z_2)),",",(ROUND(Z*(_127.cp2x)-Z_2)),",",(ROUND(Z*(_127.cp2y)-Z_2)),",",(ROUND(Z*(_127.x)-Z_2)),",",(ROUND(Z*(_127.y)-Z_2)));
break;
case kCGPathElementCloseSubpath:
vml.push(_10c[type]);
break;
case kCGPathElementAddArc:
var x=_127.x,y=_127.y,_12b=_127.radius,_12c=_127.clockwise?1:0,_12d=_127.endAngle,_12e=_127.startAngle,_12f={x:x+_12b*COS(_12e),y:y+_12b*SIN(_12e)};
if(_12e==_12d&&!_12c){
vml.push(_10c[kCGPathElementMoveToPoint],(ROUND(Z*(_12f.x)-Z_2)),",",(ROUND(Z*(_12f.y)-Z_2)));
continue;
}
var end={x:x+_12b*COS(_12d),y:y+_12b*SIN(_12d)};
if(_12c&&_12e!=_12d&&(_12f.x==end.x&&_12f.y==end.y)){
if(_12f.x>=x){
if(_12f.y<y){
_12f.x+=0.125;
}else{
_12f.y+=0.125;
}
}else{
if(end.y<=y){
end.x+=0.125;
}else{
end.y+=0.125;
}
}
}
vml.push(_10c[type][_12c],(ROUND(Z*(x-_12b)-Z_2)),",",(ROUND(Z*(y-_12b)-Z_2))," ",(ROUND(Z*(x+_12b)-Z_2)),",",(ROUND(Z*(y+_12b)-Z_2))," ",(ROUND(Z*(_12f.x)-Z_2)),",",(ROUND(Z*(_12f.y)-Z_2))," ",(ROUND(Z*(end.x)-Z_2)),",",(ROUND(Z*(end.y)-Z_2)));
break;
case kCGPathElementAddArcTo:
break;
}
}
vml.push("\">");
if(_122.gradient){
vml.push(_122.gradient);
}else{
if(fill){
vml.push("<cg_vml_:fill color=\"",_122.fillStyle,"\" opacity=\"",_125,"\" />");
}
}
if(_124){
vml.push("<cg_vml_:stroke opacity=\"",_125,"\" joinstyle=\"",_10b[_122.lineJoin],"\" miterlimit=\"",_122.miterLimit,"\" endcap=\"",_10a[_122.lineCap],"\" weight=\"",_122.lineWidth,"","px\" color=\"",_122.strokeStyle,"\" />");
}
var _131=_122.shadowColor;
if(_131){
var _132=_122.shadowOffset;
vml.push("<cg_vml_:shadow on=\"t\" offset=\"",_132.width,"pt ",_132.height,"pt\" opacity=\"",objj_msgSend(_131,"alphaComponent"),"\" color=black />");
}
vml.push("</cg_vml_:shape>");
_11d.path=NULL;
if(_11d.buffer!=nil){
_11d.buffer+=vml.join("");
}else{
_11d.DOMElement.insertAdjacentHTML("BeforeEnd",vml.join(""));
}
};
to_string=function(_133){
return "rgb("+ROUND(_133.components[0]*255)+", "+ROUND(_133.components[1]*255)+", "+ROUND(255*_133.components[2])+")";
};
CGContextDrawLinearGradient=function(_134,_135,_136,_137,_138){
if(!_134||!_135){
return;
}
var vml=nil;
if(_135.vml_gradient){
var _13a=objj_msgSend(objj_msgSend(_135.vml_gradient,"stops"),"sortedArrayUsingSelector:",sel_getUid("comparePosition:")),_13b=objj_msgSend(_13a,"count");
vml=["<cg_vml_:fill type=\"gradient\" method=\"linear sigma\" "];
vml.push("angle=\""+(objj_msgSend(_135.vml_gradient,"angle")+90)+"\" ");
vml.push("colors=\"");
for(var i=0;i<_13b;i++){
vml.push((objj_msgSend(_13a[i],"position")*100).toFixed(0)+"% ");
vml.push(objj_msgSend(objj_msgSend(objj_msgSend(_13a[i],"color"),"colorForSlideBase:",nil),"cssString"));
if(i<_13b-1){
vml.push(",");
}
}
vml.push("\" />");
}else{
var _13d=_135.colors,_13b=_13d.length;
vml=["<cg_vml_:fill type=\"gradient\" "];
vml.push("colors=\"");
for(var i=0;i<_13b;i++){
vml.push((_135.locations[i]*100).toFixed(0)+"% "+to_string(_13d[i])+(i<_13b-1?",":""));
}
vml.push("\" />");
}
_134.gState.gradient=vml.join("");
console.log(vml.join(""));
};
}
}
p;12;CGGeometry.jc;5815;
CGPointMake=function(x,y){
return {x:x,y:y};
};
CGPointMakeZero=function(){
return {x:0,y:0};
};
CGPointMakeCopy=function(_3){
return {x:_3.x,y:_3.y};
};
CGPointCreateCopy=function(_4){
return {x:_4.x,y:_4.y};
};
CGPointEqualToPoint=function(_5,_6){
return (_5.x==_6.x&&_5.y==_6.y);
};
CGStringFromPoint=function(_7){
return ("{"+_7.x+", "+_7.y+"}");
};
CGSizeMake=function(_8,_9){
return {width:_8,height:_9};
};
CGSizeMakeZero=function(){
return {width:0,height:0};
};
CGSizeMakeCopy=function(_a){
return {width:_a.width,height:_a.height};
};
CGSizeCreateCopy=function(_b){
return {width:_b.width,height:_b.height};
};
CGSizeEqualToSize=function(_c,_d){
return (_c.width==_d.width&&_c.height==_d.height);
};
CGStringFromSize=function(_e){
return ("{"+_e.width+", "+_e.height+"}");
};
CGRectMake=function(x,y,_11,_12){
return {origin:{x:x,y:y},size:{width:_11,height:_12}};
};
CGRectMakeZero=function(){
return {origin:{x:0,y:0},size:{width:0,height:0}};
};
CGRectMakeCopy=function(_13){
return {origin:{x:_13.origin.x,y:_13.origin.y},size:{width:_13.size.width,height:_13.size.height}};
};
CGRectCreateCopy=function(_14){
return {origin:{x:_14.origin.x,y:_14.origin.y},size:{width:_14.size.width,height:_14.size.height}};
};
CGRectEqualToRect=function(_15,_16){
return ((_15.origin.x==_16.origin.x&&_15.origin.y==_16.origin.y)&&(_15.size.width==_16.size.width&&_15.size.height==_16.size.height));
};
CGStringFromRect=function(_17){
return ("{"+("{"+_17.origin.x+", "+_17.origin.y+"}")+", "+("{"+_17.size.width+", "+_17.size.height+"}")+"}");
};
CGRectOffset=function(_18,dX,dY){
return {origin:{x:_18.origin.x+dX,y:_18.origin.y+dY},size:{width:_18.size.width,height:_18.size.height}};
};
CGRectInset=function(_1b,dX,dY){
return {origin:{x:_1b.origin.x+dX,y:_1b.origin.y+dY},size:{width:_1b.size.width-2*dX,height:_1b.size.height-2*dY}};
};
CGRectGetHeight=function(_1e){
return (_1e.size.height);
};
CGRectGetMaxX=function(_1f){
return (_1f.origin.x+_1f.size.width);
};
CGRectGetMaxY=function(_20){
return (_20.origin.y+_20.size.height);
};
CGRectGetMidX=function(_21){
return (_21.origin.x+(_21.size.width)/2);
};
CGRectGetMidY=function(_22){
return (_22.origin.y+(_22.size.height)/2);
};
CGRectGetMinX=function(_23){
return (_23.origin.x);
};
CGRectGetMinY=function(_24){
return (_24.origin.y);
};
CGRectGetWidth=function(_25){
return (_25.size.width);
};
CGRectIsEmpty=function(_26){
return (_26.size.width<=0||_26.size.height<=0);
};
CGRectIsNull=function(_27){
return (_27.size.width<=0||_27.size.height<=0);
};
CGRectContainsPoint=function(_28,_29){
return (_29.x>=(_28.origin.x)&&_29.y>=(_28.origin.y)&&_29.x<(_28.origin.x+_28.size.width)&&_29.y<(_28.origin.y+_28.size.height));
};
CGInsetMake=function(top,_2b,_2c,_2d){
return {top:(top),right:(_2b),bottom:(_2c),left:(_2d)};
};
CGInsetMakeZero=function(){
return {top:(0),right:(0),bottom:(0),left:(0)};
};
CGInsetMakeCopy=function(_2e){
return {top:(_2e.top),right:(_2e.right),bottom:(_2e.bottom),left:(_2e.left)};
};
CGInsetIsEmpty=function(_2f){
return ((_2f).top===0&&(_2f).right===0&&(_2f).bottom===0&&(_2f).left===0);
};
CGRectContainsRect=function(_30,_31){
var _32=CGRectUnion(_30,_31);
return ((_32.origin.x==_30.origin.x&&_32.origin.y==_30.origin.y)&&(_32.size.width==_30.size.width&&_32.size.height==_30.size.height));
};
CGRectIntersectsRect=function(_33,_34){
var _35=CGRectIntersection(_33,_34);
return !(_35.size.width<=0||_35.size.height<=0);
};
CGRectIntegral=function(_36){
_36=CGRectStandardize(_36);
var x=FLOOR((_36.origin.x)),y=FLOOR((_36.origin.y));
_36.size.width=CEIL((_36.origin.x+_36.size.width))-x;
_36.size.height=CEIL((_36.origin.y+_36.size.height))-y;
_36.origin.x=x;
_36.origin.y=y;
return _36;
};
CGRectIntersection=function(_39,_3a){
var _3b={origin:{x:MAX((_39.origin.x),(_3a.origin.x)),y:MAX((_39.origin.y),(_3a.origin.y))},size:{width:0,height:0}};
_3b.size.width=MIN((_39.origin.x+_39.size.width),(_3a.origin.x+_3a.size.width))-(_3b.origin.x);
_3b.size.height=MIN((_39.origin.y+_39.size.height),(_3a.origin.y+_3a.size.height))-(_3b.origin.y);
return (_3b.size.width<=0||_3b.size.height<=0)?{origin:{x:0,y:0},size:{width:0,height:0}}:_3b;
};
CGRectStandardize=function(_3c){
var _3d=(_3c.size.width),_3e=(_3c.size.height),_3f=_3c;
if(_3d<0){
if(_3f==_3c){
_3f={origin:{x:_3c.origin.x,y:_3c.origin.y},size:{width:_3c.size.width,height:_3c.size.height}};
}
_3f.origin.x+=_3d;
_3f.size.width=-_3d;
}
if(_3e<0){
if(_3f==_3c){
_3f={origin:{x:_3c.origin.x,y:_3c.origin.y},size:{width:_3c.size.width,height:_3c.size.height}};
}
_3f.origin.y+=_3e;
_3f.size.height=-_3e;
}
return _3f;
};
CGRectUnion=function(_40,_41){
var _42=MIN((_40.origin.x),(_41.origin.x)),_43=MIN((_40.origin.y),(_41.origin.y)),_44=MAX((_40.origin.x+_40.size.width),(_41.origin.x+_41.size.width)),_45=MAX((_40.origin.y+_40.size.height),(_41.origin.y+_41.size.height));
return {origin:{x:_42,y:_43},size:{width:_44-_42,height:_45-_43}};
};
CGPointFromString=function(_46){
var _47=_46.indexOf(",");
return {x:parseInt(_46.substr(1,_47-1)),y:parseInt(_46.substring(_47+1,_46.length))};
};
CGSizeFromString=function(_48){
var _49=_48.indexOf(",");
return {width:parseInt(_48.substr(1,_49-1)),height:parseInt(_48.substring(_49+1,_48.length))};
};
CGRectFromString=function(_4a){
var _4b=_4a.indexOf(",",_4a.indexOf(",")+1);
return {origin:CGPointFromString(_4a.substr(1,_4b-1)),size:CGSizeFromString(_4a.substring(_4b+2,_4a.length))};
};
CGPointFromEvent=function(_4c){
return {x:_4c.clientX,y:_4c.clientY};
};
CGInsetFromString=function(_4d){
var _4e=_4d.substr(1,_4d.length-2).split(",");
return {top:(parseFloat(_4e[0])),right:(parseFloat(_4e[1])),bottom:(parseFloat(_4e[2])),left:(parseFloat(_4e[3]))};
};
CGInsetFromCPString=CGInsetFromString;
CPStringFromCGInset=function(_4f){
return "{"+_4f.top+", "+_4f.left+", "+_4f.bottom+", "+_4f.right+"}";
};
p;12;CGGradient.ji;9;CGColor.ji;14;CGColorSpace.jc;497;
kCGGradientDrawsBeforeStartLocation=1<<0;
kCGGradientDrawsAfterEndLocation=1<<1;
CGGradientCreateWithColorComponents=function(_1,_2,_3,_4){
if(arguments["count"]==NULL){
var _4=_3.length;
}
var _5=[];
while(_4--){
var _6=_4*4;
_5[_4]=CGColorCreate(_1,_2.slice(_6,_6+4));
}
return CGGradientCreateWithColors(_1,_5,_3);
};
CGGradientCreateWithColors=function(_7,_8,_9){
return {colorspace:_7,colors:_8,locations:_9};
};
CGGradientRelease=function(){
};
CGGradientRetain=function(_a){
return _a;
};
p;8;CGPath.ji;12;CGGeometry.ji;19;CGAffineTransform.jc;7354;
kCGPathElementMoveToPoint=0;
kCGPathElementAddLineToPoint=1;
kCGPathElementAddQuadCurveToPoint=2;
kCGPathElementAddCurveToPoint=3;
kCGPathElementCloseSubpath=4;
kCGPathElementAddArc=5;
kCGPathElementAddArcToPoint=6;
CGPathCreateMutable=function(){
return {count:0,start:NULL,current:NULL,elements:[]};
};
CGPathCreateMutableCopy=function(_1){
var _2=CGPathCreateMutable();
CGPathAddPath(_2,_1);
return _2;
};
CGPathCreateCopy=function(_3){
return CGPathCreateMutableCopy(_3);
};
CGPathRelease=function(_4){
};
CGPathRetain=function(_5){
return _5;
};
CGPathAddArc=function(_6,_7,x,y,_a,_b,_c,_d){
if(_7&&!(_7.a==1&&_7.b==0&&_7.c==0&&_7.d==1&&_7.tx==0&&_7.ty==0)){
var _e={x:x,y:y},_f={x:COS(_c),y:SIN(_c)},_10={x:COS(_b),y:SIN(_b)};
_f={x:_f.x*_7.a+_f.y*_7.c+_7.tx,y:_f.x*_7.b+_f.y*_7.d+_7.ty};
_10={x:_10.x*_7.a+_10.y*_7.c+_7.tx,y:_10.x*_7.b+_10.y*_7.d+_7.ty};
_e={x:_e.x*_7.a+_e.y*_7.c+_7.tx,y:_e.x*_7.b+_e.y*_7.d+_7.ty};
x=_e.x;
y=_e.y;
var _11=_c,_12=_b;
_c=ATAN2(_f.y-_7.ty,_f.x-_7.tx);
_b=ATAN2(_10.y-_7.ty,_10.x-_7.tx);
if(_c==_b&&_11!=_12){
if(_12>_11){
_c=_c-PI2;
}else{
_b=_b-PI2;
}
}
_a={width:_a,height:0};
_a={width:_a.width*_7.a+_a.height*_7.c,height:_a.width*_7.b+_a.height*_7.d};
_a=SQRT(_a.width*_a.width+_a.height*_a.height);
}
_6.current={x:x+_a*COS(_c),y:y+_a*SIN(_c)};
_6.elements[_6.count++]={type:kCGPathElementAddArc,x:x,y:y,radius:_a,startAngle:_b,endAngle:_c};
};
CGPathAddArcToPoint=function(_13,_14,x1,y1,x2,y2,_19){
};
CGPathAddCurveToPoint=function(_1a,_1b,_1c,_1d,_1e,_1f,x,y){
var cp1={x:_1c,y:_1d},cp2={x:_1e,y:_1f},end={x:x,y:y};
if(_1b){
cp1={x:cp1.x*_1b.a+cp1.y*_1b.c+_1b.tx,y:cp1.x*_1b.b+cp1.y*_1b.d+_1b.ty};
cp2={x:cp2.x*_1b.a+cp2.y*_1b.c+_1b.tx,y:cp2.x*_1b.b+cp2.y*_1b.d+_1b.ty};
end={x:end.x*_1b.a+end.y*_1b.c+_1b.tx,y:end.x*_1b.b+end.y*_1b.d+_1b.ty};
}
_1a.current=end;
_1a.elements[_1a.count++]={type:kCGPathElementAddCurveToPoint,cp1x:cp1.x,cp1y:cp1.y,cp2x:cp2.x,cp2y:cp2.y,x:end.x,y:end.y};
};
CGPathAddLines=function(_25,_26,_27,_28){
var i=1;
if(arguments["count"]==NULL){
var _28=_27.length;
}
if(!_25||_28<2){
return;
}
CGPathMoveToPoint(_25,_26,_27[0].x,_27[0].y);
for(;i<_28;++i){
CGPathAddLineToPoint(_25,_26,_27[i].x,_27[i].y);
}
};
CGPathAddLineToPoint=function(_2a,_2b,x,y){
var _2e={x:x,y:y};
if(_2b!=NULL){
_2e={x:_2e.x*_2b.a+_2e.y*_2b.c+_2b.tx,y:_2e.x*_2b.b+_2e.y*_2b.d+_2b.ty};
}
_2a.elements[_2a.count++]={type:kCGPathElementAddLineToPoint,x:_2e.x,y:_2e.y};
_2a.current=_2e;
};
CGPathAddPath=function(_2f,_30,_31){
for(var i=0,_33=_31.count;i<_33;++i){
var _34=_31.elements[i];
switch(_34.type){
case kCGPathElementAddLineToPoint:
CGPathAddLineToPoint(_2f,_30,_34.x,_34.y);
break;
case kCGPathElementAddCurveToPoint:
CGPathAddCurveToPoint(_2f,_30,_34.cp1x,_34.cp1y,_34.cp2x,_34.cp2y,_34.x,_34.y);
break;
case kCGPathElementAddArc:
CGPathAddArc(_2f,_30,_34.x,_34.y,_34.radius,_34.startAngle,_34.endAngle,_34.isClockwise);
break;
case kCGPathElementAddQuadCurveToPoint:
CGPathAddQuadCurveToPoint(_2f,_30,_34.cpx,_34.cpy,_34.x,_34.y);
break;
case kCGPathElementMoveToPoint:
CGPathMoveToPoint(_2f,_30,_34.x,_34.y);
break;
case kCGPathElementCloseSubpath:
CGPathCloseSubpath(_2f);
break;
}
}
};
CGPathAddQuadCurveToPoint=function(_35,_36,cpx,cpy,x,y){
var cp={x:cpx,y:cpy},end={x:x,y:y};
if(_36){
cp={x:control.x*_36.a+control.y*_36.c+_36.tx,y:control.x*_36.b+control.y*_36.d+_36.ty};
end={x:end.x*_36.a+end.y*_36.c+_36.tx,y:end.x*_36.b+end.y*_36.d+_36.ty};
}
_35.elements[_35.count++]={type:kCGPathElementAddQuadCurveToPoint,cpx:cp.x,cpy:cp.y,x:end.x,y:end.y};
_35.current=end;
};
CGPathAddRect=function(_3d,_3e,_3f){
CGPathAddRects(_3d,_3e,[_3f],1);
};
CGPathAddRects=function(_40,_41,_42,_43){
var i=0;
if(arguments["count"]==NULL){
var _43=_42.length;
}
for(;i<_43;++i){
var _45=_42[i];
CGPathMoveToPoint(_40,_41,(_45.origin.x),(_45.origin.y));
CGPathAddLineToPoint(_40,_41,(_45.origin.x+_45.size.width),(_45.origin.y));
CGPathAddLineToPoint(_40,_41,(_45.origin.x+_45.size.width),(_45.origin.y+_45.size.height));
CGPathAddLineToPoint(_40,_41,(_45.origin.x),(_45.origin.y+_45.size.height));
CGPathCloseSubpath(_40);
}
};
CGPathMoveToPoint=function(_46,_47,x,y){
var _4a={x:x,y:y},_4b=_46.count;
if(_47!=NULL){
_4a={x:_4a.x*_47.a+_4a.y*_47.c+_47.tx,y:_4a.x*_47.b+_4a.y*_47.d+_47.ty};
}
_46.start=_4a;
_46.current=_4a;
var _4c=_46.elements[_4b-1];
if(_4b!=0&&_4c.type==kCGPathElementMoveToPoint){
_4c.x=_4a.x;
_4c.y=_4a.y;
}else{
_46.elements[_46.count++]={type:kCGPathElementMoveToPoint,x:_4a.x,y:_4a.y};
}
};
var _4d=4*((SQRT2-1)/3);
CGPathWithEllipseInRect=function(_4e){
var _4f=CGPathCreateMutable();
if((_4e.size.width)==(_4e.size.height)){
CGPathAddArc(_4f,nil,(_4e.origin.x+(_4e.size.width)/2),(_4e.origin.y+(_4e.size.height)/2),(_4e.size.width)/2,0,2*PI,YES);
}else{
var _50={width:(_4e.size.width)/2,height:(_4e.size.height)/2},_51={x:(_4e.origin.x)+_50.width,y:(_4e.origin.y)+_50.height};
CGPathMoveToPoint(_4f,nil,_51.x,_51.y-_50.height);
CGPathAddCurveToPoint(_4f,nil,_51.x+(_4d*_50.width),_51.y-_50.height,_51.x+_50.width,_51.y-(_4d*_50.height),_51.x+_50.width,_51.y);
CGPathAddCurveToPoint(_4f,nil,_51.x+_50.width,_51.y+(_4d*_50.height),_51.x+(_4d*_50.width),_51.y+_50.height,_51.x,_51.y+_50.height);
CGPathAddCurveToPoint(_4f,nil,_51.x-(_4d*_50.width),_51.y+_50.height,_51.x-_50.width,_51.y+(_4d*_50.height),_51.x-_50.width,_51.y);
CGPathAddCurveToPoint(_4f,nil,_51.x-_50.width,_51.y-(_4d*_50.height),_51.x-(_4d*_50.width),_51.y-_50.height,_51.x,_51.y-_50.height);
}
CGPathCloseSubpath(_4f);
return _4f;
};
CGPathWithRoundedRectangleInRect=function(_52,_53,_54,ne,se,sw,nw){
var _59=CGPathCreateMutable(),_5a=(_52.origin.x),_5b=(_52.origin.x+_52.size.width),_5c=(_52.origin.y),_5d=(_52.origin.y+_52.size.height);
CGPathMoveToPoint(_59,nil,_5a+_53,_5c);
if(ne){
CGPathAddLineToPoint(_59,nil,_5b-_53,_5c);
CGPathAddCurveToPoint(_59,nil,_5b-_53,_5c,_5b,_5c,_5b,_5c+_53);
}else{
CGPathAddLineToPoint(_59,nil,_5b,_5c);
}
if(se){
CGPathAddLineToPoint(_59,nil,_5b,_5d-_53);
CGPathAddCurveToPoint(_59,nil,_5b,_5d-_53,_5b,_5d,_5b-_53,_5d);
}else{
CGPathAddLineToPoint(_59,nil,_5b,_5d);
}
if(sw){
CGPathAddLineToPoint(_59,nil,_5a+_53,_5d);
CGPathAddCurveToPoint(_59,nil,_5a+_53,_5d,_5a,_5d,_5a,_5d-_53);
}else{
CGPathAddLineToPoint(_59,nil,_5a,_5d);
}
if(nw){
CGPathAddLineToPoint(_59,nil,_5a,_5c+_53);
CGPathAddCurveToPoint(_59,nil,_5a,_5c+_53,_5a,_5c,_5a+_53,_5c);
}else{
CGPathAddLineToPoint(_59,nil,_5a,_5c);
}
CGPathCloseSubpath(_59);
return _59;
};
CGPathCloseSubpath=function(_5e){
var _5f=_5e.count;
if(_5f==0||_5e.elements[_5f-1].type==kCGPathElementCloseSubpath){
return;
}
_5e.elements[_5e.count++]={type:kCGPathElementCloseSubpath,points:[_5e.start]};
};
CGPathEqualToPath=function(_60,_61){
if(_60==_61){
return YES;
}
if(_60.count!=_61.count||!(_60.start.x==_61.start.x&&_60.start.y==_61.start.y)||!(_60.current.x==_61.current.x&&_60.current.y==_61.current.y)){
return NO;
}
var i=0,_63=_60.count;
for(;i<_63;++i){
var _64=_60[i],_65=_61[i];
if(_64.type!=_65.type){
return NO;
}
if((_64.type==kCGPathElementAddArc||_64.type==kCGPathElementAddArcToPoint)&&_64.radius!=_65.radius){
return NO;
}
var j=_64.points.length;
while(j--){
if(!(_64.points[j].x==_65.points[j].x&&_64.points[j].y==_65.points[j].y)){
return NO;
}
}
}
return YES;
};
CGPathGetCurrentPoint=function(_67){
return {x:_67.current.x,y:_67.current.y};
};
CGPathIsEmpty=function(_68){
return !_68||_68.count==0;
};
p;9;CPAlert.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jI;22;AppKit/CPApplication.jI;17;AppKit/CPButton.jI;16;AppKit/CPColor.jI;15;AppKit/CPFont.jI;16;AppKit/CPImage.jI;20;AppKit/CPImageView.jI;16;AppKit/CPPanel.jI;20;AppKit/CPTextField.jc;5572;
CPWarningAlertStyle=0;
CPInformationalAlertStyle=1;
CPCriticalAlertStyle=2;
var _1,_2,_3;
var _4=objj_allocateClassPair(CPObject,"CPAlert"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_alertPanel"),new objj_ivar("_messageLabel"),new objj_ivar("_alertImageView"),new objj_ivar("_alertStyle"),new objj_ivar("_windowTitle"),new objj_ivar("_windowStyle"),new objj_ivar("_buttonCount"),new objj_ivar("_buttons"),new objj_ivar("_delegate")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("init"),function(_6,_7){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPObject")},"init");
if(_6){
_buttonCount=0;
_buttons=objj_msgSend(CPArray,"array");
_alertStyle=CPWarningAlertStyle;
_messageLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(57,10,220,80));
objj_msgSend(_messageLabel,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",12));
objj_msgSend(_messageLabel,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_messageLabel,"setAlignment:",CPJustifiedTextAlignment);
_alertImageView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(15,12,32,32));
objj_msgSend(_6,"setWindowStyle:",nil);
}
return _6;
}
}),new objj_method(sel_getUid("setWindowStyle:"),function(_8,_9,_a){
with(_8){
_windowStyle=_a;
_alertPanel=objj_msgSend(objj_msgSend(CPPanel,"alloc"),"initWithContentRect:styleMask:",CGRectMake(0,0,300,130),_a?_a|CPTitledWindowMask:CPTitledWindowMask);
objj_msgSend(_alertPanel,"setFloatingPanel:",YES);
objj_msgSend(_alertPanel,"center");
objj_msgSend(_messageLabel,"setTextColor:",(_a==CPHUDBackgroundWindowMask)?objj_msgSend(CPColor,"whiteColor"):objj_msgSend(CPColor,"blackColor"));
var _b=objj_msgSend(_buttons,"count");
for(var i=0;i<_b;i++){
var _d=_buttons[i];
objj_msgSend(_d,"setFrameSize:",CGSizeMake(objj_msgSend(_d,"frame").size.width,(_a==CPHUDBackgroundWindowMask)?20:24));
objj_msgSend(_d,"setBezelStyle:",(_a==CPHUDBackgroundWindowMask)?CPHUDBezelStyle:CPRoundedBezelStyle);
objj_msgSend(objj_msgSend(_alertPanel,"contentView"),"addSubview:",_d);
}
objj_msgSend(objj_msgSend(_alertPanel,"contentView"),"addSubview:",_messageLabel);
objj_msgSend(objj_msgSend(_alertPanel,"contentView"),"addSubview:",_alertImageView);
}
}),new objj_method(sel_getUid("setTitle:"),function(_e,_f,_10){
with(_e){
_windowTitle=_10;
}
}),new objj_method(sel_getUid("title"),function(_11,_12){
with(_11){
return _windowTitle;
}
}),new objj_method(sel_getUid("windowStyle"),function(_13,_14){
with(_13){
return _windowStyle;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_15,_16,_17){
with(_15){
_delegate=_17;
}
}),new objj_method(sel_getUid("delegate"),function(_18,_19){
with(_18){
return _delegate;
}
}),new objj_method(sel_getUid("setAlertStyle:"),function(_1a,_1b,_1c){
with(_1a){
_alertStyle=_1c;
}
}),new objj_method(sel_getUid("alertStyle"),function(_1d,_1e){
with(_1d){
return _alertStyle;
}
}),new objj_method(sel_getUid("setMessageText:"),function(_1f,_20,_21){
with(_1f){
objj_msgSend(_messageLabel,"setStringValue:",_21);
}
}),new objj_method(sel_getUid("messageText"),function(_22,_23){
with(_22){
return objj_msgSend(_messageLabel,"stringValue");
}
}),new objj_method(sel_getUid("addButtonWithTitle:"),function(_24,_25,_26){
with(_24){
var _27=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(200-(_buttonCount*90),98,80,(_windowStyle==CPHUDBackgroundWindowMask)?20:24));
objj_msgSend(_27,"setTitle:",_26);
objj_msgSend(_27,"setTarget:",_24);
objj_msgSend(_27,"setTag:",_buttonCount);
objj_msgSend(_27,"setAction:",sel_getUid("_notifyDelegate:"));
objj_msgSend(_27,"setBezelStyle:",(_windowStyle==CPHUDBackgroundWindowMask)?CPHUDBezelStyle:CPRoundRectBezelStyle);
objj_msgSend(objj_msgSend(_alertPanel,"contentView"),"addSubview:",_27);
if(_buttonCount==0){
objj_msgSend(_alertPanel,"setDefaultButton:",_27);
}
_buttonCount++;
objj_msgSend(_buttons,"addObject:",_27);
}
}),new objj_method(sel_getUid("runModal"),function(_28,_29){
with(_28){
var _2a;
switch(_alertStyle){
case CPWarningAlertStyle:
objj_msgSend(_alertImageView,"setImage:",_1);
_2a="Warning";
break;
case CPInformationalAlertStyle:
objj_msgSend(_alertImageView,"setImage:",_2);
_2a="Information";
break;
case CPCriticalAlertStyle:
objj_msgSend(_alertImageView,"setImage:",_3);
_2a="Error";
break;
}
objj_msgSend(_alertPanel,"setTitle:",_windowTitle?_windowTitle:_2a);
objj_msgSend(CPApp,"runModalForWindow:",_alertPanel);
}
}),new objj_method(sel_getUid("_notifyDelegate:"),function(_2b,_2c,_2d){
with(_2b){
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("alertDidEnd:returnCode:"))){
objj_msgSend(_delegate,"alertDidEnd:returnCode:",_2b,objj_msgSend(_2d,"tag"));
}
objj_msgSend(CPApp,"abortModal");
objj_msgSend(_alertPanel,"close");
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("initialize"),function(_2e,_2f){
with(_2e){
if(_2e!=CPAlert){
return;
}
var _30=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_2e,"class"));
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_30,"pathForResource:","CPAlert/dialog-warning.png"),CGSizeMake(32,32));
_2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_30,"pathForResource:","CPAlert/dialog-information.png"),CGSizeMake(32,32));
_3=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_30,"pathForResource:","CPAlert/dialog-error.png"),CGSizeMake(32,32));
}
})]);
p;13;CPAnimation.jI;21;Foundation/CPObject.ji;23;CAMediaTimingFunction.jc;4269;
CPAnimationEaseInOut=0;
CPAnimationEaseIn=1;
CPAnimationEaseOut=2;
CPAnimationLinear=3;
ACTUAL_FRAME_RATE=0;
var _1=objj_allocateClassPair(CPObject,"CPAnimation"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_lastTime"),new objj_ivar("_duration"),new objj_ivar("_animationCurve"),new objj_ivar("_timingFunction"),new objj_ivar("_frameRate"),new objj_ivar("_progress"),new objj_ivar("_delegate"),new objj_ivar("_timer")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithDuration:animationCurve:"),function(_3,_4,_5,_6){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_progress=0;
_duration=MAX(0,_5);
_animationCurve=_6;
_frameRate=60;
}
return _3;
}
}),new objj_method(sel_getUid("setAnimationCurve:"),function(_7,_8,_9){
with(_7){
switch(_animationCurve){
case CPAnimationEaseInOut:
timingFunctionName=kCAMediaTimingFunctionEaseInEaseOut;
break;
case CPAnimationEaseIn:
timingFunctionName=kCAMediaTimingFunctionEaseIn;
break;
case CPAnimationEaseOut:
timingFunctionName=kCAMediaTimingFunctionEaseOut;
break;
case CPAnimationLinear:
timingFunctionName=kCAMediaTimingFunctionLinear;
break;
default:
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Invalid value provided for animation curve");
break;
}
_animationCurve=_9;
_timingFunction=objj_msgSend(CAMediaTimingFunction,"functionWithName:",timingFunctionName);
}
}),new objj_method(sel_getUid("animationCurve"),function(_a,_b){
with(_a){
return _animationCurve;
}
}),new objj_method(sel_getUid("setDuration:"),function(_c,_d,_e){
with(_c){
if(_e<0){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"aDuration can't be negative");
}
_duration=_e;
}
}),new objj_method(sel_getUid("duration"),function(_f,_10){
with(_f){
return _duration;
}
}),new objj_method(sel_getUid("setFrameRate:"),function(_11,_12,_13){
with(_11){
if(_13<0){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"frameRate can't be negative");
}
_frameRate=_13;
}
}),new objj_method(sel_getUid("frameRate"),function(_14,_15){
with(_14){
return _frameRate;
}
}),new objj_method(sel_getUid("delegate"),function(_16,_17){
with(_16){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_18,_19,_1a){
with(_18){
_delegate=_1a;
}
}),new objj_method(sel_getUid("startAnimation"),function(_1b,_1c){
with(_1b){
if(_timer||_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("animationShouldStart"))&&!objj_msgSend(_delegate,"animationShouldStart:",_1b)){
return;
}
if(_progress===1){
_progress=0;
}
ACTUAL_FRAME_RATE=0;
_lastTime=new Date();
_timer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0,_1b,sel_getUid("animationTimerDidFire:"),nil,YES);
}
}),new objj_method(sel_getUid("animationTimerDidFire:"),function(_1d,_1e,_1f){
with(_1d){
var _20=new Date(),_21=MIN(1,objj_msgSend(_1d,"currentProgress")+(_20-_lastTime)/(_duration*1000));
_lastTime=_20;
++ACTUAL_FRAME_RATE;
objj_msgSend(_1d,"setCurrentProgress:",_21);
if(_21===1){
objj_msgSend(_timer,"invalidate");
_timer=nil;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("animationDidEnd:"))){
objj_msgSend(_delegate,"animationDidEnd:",_1d);
}
}
}
}),new objj_method(sel_getUid("stopAnimation"),function(_22,_23){
with(_22){
if(!_timer){
return;
}
objj_msgSend(_timer,"invalidate");
_timer=nil;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("animationDidStop:"))){
objj_msgSend(_delegate,"animationDidStop:",_22);
}
}
}),new objj_method(sel_getUid("isAnimating"),function(_24,_25){
with(_24){
return _timer;
}
}),new objj_method(sel_getUid("setCurrentProgress:"),function(_26,_27,_28){
with(_26){
_progress=_28;
}
}),new objj_method(sel_getUid("currentProgress"),function(_29,_2a){
with(_29){
return _progress;
}
}),new objj_method(sel_getUid("currentValue"),function(_2b,_2c){
with(_2b){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("animation:valueForProgress:"))){
return objj_msgSend(_delegate,"animation:valueForProgress:",_2b,_progress);
}
if(_animationCurve==CPAnimationLinear){
return _progress;
}
alert("IMPLEMENT ANIMATION CURVES!!!");
}
})]);
p;15;CPApplication.jI;21;Foundation/CPBundle.ji;17;CPCompatibility.ji;9;CPEvent.ji;8;CPMenu.ji;13;CPResponder.ji;22;CPDocumentController.ji;14;CPThemeBlend.jc;17444;
var _1="CPMainCibFile",_2="Main cib file base name";
CPApp=nil;
CPApplicationWillFinishLaunchingNotification="CPApplicationWillFinishLaunchingNotification";
CPApplicationDidFinishLaunchingNotification="CPApplicationDidFinishLaunchingNotification";
CPRunStoppedResponse=-1000;
CPRunAbortedResponse=-1001;
CPRunContinuesResponse=-1002;
var _3=objj_allocateClassPair(CPResponder,"CPApplication"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_eventListeners"),new objj_ivar("_currentEvent"),new objj_ivar("_windows"),new objj_ivar("_keyWindow"),new objj_ivar("_mainWindow"),new objj_ivar("_mainMenu"),new objj_ivar("_documentController"),new objj_ivar("_currentSession"),new objj_ivar("_delegate"),new objj_ivar("_namedArgs"),new objj_ivar("_args"),new objj_ivar("_fullArgsString")]);
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("init"),function(_5,_6){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPResponder")},"init");
if(_5){
_eventListeners=[];
_windows=[];
objj_msgSend(_windows,"addObject:",nil);
_mainMenu=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","MainMenu");
objj_msgSend(_mainMenu,"setAutoenablesItems:",NO);
var _7=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPApplication,"class")),_8=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","New",sel_getUid("newDocument:"),"N");
objj_msgSend(_8,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7,"pathForResource:","CPApplication/New.png"),CGSizeMake(16,16)));
objj_msgSend(_8,"setAlternateImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7,"pathForResource:","CPApplication/NewHighlighted.png"),CGSizeMake(16,16)));
objj_msgSend(_mainMenu,"addItem:",_8);
var _9=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Open",sel_getUid("openDocument:"),"O");
objj_msgSend(_9,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7,"pathForResource:","CPApplication/Open.png"),CGSizeMake(16,16)));
objj_msgSend(_9,"setAlternateImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7,"pathForResource:","CPApplication/OpenHighlighted.png"),CGSizeMake(16,16)));
objj_msgSend(_mainMenu,"addItem:",_9);
var _a=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","Save"),_b=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Save",sel_getUid("saveDocument:"),nil);
objj_msgSend(_b,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7,"pathForResource:","CPApplication/Save.png"),CGSizeMake(16,16)));
objj_msgSend(_b,"setAlternateImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7,"pathForResource:","CPApplication/SaveHighlighted.png"),CGSizeMake(16,16)));
objj_msgSend(_a,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Save",sel_getUid("saveDocument:"),"S"));
objj_msgSend(_a,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Save As",sel_getUid("saveDocumentAs:"),nil));
objj_msgSend(_b,"setSubmenu:",_a);
objj_msgSend(_mainMenu,"addItem:",_b);
var _c=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Edit",nil,nil),_d=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","Edit"),_e=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Undo",sel_getUid("undo:"),CPUndoKeyEquivalent),_f=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Redo",sel_getUid("redo:"),CPRedoKeyEquivalent);
objj_msgSend(_e,"setKeyEquivalentModifierMask:",CPUndoKeyEquivalentModifierMask);
objj_msgSend(_f,"setKeyEquivalentModifierMask:",CPRedoKeyEquivalentModifierMask);
objj_msgSend(_d,"addItem:",_e);
objj_msgSend(_d,"addItem:",_f);
objj_msgSend(_d,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Cut",sel_getUid("cut:"),"X")),objj_msgSend(_d,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Copy",sel_getUid("copy:"),"C")),objj_msgSend(_d,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Paste",sel_getUid("paste:"),"V"));
objj_msgSend(_c,"setSubmenu:",_d);
objj_msgSend(_c,"setHidden:",YES);
objj_msgSend(_mainMenu,"addItem:",_c);
objj_msgSend(_mainMenu,"addItem:",objj_msgSend(CPMenuItem,"separatorItem"));
}
return _5;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_10,_11,_12){
with(_10){
if(_delegate==_12){
return;
}
var _13=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_delegate){
objj_msgSend(_13,"removeObserver:name:object:",_delegate,CPApplicationWillFinishLaunchingNotification,_10);
objj_msgSend(_13,"removeObserver:name:object:",_delegate,CPApplicationDidFinishLaunchingNotification,_10);
}
_delegate=_12;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("applicationWillFinishLaunching:"))){
objj_msgSend(_13,"addObserver:selector:name:object:",_delegate,sel_getUid("applicationWillFinishLaunching:"),CPApplicationWillFinishLaunchingNotification,_10);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("applicationDidFinishLaunching:"))){
objj_msgSend(_13,"addObserver:selector:name:object:",_delegate,sel_getUid("applicationDidFinishLaunching:"),CPApplicationDidFinishLaunchingNotification,_10);
}
}
}),new objj_method(sel_getUid("delegate"),function(_14,_15){
with(_14){
return _delegate;
}
}),new objj_method(sel_getUid("finishLaunching"),function(_16,_17){
with(_16){
var _18=objj_msgSend(CPBundle,"mainBundle"),_19=objj_msgSend(_18,"objectForInfoDictionaryKey:","CPBundleDocumentTypes");
if(objj_msgSend(_19,"count")>0){
_documentController=objj_msgSend(CPDocumentController,"sharedDocumentController");
}
var _1a=objj_msgSend(_18,"objectForInfoDictionaryKey:","CPApplicationDelegateClass");
if(_1a){
var _1b=objj_getClass(_1a);
if(_1b){
if(objj_msgSend(_documentController,"class")==_1b){
objj_msgSend(_16,"setDelegate:",_documentController);
}else{
objj_msgSend(_16,"setDelegate:",objj_msgSend(objj_msgSend(_1b,"alloc"),"init"));
}
}
}
var _1c=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_1c,"postNotificationName:object:",CPApplicationWillFinishLaunchingNotification,_16);
if(_documentController){
objj_msgSend(_documentController,"newDocument:",_16);
}
objj_msgSend(_1c,"postNotificationName:object:",CPApplicationDidFinishLaunchingNotification,_16);
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("run"),function(_1d,_1e){
with(_1d){
objj_msgSend(_1d,"finishLaunching");
}
}),new objj_method(sel_getUid("runModalForWindow:"),function(_1f,_20,_21){
with(_1f){
objj_msgSend(_1f,"runModalSession:",objj_msgSend(_1f,"beginModalSessionForWindow:",_21));
}
}),new objj_method(sel_getUid("stopModalWithCode:"),function(_22,_23,_24){
with(_22){
if(!_currentSession){
return;
}
_currentSession._state=_24;
_currentSession=_currentSession._previous;
objj_msgSend(_22,"_removeRunModalLoop");
}
}),new objj_method(sel_getUid("_removeRunModalLoop"),function(_25,_26){
with(_25){
var _27=_eventListeners.length;
while(_27--){
if(_eventListeners[_27]._callback===_28){
_eventListeners.splice(_27,1);
return;
}
}
}
}),new objj_method(sel_getUid("stopModal"),function(_29,_2a){
with(_29){
objj_msgSend(_29,"stopModalWithCode:",CPRunStoppedResponse);
}
}),new objj_method(sel_getUid("abortModal"),function(_2b,_2c){
with(_2b){
objj_msgSend(_2b,"stopModalWithCode:",CPRunAbortedResponse);
}
}),new objj_method(sel_getUid("beginModalSessionForWindow:"),function(_2d,_2e,_2f){
with(_2d){
return _30(_2f,0);
}
}),new objj_method(sel_getUid("runModalSession:"),function(_31,_32,_33){
with(_31){
_33._previous=_currentSession;
_currentSession=_33;
var _34=_33._window;
objj_msgSend(_34,"center");
objj_msgSend(_34,"makeKeyAndOrderFront:",_31);
objj_msgSend(CPApp,"setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:",_28,CPAnyEventMask,nil,0,NO);
}
}),new objj_method(sel_getUid("modalWindow"),function(_35,_36){
with(_35){
if(!_currentSession){
return nil;
}
return _currentSession._window;
}
}),new objj_method(sel_getUid("_handleKeyEquivalent:"),function(_37,_38,_39){
with(_37){
if(objj_msgSend(_mainMenu,"performKeyEquivalent:",_39)){
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("sendEvent:"),function(_3a,_3b,_3c){
with(_3a){
if(objj_msgSend(_3c,"type")==CPKeyDown&&objj_msgSend(_3c,"modifierFlags")&(CPCommandKeyMask|CPControlKeyMask)&&objj_msgSend(objj_msgSend(_3c,"characters"),"length")>0&&objj_msgSend(_3a,"_handleKeyEquivalent:",_3c)){
return;
}
if(_eventListeners.length){
if(_eventListeners[_eventListeners.length-1]._mask&(1<<objj_msgSend(_3c,"type"))){
_eventListeners.pop()._callback(_3c);
}
return;
}
objj_msgSend(objj_msgSend(_3c,"window"),"sendEvent:",_3c);
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_3d,_3e,_3f){
with(_3d){
if(objj_msgSend(_delegate,"respondsToSelector:",_3f)){
objj_msgSend(_delegate,"performSelector:",_3f);
}else{
objj_msgSendSuper({receiver:_3d,super_class:objj_getClass("CPResponder")},"doCommandBySelector:",_3f);
}
}
}),new objj_method(sel_getUid("keyWindow"),function(_40,_41){
with(_40){
return _keyWindow;
}
}),new objj_method(sel_getUid("mainWindow"),function(_42,_43){
with(_42){
return _mainWindow;
}
}),new objj_method(sel_getUid("windowWithWindowNumber:"),function(_44,_45,_46){
with(_44){
return _windows[_46];
}
}),new objj_method(sel_getUid("windows"),function(_47,_48){
with(_47){
return _windows;
}
}),new objj_method(sel_getUid("mainMenu"),function(_49,_4a){
with(_49){
return _mainMenu;
}
}),new objj_method(sel_getUid("setMainMenu:"),function(_4b,_4c,_4d){
with(_4b){
_mainMenu=_4d;
}
}),new objj_method(sel_getUid("orderFrontColorPanel:"),function(_4e,_4f,_50){
with(_4e){
objj_msgSend(objj_msgSend(CPColorPanel,"sharedColorPanel"),"orderFront:",_4e);
}
}),new objj_method(sel_getUid("orderFrontStandardAboutPanel:"),function(_51,_52,_53){
with(_51){
objj_msgSend(_51,"orderFrontStandardAboutPanelWithOptions:",nil);
}
}),new objj_method(sel_getUid("orderFrontStandardAboutPanelWithOptions:"),function(_54,_55,_56){
with(_54){
}
}),new objj_method(sel_getUid("tryToPerform:with:"),function(_57,_58,_59,_5a){
with(_57){
if(!_59){
return NO;
}
if(objj_msgSendSuper({receiver:_57,super_class:objj_getClass("CPResponder")},"tryToPerform:with:",_59,_5a)){
return YES;
}
if(objj_msgSend(_delegate,"respondsToSelector:",_59)){
objj_msgSend(_delegate,"performSelector:withObject:",_59,_5a);
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("sendAction:to:from:"),function(_5b,_5c,_5d,_5e,_5f){
with(_5b){
var _60=objj_msgSend(_5b,"targetForAction:to:from:",_5d,_5e,_5f);
if(!_60){
return NO;
}
objj_msgSend(_60,"performSelector:withObject:",_5d,_5f);
return YES;
}
}),new objj_method(sel_getUid("targetForAction:to:from:"),function(_61,_62,_63,_64,_65){
with(_61){
if(!_63){
return nil;
}
if(_64){
return _64;
}
return objj_msgSend(_61,"targetForAction:",_63);
}
}),new objj_method(sel_getUid("_targetForWindow:action:"),function(_66,_67,_68,_69){
with(_66){
var _6a=objj_msgSend(_68,"firstResponder"),_6b=YES;
while(_6a){
if(objj_msgSend(_6a,"respondsToSelector:",_69)){
return _6a;
}
if(_6a==_68){
_6b=NO;
}
_6a=objj_msgSend(_6a,"nextResponder");
}
if(_6b&&objj_msgSend(_68,"respondsToSelector:",_69)){
return _68;
}
var _6c=objj_msgSend(_68,"delegate");
if(objj_msgSend(_6c,"respondsToSelector:",_69)){
return _6c;
}
var _6d=objj_msgSend(_68,"windowController");
if(objj_msgSend(_6d,"respondsToSelector:",_69)){
return _6d;
}
var _6e=objj_msgSend(_6d,"document");
if(_6e!=_6c&&objj_msgSend(_6e,"respondsToSelector:",_69)){
return _6e;
}
return nil;
}
}),new objj_method(sel_getUid("targetForAction:"),function(_6f,_70,_71){
with(_6f){
if(!_71){
return nil;
}
var _72=objj_msgSend(_6f,"_targetForWindow:action:",objj_msgSend(_6f,"keyWindow"),_71);
if(_72){
return _72;
}
_72=objj_msgSend(_6f,"_targetForWindow:action:",objj_msgSend(_6f,"mainWindow"),_71);
if(_72){
return _72;
}
if(objj_msgSend(_6f,"respondsToSelector:",_71)){
return _6f;
}
if(objj_msgSend(_delegate,"respondsToSelector:",_71)){
return _delegate;
}
if(objj_msgSend(_documentController,"respondsToSelector:",_71)){
return _documentController;
}
return nil;
}
}),new objj_method(sel_getUid("setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:"),function(_73,_74,_75,_76,_77,_78,_79){
with(_73){
_eventListeners.push(_7a(_76,_75));
if(_eventListeners.length==3){
objj_debug_print_backtrace();
}
}
}),new objj_method(sel_getUid("setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:"),function(_7b,_7c,_7d,_7e,_7f,_80,_81,_82){
with(_7b){
_eventListeners.push(_7a(_7f,function(_83){
objj_msgSend(_7d,_7e,_83);
}));
}
}),new objj_method(sel_getUid("beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:"),function(_84,_85,_86,_87,_88,_89,_8a){
with(_84){
objj_msgSend(_87,"_attachSheet:modalDelegate:didEndSelector:contextInfo:",_86,_88,_89,_8a);
}
}),new objj_method(sel_getUid("arguments"),function(_8b,_8c){
with(_8b){
if(_fullArgsString!=window.location.hash){
objj_msgSend(_8b,"_reloadArguments");
}
return _args;
}
}),new objj_method(sel_getUid("setArguments:"),function(_8d,_8e,_8f){
with(_8d){
if(!_8f||_8f.length==0){
_args=[];
window.location.hash="#";
return;
}
if(objj_msgSend(_8f,"class")!=CPArray){
_8f=objj_msgSend(CPArray,"arrayWithObject:",_8f);
}
_args=_8f;
var _90=objj_msgSend(_args,"copy");
for(var i=0,_92=_90.length;i<_92;i++){
_90[i]=encodeURIComponent(_90[i]);
}
var _93=objj_msgSend(_90,"componentsJoinedByString:","/");
window.location.hash="#"+_93;
}
}),new objj_method(sel_getUid("_reloadArguments"),function(_94,_95){
with(_94){
_fullArgsString=window.location.hash;
var _96=_fullArgsString.replace("#","").split("/").slice(0);
for(var i=0,_98=_96.length;i<_98;i++){
_96[i]=decodeURIComponent(_96[i]);
}
_args=_96;
}
}),new objj_method(sel_getUid("namedArguments"),function(_99,_9a){
with(_99){
return _namedArgs;
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("sharedApplication"),function(_9b,_9c){
with(_9b){
if(!CPApp){
CPApp=objj_msgSend(objj_msgSend(CPApplication,"alloc"),"init");
}
return CPApp;
}
})]);
var _30=function(_9d,_9e){
return {_window:_9d,_state:CPRunContinuesResponse,_previous:nil};
};
var _7a=function(_9f,_a0){
return {_mask:_9f,_callback:_a0};
};
var _28=function(_a1){
objj_msgSend(CPApp,"setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:",_28,CPAnyEventMask,nil,0,NO);
var _a2=objj_msgSend(_a1,"window"),_a3=CPApp._currentSession;
if(_a2==_a3._window||objj_msgSend(_a2,"worksWhenModal")){
objj_msgSend(_a2,"sendEvent:",_a1);
}
};
CPApplicationMain=function(_a4,_a5){
var _a6=objj_msgSend(CPBundle,"mainBundle"),_a7=objj_msgSend(_a6,"principalClass");
if(!_a7){
_a7=objj_msgSend(CPApplication,"class");
}
objj_msgSend(_a7,"sharedApplication");
if(!_a4&&!_a5){
var _a4=objj_msgSend(CPApp,"arguments"),_a8=window.location.search.substring(1).split("&");
_a5=objj_msgSend(CPDictionary,"dictionary");
if(objj_msgSend(_a4,"containsObject:","debug")){
CPLogRegister(CPLogPopup);
}
for(var i=0;i<_a8.length;i++){
var _aa=_a8[i].indexOf("=");
if(_aa==-1){
objj_msgSend(_a5,"setObject:forKey:","",_a8[i]);
}else{
objj_msgSend(_a5,"setObject:forKey:",_a8[i].substring(_aa+1),_a8[i].substring(0,_aa));
}
}
}
CPApp._args=_a4;
CPApp._namedArgs=_a5;
objj_msgSend(_CPAppBootstrapper,"performActions");
};
var _ab=nil;
var _3=objj_allocateClassPair(CPObject,"_CPAppBootstrapper"),_4=_3.isa;
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("actions"),function(_ac,_ad){
with(_ac){
return [sel_getUid("loadDefaultTheme"),sel_getUid("loadMainCibFile")];
}
}),new objj_method(sel_getUid("performActions"),function(_ae,_af){
with(_ae){
if(!_ab){
_ab=objj_msgSend(_ae,"actions");
}
while(_ab.length){
var _b0=_ab.shift();
if(objj_msgSend(_ae,_b0)){
return;
}
}
objj_msgSend(CPApp,"run");
}
}),new objj_method(sel_getUid("loadDefaultTheme"),function(_b1,_b2){
with(_b1){
var _b3=objj_msgSend(objj_msgSend(CPThemeBlend,"alloc"),"initWithContentsOfURL:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPApplication,"class")),"pathForResource:","Aristo.blend"));
objj_msgSend(_b3,"loadWithDelegate:",_b1);
return YES;
}
}),new objj_method(sel_getUid("blendDidFinishLoading:"),function(_b4,_b5,_b6){
with(_b4){
objj_msgSend(CPTheme,"setDefaultTheme:",objj_msgSend(CPTheme,"themeNamed:","Aristo"));
objj_msgSend(_b4,"performActions");
}
}),new objj_method(sel_getUid("loadMainCibFile"),function(_b7,_b8){
with(_b7){
var _b9=objj_msgSend(CPBundle,"mainBundle"),_ba=objj_msgSend(_b9,"objectForInfoDictionaryKey:",_1)||objj_msgSend(_b9,"objectForInfoDictionaryKey:",_2);
if(_ba){
objj_msgSend(_b9,"loadCibFile:externalNameTable:loadDelegate:",_ba,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CPApp,CPCibOwner),_b7);
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("cibDidFinishLoading:"),function(_bb,_bc,_bd){
with(_bb){
objj_msgSend(_bb,"performActions");
}
})]);
p;14;CPBezierPath.jI;26;AppKit/CPGraphicsContext.jI;21;Foundation/CPObject.jc;4497;
var _1=1;
var _2=objj_allocateClassPair(CPObject,"CPBezierPath"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_path"),new objj_ivar("_lineWidth")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
if(_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPObject")},"init")){
_path=CGPathCreateMutable();
_lineWidth=objj_msgSend(objj_msgSend(_4,"class"),"defaultLineWidth");
}
return _4;
}
}),new objj_method(sel_getUid("moveToPoint:"),function(_6,_7,_8){
with(_6){
CGPathMoveToPoint(_path,nil,_8.x,_8.y);
}
}),new objj_method(sel_getUid("lineToPoint:"),function(_9,_a,_b){
with(_9){
CGPathAddLineToPoint(_path,nil,_b.x,_b.y);
}
}),new objj_method(sel_getUid("curveToPoint:controlPoint1:controlPoint2:"),function(_c,_d,_e,_f,_10){
with(_c){
CGPathAddCurveToPoint(_path,nil,_f.x,_f.y,_10.x,_10.y,_e.x,_e.y);
}
}),new objj_method(sel_getUid("closePath"),function(_11,_12){
with(_11){
CGPathCloseSubpath(_path);
}
}),new objj_method(sel_getUid("stroke"),function(_13,_14){
with(_13){
var ctx=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextBeginPath(ctx);
CGContextAddPath(ctx,_path);
CGContextSetLineWidth(ctx,objj_msgSend(_13,"lineWidth"));
CGContextClosePath(ctx);
CGContextStrokePath(ctx);
}
}),new objj_method(sel_getUid("fill"),function(_16,_17){
with(_16){
var ctx=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextBeginPath(ctx);
CGContextAddPath(ctx,_path);
CGContextSetLineWidth(ctx,objj_msgSend(_16,"lineWidth"));
CGContextClosePath(ctx);
CGContextFillPath(ctx);
}
}),new objj_method(sel_getUid("lineWidth"),function(_19,_1a){
with(_19){
return _lineWidth;
}
}),new objj_method(sel_getUid("setLineWidth:"),function(_1b,_1c,_1d){
with(_1b){
_lineWidth=_1d;
}
}),new objj_method(sel_getUid("elementCount"),function(_1e,_1f){
with(_1e){
return _path.count;
}
}),new objj_method(sel_getUid("isEmpty"),function(_20,_21){
with(_20){
return CGPathIsEmpty(_path);
}
}),new objj_method(sel_getUid("currentPoint"),function(_22,_23){
with(_22){
return CGPathGetCurrentPoint(_path);
}
}),new objj_method(sel_getUid("appendBezierPathWithPoints:count:"),function(_24,_25,_26,_27){
with(_24){
CGPathAddLines(_path,nil,_26,_27);
}
}),new objj_method(sel_getUid("appendBezierPathWithRect:"),function(_28,_29,_2a){
with(_28){
CGPathAddRect(_path,nil,_2a);
}
}),new objj_method(sel_getUid("appendBezierPathWithOvalInRect:"),function(_2b,_2c,_2d){
with(_2b){
CGPathAddPath(_path,nil,CGPathWithEllipseInRect(_2d));
}
}),new objj_method(sel_getUid("appendBezierPathWithRoundedRect:xRadius:yRadius:"),function(_2e,_2f,_30,_31,_32){
with(_2e){
CGPathAddPath(_path,nil,CGPathWithRoundedRectangleInRect(_30,_31,_32,YES,YES,YES,YES));
}
}),new objj_method(sel_getUid("appendBezierPath:"),function(_33,_34,_35){
with(_33){
CGPathAddPath(_path,nil,_35._path);
}
}),new objj_method(sel_getUid("removeAllPoints"),function(_36,_37){
with(_36){
_path=CGPathCreateMutable();
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("bezierPath"),function(_38,_39){
with(_38){
return objj_msgSend(objj_msgSend(objj_msgSend(_38,"class"),"alloc"),"init");
}
}),new objj_method(sel_getUid("bezierPathWithOvalInRect:"),function(_3a,_3b,_3c){
with(_3a){
var _3d=objj_msgSend(objj_msgSend(_3a,"class"),"bezierPath");
objj_msgSend(_3d,"appendBezierPathWithOvalInRect:",_3c);
return _3d;
}
}),new objj_method(sel_getUid("bezierPathWithRect:"),function(_3e,_3f,_40){
with(_3e){
var _41=objj_msgSend(objj_msgSend(_3e,"class"),"bezierPath");
objj_msgSend(_41,"appendBezierPathWithRect:",_40);
return _41;
}
}),new objj_method(sel_getUid("defaultLineWidth"),function(_42,_43){
with(_42){
return _1;
}
}),new objj_method(sel_getUid("setDefaultLineWidth:"),function(_44,_45,_46){
with(_44){
_1=_46;
}
}),new objj_method(sel_getUid("fillRect:"),function(_47,_48,_49){
with(_47){
objj_msgSend(objj_msgSend(objj_msgSend(_47,"class"),"bezierPathWithRect:",_49),"fill");
}
}),new objj_method(sel_getUid("strokeRect:"),function(_4a,_4b,_4c){
with(_4a){
objj_msgSend(objj_msgSend(objj_msgSend(_4a,"class"),"bezierPathWithRect:",_4c),"stroke");
}
}),new objj_method(sel_getUid("strokeLineFromPoint:toPoint:"),function(_4d,_4e,_4f,_50){
with(_4d){
var _51=objj_msgSend(objj_msgSend(_4d,"class"),"bezierPath");
objj_msgSend(_51,"moveToPoint:",_4f);
objj_msgSend(_51,"lineToPoint:",_50);
objj_msgSend(_51,"stroke");
}
})]);
p;10;CPButton.ji;21;_CPImageAndTextView.ji;12;CGGeometry.ji;11;CPControl.jc;15891;
CPScaleProportionally=0;
CPScaleToFit=1;
CPScaleNone=2;
CPNoImage=0;
CPImageOnly=1;
CPImageLeft=2;
CPImageRight=3;
CPImageBelow=4;
CPImageAbove=5;
CPImageOverlaps=6;
CPOnState=1;
CPOffState=0;
CPMixedState=-1;
CPRoundedBezelStyle=1;
CPRegularSquareBezelStyle=2;
CPThickSquareBezelStyle=3;
CPThickerSquareBezelStyle=4;
CPDisclosureBezelStyle=5;
CPShadowlessSquareBezelStyle=6;
CPCircularBezelStyle=7;
CPTexturedSquareBezelStyle=8;
CPHelpButtonBezelStyle=9;
CPSmallSquareBezelStyle=10;
CPTexturedRoundedBezelStyle=11;
CPRoundRectBezelStyle=12;
CPRecessedBezelStyle=13;
CPRoundedDisclosureBezelStyle=14;
CPHUDBezelStyle=-1;
CPMomentaryLightButton=0;
CPPushOnPushOffButton=1;
CPToggleButton=2;
CPSwitchButton=3;
CPRadioButton=4;
CPMomentaryChangeButton=5;
CPOnOffButton=6;
CPMomentaryPushInButton=7;
CPMomentaryPushButton=0;
CPMomentaryLight=7;
CPNoButtonMask=0;
CPContentsButtonMask=1;
CPPushInButtonMask=2;
CPGrayButtonMask=4;
CPBackgroundButtonMask=8;
CPNoCellMask=CPNoButtonMask;
CPContentsCellMask=CPContentsButtonMask;
CPPushInCellMask=CPPushInButtonMask;
CPChangeGrayCellMask=CPGrayButtonMask;
CPChangeBackgroundCellMask=CPBackgroundButtonMask;
CPButtonStateMixed=CPThemeState("mixed");
var _1=objj_allocateClassPair(CPControl,"CPButton"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_allowsMixedState"),new objj_ivar("_title"),new objj_ivar("_alternateTitle"),new objj_ivar("_image"),new objj_ivar("_alternateImage"),new objj_ivar("_showsStateBy"),new objj_ivar("_highlightsBy"),new objj_ivar("_imageDimsWhenDisabled"),new objj_ivar("_bezelStyle"),new objj_ivar("_controlSize")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPControl")},"initWithFrame:",_5);
if(_3){
objj_msgSend(_3,"setValue:forThemeAttribute:",CPCenterTextAlignment,"alignment");
objj_msgSend(_3,"setValue:forThemeAttribute:",CPCenterVerticalTextAlignment,"vertical-alignment");
objj_msgSend(_3,"setValue:forThemeAttribute:",CPImageLeft,"image-position");
objj_msgSend(_3,"setValue:forThemeAttribute:",CPScaleNone,"image-scaling");
_controlSize=CPRegularControlSize;
objj_msgSend(_3,"setBordered:",YES);
}
return _3;
}
}),new objj_method(sel_getUid("allowsMixedState"),function(_6,_7){
with(_6){
return _allowsMixedState;
}
}),new objj_method(sel_getUid("setAllowsMixedState:"),function(_8,_9,_a){
with(_8){
_a=!!_a;
if(_allowsMixedState===_a){
return;
}
_allowsMixedState=_a;
if(!_allowsMixedState){
objj_msgSend(_8,"unsetThemeState:",CPButtonStateMixed);
}
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_b,_c,_d){
with(_b){
if(!_d||_d===""||(objj_msgSend(_d,"intValue")===0)){
_d=CPOffState;
}else{
if(!objj_msgSend(_d,"isKindOfClass:",objj_msgSend(CPNumber,"class"))){
_d=CPOnState;
}else{
if(_d>CPOnState){
_d=CPOnState;
}else{
if(_d<CPOffState){
if(objj_msgSend(_b,"allowsMixedState")){
_d=CPMixedState;
}else{
_d=CPOnState;
}
}
}
}
}
objj_msgSendSuper({receiver:_b,super_class:objj_getClass("CPControl")},"setObjectValue:",_d);
switch(objj_msgSend(_b,"objectValue")){
case CPMixedState:
objj_msgSend(_b,"unsetThemeState:",CPThemeStateSelected);
objj_msgSend(_b,"setThemeState:",CPButtonStateMixed);
break;
case CPOnState:
objj_msgSend(_b,"unsetThemeState:",CPButtonStateMixed);
objj_msgSend(_b,"setThemeState:",CPThemeStateSelected);
break;
case CPOffState:
objj_msgSend(_b,"unsetThemeState:",CPThemeStateSelected|CPButtonStateMixed);
}
}
}),new objj_method(sel_getUid("nextState"),function(_e,_f){
with(_e){
if(objj_msgSend(_e,"allowsMixedState")){
var _10=objj_msgSend(_e,"state");
return _10-((_10===-1)?-2:1);
}
return 1-objj_msgSend(_e,"state");
}
}),new objj_method(sel_getUid("setNextState"),function(_11,_12){
with(_11){
objj_msgSend(_11,"setState:",objj_msgSend(_11,"nextState"));
}
}),new objj_method(sel_getUid("setState:"),function(_13,_14,_15){
with(_13){
objj_msgSend(_13,"setIntValue:",_15);
}
}),new objj_method(sel_getUid("state"),function(_16,_17){
with(_16){
return objj_msgSend(_16,"intValue");
}
}),new objj_method(sel_getUid("setTitle:"),function(_18,_19,_1a){
with(_18){
if(_title===_1a){
return;
}
_title=_1a;
objj_msgSend(_18,"setNeedsLayout");
objj_msgSend(_18,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("title"),function(_1b,_1c){
with(_1b){
return _title;
}
}),new objj_method(sel_getUid("setAlternateTitle:"),function(_1d,_1e,_1f){
with(_1d){
if(_alternateTitle===_1f){
return;
}
_alternateTitle=_1f;
objj_msgSend(_1d,"setNeedsLayout");
objj_msgSend(_1d,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("alternateTitle"),function(_20,_21){
with(_20){
return _alternateTitle;
}
}),new objj_method(sel_getUid("setImage:"),function(_22,_23,_24){
with(_22){
if(_image===_24){
return;
}
_image=_24;
objj_msgSend(_22,"setNeedsLayout");
objj_msgSend(_22,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("image"),function(_25,_26){
with(_25){
return _image;
}
}),new objj_method(sel_getUid("setAlternateImage:"),function(_27,_28,_29){
with(_27){
if(_alternateImage===_29){
return;
}
_alternateImage=_29;
objj_msgSend(_27,"setNeedsLayout");
objj_msgSend(_27,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("alternateImage"),function(_2a,_2b){
with(_2a){
return _alternateImage;
}
}),new objj_method(sel_getUid("setShowsStateBy:"),function(_2c,_2d,_2e){
with(_2c){
if(_showsStateBy===_2e){
return;
}
_showsStateBy=_2e;
objj_msgSend(_2c,"setNeedsDisplay:",YES);
objj_msgSend(_2c,"setNeedsLayout");
}
}),new objj_method(sel_getUid("showsStateBy"),function(_2f,_30){
with(_2f){
return _showsStateBy;
}
}),new objj_method(sel_getUid("setHighlightsBy:"),function(_31,_32,_33){
with(_31){
if(_highlightsBy===_33){
return;
}
_highlightsBy=_33;
if(objj_msgSend(_31,"hasThemeState:",CPThemeStateHighlighted)){
objj_msgSend(_31,"setNeedsDisplay:",YES);
objj_msgSend(_31,"setNeedsLayout");
}
}
}),new objj_method(sel_getUid("setButtonType:"),function(_34,_35,_36){
with(_34){
switch(_36){
case CPMomentaryLightButton:
objj_msgSend(_34,"setHighlightsBy:",CPChangeBackgroundCellMask);
objj_msgSend(_34,"setShowsStateBy:",CPNoCellMask);
break;
case CPMomentaryPushInButton:
objj_msgSend(_34,"setHighlightsBy:",CPPushInCellMask|CPChangeGrayCellMask);
objj_msgSend(_34,"setShowsStateBy:",CPNoCellMask);
break;
case CPMomentaryChangeButton:
objj_msgSend(_34,"setHighlightsBy:",CPContentsCellMask);
objj_msgSend(_34,"setShowsStateBy:",CPNoCellMask);
break;
case CPPushOnPushOffButton:
objj_msgSend(_34,"setHighlightsBy:",CPPushInCellMask|CPChangeGrayCellMask);
objj_msgSend(_34,"setShowsStateBy:",CPChangeBackgroundCellMask);
break;
case CPOnOffButton:
objj_msgSend(_34,"setHighlightsBy:",CPChangeBackgroundCellMask);
objj_msgSend(_34,"setShowsStateBy:",CPChangeBackgroundCellMask);
break;
case CPToggleButton:
objj_msgSend(_34,"setHighlightsBy:",CPPushInCellMask|CPContentsCellMask);
objj_msgSend(_34,"setShowsStateBy:",CPContentsCellMask);
break;
case CPSwitchButton:
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"The CPSwitchButton type is not supported in Cappuccino, use the CPCheckBox class instead.");
case CPRadioButton:
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"The CPRadioButton type is not supported in Cappuccino, use the CPRadio class instead.");
default:
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Unknown button type.");
}
objj_msgSend(_34,"setImageDimsWhenDisabled:",YES);
}
}),new objj_method(sel_getUid("setImageDimsWhenDisabled:"),function(_37,_38,_39){
with(_37){
_39=!!_39;
if(_imageDimsWhenDisabled===_39){
return;
}
_imageDimsWhenDisabled=_39;
if(_imageDimsWhenDisabled){
objj_msgSend(_37,"setNeedsDisplay:",YES);
objj_msgSend(_37,"setNeedsLayout");
}
}
}),new objj_method(sel_getUid("imageDimsWhenDisabled"),function(_3a,_3b){
with(_3a){
return _imageDimsWhenDisabled;
}
}),new objj_method(sel_getUid("startTrackingAt:"),function(_3c,_3d,_3e){
with(_3c){
objj_msgSend(_3c,"highlight:",YES);
return objj_msgSendSuper({receiver:_3c,super_class:objj_getClass("CPControl")},"startTrackingAt:",_3e);
}
}),new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"),function(_3f,_40,_41,_42,_43){
with(_3f){
objj_msgSend(_3f,"highlight:",NO);
objj_msgSendSuper({receiver:_3f,super_class:objj_getClass("CPControl")},"stopTracking:at:mouseIsUp:",_41,_42,_43);
if(_43&&CGRectContainsPoint(objj_msgSend(_3f,"bounds"),_42)){
objj_msgSend(_3f,"setNextState");
}
}
}),new objj_method(sel_getUid("contentRectForBounds:"),function(_44,_45,_46){
with(_44){
var _47=objj_msgSend(_44,"currentValueForThemeAttribute:","content-inset");
if(((_47).top===0&&(_47).right===0&&(_47).bottom===0&&(_47).left===0)){
return _46;
}
_46.origin.x+=_47.left;
_46.origin.y+=_47.top;
_46.size.width-=_47.left+_47.right;
_46.size.height-=_47.top+_47.bottom;
return _46;
}
}),new objj_method(sel_getUid("bezelRectForBounds:"),function(_48,_49,_4a){
with(_48){
if(!objj_msgSend(_48,"isBordered")){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
var _4b=objj_msgSend(_48,"currentValueForThemeAttribute:","bezel-inset");
if(((_4b).top===0&&(_4b).right===0&&(_4b).bottom===0&&(_4b).left===0)){
return _4a;
}
_4a.origin.x+=_4b.left;
_4a.origin.y+=_4b.top;
_4a.size.width-=_4b.left+_4b.right;
_4a.size.height-=_4b.top+_4b.bottom;
return _4a;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_4c,_4d){
with(_4c){
var _4e=objj_msgSend((objj_msgSend(_4c,"title")||" "),"sizeWithFont:",objj_msgSend(_4c,"currentValueForThemeAttribute:","font")),_4f=objj_msgSend(_4c,"currentValueForThemeAttribute:","content-inset"),_50=objj_msgSend(_4c,"currentValueForThemeAttribute:","min-size"),_51=objj_msgSend(_4c,"currentValueForThemeAttribute:","max-size");
_4e.width=MAX(_4e.width+_4f.left+_4f.right,_50.width);
_4e.height=MAX(_4e.height+_4f.top+_4f.bottom,_50.height);
if(_51.width>=0){
_4e.width=MIN(_4e.width,_51.width);
}
if(_51.height>=0){
_4e.height=MIN(_4e.height,_51.height);
}
objj_msgSend(_4c,"setFrameSize:",_4e);
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_52,_53,_54){
with(_52){
if(_54==="bezel-view"){
return objj_msgSend(_52,"bezelRectForBounds:",objj_msgSend(_52,"bounds"));
}else{
if(_54==="content-view"){
return objj_msgSend(_52,"contentRectForBounds:",objj_msgSend(_52,"bounds"));
}
}
return objj_msgSendSuper({receiver:_52,super_class:objj_getClass("CPControl")},"rectForEphemeralSubviewNamed:",_54);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_55,_56,_57){
with(_55){
if(_57==="bezel-view"){
var _58=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_58,"setHitTests:",NO);
return _58;
}else{
return objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
}
return objj_msgSendSuper({receiver:_55,super_class:objj_getClass("CPControl")},"createEphemeralSubviewNamed:",_57);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_59,_5a){
with(_59){
var _5b=objj_msgSend(_59,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","bezel-view",CPWindowBelow,"content-view");
if(_5b){
objj_msgSend(_5b,"setBackgroundColor:",objj_msgSend(_59,"currentValueForThemeAttribute:","bezel-color"));
}
var _5c=objj_msgSend(_59,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","content-view",CPWindowAbove,"bezel-view");
if(_5c){
objj_msgSend(_5c,"setText:",(objj_msgSend(_59,"hasThemeState:",CPThemeStateHighlighted)&&_alternateTitle)?_alternateTitle:_title);
objj_msgSend(_5c,"setImage:",(objj_msgSend(_59,"hasThemeState:",CPThemeStateHighlighted)&&_alternateImage)?_alternateImage:_image);
objj_msgSend(_5c,"setFont:",objj_msgSend(_59,"currentValueForThemeAttribute:","font"));
objj_msgSend(_5c,"setTextColor:",objj_msgSend(_59,"currentValueForThemeAttribute:","text-color"));
objj_msgSend(_5c,"setAlignment:",objj_msgSend(_59,"currentValueForThemeAttribute:","alignment"));
objj_msgSend(_5c,"setVerticalAlignment:",objj_msgSend(_59,"currentValueForThemeAttribute:","vertical-alignment"));
objj_msgSend(_5c,"setLineBreakMode:",objj_msgSend(_59,"currentValueForThemeAttribute:","line-break-mode"));
objj_msgSend(_5c,"setTextShadowColor:",objj_msgSend(_59,"currentValueForThemeAttribute:","text-shadow-color"));
objj_msgSend(_5c,"setTextShadowOffset:",objj_msgSend(_59,"currentValueForThemeAttribute:","text-shadow-offset"));
objj_msgSend(_5c,"setImagePosition:",objj_msgSend(_59,"currentValueForThemeAttribute:","image-position"));
objj_msgSend(_5c,"setImageScaling:",objj_msgSend(_59,"currentValueForThemeAttribute:","image-scaling"));
}
}
}),new objj_method(sel_getUid("setDefaultButton:"),function(_5d,_5e,_5f){
with(_5d){
if(_5f){
objj_msgSend(_5d,"setThemeState:",CPThemeStateDefault);
}else{
objj_msgSend(_5d,"unsetThemeState:",CPThemeStateDefault);
}
}
}),new objj_method(sel_getUid("setBordered:"),function(_60,_61,_62){
with(_60){
if(_62){
objj_msgSend(_60,"setThemeState:",CPThemeStateBordered);
}else{
objj_msgSend(_60,"unsetThemeState:",CPThemeStateBordered);
}
}
}),new objj_method(sel_getUid("isBordered"),function(_63,_64){
with(_63){
return objj_msgSend(_63,"hasThemeState:",CPThemeStateBordered);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("buttonWithTitle:"),function(_65,_66,_67){
with(_65){
return objj_msgSend(_65,"buttonWithTitle:theme:",_67,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("buttonWithTitle:theme:"),function(_68,_69,_6a,_6b){
with(_68){
var _6c=objj_msgSend(objj_msgSend(_68,"alloc"),"init");
objj_msgSend(_6c,"setTheme:",_6b);
objj_msgSend(_6c,"setTitle:",_6a);
objj_msgSend(_6c,"sizeToFit");
return _6c;
}
}),new objj_method(sel_getUid("themeClass"),function(_6d,_6e){
with(_6d){
return "button";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_6f,_70){
with(_6f){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[{top:(0),right:(0),bottom:(0),left:(0)},{top:(0),right:(0),bottom:(0),left:(0)},nil],["bezel-inset","content-inset","bezel-color"]);
}
})]);
var _1=objj_getClass("CPButton");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPButton\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("setBezelStyle:"),function(_71,_72,_73){
with(_71){
}
}),new objj_method(sel_getUid("bezelStyle"),function(_74,_75){
with(_74){
}
})]);
var _76="CPButtonImageKey",_77="CPButtonAlternateImageKey",_78="CPButtonTitleKey",_79="CPButtonAlternateTitleKey",_7a="CPButtonIsBorderedKey";
var _1=objj_getClass("CPButton");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPButton\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7b,_7c,_7d){
with(_7b){
_7b=objj_msgSendSuper({receiver:_7b,super_class:objj_getClass("CPControl")},"initWithCoder:",_7d);
if(_7b){
_controlSize=CPRegularControlSize;
objj_msgSend(_7b,"setImage:",objj_msgSend(_7d,"decodeObjectForKey:",_76));
objj_msgSend(_7b,"setAlternateImage:",objj_msgSend(_7d,"decodeObjectForKey:",_77));
objj_msgSend(_7b,"setTitle:",objj_msgSend(_7d,"decodeObjectForKey:",_78));
objj_msgSend(_7b,"setAlternateTitle:",objj_msgSend(_7d,"decodeObjectForKey:",_79));
objj_msgSend(_7b,"setNeedsLayout");
objj_msgSend(_7b,"setNeedsDisplay:",YES);
}
return _7b;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_7e,_7f,_80){
with(_7e){
objj_msgSendSuper({receiver:_7e,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_80);
objj_msgSend(_80,"encodeObject:forKey:",_image,_76);
objj_msgSend(_80,"encodeObject:forKey:",_alternateImage,_77);
objj_msgSend(_80,"encodeObject:forKey:",_title,_78);
objj_msgSend(_80,"encodeObject:forKey:",_alternateTitle,_79);
}
})]);
i;12;CPCheckBox.ji;9;CPRadio.jp;13;CPButtonBar.jI;15;AppKit/CPView.jc;1693;
var _1=objj_allocateClassPair(CPControl,"CPButtonBar"),_2=_1.isa;
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_3,_4,_5){
with(_3){
if(_5==="bezel-view"){
return objj_msgSend(_3,"bounds");
}
return objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPControl")},"rectForEphemeralSubviewNamed:",_5);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_6,_7,_8){
with(_6){
if(_8==="bezel-view"){
var _9=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_9,"setHitTests:",NO);
return _9;
}
return objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPControl")},"createEphemeralSubviewNamed:",_8);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_a,_b){
with(_a){
var _c=objj_msgSend(_a,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","bezel-view",CPWindowBelow,"");
if(_c){
objj_msgSend(_c,"setBackgroundColor:",objj_msgSend(_a,"currentValueForThemeAttribute:","bezel-color"));
}
}
}),new objj_method(sel_getUid("addSubview:"),function(_d,_e,_f){
with(_d){
objj_msgSendSuper({receiver:_d,super_class:objj_getClass("CPControl")},"addSubview:",_f);
objj_msgSend(_f,"setAutoresizingMask:",CPViewMinXMargin);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("themeClass"),function(_10,_11){
with(_10){
return "button-bar";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_12,_13){
with(_12){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[nil],["bezel-color"]);
}
})]);
p;12;CPCheckBox.ji;10;CPButton.jc;1040;
var _1=objj_allocateClassPair(CPButton,"CPCheckBox"),_2=_1.isa;
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPButton")},"initWithFrame:",_5);
if(_3){
objj_msgSend(_3,"setHighlightsBy:",CPContentsCellMask);
objj_msgSend(_3,"setShowsStateBy:",CPContentsCellMask);
objj_msgSend(_3,"setImagePosition:",CPImageLeft);
objj_msgSend(_3,"setAlignment:",CPLeftTextAlignment);
objj_msgSend(_3,"setBordered:",YES);
}
return _3;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("checkBoxWithTitle:theme:"),function(_6,_7,_8,_9){
with(_6){
return objj_msgSend(_6,"buttonWithTitle:theme:",_8,_9);
}
}),new objj_method(sel_getUid("checkBoxWithTitle:"),function(_a,_b,_c){
with(_a){
return objj_msgSend(_a,"buttonWithTitle:",_c);
}
}),new objj_method(sel_getUid("themeClass"),function(_d,_e){
with(_d){
return "check-box";
}
})]);
p;7;CPCib.jI;21;Foundation/CPObject.jI;28;Foundation/CPURLConnection.jI;25;Foundation/CPURLRequest.ji;20;_CPCibClassSwapper.ji;20;_CPCibCustomObject.ji;22;_CPCibCustomResource.ji;18;_CPCibCustomView.ji;23;_CPCibKeyedUnarchiver.ji;18;_CPCibObjectData.ji;22;_CPCibWindowTemplate.jc;4170;
CPCibOwner="CPCibOwner",CPCibTopLevelObjects="CPCibTopLevelObjects",CPCibReplacementClasses="CPCibReplacementClasses";
var _1="CPCibObjectDataKey";
var _2=objj_allocateClassPair(CPObject,"CPCib"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_data"),new objj_ivar("_bundle"),new objj_ivar("_awakenCustomResources"),new objj_ivar("_loadDelegate")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("initWithContentsOfURL:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPObject")},"init");
if(_4){
_data=objj_msgSend(CPURLConnection,"sendSynchronousRequest:returningResponse:error:",objj_msgSend(CPURLRequest,"requestWithURL:",_6),nil,nil);
_awakenCustomResources=YES;
}
return _4;
}
}),new objj_method(sel_getUid("initWithContentsOfURL:loadDelegate:"),function(_7,_8,_9,_a){
with(_7){
_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("CPObject")},"init");
if(_7){
objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",objj_msgSend(CPURLRequest,"requestWithURL:",_9),_7);
_awakenCustomResources=YES;
_loadDelegate=_a;
}
return _7;
}
}),new objj_method(sel_getUid("initWithCibNamed:bundle:loadDelegate:"),function(_b,_c,_d,_e,_f){
with(_b){
if(!objj_msgSend(_d,"hasSuffix:",".cib")){
_d=objj_msgSend(_d,"stringByAppendingString:",".cib");
}
_b=objj_msgSend(_b,"initWithContentsOfURL:loadDelegate:",objj_msgSend(_e||objj_msgSend(CPBundle,"mainBundle"),"pathForResource:",_d),_f);
if(_b){
_bundle=_e;
}
return _b;
}
}),new objj_method(sel_getUid("_setAwakenCustomResources:"),function(_10,_11,_12){
with(_10){
_awakenCustomResources=_12;
}
}),new objj_method(sel_getUid("_awakenCustomResources"),function(_13,_14){
with(_13){
return _awakenCustomResources;
}
}),new objj_method(sel_getUid("instantiateCibWithExternalNameTable:"),function(_15,_16,_17){
with(_15){
var _18=_bundle,_19=objj_msgSend(_17,"objectForKey:",CPCibOwner);
if(!_18&&_19){
_18=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_19,"class"));
}
var _1a=objj_msgSend(objj_msgSend(_CPCibKeyedUnarchiver,"alloc"),"initForReadingWithData:bundle:awakenCustomResources:",_data,_18,_awakenCustomResources),_1b=objj_msgSend(_17,"objectForKey:",CPCibReplacementClasses);
if(_1b){
var key=nil,_1d=objj_msgSend(_1b,"keyEnumerator");
while(key=objj_msgSend(_1d,"nextObject")){
objj_msgSend(_1a,"setClass:forClassName:",objj_msgSend(_1b,"objectForKey:",key),key);
}
}
var _1e=objj_msgSend(_1a,"decodeObjectForKey:",_1);
if(!_1e||!objj_msgSend(_1e,"isKindOfClass:",objj_msgSend(_CPCibObjectData,"class"))){
return NO;
}
var _1f=objj_msgSend(_17,"objectForKey:",CPCibTopLevelObjects);
objj_msgSend(_1e,"instantiateWithOwner:topLevelObjects:",_19,_1f);
objj_msgSend(_1e,"establishConnectionsWithOwner:topLevelObjects:",_19,_1f);
objj_msgSend(_1e,"awakeWithOwner:topLevelObjects:",_19,_1f);
var _20;
if((_20=objj_msgSend(_1e,"mainMenu"))!=nil){
objj_msgSend(CPApp,"setMainMenu:",_20);
objj_msgSend(CPMenu,"setMenuBarVisible:",YES);
}
objj_msgSend(_1e,"displayVisibleWindows");
return YES;
}
}),new objj_method(sel_getUid("instantiateCibWithOwner:topLevelObjects:"),function(_21,_22,_23,_24){
with(_21){
return objj_msgSend(_21,"instantiateCibWithExternalNameTable:",objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_23,CPCibOwner,_24,CPCibTopLevelObjects));
}
})]);
var _2=objj_getClass("CPCib");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPCib\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("connection:didReceiveData:"),function(_25,_26,_27,_28){
with(_25){
_data=objj_msgSend(CPData,"dataWithString:",_28);
}
}),new objj_method(sel_getUid("connection:didFailWithError:"),function(_29,_2a,_2b,_2c){
with(_29){
alert("cib: connection failed.");
_loadDelegate=nil;
}
}),new objj_method(sel_getUid("connectionDidFinishLoading:"),function(_2d,_2e,_2f){
with(_2d){
if(objj_msgSend(_loadDelegate,"respondsToSelector:",sel_getUid("cibDidFinishLoading:"))){
objj_msgSend(_loadDelegate,"cibDidFinishLoading:",_2d);
}
_loadDelegate=nil;
}
})]);
p;14;CPCibLoading.jI;21;Foundation/CPBundle.jI;25;Foundation/CPDictionary.jI;21;Foundation/CPString.jc;1850;
var _1="CPCibOwner";
var _2={};
var _3=objj_getClass("CPObject");
if(!_3){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPObject\""));
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("awakeFromCib"),function(_5,_6){
with(_5){
}
})]);
var _3=objj_getClass("CPBundle");
if(!_3){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPBundle\""));
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("loadCibFile:externalNameTable:loadDelegate:"),function(_7,_8,_9,_a,_b){
with(_7){
var _c=objj_msgSend(objj_msgSend(CPCib,"alloc"),"initWithCibNamed:bundle:loadDelegate:",_9,_7,objj_msgSend(_7,"class"));
_2[objj_msgSend(_c,"hash")]={loadDelegate:_b,externalNameTable:_a};
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("loadCibFile:externalNameTable:loadDelegate:"),function(_d,_e,_f,_10,_11){
with(_d){
var cib=objj_msgSend(objj_msgSend(CPCib,"alloc"),"initWithContentsOfURL:loadDelegate:",_f,_d);
_2[objj_msgSend(cib,"hash")]={loadDelegate:_11,externalNameTable:_10};
}
}),new objj_method(sel_getUid("loadCibNamed:owner:loadDelegate:"),function(_13,_14,_15,_16,_17){
with(_13){
var _18=_16?objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_16,"class")):objj_msgSend(CPBundle,"mainBundle"),_19=objj_msgSend(_18,"pathForResource:",_15);
objj_msgSend(_13,"loadCibFile:externalNameTable:loadDelegate:",_19,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_16,_1),_17);
}
}),new objj_method(sel_getUid("cibDidFinishLoading:"),function(_1a,_1b,_1c){
with(_1a){
var _1d=_2[objj_msgSend(_1c,"hash")];
delete _2[objj_msgSend(_1c,"hash")];
objj_msgSend(_1c,"instantiateCibWithExternalNameTable:",_1d.externalNameTable);
objj_msgSend(_1d.loadDelegate,"cibDidFinishLoading:",_1c);
}
})]);
p;12;CPClipView.ji;8;CPView.jc;4242;
var _1=objj_allocateClassPair(CPView,"CPClipView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_documentView")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("setDocumentView:"),function(_3,_4,_5){
with(_3){
if(_documentView==_5){
return;
}
var _6=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_documentView){
objj_msgSend(_6,"removeObserver:name:object:",_3,CPViewFrameDidChangeNotification,_documentView);
objj_msgSend(_6,"removeObserver:name:object:",_3,CPViewBoundsDidChangeNotification,_documentView);
objj_msgSend(_documentView,"removeFromSuperview");
}
_documentView=_5;
if(_documentView){
objj_msgSend(_3,"addSubview:",_documentView);
objj_msgSend(_documentView,"setPostsFrameChangedNotifications:",YES);
objj_msgSend(_documentView,"setPostsBoundsChangedNotifications:",YES);
objj_msgSend(_6,"addObserver:selector:name:object:",_3,sel_getUid("viewFrameChanged:"),CPViewFrameDidChangeNotification,_documentView);
objj_msgSend(_6,"addObserver:selector:name:object:",_3,sel_getUid("viewBoundsChanged:"),CPViewBoundsDidChangeNotification,_documentView);
}
}
}),new objj_method(sel_getUid("documentView"),function(_7,_8){
with(_7){
return _documentView;
}
}),new objj_method(sel_getUid("constrainScrollPoint:"),function(_9,_a,_b){
with(_9){
if(!_documentView){
return {x:0,y:0};
}
var _c=objj_msgSend(_documentView,"frame");
_b.x=MAX(0,MIN(_b.x,MAX((_c.size.width)-(_bounds.size.width),0)));
_b.y=MAX(0,MIN(_b.y,MAX((_c.size.height)-(_bounds.size.height),0)));
return _b;
}
}),new objj_method(sel_getUid("setBoundsOrigin:"),function(_d,_e,_f){
with(_d){
if((_bounds.origin.x==_f.x&&_bounds.origin.y==_f.y)){
return;
}
objj_msgSendSuper({receiver:_d,super_class:objj_getClass("CPView")},"setBoundsOrigin:",_f);
var _10=objj_msgSend(_d,"superview");
if(objj_msgSend(_10,"isKindOfClass:",objj_msgSend(CPScrollView,"class"))){
objj_msgSend(_10,"reflectScrolledClipView:",_d);
}
}
}),new objj_method(sel_getUid("scrollToPoint:"),function(_11,_12,_13){
with(_11){
objj_msgSend(_11,"setBoundsOrigin:",objj_msgSend(_11,"constrainScrollPoint:",_13));
}
}),new objj_method(sel_getUid("viewBoundsChanged:"),function(_14,_15,_16){
with(_14){
objj_msgSend(_14,"_constrainScrollPoint");
}
}),new objj_method(sel_getUid("viewFrameChanged:"),function(_17,_18,_19){
with(_17){
objj_msgSend(_17,"_constrainScrollPoint");
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_1a,_1b,_1c){
with(_1a){
objj_msgSendSuper({receiver:_1a,super_class:objj_getClass("CPView")},"resizeSubviewsWithOldSize:",_1c);
objj_msgSend(_1a,"_constrainScrollPoint");
}
}),new objj_method(sel_getUid("_constrainScrollPoint"),function(_1d,_1e){
with(_1d){
var _1f=objj_msgSend(_1d,"bounds").origin;
objj_msgSend(_1d,"scrollToPoint:",_1f);
if(!CGPointEqualToPoint(_1f,objj_msgSend(_1d,"bounds").origin)){
return;
}
var _20=objj_msgSend(_1d,"superview");
if(objj_msgSend(_20,"isKindOfClass:",objj_msgSend(CPScrollView,"class"))){
objj_msgSend(_20,"reflectScrolledClipView:",_1d);
}
}
}),new objj_method(sel_getUid("autoscroll:"),function(_21,_22,_23){
with(_21){
var _24=objj_msgSend(_21,"bounds"),_25=objj_msgSend(_21,"convertPoint:fromView:",objj_msgSend(_23,"locationInWindow"),nil);
if(CPRectContainsPoint(_24,_25)){
return NO;
}
var _26=CGRectMakeZero();
_26.origin=_25;
_26.size=CPSizeMake(10,10);
return objj_msgSend(_documentView,"scrollRectToVisible:",_26);
}
})]);
var _27="CPScrollViewDocumentView";
var _1=objj_getClass("CPClipView");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPClipView\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_28,_29,_2a){
with(_28){
if(_28=objj_msgSendSuper({receiver:_28,super_class:objj_getClass("CPView")},"initWithCoder:",_2a)){
objj_msgSend(_28,"setDocumentView:",objj_msgSend(_2a,"decodeObjectForKey:",_27));
}
return _28;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_2b,_2c,_2d){
with(_2b){
objj_msgSendSuper({receiver:_2b,super_class:objj_getClass("CPView")},"encodeWithCoder:",_2d);
objj_msgSend(_2d,"encodeObject:forKey:",_documentView,_27);
}
})]);
p;18;CPCollectionView.jI;20;Foundation/CPArray.jI;19;Foundation/CPData.jI;23;Foundation/CPIndexSet.jI;28;Foundation/CPKeyedArchiver.jI;30;Foundation/CPKeyedUnarchiver.jI;15;AppKit/CPView.jc;13723;
var _1=objj_allocateClassPair(CPView,"CPCollectionView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_content"),new objj_ivar("_items"),new objj_ivar("_itemData"),new objj_ivar("_itemPrototype"),new objj_ivar("_itemForDragging"),new objj_ivar("_cachedItems"),new objj_ivar("_maxNumberOfRows"),new objj_ivar("_maxNumberOfColumns"),new objj_ivar("_minItemSize"),new objj_ivar("_maxItemSize"),new objj_ivar("_tileWidth"),new objj_ivar("_isSelectable"),new objj_ivar("_allowsMultipleSelection"),new objj_ivar("_allowsEmptySelection"),new objj_ivar("_selectionIndexes"),new objj_ivar("_itemSize"),new objj_ivar("_horizontalMargin"),new objj_ivar("_verticalMargin"),new objj_ivar("_numberOfRows"),new objj_ivar("_numberOfColumns"),new objj_ivar("_delegate")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPView")},"initWithFrame:",_5);
if(_3){
_items=[];
_content=[];
_cachedItems=[];
_itemSize=CGSizeMakeZero();
_minItemSize=CGSizeMakeZero();
_maxItemSize=CGSizeMakeZero();
_verticalMargin=5;
_tileWidth=-1;
_selectionIndexes=objj_msgSend(CPIndexSet,"indexSet");
_allowsEmptySelection=YES;
_isSelectable=YES;
}
return _3;
}
}),new objj_method(sel_getUid("setItemPrototype:"),function(_6,_7,_8){
with(_6){
_itemData=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_8);
_itemForDragging=_8;
_itemPrototype=_8;
objj_msgSend(_6,"reloadContent");
}
}),new objj_method(sel_getUid("itemPrototype"),function(_9,_a){
with(_9){
return _itemPrototype;
}
}),new objj_method(sel_getUid("newItemForRepresentedObject:"),function(_b,_c,_d){
with(_b){
var _e=nil;
if(_cachedItems.length){
_e=_cachedItems.pop();
}else{
_e=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",_itemData);
}
objj_msgSend(_e,"setRepresentedObject:",_d);
objj_msgSend(objj_msgSend(_e,"view"),"setFrameSize:",_itemSize);
return _e;
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(_f,_10){
with(_f){
return YES;
}
}),new objj_method(sel_getUid("isFirstResponder"),function(_11,_12){
with(_11){
return objj_msgSend(objj_msgSend(_11,"window"),"firstResponder")==_11;
}
}),new objj_method(sel_getUid("setContent:"),function(_13,_14,_15){
with(_13){
if(_content==_15){
return;
}
_content=_15;
objj_msgSend(_13,"reloadContent");
}
}),new objj_method(sel_getUid("content"),function(_16,_17){
with(_16){
return _content;
}
}),new objj_method(sel_getUid("items"),function(_18,_19){
with(_18){
return _items;
}
}),new objj_method(sel_getUid("setSelectable:"),function(_1a,_1b,_1c){
with(_1a){
if(_isSelectable==_1c){
return;
}
_isSelectable=_1c;
if(!_isSelectable){
var _1d=CPNotFound;
while((_1d=objj_msgSend(_selectionIndexes,"indexGreaterThanIndex:",_1d))!=CPNotFound){
objj_msgSend(_items[_1d],"setSelected:",NO);
}
}
}
}),new objj_method(sel_getUid("isSelected"),function(_1e,_1f){
with(_1e){
return _isSelected;
}
}),new objj_method(sel_getUid("setAllowsEmptySelection:"),function(_20,_21,_22){
with(_20){
_allowsEmptySelection=_22;
}
}),new objj_method(sel_getUid("allowsEmptySelection"),function(_23,_24){
with(_23){
return _allowsEmptySelection;
}
}),new objj_method(sel_getUid("setAllowsMultipleSelection:"),function(_25,_26,_27){
with(_25){
_allowsMultipleSelection=_27;
}
}),new objj_method(sel_getUid("allowsMultipleSelection"),function(_28,_29){
with(_28){
return _allowsMultipleSelection;
}
}),new objj_method(sel_getUid("setSelectionIndexes:"),function(_2a,_2b,_2c){
with(_2a){
if(_selectionIndexes==_2c||!_isSelectable){
return;
}
var _2d=CPNotFound;
while((_2d=objj_msgSend(_selectionIndexes,"indexGreaterThanIndex:",_2d))!=CPNotFound){
objj_msgSend(_items[_2d],"setSelected:",NO);
}
_selectionIndexes=_2c;
var _2d=CPNotFound;
while((_2d=objj_msgSend(_selectionIndexes,"indexGreaterThanIndex:",_2d))!=CPNotFound){
objj_msgSend(_items[_2d],"setSelected:",YES);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("collectionViewDidChangeSelection:"))){
objj_msgSend(_delegate,"collectionViewDidChangeSelection:",_2a);
}
}
}),new objj_method(sel_getUid("selectionIndexes"),function(_2e,_2f){
with(_2e){
return _selectionIndexes;
}
}),new objj_method(sel_getUid("reloadContent"),function(_30,_31){
with(_30){
var _32=_items.length;
while(_32--){
objj_msgSend(objj_msgSend(_items[_32],"view"),"removeFromSuperview");
_cachedItems.push(_items[_32]);
}
_items=[];
if(!_itemData||!_content){
return;
}
var _33=0;
_32=_content.length;
for(;_33<_32;++_33){
_items.push(objj_msgSend(_30,"newItemForRepresentedObject:",_content[_33]));
objj_msgSend(_30,"addSubview:",objj_msgSend(_items[_33],"view"));
}
objj_msgSend(_30,"tile");
}
}),new objj_method(sel_getUid("tile"),function(_34,_35){
with(_34){
var _36=CGRectGetWidth(objj_msgSend(_34,"bounds"));
if(!objj_msgSend(_content,"count")||_36==_tileWidth){
return;
}
var _37=CGSizeMakeCopy(_minItemSize);
_numberOfColumns=MAX(1,FLOOR(_36/_37.width));
if(_maxNumberOfColumns>0){
_numberOfColumns=MIN(_maxNumberOfColumns,_numberOfColumns);
}
var _38=_36-_numberOfColumns*_37.width,_39=NO;
if(_38>0&&_37.width<_maxItemSize.width){
_37.width=MIN(_maxItemSize.width,_37.width+FLOOR(_38/_numberOfColumns));
}
if(_maxNumberOfColumns==1&&_37.width<_maxItemSize.width&&_37.width<_36){
_37.width=MIN(_maxItemSize.width,_36);
}
if(!CGSizeEqualToSize(_itemSize,_37)){
_itemSize=_37;
_39=YES;
}
var _3a=0,_3b=_items.length;
if(_maxNumberOfColumns>0&&_maxNumberOfRows>0){
_3b=MIN(_3b,_maxNumberOfColumns*_maxNumberOfRows);
}
_numberOfRows=CEIL(_3b/_numberOfColumns);
_horizontalMargin=FLOOR((_36-_numberOfColumns*_37.width)/(_numberOfColumns+1));
var x=_horizontalMargin,y=-_37.height;
for(;_3a<_3b;++_3a){
if(_3a%_numberOfColumns==0){
x=_horizontalMargin;
y+=_verticalMargin+_37.height;
}
var _3e=objj_msgSend(_items[_3a],"view");
objj_msgSend(_3e,"setFrameOrigin:",CGPointMake(x,y));
if(_39){
objj_msgSend(_3e,"setFrameSize:",_itemSize);
}
x+=_37.width+_horizontalMargin;
}
_tileWidth=_36;
objj_msgSend(_34,"setFrameSize:",CGSizeMake(_36,y+_37.height+_verticalMargin));
_tileWidth=-1;
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_3f,_40,_41){
with(_3f){
objj_msgSend(_3f,"tile");
}
}),new objj_method(sel_getUid("setMaxNumberOfRows:"),function(_42,_43,_44){
with(_42){
if(_maxNumberOfRows==_44){
return;
}
_maxNumberOfRows=_44;
objj_msgSend(_42,"tile");
}
}),new objj_method(sel_getUid("maxNumberOfRows"),function(_45,_46){
with(_45){
return _maxNumberOfRows;
}
}),new objj_method(sel_getUid("setMaxNumberOfColumns:"),function(_47,_48,_49){
with(_47){
if(_maxNumberOfColumns==_49){
return;
}
_maxNumberOfColumns=_49;
objj_msgSend(_47,"tile");
}
}),new objj_method(sel_getUid("maxNumberOfColumns"),function(_4a,_4b){
with(_4a){
return _maxNumberOfColumns;
}
}),new objj_method(sel_getUid("numberOfRows"),function(_4c,_4d){
with(_4c){
return _numberOfRows;
}
}),new objj_method(sel_getUid("numberOfColumns"),function(_4e,_4f){
with(_4e){
return _numberOfColumns;
}
}),new objj_method(sel_getUid("setMinItemSize:"),function(_50,_51,_52){
with(_50){
if(CGSizeEqualToSize(_minItemSize,_52)){
return;
}
_minItemSize=CGSizeMakeCopy(_52);
objj_msgSend(_50,"tile");
}
}),new objj_method(sel_getUid("minItemSize"),function(_53,_54){
with(_53){
return _minItemSize;
}
}),new objj_method(sel_getUid("setMaxItemSize:"),function(_55,_56,_57){
with(_55){
if(CGSizeEqualToSize(_maxItemSize,_57)){
return;
}
_maxItemSize=CGSizeMakeCopy(_57);
objj_msgSend(_55,"tile");
}
}),new objj_method(sel_getUid("maxItemSize"),function(_58,_59){
with(_58){
return _maxItemSize;
}
}),new objj_method(sel_getUid("mouseUp:"),function(_5a,_5b,_5c){
with(_5a){
if(objj_msgSend(_selectionIndexes,"count")&&objj_msgSend(_5c,"clickCount")==2&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"))){
objj_msgSend(_delegate,"collectionView:didDoubleClickOnItemAtIndex:",_5a,objj_msgSend(_selectionIndexes,"firstIndex"));
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_5d,_5e,_5f){
with(_5d){
var _60=objj_msgSend(_5d,"convertPoint:fromView:",objj_msgSend(_5f,"locationInWindow"),nil),row=FLOOR(_60.y/(_itemSize.height+_verticalMargin)),_62=FLOOR(_60.x/(_itemSize.width+_horizontalMargin)),_63=row*_numberOfColumns+_62;
if(_63>=0&&_63<_items.length){
objj_msgSend(_5d,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSetWithIndex:",_63));
}else{
if(_allowsEmptySelection){
objj_msgSend(_5d,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSet"));
}
}
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_64,_65,_66){
with(_64){
if(!objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("collectionView:dragTypesForItemsAtIndexes:"))){
return;
}
if(!objj_msgSend(_selectionIndexes,"count")){
return;
}
var _67=objj_msgSend(_delegate,"collectionView:dragTypesForItemsAtIndexes:",_64,_selectionIndexes);
objj_msgSend(objj_msgSend(CPPasteboard,"pasteboardWithName:",CPDragPboard),"declareTypes:owner:",_67,_64);
var _68=objj_msgSend(_64,"convertPoint:fromView:",objj_msgSend(_66,"locationInWindow"),nil);
objj_msgSend(_itemForDragging,"setRepresentedObject:",_content[objj_msgSend(_selectionIndexes,"firstIndex")]);
var _69=objj_msgSend(_itemForDragging,"view"),_6a=objj_msgSend(_69,"frame");
objj_msgSend(_69,"setFrameSize:",_itemSize);
objj_msgSend(_69,"setAlphaValue:",0.7);
objj_msgSend(_64,"dragView:at:offset:event:pasteboard:source:slideBack:",_69,objj_msgSend(objj_msgSend(_items[objj_msgSend(_selectionIndexes,"firstIndex")],"view"),"frame").origin,CGPointMakeZero(),_66,nil,_64,YES);
}
}),new objj_method(sel_getUid("pasteboard:provideDataForType:"),function(_6b,_6c,_6d,_6e){
with(_6b){
objj_msgSend(_6d,"setData:forType:",objj_msgSend(_delegate,"collectionView:dataForItemsAtIndexes:forType:",_6b,_selectionIndexes,_6e),_6e);
}
}),new objj_method(sel_getUid("setVerticalMargin:"),function(_6f,_70,_71){
with(_6f){
if(_verticalMargin==_71){
return;
}
_verticalMargin=_71;
objj_msgSend(_6f,"tile");
}
}),new objj_method(sel_getUid("verticalMargin"),function(_72,_73){
with(_72){
return _verticalMargin;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_74,_75,_76){
with(_74){
_delegate=_76;
}
}),new objj_method(sel_getUid("delegate"),function(_77,_78){
with(_77){
return _delegate;
}
})]);
var _1=objj_allocateClassPair(CPObject,"CPCollectionViewItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_representedObject"),new objj_ivar("_view"),new objj_ivar("_isSelected")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("setRepresentedObject:"),function(_79,_7a,_7b){
with(_79){
if(_representedObject==_7b){
return;
}
_representedObject=_7b;
objj_msgSend(_view,"setRepresentedObject:",_7b);
}
}),new objj_method(sel_getUid("representedObject"),function(_7c,_7d){
with(_7c){
return _representedObject;
}
}),new objj_method(sel_getUid("setView:"),function(_7e,_7f,_80){
with(_7e){
_view=_80;
}
}),new objj_method(sel_getUid("view"),function(_81,_82){
with(_81){
return _view;
}
}),new objj_method(sel_getUid("setSelected:"),function(_83,_84,_85){
with(_83){
if(_isSelected==_85){
return;
}
_isSelected=_85;
objj_msgSend(_view,"setSelected:",_isSelected);
}
}),new objj_method(sel_getUid("isSelected"),function(_86,_87){
with(_86){
return _isSelected;
}
}),new objj_method(sel_getUid("collectionView"),function(_88,_89){
with(_88){
return objj_msgSend(_view,"superview");
}
})]);
var _8a="CPCollectionViewMinItemSizeKey",_8b="CPCollectionViewMaxItemSizeKey",_8c="CPCollectionViewVerticalMarginKey";
var _1=objj_getClass("CPCollectionView");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPCollectionView\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_8d,_8e,_8f){
with(_8d){
_8d=objj_msgSendSuper({receiver:_8d,super_class:objj_getClass("CPView")},"initWithCoder:",_8f);
if(_8d){
_items=[];
_content=[];
_cachedItems=[];
_itemSize=CGSizeMakeZero();
_minItemSize=objj_msgSend(_8f,"decodeSizeForKey:",_8a);
_maxItemSize=objj_msgSend(_8f,"decodeSizeForKey:",_8b);
_verticalMargin=objj_msgSend(_8f,"decodeSizeForKey:",_8c);
_tileWidth=-1;
_selectionIndexes=objj_msgSend(CPIndexSet,"indexSet");
}
return _8d;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_90,_91,_92){
with(_90){
objj_msgSendSuper({receiver:_90,super_class:objj_getClass("CPView")},"encodeWithCoder:",_92);
objj_msgSend(_92,"encodeSize:forKey:",_minItemSize,_8a);
objj_msgSend(_92,"encodeSize:forKey:",_maxItemSize,_8b);
objj_msgSend(_92,"encodeSize:forKey:",_verticalMargin,_8c);
}
})]);
var _93="CPCollectionViewItemViewKey";
var _1=objj_getClass("CPCollectionViewItem");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPCollectionViewItem\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("copy"),function(_94,_95){
with(_94){
}
})]);
var _93="CPCollectionViewItemViewKey";
var _1=objj_getClass("CPCollectionViewItem");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPCollectionViewItem\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_96,_97,_98){
with(_96){
_96=objj_msgSendSuper({receiver:_96,super_class:objj_getClass("CPObject")},"init");
if(_96){
_view=objj_msgSend(_98,"decodeObjectForKey:",_93);
}
return _96;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_99,_9a,_9b){
with(_99){
objj_msgSend(_9b,"encodeObject:forKey:",_view,_93);
}
})]);
p;9;CPColor.jI;21;Foundation/CPObject.ji;9;CGColor.ji;17;CPCompatibility.ji;9;CPImage.jc;12886;
var _1=0,_2=1,_3=2,_4=3;
var _5=0,_6=1,_7=2;
var _8,_9,_a,_b,_c,_d,_e,_f,_10,_11,_12;
var _13=objj_allocateClassPair(CPObject,"CPColor"),_14=_13.isa;
class_addIvars(_13,[new objj_ivar("_components"),new objj_ivar("_patternImage"),new objj_ivar("_cssString")]);
objj_registerClassPair(_13);
objj_addClassForBundle(_13,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_13,[new objj_method(sel_getUid("_initWithCSSString:"),function(_15,_16,_17){
with(_15){
if(_17.indexOf("rgb")==CPNotFound){
return nil;
}
_15=objj_msgSendSuper({receiver:_15,super_class:objj_getClass("CPObject")},"init");
var _18=_17.indexOf("(");
var _19=_17.substring(_18+1).split(",");
_components=[parseInt(_19[0],10)/255,parseInt(_19[1],10)/255,parseInt(_19[2],10)/255,_19[3]?parseInt(_19[3],10)/255:1];
_cssString=_17;
return _15;
}
}),new objj_method(sel_getUid("_initWithRGBA:"),function(_1a,_1b,_1c){
with(_1a){
_1a=objj_msgSendSuper({receiver:_1a,super_class:objj_getClass("CPObject")},"init");
if(_1a){
_components=_1c;
if(!CPFeatureIsCompatible(CPCSSRGBAFeature)&&_components[3]!=1&&window.Base64&&window.CRC32){
var _1d=[137,80,78,71,13,10,26,10,0,0,0,13,73,72,68,82,0,0,0,1,0,0,0,1,8,3,0,0,0,40,203,52,187,0,0,3,0,80,76,84,69,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,23,137,153,85,0,0,0,1,116,82,78,83,0,64,230,216,102,0,0,0,16,73,68,65,84,120,218,98,96,0,0,0,0,255,255,3,0,0,2,0,1,36,127,36,241,0,0,0,0,73,69,78,68,174,66,96,130,255];
var _1e=41;
var _1f=42;
var _20=43;
var _21=821;
var _22=809;
var _23=822;
var _24=37;
var _25=817;
_1d[_1e]=Math.round(_components[0]*255);
_1d[_1f]=Math.round(_components[1]*255);
_1d[_20]=Math.round(_components[2]*255);
_1d[_21]=Math.round(_components[3]*255);
var _26=integerToBytes(CRC32.getCRC(_1d,_24,4+768),4);
var _27=integerToBytes(CRC32.getCRC(_1d,_25,4+1),4);
for(var i=0;i<4;i++){
_1d[_22+i]=_26[i];
_1d[_23+i]=_27[i];
}
var _29=Base64.encode(_1d);
_cssString="url(\"data:image/png;base64,"+_29+"\")";
}else{
var _2a=CPFeatureIsCompatible(CPCSSRGBAFeature)&&_components[3]!=1;
_cssString=(_2a?"rgba(":"rgb(")+parseInt(_components[0]*255)+", "+parseInt(_components[1]*255)+", "+parseInt(_components[2]*255)+(_2a?(", "+_components[3]):"")+")";
}
}
return _1a;
}
}),new objj_method(sel_getUid("_initWithPatternImage:"),function(_2b,_2c,_2d){
with(_2b){
_2b=objj_msgSendSuper({receiver:_2b,super_class:objj_getClass("CPObject")},"init");
if(_2b){
_patternImage=_2d;
_cssString="url(\""+objj_msgSend(_patternImage,"filename")+"\")";
}
return _2b;
}
}),new objj_method(sel_getUid("patternImage"),function(_2e,_2f){
with(_2e){
return _patternImage;
}
}),new objj_method(sel_getUid("alphaComponent"),function(_30,_31){
with(_30){
return _components[3];
}
}),new objj_method(sel_getUid("blueComponent"),function(_32,_33){
with(_32){
return _components[2];
}
}),new objj_method(sel_getUid("greenComponent"),function(_34,_35){
with(_34){
return _components[1];
}
}),new objj_method(sel_getUid("redComponent"),function(_36,_37){
with(_36){
return _components[0];
}
}),new objj_method(sel_getUid("components"),function(_38,_39){
with(_38){
return _components;
}
}),new objj_method(sel_getUid("colorWithAlphaComponent:"),function(_3a,_3b,_3c){
with(_3a){
var _3d=_components.slice();
_3d[_3d.length-1]=_3c;
return objj_msgSend(objj_msgSend(objj_msgSend(_3a,"class"),"alloc"),"_initWithRGBA:",_3d);
}
}),new objj_method(sel_getUid("hsbComponents"),function(_3e,_3f){
with(_3e){
var red=ROUND(_components[_1]*255),_41=ROUND(_components[_2]*255),_42=ROUND(_components[_3]*255);
var max=MAX(red,_41,_42),min=MIN(red,_41,_42),_45=max-min;
var _46=max/255,_47=(max!=0)?_45/max:0;
var hue;
if(_47==0){
hue=0;
}else{
var rr=(max-red)/_45;
var gr=(max-_41)/_45;
var br=(max-_42)/_45;
if(red==max){
hue=br-gr;
}else{
if(_41==max){
hue=2+rr-br;
}else{
hue=4+gr-rr;
}
}
hue/=6;
if(hue<0){
hue++;
}
}
return [ROUND(hue*360),ROUND(_47*100),ROUND(_46*100)];
}
}),new objj_method(sel_getUid("cssString"),function(_4c,_4d){
with(_4c){
return _cssString;
}
}),new objj_method(sel_getUid("hexString"),function(_4e,_4f){
with(_4e){
return rgbToHex(objj_msgSend(_4e,"redComponent"),objj_msgSend(_4e,"greenComponent"),objj_msgSend(_4e,"blueComponent"));
}
}),new objj_method(sel_getUid("isEqual:"),function(_50,_51,_52){
with(_50){
if(!_52){
return NO;
}
if(_52===_50){
return YES;
}
return objj_msgSend(_52,"isKindOfClass:",CPColor)&&objj_msgSend(_52,"cssString")===objj_msgSend(_50,"cssString");
}
}),new objj_method(sel_getUid("description"),function(_53,_54){
with(_53){
return objj_msgSendSuper({receiver:_53,super_class:objj_getClass("CPObject")},"description")+" "+objj_msgSend(_53,"cssString");
}
})]);
class_addMethods(_14,[new objj_method(sel_getUid("colorWithRed:green:blue:alpha:"),function(_55,_56,red,_58,_59,_5a){
with(_55){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[red,_58,_59,_5a]);
}
}),new objj_method(sel_getUid("colorWithCalibratedRed:green:blue:alpha:"),function(_5b,_5c,red,_5e,_5f,_60){
with(_5b){
return objj_msgSend(_5b,"colorWithRed:green:blue:alpha:",red,_5e,_5f,_60);
}
}),new objj_method(sel_getUid("colorWithWhite:alpha:"),function(_61,_62,_63,_64){
with(_61){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[_63,_63,_63,_64]);
}
}),new objj_method(sel_getUid("colorWithCalibratedWhite:alpha:"),function(_65,_66,_67,_68){
with(_65){
return objj_msgSend(_65,"colorWithWhite:alpha:",_67,_68);
}
}),new objj_method(sel_getUid("colorWithHue:saturation:brightness:"),function(_69,_6a,hue,_6c,_6d){
with(_69){
return objj_msgSend(_69,"colorWithHue:saturation:brightness:alpha:",hue,_6c,_6d,1);
}
}),new objj_method(sel_getUid("colorWithHue:saturation:brightness:alpha:"),function(_6e,_6f,hue,_71,_72,_73){
with(_6e){
if(_71===0){
return objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",_72/100,_73);
}
var f=hue%60,p=(_72*(100-_71))/10000,q=(_72*(6000-_71*f))/600000,t=(_72*(6000-_71*(60-f)))/600000,b=_72/100;
switch(FLOOR(hue/60)){
case 0:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",b,t,p,_73);
case 1:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",q,b,p,_73);
case 2:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",p,b,t,_73);
case 3:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",p,q,b,_73);
case 4:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",t,p,b,_73);
case 5:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",b,p,q,_73);
}
}
}),new objj_method(sel_getUid("colorWithHexString:"),function(_79,_7a,hex){
with(_79){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",hexToRGB(hex));
}
}),new objj_method(sel_getUid("blackColor"),function(_7c,_7d){
with(_7c){
if(!_8){
_8=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0,0,0,1]);
}
return _8;
}
}),new objj_method(sel_getUid("blueColor"),function(_7e,_7f){
with(_7e){
if(!_b){
_b=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0,0,1,1]);
}
return _b;
}
}),new objj_method(sel_getUid("darkGrayColor"),function(_80,_81){
with(_80){
if(!_f){
_f=objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",1/3,1);
}
return _f;
}
}),new objj_method(sel_getUid("grayColor"),function(_82,_83){
with(_82){
if(!_d){
_d=objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",0.5,1);
}
return _d;
}
}),new objj_method(sel_getUid("greenColor"),function(_84,_85){
with(_84){
if(!_a){
_a=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0,1,0,1]);
}
return _a;
}
}),new objj_method(sel_getUid("lightGrayColor"),function(_86,_87){
with(_86){
if(!_e){
_e=objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",2/3,1);
}
return _e;
}
}),new objj_method(sel_getUid("redColor"),function(_88,_89){
with(_88){
if(!_9){
_9=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[1,0,0,1]);
}
return _9;
}
}),new objj_method(sel_getUid("whiteColor"),function(_8a,_8b){
with(_8a){
if(!_10){
_10=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[1,1,1,1]);
}
return _10;
}
}),new objj_method(sel_getUid("yellowColor"),function(_8c,_8d){
with(_8c){
if(!_c){
_c=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[1,1,0,1]);
}
return _c;
}
}),new objj_method(sel_getUid("shadowColor"),function(_8e,_8f){
with(_8e){
if(!_11){
_11=objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0,0,0,1/3]);
}
return _11;
}
}),new objj_method(sel_getUid("clearColor"),function(_90,_91){
with(_90){
if(!_12){
_12=objj_msgSend(_90,"colorWithCalibratedWhite:alpha:",0,0);
}
return _12;
}
}),new objj_method(sel_getUid("colorWithPatternImage:"),function(_92,_93,_94){
with(_92){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithPatternImage:",_94);
}
}),new objj_method(sel_getUid("colorWithCSSString:"),function(_95,_96,_97){
with(_95){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithCSSString:",_97);
}
})]);
var _13=objj_getClass("CPColor");
if(!_13){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPColor\""));
}
var _14=_13.isa;
class_addMethods(_13,[new objj_method(sel_getUid("set"),function(_98,_99){
with(_98){
objj_msgSend(_98,"setFill");
objj_msgSend(_98,"setStroke");
}
}),new objj_method(sel_getUid("setFill"),function(_9a,_9b){
with(_9a){
var ctx=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextSetFillColor(ctx,_9a);
}
}),new objj_method(sel_getUid("setStroke"),function(_9d,_9e){
with(_9d){
var ctx=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextSetStrokeColor(ctx,_9d);
}
})]);
var _a0="CPColorComponentsKey",_a1="CPColorPatternImageKey";
var _13=objj_getClass("CPColor");
if(!_13){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPColor\""));
}
var _14=_13.isa;
class_addMethods(_13,[new objj_method(sel_getUid("initWithCoder:"),function(_a2,_a3,_a4){
with(_a2){
if(objj_msgSend(_a4,"containsValueForKey:",_a1)){
return objj_msgSend(_a2,"_initWithPatternImage:",objj_msgSend(_a4,"decodeObjectForKey:",_a1));
}
return objj_msgSend(_a2,"_initWithRGBA:",objj_msgSend(_a4,"decodeObjectForKey:",_a0));
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_a5,_a6,_a7){
with(_a5){
if(_patternImage){
objj_msgSend(_a7,"encodeObject:forKey:",_patternImage,_a1);
}else{
objj_msgSend(_a7,"encodeObject:forKey:",_components,_a0);
}
}
})]);
var _a8="0123456789ABCDEF";
hexToRGB=function(hex){
if(hex.length==3){
hex=hex.charAt(0)+hex.charAt(0)+hex.charAt(1)+hex.charAt(1)+hex.charAt(2)+hex.charAt(2);
}
if(hex.length!=6){
return null;
}
hex=hex.toUpperCase();
for(var i=0;i<hex.length;i++){
if(_a8.indexOf(hex.charAt(i))==-1){
return null;
}
}
var red=(_a8.indexOf(hex.charAt(0))*16+_a8.indexOf(hex.charAt(1)))/255;
var _ac=(_a8.indexOf(hex.charAt(2))*16+_a8.indexOf(hex.charAt(3)))/255;
var _ad=(_a8.indexOf(hex.charAt(4))*16+_a8.indexOf(hex.charAt(5)))/255;
return [red,_ac,_ad,1];
};
integerToBytes=function(_ae,_af){
if(!_af){
_af=(_ae==0)?1:Math.round((Math.log(_ae)/Math.log(2))/8+0.5);
}
var _b0=new Array(_af);
for(var i=_af-1;i>=0;i--){
_b0[i]=_ae&255;
_ae=_ae>>8;
}
return _b0;
};
rgbToHex=function(r,g,b){
return byteToHex(r)+byteToHex(g)+byteToHex(b);
};
byteToHex=function(n){
if(!n||isNaN(n)){
return "00";
}
n=ROUND(MIN(255,MAX(0,256*n)));
return _a8.charAt((n-n%16)/16)+_a8.charAt(n%16);
};
p;14;CPColorPanel.ji;10;CPButton.ji;10;CPCookie.ji;9;CPPanel.ji;8;CPView.jc;16229;
CPColorPanelColorDidChangeNotification="CPColorPanelColorDidChangeNotification";
var _1=20,_2=32,_3=14,_4=32,_5=12;
var _6=nil,_7=[];
CPWheelColorPickerMode=1;
CPSliderColorPickerMode=2;
CPColorPickerViewWidth=265,CPColorPickerViewHeight=370;
var _8=objj_allocateClassPair(CPPanel,"CPColorPanel"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_toolbar"),new objj_ivar("_swatchView"),new objj_ivar("_previewView"),new objj_ivar("_opacitySlider"),new objj_ivar("_colorPickers"),new objj_ivar("_currentView"),new objj_ivar("_activePicker"),new objj_ivar("_color"),new objj_ivar("_target"),new objj_ivar("_action"),new objj_ivar("_mode")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("init"),function(_a,_b){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPPanel")},"initWithContentRect:styleMask:",CGRectMake(500,50,219,370),(CPTitledWindowMask|CPClosableWindowMask|CPResizableWindowMask));
if(_a){
objj_msgSend(objj_msgSend(_a,"contentView"),"setBackgroundColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",0.95,1));
objj_msgSend(_a,"setTitle:","Color Panel");
objj_msgSend(_a,"setLevel:",CPFloatingWindowLevel);
objj_msgSend(_a,"setFloatingPanel:",YES);
objj_msgSend(_a,"setBecomesKeyOnlyIfNeeded:",YES);
objj_msgSend(_a,"setMinSize:",CGSizeMake(219,342));
objj_msgSend(_a,"setMaxSize:",CGSizeMake(323,537));
}
return _a;
}
}),new objj_method(sel_getUid("setColor:"),function(_c,_d,_e){
with(_c){
_color=_e;
objj_msgSend(_previewView,"setBackgroundColor:",_color);
objj_msgSend(CPApp,"sendAction:to:from:",sel_getUid("changeColor:"),nil,_c);
if(_target&&_action){
objj_msgSend(CPApp,"sendAction:to:from:",_action,_target,_c);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPColorPanelColorDidChangeNotification,_c);
objj_msgSend(_activePicker,"setColor:",_color);
objj_msgSend(_opacitySlider,"setFloatValue:",objj_msgSend(_color,"alphaComponent"));
}
}),new objj_method(sel_getUid("setColor:updatePicker:"),function(_f,_10,_11,_12){
with(_f){
objj_msgSend(_f,"setColor:",_11);
if(_12){
objj_msgSend(_activePicker,"setColor:",_color);
}
}
}),new objj_method(sel_getUid("color"),function(_13,_14){
with(_13){
return _color;
}
}),new objj_method(sel_getUid("opacity"),function(_15,_16){
with(_15){
return objj_msgSend(_opacitySlider,"floatValue");
}
}),new objj_method(sel_getUid("setTarget:"),function(_17,_18,_19){
with(_17){
_target=_19;
}
}),new objj_method(sel_getUid("target"),function(_1a,_1b){
with(_1a){
return _target;
}
}),new objj_method(sel_getUid("setAction:"),function(_1c,_1d,_1e){
with(_1c){
_action=_1e;
}
}),new objj_method(sel_getUid("action"),function(_1f,_20){
with(_1f){
return _action;
}
}),new objj_method(sel_getUid("setMode:"),function(_21,_22,_23){
with(_21){
_mode=_23;
}
}),new objj_method(sel_getUid("_setPicker:"),function(_24,_25,_26){
with(_24){
var _27=_colorPickers[objj_msgSend(_26,"tag")],_28=objj_msgSend(_27,"provideNewView:",NO);
if(!_28){
_28=objj_msgSend(_27,"provideNewView:",YES);
}
if(_28==_currentView){
return;
}
if(_currentView){
objj_msgSend(_28,"setFrame:",objj_msgSend(_currentView,"frame"));
}else{
var _29=(_2+10+_1+5+_3+32),_2a=objj_msgSend(objj_msgSend(_24,"contentView"),"bounds");
objj_msgSend(_28,"setFrameSize:",CPSizeMake(_2a.size.width-10,_2a.size.height-_29));
objj_msgSend(_28,"setFrameOrigin:",CPPointMake(5,_29));
}
objj_msgSend(_currentView,"removeFromSuperview");
objj_msgSend(objj_msgSend(_24,"contentView"),"addSubview:",_28);
_currentView=_28;
_activePicker=_27;
objj_msgSend(_27,"setColor:",objj_msgSend(_24,"color"));
}
}),new objj_method(sel_getUid("mode"),function(_2b,_2c){
with(_2b){
return _mode;
}
}),new objj_method(sel_getUid("orderFront:"),function(_2d,_2e,_2f){
with(_2d){
objj_msgSend(_2d,"_loadContentsIfNecessary");
objj_msgSendSuper({receiver:_2d,super_class:objj_getClass("CPPanel")},"orderFront:",_2f);
}
}),new objj_method(sel_getUid("_loadContentsIfNecessary"),function(_30,_31){
with(_30){
if(_toolbar){
return;
}
if(!_color){
_color=objj_msgSend(CPColor,"whiteColor");
}
_colorPickers=[];
var _32=objj_msgSend(_7,"count");
for(var i=0;i<_32;i++){
var _34=_7[i],_35=objj_msgSend(objj_msgSend(_34,"alloc"),"initWithPickerMask:colorPanel:",0,_30);
_colorPickers.push(_35);
}
var _36=objj_msgSend(_30,"contentView"),_37=objj_msgSend(_36,"bounds");
_toolbar=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,6,CGRectGetWidth(_37),_2));
objj_msgSend(_toolbar,"setAutoresizingMask:",CPViewWidthSizable);
var _38=_32*_4+(_32-1)*_5,_39=(CGRectGetWidth(_37)-_38)/2,_3a=nil;
for(var i=0;i<_32;i++){
var _3b=objj_msgSend(_colorPickers[i],"provideNewButtonImage"),_3c=objj_msgSend(_colorPickers[i],"provideNewAlternateButtonImage"),_3d=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(_39+i*(_4+_5),0,_4,_4));
objj_msgSend(_3d,"setTag:",i);
objj_msgSend(_3d,"setTarget:",_30);
objj_msgSend(_3d,"setAction:",sel_getUid("_setPicker:"));
objj_msgSend(_3d,"setBordered:",NO);
objj_msgSend(_3d,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin);
objj_msgSend(_3d,"setImage:",_3b);
objj_msgSend(_3d,"setAlternateImage:",_3c);
objj_msgSend(_toolbar,"addSubview:",_3d);
if(!_3a){
_3a=_3d;
}
}
var _3e=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(76,_2+10,CGRectGetWidth(_37)-86,_1));
_previewView=objj_msgSend(objj_msgSend(_CPColorPanelPreview,"alloc"),"initWithFrame:",CGRectInset(objj_msgSend(_3e,"bounds"),2,2));
objj_msgSend(_previewView,"setColorPanel:",_30);
objj_msgSend(_previewView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_3e,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",0.8,1));
objj_msgSend(_3e,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_3e,"addSubview:",_previewView);
var _3f=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(10,_2+10,60,15));
objj_msgSend(_3f,"setStringValue:","Preview:");
objj_msgSend(_3f,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_3f,"setAlignment:",CPRightTextAlignment);
var _40=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(76,_2+10+_1+5,CGRectGetWidth(_37)-86,_3+2));
objj_msgSend(_40,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",0.8,1));
objj_msgSend(_40,"setAutoresizingMask:",CPViewWidthSizable);
_swatchView=objj_msgSend(objj_msgSend(_CPColorPanelSwatches,"alloc"),"initWithFrame:",CGRectInset(objj_msgSend(_40,"bounds"),1,1));
objj_msgSend(_swatchView,"setColorPanel:",_30);
objj_msgSend(_swatchView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_40,"addSubview:",_swatchView);
var _41=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(10,_2+8+_1+6,60,15));
objj_msgSend(_41,"setStringValue:","Swatches:");
objj_msgSend(_41,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_41,"setAlignment:",CPRightTextAlignment);
var _42=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(10,_2+_1+35,60,20));
objj_msgSend(_42,"setStringValue:","Opacity:");
objj_msgSend(_42,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_42,"setAlignment:",CPRightTextAlignment);
_opacitySlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CGRectMake(76,_2+_1+34,CGRectGetWidth(_37)-86,20));
objj_msgSend(_opacitySlider,"setMinValue:",0);
objj_msgSend(_opacitySlider,"setMaxValue:",1);
objj_msgSend(_opacitySlider,"setTarget:",_30);
objj_msgSend(_opacitySlider,"setAction:",sel_getUid("setOpacity:"));
objj_msgSend(_36,"addSubview:",_toolbar);
objj_msgSend(_36,"addSubview:",_3e);
objj_msgSend(_36,"addSubview:",_3f);
objj_msgSend(_36,"addSubview:",_40);
objj_msgSend(_36,"addSubview:",_41);
objj_msgSend(_36,"addSubview:",_42);
objj_msgSend(_36,"addSubview:",_opacitySlider);
_target=nil;
_action=nil;
_activePicker=nil;
objj_msgSend(_previewView,"setBackgroundColor:",_color);
if(_3a){
objj_msgSend(_30,"_setPicker:",_3a);
}
}
}),new objj_method(sel_getUid("setOpacity:"),function(_43,_44,_45){
with(_43){
var _46=objj_msgSend(objj_msgSend(_43,"color"),"components"),_47=objj_msgSend(_45,"floatValue");
objj_msgSend(_43,"setColor:updatePicker:",objj_msgSend(_color,"colorWithAlphaComponent:",_47),YES);
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("provideColorPickerClass:"),function(_48,_49,_4a){
with(_48){
_7.push(_4a);
}
}),new objj_method(sel_getUid("sharedColorPanel"),function(_4b,_4c){
with(_4b){
if(!_6){
_6=objj_msgSend(objj_msgSend(CPColorPanel,"alloc"),"init");
}
return _6;
}
}),new objj_method(sel_getUid("setPickerMode:"),function(_4d,_4e,_4f){
with(_4d){
var _50=objj_msgSend(CPColorPanel,"sharedColorPanel");
objj_msgSend(_50,"setMode:",_4f);
}
})]);
CPColorDragType="CPColorDragType";
var _51="CPColorPanelSwatchesCookie";
var _8=objj_allocateClassPair(CPView,"_CPColorPanelSwatches"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_swatches"),new objj_ivar("_dragColor"),new objj_ivar("_colorPanel"),new objj_ivar("_swatchCookie")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("initWithFrame:"),function(_52,_53,_54){
with(_52){
_52=objj_msgSendSuper({receiver:_52,super_class:objj_getClass("CPView")},"initWithFrame:",_54);
objj_msgSend(_52,"setBackgroundColor:",objj_msgSend(CPColor,"grayColor"));
objj_msgSend(_52,"registerForDraggedTypes:",objj_msgSend(CPArray,"arrayWithObjects:",CPColorDragType));
var _55=objj_msgSend(CPColor,"whiteColor");
_swatchCookie=objj_msgSend(objj_msgSend(CPCookie,"alloc"),"initWithName:",_51);
var _56=objj_msgSend(_52,"startingColorList");
_swatches=[];
for(var i=0;i<50;i++){
var _58=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(13*i+1,1,12,12)),_59=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectInset(objj_msgSend(_58,"bounds"),1,1));
objj_msgSend(_58,"setBackgroundColor:",_55);
objj_msgSend(_59,"setBackgroundColor:",(i<_56.length)?_56[i]:_55);
objj_msgSend(_58,"addSubview:",_59);
objj_msgSend(_52,"addSubview:",_58);
_swatches.push(_58);
}
return _52;
}
}),new objj_method(sel_getUid("isOpaque"),function(_5a,_5b){
with(_5a){
return YES;
}
}),new objj_method(sel_getUid("startingColorList"),function(_5c,_5d){
with(_5c){
var _5e=objj_msgSend(_swatchCookie,"value");
if(_5e==""){
return [objj_msgSend(CPColor,"blackColor"),objj_msgSend(CPColor,"darkGrayColor"),objj_msgSend(CPColor,"grayColor"),objj_msgSend(CPColor,"lightGrayColor"),objj_msgSend(CPColor,"whiteColor"),objj_msgSend(CPColor,"redColor"),objj_msgSend(CPColor,"greenColor"),objj_msgSend(CPColor,"blueColor"),objj_msgSend(CPColor,"yellowColor")];
}
var _5e=eval(_5e);
var _5f=[];
for(var i=0;i<_5e.length;i++){
_5f.push(objj_msgSend(CPColor,"colorWithHexString:",_5e[i]));
}
return _5f;
}
}),new objj_method(sel_getUid("saveColorList"),function(_61,_62){
with(_61){
var _63=[];
for(var i=0;i<_swatches.length;i++){
_63.push(objj_msgSend(objj_msgSend(objj_msgSend(_swatches[i],"subviews")[0],"backgroundColor"),"hexString"));
}
var _65=new Date();
_65.setYear(2019);
objj_msgSend(_swatchCookie,"setValue:expires:domain:",JSON.stringify(_63),_65,nil);
}
}),new objj_method(sel_getUid("setColorPanel:"),function(_66,_67,_68){
with(_66){
_colorPanel=_68;
}
}),new objj_method(sel_getUid("colorPanel"),function(_69,_6a){
with(_69){
return _colorPanel;
}
}),new objj_method(sel_getUid("colorAtIndex:"),function(_6b,_6c,_6d){
with(_6b){
return objj_msgSend(objj_msgSend(_swatches[_6d],"subviews")[0],"backgroundColor");
}
}),new objj_method(sel_getUid("setColor:atIndex:"),function(_6e,_6f,_70,_71){
with(_6e){
objj_msgSend(objj_msgSend(_swatches[_71],"subviews")[0],"setBackgroundColor:",_70);
objj_msgSend(_6e,"saveColorList");
}
}),new objj_method(sel_getUid("mouseUp:"),function(_72,_73,_74){
with(_72){
var _75=objj_msgSend(_72,"convertPoint:fromView:",objj_msgSend(_74,"locationInWindow"),nil);
if(_75.x>objj_msgSend(_72,"bounds").size.width-1||_75.x<1){
return NO;
}
objj_msgSend(_colorPanel,"setColor:updatePicker:",objj_msgSend(_72,"colorAtIndex:",FLOOR(_75.x/13)),YES);
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_76,_77,_78){
with(_76){
var _79=objj_msgSend(_76,"convertPoint:fromView:",objj_msgSend(_78,"locationInWindow"),nil);
if(_79.x>objj_msgSend(_76,"bounds").size.width-1||_79.x<1){
return NO;
}
objj_msgSend(objj_msgSend(CPPasteboard,"pasteboardWithName:",CPDragPboard),"declareTypes:owner:",objj_msgSend(CPArray,"arrayWithObject:",CPColorDragType),_76);
var _7a=_swatches[FLOOR(_79.x/13)];
_dragColor=objj_msgSend(objj_msgSend(_7a,"subviews")[0],"backgroundColor");
var _7b=CPRectCreateCopy(objj_msgSend(_7a,"bounds"));
var _7c=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_7b);
dragFillView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectInset(_7b,1,1));
objj_msgSend(_7c,"setBackgroundColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(dragFillView,"setBackgroundColor:",_dragColor);
objj_msgSend(_7c,"addSubview:",dragFillView);
objj_msgSend(_76,"dragView:at:offset:event:pasteboard:source:slideBack:",_7c,CPPointMake(_79.x-_7b.size.width/2,_79.y-_7b.size.height/2),CPPointMake(0,0),_78,nil,_76,YES);
}
}),new objj_method(sel_getUid("pasteboard:provideDataForType:"),function(_7d,_7e,_7f,_80){
with(_7d){
if(_80==CPColorDragType){
objj_msgSend(_7f,"setData:forType:",_dragColor,_80);
}
}
}),new objj_method(sel_getUid("performDragOperation:"),function(_81,_82,_83){
with(_81){
var _84=objj_msgSend(_81,"convertPoint:fromView:",objj_msgSend(_83,"draggingLocation"),nil),_85=objj_msgSend(_83,"draggingPasteboard"),_86=nil;
if(!objj_msgSend(_85,"availableTypeFromArray:",[CPColorDragType])||_84.x>objj_msgSend(_81,"bounds").size.width-1||_84.x<1){
return NO;
}
objj_msgSend(_81,"setColor:atIndex:",objj_msgSend(_85,"dataForType:",CPColorDragType),FLOOR(_84.x/13));
}
})]);
var _8=objj_allocateClassPair(CPView,"_CPColorPanelPreview"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_colorPanel")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("initWithFrame:"),function(_87,_88,_89){
with(_87){
_87=objj_msgSendSuper({receiver:_87,super_class:objj_getClass("CPView")},"initWithFrame:",_89);
objj_msgSend(_87,"registerForDraggedTypes:",objj_msgSend(CPArray,"arrayWithObjects:",CPColorDragType));
return _87;
}
}),new objj_method(sel_getUid("setColorPanel:"),function(_8a,_8b,_8c){
with(_8a){
_colorPanel=_8c;
}
}),new objj_method(sel_getUid("colorPanel"),function(_8d,_8e){
with(_8d){
return _colorPanel;
}
}),new objj_method(sel_getUid("performDragOperation:"),function(_8f,_90,_91){
with(_8f){
var _92=objj_msgSend(_91,"draggingPasteboard");
if(!objj_msgSend(_92,"availableTypeFromArray:",[CPColorDragType])){
return NO;
}
var _93=objj_msgSend(_92,"dataForType:",CPColorDragType);
objj_msgSend(_colorPanel,"setColor:updatePicker:",_93,YES);
}
}),new objj_method(sel_getUid("isOpaque"),function(_94,_95){
with(_94){
return YES;
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_96,_97,_98){
with(_96){
var _99=objj_msgSend(_96,"convertPoint:fromView:",objj_msgSend(_98,"locationInWindow"),nil);
objj_msgSend(objj_msgSend(CPPasteboard,"pasteboardWithName:",CPDragPboard),"declareTypes:owner:",objj_msgSend(CPArray,"arrayWithObject:",CPColorDragType),_96);
var _9a=CPRectMake(0,0,15,15);
var _9b=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_9a);
dragFillView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectInset(_9a,1,1));
objj_msgSend(_9b,"setBackgroundColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(dragFillView,"setBackgroundColor:",objj_msgSend(_96,"backgroundColor"));
objj_msgSend(_9b,"addSubview:",dragFillView);
objj_msgSend(_96,"dragView:at:offset:event:pasteboard:source:slideBack:",_9b,CPPointMake(_99.x-_9a.size.width/2,_99.y-_9a.size.height/2),CPPointMake(0,0),_98,nil,_96,YES);
}
}),new objj_method(sel_getUid("pasteboard:provideDataForType:"),function(_9c,_9d,_9e,_9f){
with(_9c){
if(_9f==CPColorDragType){
objj_msgSend(_9e,"setData:forType:",objj_msgSend(_9c,"backgroundColor"),_9f);
}
}
})]);
i;15;CPColorPicker.ji;21;CPSliderColorPicker.jc;155;
objj_msgSend(CPColorPanel,"provideColorPickerClass:",CPColorWheelColorPicker);
objj_msgSend(CPColorPanel,"provideColorPickerClass:",CPSliderColorPicker);
p;15;CPColorPicker.jI;21;Foundation/CPObject.ji;14;CPColorPanel.jc;10196;
var _1=objj_allocateClassPair(CPObject,"CPColorPicker"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_panel"),new objj_ivar("_mask")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithPickerMask:colorPanel:"),function(_3,_4,_5,_6){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
_panel=_6;
_mask=_5;
return _3;
}
}),new objj_method(sel_getUid("colorPanel"),function(_7,_8){
with(_7){
return _panel;
}
}),new objj_method(sel_getUid("provideNewButtonImage"),function(_9,_a){
with(_9){
return nil;
}
}),new objj_method(sel_getUid("setMode:"),function(_b,_c,_d){
with(_b){
return;
}
}),new objj_method(sel_getUid("setColor:"),function(_e,_f,_10){
with(_e){
return;
}
})]);
var _1=objj_allocateClassPair(CPColorPicker,"CPColorWheelColorPicker"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_pickerView"),new objj_ivar("_brightnessSlider"),new objj_ivar("_hueSaturationView"),new objj_ivar("_cachedColor")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithPickerMask:colorPanel:"),function(_11,_12,_13,_14){
with(_11){
return objj_msgSendSuper({receiver:_11,super_class:objj_getClass("CPColorPicker")},"initWithPickerMask:colorPanel:",_13,_14);
}
}),new objj_method(sel_getUid("initView"),function(_15,_16){
with(_15){
aFrame=CPRectMake(0,0,CPColorPickerViewWidth,CPColorPickerViewHeight);
_pickerView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",aFrame);
objj_msgSend(_pickerView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
_brightnessSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CGRectMake(0,(aFrame.size.height-34),aFrame.size.width,15));
objj_msgSend(_brightnessSlider,"setValue:forThemeAttribute:",15,"track-width");
objj_msgSend(_brightnessSlider,"setValue:forThemeAttribute:",objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPColorPicker,"class")),"pathForResource:","brightness_bar.png"))),"track-color");
objj_msgSend(_brightnessSlider,"setMinValue:",0);
objj_msgSend(_brightnessSlider,"setMaxValue:",100);
objj_msgSend(_brightnessSlider,"setFloatValue:",100);
objj_msgSend(_brightnessSlider,"setTarget:",_15);
objj_msgSend(_brightnessSlider,"setAction:",sel_getUid("brightnessSliderDidChange:"));
objj_msgSend(_brightnessSlider,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
_hueSaturationView=objj_msgSend(objj_msgSend(__CPColorWheel,"alloc"),"initWithFrame:",CPRectMake(0,0,aFrame.size.width,aFrame.size.height-38));
objj_msgSend(_hueSaturationView,"setDelegate:",_15);
objj_msgSend(_hueSaturationView,"setAutoresizingMask:",(CPViewWidthSizable|CPViewHeightSizable));
objj_msgSend(_pickerView,"addSubview:",_hueSaturationView);
objj_msgSend(_pickerView,"addSubview:",_brightnessSlider);
}
}),new objj_method(sel_getUid("brightnessSliderDidChange:"),function(_17,_18,_19){
with(_17){
objj_msgSend(_17,"updateColor");
}
}),new objj_method(sel_getUid("colorWheelDidChange:"),function(_1a,_1b,_1c){
with(_1a){
objj_msgSend(_1a,"updateColor");
}
}),new objj_method(sel_getUid("updateColor"),function(_1d,_1e){
with(_1d){
var hue=objj_msgSend(_hueSaturationView,"angle"),_20=objj_msgSend(_hueSaturationView,"distance"),_21=objj_msgSend(_brightnessSlider,"floatValue");
objj_msgSend(_hueSaturationView,"setWheelBrightness:",_21/100);
objj_msgSend(_brightnessSlider,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHue:saturation:brightness:",hue,_20,100));
var _22=objj_msgSend(_1d,"colorPanel"),_23=objj_msgSend(_22,"opacity");
_cachedColor=objj_msgSend(CPColor,"colorWithHue:saturation:brightness:alpha:",hue,_20,_21,_23);
objj_msgSend(objj_msgSend(_1d,"colorPanel"),"setColor:",_cachedColor);
}
}),new objj_method(sel_getUid("supportsMode:"),function(_24,_25,_26){
with(_24){
return (_26==CPWheelColorPickerMode)?YES:NO;
}
}),new objj_method(sel_getUid("currentMode"),function(_27,_28){
with(_27){
return CPWheelColorPickerMode;
}
}),new objj_method(sel_getUid("provideNewView:"),function(_29,_2a,_2b){
with(_29){
if(_2b){
objj_msgSend(_29,"initView");
}
return _pickerView;
}
}),new objj_method(sel_getUid("setColor:"),function(_2c,_2d,_2e){
with(_2c){
if(objj_msgSend(_2e,"isEqual:",_cachedColor)){
return;
}
var hsb=objj_msgSend(_2e,"hsbComponents");
objj_msgSend(_hueSaturationView,"setPositionToColor:",_2e);
objj_msgSend(_brightnessSlider,"setFloatValue:",hsb[2]);
objj_msgSend(_hueSaturationView,"setWheelBrightness:",hsb[2]/100);
objj_msgSend(_brightnessSlider,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHue:saturation:brightness:",hsb[0],hsb[1],100));
}
}),new objj_method(sel_getUid("provideNewButtonImage"),function(_30,_31){
with(_30){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","wheel_button.png"),CGSizeMake(32,32));
}
}),new objj_method(sel_getUid("provideNewAlternateButtonImage"),function(_32,_33){
with(_32){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","wheel_button_h.png"),CGSizeMake(32,32));
}
})]);
var _1=objj_allocateClassPair(CPView,"__CPColorWheel"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_wheelImage"),new objj_ivar("_blackWheelImage"),new objj_ivar("_crosshair"),new objj_ivar("_delegate"),new objj_ivar("_angle"),new objj_ivar("_distance"),new objj_ivar("_radius")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_34,_35,_36){
with(_34){
_34=objj_msgSendSuper({receiver:_34,super_class:objj_getClass("CPView")},"initWithFrame:",_36);
var _37=objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","wheel.png");
_wheelImage=new Image();
_wheelImage.src=_37;
_wheelImage.style.position="absolute";
_37=objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","wheel_black.png");
_blackWheelImage=new Image();
_blackWheelImage.src=_37;
_blackWheelImage.style.opacity="0";
_blackWheelImage.style.filter="alpha(opacity=0)";
_blackWheelImage.style.position="absolute";
_DOMElement.appendChild(_wheelImage);
_DOMElement.appendChild(_blackWheelImage);
objj_msgSend(_34,"setWheelSize:",_36.size);
_crosshair=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(_radius-2,_radius-2,4,4));
objj_msgSend(_crosshair,"setBackgroundColor:",objj_msgSend(CPColor,"blackColor"));
var _38=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectInset(objj_msgSend(_crosshair,"bounds"),1,1));
objj_msgSend(_38,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_crosshair,"addSubview:",_38);
objj_msgSend(_34,"addSubview:",_crosshair);
return _34;
}
}),new objj_method(sel_getUid("setWheelBrightness:"),function(_39,_3a,_3b){
with(_39){
_blackWheelImage.style.opacity=1-_3b;
_blackWheelImage.style.filter="alpha(opacity="+(1-_3b)*100+")";
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_3c,_3d,_3e){
with(_3c){
objj_msgSendSuper({receiver:_3c,super_class:objj_getClass("CPView")},"setFrameSize:",_3e);
objj_msgSend(_3c,"setWheelSize:",_3e);
}
}),new objj_method(sel_getUid("setWheelSize:"),function(_3f,_40,_41){
with(_3f){
var min=MIN(_41.width,_41.height);
_blackWheelImage.style.width=min;
_blackWheelImage.style.height=min;
_blackWheelImage.width=min;
_blackWheelImage.height=min;
_blackWheelImage.style.top=(_41.height-min)/2+"px";
_blackWheelImage.style.left=(_41.width-min)/2+"px";
_wheelImage.style.width=min;
_wheelImage.style.height=min;
_wheelImage.width=min;
_wheelImage.height=min;
_wheelImage.style.top=(_41.height-min)/2+"px";
_wheelImage.style.left=(_41.width-min)/2+"px";
_radius=min/2;
objj_msgSend(_3f,"setAngle:distance:",objj_msgSend(_3f,"degreesToRadians:",_angle),(_distance/100)*_radius);
}
}),new objj_method(sel_getUid("setDelegate:"),function(_43,_44,_45){
with(_43){
_delegate=_45;
}
}),new objj_method(sel_getUid("delegate"),function(_46,_47){
with(_46){
return _delegate;
}
}),new objj_method(sel_getUid("angle"),function(_48,_49){
with(_48){
return _angle;
}
}),new objj_method(sel_getUid("distance"),function(_4a,_4b){
with(_4a){
return _distance;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_4c,_4d,_4e){
with(_4c){
objj_msgSend(_4c,"reposition:",_4e);
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_4f,_50,_51){
with(_4f){
objj_msgSend(_4f,"reposition:",_51);
}
}),new objj_method(sel_getUid("reposition:"),function(_52,_53,_54){
with(_52){
var _55=objj_msgSend(_52,"bounds"),_56=objj_msgSend(_52,"convertPoint:fromView:",objj_msgSend(_54,"locationInWindow"),nil);
var _57=CGRectGetMidX(_55);
var _58=CGRectGetMidY(_55);
var _59=MIN(SQRT((_56.x-_57)*(_56.x-_57)+(_56.y-_58)*(_56.y-_58)),_radius);
var _5a=ATAN2(_56.y-_58,_56.x-_57);
objj_msgSend(_52,"setAngle:distance:",_5a,_59);
objj_msgSend(_delegate,"colorWheelDidChange:",_52);
}
}),new objj_method(sel_getUid("setAngle:distance:"),function(_5b,_5c,_5d,_5e){
with(_5b){
var _5f=objj_msgSend(_5b,"bounds");
var _60=CGRectGetMidX(_5f);
var _61=CGRectGetMidY(_5f);
_angle=objj_msgSend(_5b,"radiansToDegrees:",_5d);
_distance=(_5e/_radius)*100;
objj_msgSend(_crosshair,"setFrameOrigin:",CPPointMake(COS(_5d)*_5e+_60-2,SIN(_5d)*_5e+_61-2));
}
}),new objj_method(sel_getUid("setPositionToColor:"),function(_62,_63,_64){
with(_62){
var hsb=objj_msgSend(_64,"hsbComponents"),_66=objj_msgSend(_62,"bounds");
var _67=objj_msgSend(_62,"degreesToRadians:",hsb[0]),_68=(hsb[1]/100)*_radius;
objj_msgSend(_62,"setAngle:distance:",_67,_68);
}
}),new objj_method(sel_getUid("radiansToDegrees:"),function(_69,_6a,_6b){
with(_69){
return ((-_6b/PI)*180+360)%360;
}
}),new objj_method(sel_getUid("degreesToRadians:"),function(_6c,_6d,_6e){
with(_6c){
return -(((_6e-360)/180)*PI);
}
})]);
p;13;CPColorWell.jI;21;Foundation/CPString.ji;8;CPView.ji;9;CPColor.ji;14;CPColorPanel.jc;5916;
var _1="_CPColorWellDidBecomeExclusiveNotification";
var _2=objj_allocateClassPair(CPControl,"CPColorWell"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_active"),new objj_ivar("_bordered"),new objj_ivar("_color"),new objj_ivar("_wellView")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPControl")},"initWithFrame:",_6);
if(_4){
_active=NO;
_bordered=YES;
_color=objj_msgSend(CPColor,"whiteColor");
objj_msgSend(_4,"drawBezelWithHighlight:",NO);
objj_msgSend(_4,"drawWellInside:",CGRectInset(objj_msgSend(_4,"bounds"),3,3));
objj_msgSend(_4,"_registerForNotifications");
}
return _4;
}
}),new objj_method(sel_getUid("_registerForNotifications"),function(_7,_8){
with(_7){
var _9=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_9,"addObserver:selector:name:object:",_7,sel_getUid("colorWellDidBecomeExclusive:"),_1,nil);
objj_msgSend(_9,"addObserver:selector:name:object:",_7,sel_getUid("colorPanelWillClose:"),CPWindowWillCloseNotification,objj_msgSend(CPColorPanel,"sharedColorPanel"));
}
}),new objj_method(sel_getUid("isBordered"),function(_a,_b){
with(_a){
return _bordered;
}
}),new objj_method(sel_getUid("setBordered:"),function(_c,_d,_e){
with(_c){
if(_bordered==_e){
return;
}
_bordered=_e;
objj_msgSend(_c,"drawWellInside:",CGRectInset(objj_msgSend(_c,"bounds"),3,3));
}
}),new objj_method(sel_getUid("color"),function(_f,_10){
with(_f){
return _color;
}
}),new objj_method(sel_getUid("setColor:"),function(_11,_12,_13){
with(_11){
if(_color==_13){
return;
}
_color=_13;
objj_msgSend(_11,"drawWellInside:",CGRectInset(objj_msgSend(_11,"bounds"),3,3));
}
}),new objj_method(sel_getUid("takeColorFrom:"),function(_14,_15,_16){
with(_14){
objj_msgSend(_14,"setColor:",objj_msgSend(_16,"color"));
}
}),new objj_method(sel_getUid("activate:"),function(_17,_18,_19){
with(_17){
if(_19){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",_1,_17);
}
if(objj_msgSend(_17,"isActive")){
return;
}
_active=YES;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_17,sel_getUid("colorPanelDidChangeColor:"),CPColorPanelColorDidChangeNotification,objj_msgSend(CPColorPanel,"sharedColorPanel"));
}
}),new objj_method(sel_getUid("deactivate"),function(_1a,_1b){
with(_1a){
if(!objj_msgSend(_1a,"isActive")){
return;
}
_active=NO;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_1a,CPColorPanelColorDidChangeNotification,objj_msgSend(CPColorPanel,"sharedColorPanel"));
}
}),new objj_method(sel_getUid("isActive"),function(_1c,_1d){
with(_1c){
return _active;
}
}),new objj_method(sel_getUid("drawBezelWithHighlight:"),function(_1e,_1f,_20){
with(_1e){
}
}),new objj_method(sel_getUid("drawWellInside:"),function(_21,_22,_23){
with(_21){
if(!_wellView){
_wellView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_23);
objj_msgSend(_wellView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_21,"addSubview:",_wellView);
}else{
objj_msgSend(_wellView,"setFrame:",_23);
}
objj_msgSend(_wellView,"setBackgroundColor:",_color);
}
}),new objj_method(sel_getUid("colorPanelDidChangeColor:"),function(_24,_25,_26){
with(_24){
objj_msgSend(_24,"takeColorFrom:",objj_msgSend(_26,"object"));
objj_msgSend(_24,"sendAction:to:",objj_msgSend(_24,"action"),objj_msgSend(_24,"target"));
}
}),new objj_method(sel_getUid("colorWellDidBecomeExclusive:"),function(_27,_28,_29){
with(_27){
if(_27!=objj_msgSend(_29,"object")){
objj_msgSend(_27,"deactivate");
}
}
}),new objj_method(sel_getUid("colorPanelWillClose:"),function(_2a,_2b,_2c){
with(_2a){
objj_msgSend(_2a,"deactivate");
}
}),new objj_method(sel_getUid("mouseDown:"),function(_2d,_2e,_2f){
with(_2d){
objj_msgSend(_2d,"drawBezelWithHighlight:",YES);
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_30,_31,_32){
with(_30){
objj_msgSend(_30,"drawBezelWithHighlight:",CGRectContainsPoint(objj_msgSend(_30,"bounds"),objj_msgSend(_30,"convertPoint:fromView:",objj_msgSend(_32,"locationInWindow"),nil)));
}
}),new objj_method(sel_getUid("mouseUp:"),function(_33,_34,_35){
with(_33){
objj_msgSend(_33,"drawBezelWithHighlight:",NO);
if(!CGRectContainsPoint(objj_msgSend(_33,"bounds"),objj_msgSend(_33,"convertPoint:fromView:",objj_msgSend(_35,"locationInWindow"),nil))){
return;
}
objj_msgSend(_33,"activate:",YES);
var _36=objj_msgSend(CPColorPanel,"sharedColorPanel");
objj_msgSend(_36,"setColor:",_color);
objj_msgSend(_36,"orderFront:",_33);
}
})]);
var _37="CPColorWellColorKey",_38="CPColorWellBorderedKey";
var _2=objj_getClass("CPColorWell");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPColorWell\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_39,_3a,_3b){
with(_39){
_39=objj_msgSendSuper({receiver:_39,super_class:objj_getClass("CPControl")},"initWithCoder:",_3b);
if(_39){
_active=NO;
_bordered=objj_msgSend(_3b,"decodeObjectForKey:",_38);
_color=objj_msgSend(_3b,"decodeObjectForKey:",_37);
objj_msgSend(_39,"drawBezelWithHighlight:",NO);
objj_msgSend(_39,"drawWellInside:",CGRectInset(objj_msgSend(_39,"bounds"),3,3));
objj_msgSend(_39,"_registerForNotifications");
}
return _39;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_3c,_3d,_3e){
with(_3c){
var _3f=_subviews;
_subviews=objj_msgSend(_subviews,"copy");
objj_msgSend(_subviews,"removeObjectIdenticalTo:",_wellView);
objj_msgSendSuper({receiver:_3c,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_3e);
_subviews=_3f;
objj_msgSend(_3e,"encodeObject:forKey:",_color,_37);
objj_msgSend(_3e,"encodeObject:forKey:",_bordered,_38);
}
})]);
p;17;CPCompatibility.ji;9;CPEvent.jc;3005;
CPUnknownBrowserEngine=0;
CPGeckoBrowserEngine=1;
CPInternetExplorerBrowserEngine=2;
CPKHTMLBrowserEngine=3;
CPOperaBrowserEngine=4;
CPWebKitBrowserEngine=5;
CPCSSRGBAFeature=1<<5;
CPHTMLCanvasFeature=1<<6;
CPHTMLContentEditableFeature=1<<7;
CPJavascriptInnerTextFeature=1<<8;
CPJavascriptTextContentFeature=1<<9;
CPJavascriptClipboardEventsFeature=1<<10;
CPJavascriptClipboardAccessFeature=1<<11;
CPJavaScriptCanvasDrawFeature=1<<12;
CPJavaScriptCanvasTransformFeature=1<<13;
CPVMLFeature=1<<14;
CPJavascriptRemedialKeySupport=1<<15;
CPJavaScriptShadowFeature=1<<20;
CPJavaScriptNegativeMouseWheelValues=1<<22;
CPJavaScriptMouseWheelValues_8_15=1<<23;
CPOpacityRequiresFilterFeature=1<<24;
CPInputTypeCanBeChangedFeature=1<<25;
var _1="",_2=CPUnknownBrowserEngine,_3=0;
_3|=CPInputTypeCanBeChangedFeature;
if(typeof window!="undfined"&&typeof window.navigator!="undefined"){
_1=window.navigator.userAgent;
}
if(window.opera){
_2=CPOperaBrowserEngine;
_3|=CPJavaScriptCanvasDrawFeature;
}else{
if(window.attachEvent){
_2=CPInternetExplorerBrowserEngine;
_3|=CPVMLFeature;
_3|=CPJavascriptRemedialKeySupport;
_3|=CPJavaScriptShadowFeature;
_3|=CPOpacityRequiresFilterFeature;
_3&=~CPInputTypeCanBeChangedFeature;
}else{
if(_1.indexOf("AppleWebKit/")!=-1){
_2=CPWebKitBrowserEngine;
_3|=CPCSSRGBAFeature;
_3|=CPHTMLContentEditableFeature;
_3|=CPJavascriptClipboardEventsFeature;
_3|=CPJavascriptClipboardAccessFeature;
_3|=CPJavaScriptShadowFeature;
var _4=_1.indexOf("AppleWebKit/")+"AppleWebKit/".length,_5=_1.indexOf(" ",_4),_6=parseFloat(_1.substring(_4,_5),10);
if(_1.indexOf("Plainview")==-1&&_6>=525.14||_1.indexOf("Chrome")!=-1){
_3|=CPJavascriptRemedialKeySupport;
}
}else{
if(_1.indexOf("KHTML")!=-1){
_2=CPKHTMLBrowserEngine;
}else{
if(_1.indexOf("Gecko")!==-1){
_2=CPGeckoBrowserEngine;
_3|=CPJavaScriptCanvasDrawFeature;
var _7=_1.indexOf("Firefox"),_6=(_7===-1)?2:parseFloat(_1.substring(_7+"Firefox".length+1));
if(_6>=3){
_3|=CPCSSRGBAFeature;
}
if(_6<3){
_3|=CPJavaScriptMouseWheelValues_8_15;
}
}
}
}
}
}
if(typeof document!="undefined"){
var _8=document.createElement("canvas");
if(_8&&_8.getContext){
_3|=CPHTMLCanvasFeature;
var _9=document.createElement("canvas").getContext("2d");
if(_9&&_9.setTransform&&_9.transform){
_3|=CPJavaScriptCanvasTransformFeature;
}
}
var _a=document.createElement("div");
if(_a.innerText!=undefined){
_3|=CPJavascriptInnerTextFeature;
}else{
if(_a.textContent!=undefined){
_3|=CPJavascriptTextContentFeature;
}
}
}
CPFeatureIsCompatible=function(_b){
return _3&_b;
};
CPBrowserIsEngine=function(_c){
return _2==_c;
};
if(_1.indexOf("Mac")!=-1){
CPPlatformActionKeyMask=CPCommandKeyMask;
CPUndoKeyEquivalent="Z";
CPRedoKeyEquivalent="Z";
CPUndoKeyEquivalentModifierMask=CPCommandKeyMask;
CPRedoKeyEquivalentModifierMask=CPCommandKeyMask|CPShiftKeyMask;
}else{
CPPlatformActionKeyMask=CPControlKeyMask;
CPUndoKeyEquivalent="Z";
CPRedoKeyEquivalent="Y";
CPUndoKeyEquivalentModifierMask=CPControlKeyMask;
CPRedoKeyEquivalentModifierMask=CPControlKeyMask;
}
p;11;CPControl.ji;8;CPFont.ji;10;CPShadow.ji;8;CPView.jc;17855;
CPLeftTextAlignment=0;
CPRightTextAlignment=1;
CPCenterTextAlignment=2;
CPJustifiedTextAlignment=3;
CPNaturalTextAlignment=4;
CPRegularControlSize=0;
CPSmallControlSize=1;
CPMiniControlSize=2;
CPControlNormalBackgroundColor="CPControlNormalBackgroundColor";
CPControlSelectedBackgroundColor="CPControlSelectedBackgroundColor";
CPControlHighlightedBackgroundColor="CPControlHighlightedBackgroundColor";
CPControlDisabledBackgroundColor="CPControlDisabledBackgroundColor";
CPControlTextDidBeginEditingNotification="CPControlTextDidBeginEditingNotification";
CPControlTextDidChangeNotification="CPControlTextDidChangeNotification";
CPControlTextDidEndEditingNotification="CPControlTextDidEndEditingNotification";
var _1=objj_msgSend(CPColor,"blackColor");
var _2=objj_allocateClassPair(CPView,"CPControl"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_value"),new objj_ivar("_target"),new objj_ivar("_action"),new objj_ivar("_sendActionOn"),new objj_ivar("_continuousTracking"),new objj_ivar("_trackingWasWithinFrame"),new objj_ivar("_trackingMouseDownFlags"),new objj_ivar("_previousTrackingLocation"),new objj_ivar("_ephemeralSubviewsForNames"),new objj_ivar("_ephereralSubviews"),new objj_ivar("_toolTip")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPView")},"initWithFrame:",_6);
if(_4){
_sendActionOn=CPLeftMouseUpMask;
_trackingMouseDownFlags=0;
}
return _4;
}
}),new objj_method(sel_getUid("setAction:"),function(_7,_8,_9){
with(_7){
_action=_9;
}
}),new objj_method(sel_getUid("action"),function(_a,_b){
with(_a){
return _action;
}
}),new objj_method(sel_getUid("setTarget:"),function(_c,_d,_e){
with(_c){
_target=_e;
}
}),new objj_method(sel_getUid("target"),function(_f,_10){
with(_f){
return _target;
}
}),new objj_method(sel_getUid("sendAction:to:"),function(_11,_12,_13,_14){
with(_11){
objj_msgSend(CPApp,"sendAction:to:from:",_13,_14,_11);
}
}),new objj_method(sel_getUid("sendActionOn:"),function(_15,_16,_17){
with(_15){
var _18=_sendActionOn;
_sendActionOn=_17;
return _18;
}
}),new objj_method(sel_getUid("isContinuous"),function(_19,_1a){
with(_19){
return (_sendActionOn&CPPeriodicMask)!==0;
}
}),new objj_method(sel_getUid("setContinuous:"),function(_1b,_1c,_1d){
with(_1b){
if(_1d){
_sendActionOn|=CPPeriodicMask;
}else{
_sendActionOn&=~CPPeriodicMask;
}
}
}),new objj_method(sel_getUid("tracksMouseOutsideOfFrame"),function(_1e,_1f){
with(_1e){
return NO;
}
}),new objj_method(sel_getUid("trackMouse:"),function(_20,_21,_22){
with(_20){
var _23=objj_msgSend(_22,"type"),_24=objj_msgSend(_20,"convertPoint:fromView:",objj_msgSend(_22,"locationInWindow"),nil);
isWithinFrame=objj_msgSend(_20,"tracksMouseOutsideOfFrame")||CGRectContainsPoint(objj_msgSend(_20,"bounds"),_24);
if(_23===CPLeftMouseUp){
objj_msgSend(_20,"stopTracking:at:mouseIsUp:",_previousTrackingLocation,_24,YES);
_trackingMouseDownFlags=0;
}else{
if(_23===CPLeftMouseDown){
_trackingMouseDownFlags=objj_msgSend(_22,"modifierFlags");
_continuousTracking=objj_msgSend(_20,"startTrackingAt:",_24);
}else{
if(_23===CPLeftMouseDragged){
if(isWithinFrame){
if(!_trackingWasWithinFrame){
_continuousTracking=objj_msgSend(_20,"startTrackingAt:",_24);
}else{
if(_continuousTracking){
_continuousTracking=objj_msgSend(_20,"continueTracking:at:",_previousTrackingLocation,_24);
}
}
}else{
objj_msgSend(_20,"stopTracking:at:mouseIsUp:",_previousTrackingLocation,_24,NO);
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_20,sel_getUid("trackMouse:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
if((_sendActionOn&(1<<_23))&&isWithinFrame){
objj_msgSend(_20,"sendAction:to:",_action,_target);
}
_trackingWasWithinFrame=isWithinFrame;
_previousTrackingLocation=_24;
}
}),new objj_method(sel_getUid("performClick:"),function(_25,_26,_27){
with(_25){
objj_msgSend(_25,"highlight:",YES);
objj_msgSend(_25,"setState:",objj_msgSend(_25,"nextState"));
objj_msgSend(_25,"sendAction:to:",objj_msgSend(_25,"action"),objj_msgSend(_25,"target"));
objj_msgSend(_25,"highlight:",NO);
}
}),new objj_method(sel_getUid("mouseDownFlags"),function(_28,_29){
with(_28){
return _trackingMouseDownFlags;
}
}),new objj_method(sel_getUid("startTrackingAt:"),function(_2a,_2b,_2c){
with(_2a){
objj_msgSend(_2a,"highlight:",YES);
return (_sendActionOn&CPPeriodicMask)||(_sendActionOn&CPLeftMouseDraggedMask);
}
}),new objj_method(sel_getUid("continueTracking:at:"),function(_2d,_2e,_2f,_30){
with(_2d){
return (_sendActionOn&CPPeriodicMask)||(_sendActionOn&CPLeftMouseDraggedMask);
}
}),new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"),function(_31,_32,_33,_34,_35){
with(_31){
objj_msgSend(_31,"highlight:",NO);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_36,_37,_38){
with(_36){
if(!objj_msgSend(_36,"isEnabled")){
return;
}
objj_msgSend(_36,"trackMouse:",_38);
}
}),new objj_method(sel_getUid("objectValue"),function(_39,_3a){
with(_39){
return _value;
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_3b,_3c,_3d){
with(_3b){
_value=_3d;
objj_msgSend(_3b,"setNeedsLayout");
objj_msgSend(_3b,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("floatValue"),function(_3e,_3f){
with(_3e){
var _40=parseFloat(_value,10);
return isNaN(_40)?0:_40;
}
}),new objj_method(sel_getUid("setFloatValue:"),function(_41,_42,_43){
with(_41){
objj_msgSend(_41,"setObjectValue:",_43);
}
}),new objj_method(sel_getUid("doubleValue"),function(_44,_45){
with(_44){
var _46=parseFloat(_value,10);
return isNaN(_46)?0:_46;
}
}),new objj_method(sel_getUid("setDoubleValue:"),function(_47,_48,_49){
with(_47){
objj_msgSend(_47,"setObjectValue:",_49);
}
}),new objj_method(sel_getUid("intValue"),function(_4a,_4b){
with(_4a){
var _4c=parseInt(_value,10);
return isNaN(_4c)?0:_4c;
}
}),new objj_method(sel_getUid("setIntValue:"),function(_4d,_4e,_4f){
with(_4d){
objj_msgSend(_4d,"setObjectValue:",_4f);
}
}),new objj_method(sel_getUid("integerValue"),function(_50,_51){
with(_50){
var _52=parseInt(_value,10);
return isNaN(_52)?0:_52;
}
}),new objj_method(sel_getUid("setIntegerValue:"),function(_53,_54,_55){
with(_53){
objj_msgSend(_53,"setObjectValue:",_55);
}
}),new objj_method(sel_getUid("stringValue"),function(_56,_57){
with(_56){
return (_value===undefined||_value===nil)?"":String(_value);
}
}),new objj_method(sel_getUid("setStringValue:"),function(_58,_59,_5a){
with(_58){
objj_msgSend(_58,"setObjectValue:",_5a);
}
}),new objj_method(sel_getUid("takeDoubleValueFrom:"),function(_5b,_5c,_5d){
with(_5b){
if(objj_msgSend(_5d,"respondsToSelector:",sel_getUid("doubleValue"))){
objj_msgSend(_5b,"setDoubleValue:",objj_msgSend(_5d,"doubleValue"));
}
}
}),new objj_method(sel_getUid("takeFloatValueFrom:"),function(_5e,_5f,_60){
with(_5e){
if(objj_msgSend(_60,"respondsToSelector:",sel_getUid("floatValue"))){
objj_msgSend(_5e,"setFloatValue:",objj_msgSend(_60,"floatValue"));
}
}
}),new objj_method(sel_getUid("takeIntegerValueFrom:"),function(_61,_62,_63){
with(_61){
if(objj_msgSend(_63,"respondsToSelector:",sel_getUid("integerValue"))){
objj_msgSend(_61,"setIntegerValue:",objj_msgSend(_63,"integerValue"));
}
}
}),new objj_method(sel_getUid("takeIntValueFrom:"),function(_64,_65,_66){
with(_64){
if(objj_msgSend(_66,"respondsToSelector:",sel_getUid("intValue"))){
objj_msgSend(_64,"setIntValue:",objj_msgSend(_66,"intValue"));
}
}
}),new objj_method(sel_getUid("takeObjectValueFrom:"),function(_67,_68,_69){
with(_67){
if(objj_msgSend(_69,"respondsToSelector:",sel_getUid("objectValue"))){
objj_msgSend(_67,"setObjectValue:",objj_msgSend(_69,"objectValue"));
}
}
}),new objj_method(sel_getUid("takeStringValueFrom:"),function(_6a,_6b,_6c){
with(_6a){
if(objj_msgSend(_6c,"respondsToSelector:",sel_getUid("stringValue"))){
objj_msgSend(_6a,"setStringValue:",objj_msgSend(_6c,"stringValue"));
}
}
}),new objj_method(sel_getUid("textDidBeginEditing:"),function(_6d,_6e,_6f){
with(_6d){
if(objj_msgSend(_6f,"object")!=_6d){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPControlTextDidBeginEditingNotification,_6d,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_6f,"object"),"CPFieldEditor"));
}
}),new objj_method(sel_getUid("textDidChange:"),function(_70,_71,_72){
with(_70){
if(objj_msgSend(_72,"object")!=_70){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPControlTextDidChangeNotification,_70,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_72,"object"),"CPFieldEditor"));
}
}),new objj_method(sel_getUid("textDidEndEditing:"),function(_73,_74,_75){
with(_73){
if(objj_msgSend(_75,"object")!=_73){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPControlTextDidEndEditingNotification,_73,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_75,"object"),"CPFieldEditor"));
}
}),new objj_method(sel_getUid("setAlignment:"),function(_76,_77,_78){
with(_76){
objj_msgSend(_76,"setValue:forThemeAttribute:",_78,"alignment");
}
}),new objj_method(sel_getUid("alignment"),function(_79,_7a){
with(_79){
return objj_msgSend(_79,"valueForThemeAttribute:","alignment");
}
}),new objj_method(sel_getUid("setVerticalAlignment:"),function(_7b,_7c,_7d){
with(_7b){
objj_msgSend(_7b,"setValue:forThemeAttribute:",_7d,"vertical-alignment");
}
}),new objj_method(sel_getUid("verticalAlignment"),function(_7e,_7f){
with(_7e){
return objj_msgSend(_7e,"valueForThemeAttribute:","vertical-alignment");
}
}),new objj_method(sel_getUid("setLineBreakMode:"),function(_80,_81,_82){
with(_80){
objj_msgSend(_80,"setValue:forThemeAttribute:",_82,"line-break-mode");
}
}),new objj_method(sel_getUid("lineBreakMode"),function(_83,_84){
with(_83){
return objj_msgSend(_83,"valueForThemeAttribute:","line-break-mode");
}
}),new objj_method(sel_getUid("setTextColor:"),function(_85,_86,_87){
with(_85){
objj_msgSend(_85,"setValue:forThemeAttribute:",_87,"text-color");
}
}),new objj_method(sel_getUid("textColor"),function(_88,_89){
with(_88){
return objj_msgSend(_88,"valueForThemeAttribute:","text-color");
}
}),new objj_method(sel_getUid("setFont:"),function(_8a,_8b,_8c){
with(_8a){
objj_msgSend(_8a,"setValue:forThemeAttribute:",_8c,"font");
}
}),new objj_method(sel_getUid("font"),function(_8d,_8e){
with(_8d){
return objj_msgSend(_8d,"valueForThemeAttribute:","font");
}
}),new objj_method(sel_getUid("setTextShadowColor:"),function(_8f,_90,_91){
with(_8f){
objj_msgSend(_8f,"setValue:forThemeAttribute:",_91,"text-shadow-color");
}
}),new objj_method(sel_getUid("textShadowColor"),function(_92,_93){
with(_92){
return objj_msgSend(_92,"valueForThemeAttribute:","text-shadow-color");
}
}),new objj_method(sel_getUid("setTextShadowOffset:"),function(_94,_95,_96){
with(_94){
objj_msgSend(_94,"setValue:forThemeAttribute:",_96,"text-shadow-offset");
}
}),new objj_method(sel_getUid("textShadowOffset"),function(_97,_98){
with(_97){
return objj_msgSend(_97,"valueForThemeAttribute:","text-shadow-offset");
}
}),new objj_method(sel_getUid("setImagePosition:"),function(_99,_9a,_9b){
with(_99){
objj_msgSend(_99,"setValue:forThemeAttribute:",_9b,"image-position");
}
}),new objj_method(sel_getUid("imagePosition"),function(_9c,_9d){
with(_9c){
return objj_msgSend(_9c,"valueForThemeAttribute:","image-position");
}
}),new objj_method(sel_getUid("setImageScaling:"),function(_9e,_9f,_a0){
with(_9e){
objj_msgSend(_9e,"setValue:forThemeAttribute:",_a0,"image-scaling");
}
}),new objj_method(sel_getUid("imageScaling"),function(_a1,_a2){
with(_a1){
return objj_msgSend(_a1,"valueForThemeAttribute:","image-scaling");
}
}),new objj_method(sel_getUid("setEnabled:"),function(_a3,_a4,_a5){
with(_a3){
if(_a5){
objj_msgSend(_a3,"unsetThemeState:",CPThemeStateDisabled);
}else{
objj_msgSend(_a3,"setThemeState:",CPThemeStateDisabled);
}
}
}),new objj_method(sel_getUid("isEnabled"),function(_a6,_a7){
with(_a6){
return !objj_msgSend(_a6,"hasThemeState:",CPThemeStateDisabled);
}
}),new objj_method(sel_getUid("highlight:"),function(_a8,_a9,_aa){
with(_a8){
objj_msgSend(_a8,"setHighlighted:",_aa);
}
}),new objj_method(sel_getUid("setHighlighted:"),function(_ab,_ac,_ad){
with(_ab){
if(_ad){
objj_msgSend(_ab,"setThemeState:",CPThemeStateHighlighted);
}else{
objj_msgSend(_ab,"unsetThemeState:",CPThemeStateHighlighted);
}
}
}),new objj_method(sel_getUid("isHighlighted"),function(_ae,_af){
with(_ae){
return objj_msgSend(_ae,"hasThemeState:",CPThemeStateHighlighted);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_b0,_b1,_b2){
with(_b0){
return nil;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_b3,_b4,_b5){
with(_b3){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
}),new objj_method(sel_getUid("layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:"),function(_b6,_b7,_b8,_b9,_ba){
with(_b6){
if(!_ephemeralSubviewsForNames){
_ephemeralSubviewsForNames={};
_ephemeralSubviews=objj_msgSend(CPSet,"set");
}
var _bb=objj_msgSend(_b6,"rectForEphemeralSubviewNamed:",_b8);
if(_bb&&!(_bb.size.width<=0||_bb.size.height<=0)){
if(!_ephemeralSubviewsForNames[_b8]){
_ephemeralSubviewsForNames[_b8]=objj_msgSend(_b6,"createEphemeralSubviewNamed:",_b8);
objj_msgSend(_ephemeralSubviews,"addObject:",_ephemeralSubviewsForNames[_b8]);
if(_ephemeralSubviewsForNames[_b8]){
objj_msgSend(_b6,"addSubview:positioned:relativeTo:",_ephemeralSubviewsForNames[_b8],_b9,_ephemeralSubviewsForNames[_ba]);
}
}
if(_ephemeralSubviewsForNames[_b8]){
objj_msgSend(_ephemeralSubviewsForNames[_b8],"setFrame:",_bb);
}
}else{
if(_ephemeralSubviewsForNames[_b8]){
objj_msgSend(_ephemeralSubviewsForNames[_b8],"removeFromSuperview");
objj_msgSend(_ephemeralSubviews,"removeObject:",_ephemeralSubviewsForNames[_b8]);
delete _ephemeralSubviewsForNames[_b8];
}
}
return _ephemeralSubviewsForNames[_b8];
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("themeAttributes"),function(_bc,_bd){
with(_bc){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[CPLeftTextAlignment,CPTopVerticalTextAlignment,CPLineBreakByClipping,objj_msgSend(CPColor,"blackColor"),objj_msgSend(CPFont,"systemFontOfSize:",12),nil,{width:0,height:0},CPImageLeft,CPScaleToFit,{width:0,height:0},{width:-1,height:-1}],["alignment","vertical-alignment","line-break-mode","text-color","font","text-shadow-color","text-shadow-offset","image-position","image-scaling","min-size","max-size"]);
}
})]);
var _be="CPControlValueKey",_bf="CPControlControlStateKey",_c0="CPControlIsEnabledKey",_c1="CPControlTargetKey",_c2="CPControlActionKey",_c3="CPControlSendActionOnKey";
var _c4="CPImageViewImageKey";
var _2=objj_getClass("CPControl");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPControl\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_c5,_c6,_c7){
with(_c5){
_c5=objj_msgSendSuper({receiver:_c5,super_class:objj_getClass("CPView")},"initWithCoder:",_c7);
if(_c5){
objj_msgSend(_c5,"setObjectValue:",objj_msgSend(_c7,"decodeObjectForKey:",_be));
objj_msgSend(_c5,"setTarget:",objj_msgSend(_c7,"decodeObjectForKey:",_c1));
objj_msgSend(_c5,"setAction:",objj_msgSend(_c7,"decodeObjectForKey:",_c2));
objj_msgSend(_c5,"sendActionOn:",objj_msgSend(_c7,"decodeIntForKey:",_c3));
}
return _c5;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_c8,_c9,_ca){
with(_c8){
var _cb=objj_msgSend(_subviews,"count"),_cc;
subviews=nil;
if(_cb>0&&objj_msgSend(_ephemeralSubviews,"count")>0){
subviews=objj_msgSend(_subviews.slice(0),"copy");
while(_cb--){
if(objj_msgSend(_ephemeralSubviews,"containsObject:",_subviews[_cb])){
_subviews.splice(_cb,1);
}
}
}
objj_msgSendSuper({receiver:_c8,super_class:objj_getClass("CPView")},"encodeWithCoder:",_ca);
if(subviews){
_subviews=subviews;
}
if(_value!==nil){
objj_msgSend(_ca,"encodeObject:forKey:",_value,_be);
}
if(_target!==nil){
objj_msgSend(_ca,"encodeConditionalObject:forKey:",_target,_c1);
}
if(_action!==NULL){
objj_msgSend(_ca,"encodeObject:forKey:",_action,_c2);
}
objj_msgSend(_ca,"encodeInt:forKey:",_sendActionOn,_c3);
}
})]);
var _cd=[],_ce={},_cf={};
_cd[CPRegularControlSize]="Regular";
_cd[CPSmallControlSize]="Small";
_cd[CPMiniControlSize]="Mini";
_CPControlIdentifierForControlSize=function(_d0){
return _cd[_d0];
};
_CPControlColorWithPatternImage=function(_d1,_d2){
var _d3=1,_d4=arguments.length,_d5="";
for(;_d3<_d4;++_d3){
_d5+=arguments[_d3];
}
var _d6=_ce[_d5];
if(!_d6){
var _d7=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPControl,"class"));
_d6=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_d7,"pathForResource:",_d2+"/"+_d5+".png"),_d1[_d5]));
_ce[_d5]=_d6;
}
return _d6;
};
_CPControlThreePartImagePattern=function(_d8,_d9,_da){
var _db=2,_dc=arguments.length,_dd="";
for(;_db<_dc;++_db){
_dd+=arguments[_db];
}
var _de=_cf[_dd];
if(!_de){
var _df=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPControl,"class")),_e0=_da+"/"+_dd;
_d9=_d9[_dd];
_de=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_df,"pathForResource:",_e0+"0.png"),_d9[0]),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_df,"pathForResource:",_e0+"1.png"),_d9[1]),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_df,"pathForResource:",_e0+"2.png"),_d9[2])],_d8));
_cf[_dd]=_de;
}
return _de;
};
p;10;CPCookie.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jc;1385;
var _1=objj_allocateClassPair(CPObject,"CPCookie"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_cookieName"),new objj_ivar("_cookieValue"),new objj_ivar("_expires")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithName:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
_cookieName=_5;
_cookieValue=objj_msgSend(_3,"_readCookieValue");
return _3;
}
}),new objj_method(sel_getUid("value"),function(_6,_7){
with(_6){
return _cookieValue;
}
}),new objj_method(sel_getUid("name"),function(_8,_9){
with(_8){
return _cookieName;
}
}),new objj_method(sel_getUid("expires"),function(_a,_b){
with(_a){
return _expires;
}
}),new objj_method(sel_getUid("setValue:expires:domain:"),function(_c,_d,_e,_f,_10){
with(_c){
if(_f){
var _11="; expires="+_f.toGMTString();
}else{
var _11="";
}
if(_10){
_10="; domain="+_10;
}else{
_10="";
}
document.cookie=_cookieName+"="+_e+_11+"; path=/"+_10;
}
}),new objj_method(sel_getUid("_readCookieValue"),function(_12,_13){
with(_12){
var _14=_cookieName+"=";
var ca=document.cookie.split(";");
for(var i=0;i<ca.length;i++){
var c=ca[i];
while(c.charAt(0)==" "){
c=c.substring(1,c.length);
}
if(c.indexOf(_14)==0){
return c.substring(_14.length,c.length);
}
}
return "";
}
})]);
p;12;CPDocument.jI;21;Foundation/CPString.jI;20;Foundation/CPArray.ji;13;CPResponder.ji;20;CPWindowController.jc;12379;
CPSaveOperation=0;
CPSaveAsOperation=1;
CPSaveToOperation=2;
CPAutosaveOperation=3;
CPChangeDone=0;
CPChangeUndone=1;
CPChangeCleared=2;
CPChangeReadOtherContents=3;
CPChangeAutosaved=4;
CPDocumentWillSaveNotification="CPDocumentWillSaveNotification";
CPDocumentDidSaveNotification="CPDocumentDidSaveNotification";
CPDocumentDidFailToSaveNotification="CPDocumentDidFailToSaveNotification";
var _1=0;
var _2=objj_allocateClassPair(CPResponder,"CPDocument"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_fileURL"),new objj_ivar("_fileType"),new objj_ivar("_windowControllers"),new objj_ivar("_untitledDocumentIndex"),new objj_ivar("_hasUndoManager"),new objj_ivar("_undoManager"),new objj_ivar("_changeCount"),new objj_ivar("_readConnection"),new objj_ivar("_writeRequest")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPResponder")},"init");
if(_4){
_windowControllers=[];
_hasUndoManager=YES;
_changeCount=0;
objj_msgSend(_4,"setNextResponder:",CPApp);
}
return _4;
}
}),new objj_method(sel_getUid("initWithType:error:"),function(_6,_7,_8,_9){
with(_6){
_6=objj_msgSend(_6,"init");
if(_6){
objj_msgSend(_6,"setFileType:",_8);
}
return _6;
}
}),new objj_method(sel_getUid("initWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_a,_b,_c,_d,_e,_f,_10){
with(_a){
_a=objj_msgSend(_a,"init");
if(_a){
objj_msgSend(_a,"readFromURL:ofType:delegate:didReadSelector:contextInfo:",_c,_d,_e,_f,_10);
objj_msgSend(_a,"setFileURL:",_c);
objj_msgSend(_a,"setFileType:",_d);
}
return _a;
}
}),new objj_method(sel_getUid("initForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_11,_12,_13,_14,_15,_16,_17,_18){
with(_11){
_11=objj_msgSend(_11,"init");
if(_11){
objj_msgSend(_11,"readFromURL:ofType:delegate:didReadSelector:contextInfo:",_14,_15,_16,_17,_18);
objj_msgSend(_11,"setFileURL:",_13);
objj_msgSend(_11,"setFileType:",_15);
}
return _11;
}
}),new objj_method(sel_getUid("dataOfType:error:"),function(_19,_1a,_1b,_1c){
with(_19){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"dataOfType:error: must be overridden by the document subclass.");
}
}),new objj_method(sel_getUid("readFromData:ofType:error:"),function(_1d,_1e,_1f,_20,_21){
with(_1d){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"readFromData:ofType: must be overridden by the document subclass.");
}
}),new objj_method(sel_getUid("makeWindowControllers"),function(_22,_23){
with(_22){
var _24=objj_msgSend(objj_msgSend(CPWindowController,"alloc"),"initWithWindowCibName:",nil);
objj_msgSend(_22,"addWindowController:",_24);
}
}),new objj_method(sel_getUid("windowControllers"),function(_25,_26){
with(_25){
return _windowControllers;
}
}),new objj_method(sel_getUid("addWindowController:"),function(_27,_28,_29){
with(_27){
objj_msgSend(_windowControllers,"addObject:",_29);
if(objj_msgSend(_29,"document")!=_27){
objj_msgSend(_29,"setNextResponder:",_27);
objj_msgSend(_29,"setDocument:",_27);
}
}
}),new objj_method(sel_getUid("showWindows"),function(_2a,_2b){
with(_2a){
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("showWindow:"),_2a);
}
}),new objj_method(sel_getUid("displayName"),function(_2c,_2d){
with(_2c){
if(_fileURL){
return objj_msgSend(_fileURL,"lastPathComponent");
}
if(!_untitledDocumentIndex){
_untitledDocumentIndex=++_1;
}
if(_untitledDocumentIndex==1){
return "Untitled";
}
return "Untitled "+_untitledDocumentIndex;
}
}),new objj_method(sel_getUid("windowCibName"),function(_2e,_2f){
with(_2e){
return nil;
}
}),new objj_method(sel_getUid("windowControllerDidLoadNib:"),function(_30,_31,_32){
with(_30){
}
}),new objj_method(sel_getUid("windowControllerWillLoadNib:"),function(_33,_34,_35){
with(_33){
}
}),new objj_method(sel_getUid("readFromURL:ofType:delegate:didReadSelector:contextInfo:"),function(_36,_37,_38,_39,_3a,_3b,_3c){
with(_36){
objj_msgSend(_readConnection,"cancel");
_readConnection=objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",objj_msgSend(CPURLRequest,"requestWithURL:",_38),_36);
_readConnection.session=_3d(_39,_3a,_3b,_3c);
}
}),new objj_method(sel_getUid("fileURL"),function(_3e,_3f){
with(_3e){
return _fileURL;
}
}),new objj_method(sel_getUid("setFileURL:"),function(_40,_41,_42){
with(_40){
if(_fileURL==_42){
return;
}
_fileURL=_42;
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:",sel_getUid("synchronizeWindowTitleWithDocumentName"));
}
}),new objj_method(sel_getUid("saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:"),function(_43,_44,_45,_46,_47,_48,_49,_4a){
with(_43){
var _4b=objj_msgSend(_43,"dataOfType:error:",objj_msgSend(_43,"fileType"),nil),_4c=_changeCount;
_writeRequest=objj_msgSend(CPURLRequest,"requestWithURL:",_45);
objj_msgSend(_writeRequest,"setHTTPMethod:","POST");
objj_msgSend(_writeRequest,"setHTTPBody:",objj_msgSend(_4b,"string"));
objj_msgSend(_writeRequest,"setValue:forHTTPHeaderField:","close","Connection");
if(_47==CPSaveOperation){
objj_msgSend(_writeRequest,"setValue:forHTTPHeaderField:","true","x-cappuccino-overwrite");
}
if(_47!=CPSaveToOperation){
objj_msgSend(_43,"updateChangeCount:",CPChangeCleared);
}
var _4d=objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",_writeRequest,_43);
_4d.session=_4e(_45,_47,_4c,_48,_49,_4a,_4d);
}
}),new objj_method(sel_getUid("connection:didReceiveResponse:"),function(_4f,_50,_51,_52){
with(_4f){
if(!objj_msgSend(_52,"isKindOfClass:",objj_msgSend(CPHTTPURLResponse,"class"))){
return;
}
var _53=objj_msgSend(_52,"statusCode");
if(_53===200){
return;
}
var _54=_51.session;
if(_51==_readConnection){
objj_msgSend(_51,"cancel");
alert("There was an error retrieving the document.");
objj_msgSend(_54.delegate,_54.didReadSelector,_4f,NO,_54.contextInfo);
}else{
if(_53==409){
objj_msgSend(_51,"cancel");
if(confirm("There already exists a file with that name, would you like to overwrite it?")){
objj_msgSend(_writeRequest,"setValue:forHTTPHeaderField:","true","x-cappuccino-overwrite");
objj_msgSend(_51,"start");
}else{
if(_54.saveOperation!=CPSaveToOperation){
_changeCount+=_54.changeCount;
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("setDocumentEdited:"),objj_msgSend(_4f,"isDocumentEdited"));
}
_writeRequest=nil;
objj_msgSend(_54.delegate,_54.didSaveSelector,_4f,NO,_54.contextInfo);
}
}
}
}
}),new objj_method(sel_getUid("connection:didReceiveData:"),function(_55,_56,_57,_58){
with(_55){
var _59=_57.session;
if(_57==_readConnection){
objj_msgSend(_55,"readFromData:ofType:error:",objj_msgSend(CPData,"dataWithString:",_58),_59.fileType,nil);
objj_msgSend(_59.delegate,_59.didReadSelector,_55,YES,_59.contextInfo);
}else{
if(_59.saveOperation!=CPSaveToOperation){
objj_msgSend(_55,"setFileURL:",_59.absoluteURL);
}
_writeRequest=nil;
objj_msgSend(_59.delegate,_59.didSaveSelector,_55,YES,_59.contextInfo);
}
}
}),new objj_method(sel_getUid("connection:didFailWithError:"),function(_5a,_5b,_5c,_5d){
with(_5a){
var _5e=_5c.session;
if(_readConnection==_5c){
objj_msgSend(_5e.delegate,_5e.didReadSelector,_5a,NO,_5e.contextInfo);
}else{
if(_5e.saveOperation!=CPSaveToOperation){
_changeCount+=_5e.changeCount;
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("setDocumentEdited:"),objj_msgSend(_5a,"isDocumentEdited"));
}
_writeRequest=nil;
alert("There was an error saving the document.");
objj_msgSend(_5e.delegate,_5e.didSaveSelector,_5a,NO,_5e.contextInfo);
}
}
}),new objj_method(sel_getUid("connectionDidFinishLoading:"),function(_5f,_60,_61){
with(_5f){
if(_readConnection==_61){
_readConnection=nil;
}
}
}),new objj_method(sel_getUid("isDocumentEdited"),function(_62,_63){
with(_62){
return _changeCount!=0;
}
}),new objj_method(sel_getUid("updateChangeCount:"),function(_64,_65,_66){
with(_64){
if(_66==CPChangeDone){
++_changeCount;
}else{
if(_66==CPChangeUndone){
--_changeCount;
}else{
if(_66==CPChangeCleared){
_changeCount=0;
}
}
}
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("setDocumentEdited:"),objj_msgSend(_64,"isDocumentEdited"));
}
}),new objj_method(sel_getUid("setFileType:"),function(_67,_68,_69){
with(_67){
_fileType=_69;
}
}),new objj_method(sel_getUid("fileType"),function(_6a,_6b){
with(_6a){
return _fileType;
}
}),new objj_method(sel_getUid("hasUndoManager"),function(_6c,_6d){
with(_6c){
return _hasUndoManager;
}
}),new objj_method(sel_getUid("setHasUndoManager:"),function(_6e,_6f,_70){
with(_6e){
if(_hasUndoManager==_70){
return;
}
_hasUndoManager=_70;
if(!_hasUndoManager){
objj_msgSend(_6e,"setUndoManager:",nil);
}
}
}),new objj_method(sel_getUid("_undoManagerWillCloseGroup:"),function(_71,_72,_73){
with(_71){
var _74=objj_msgSend(_73,"object");
if(objj_msgSend(_74,"isUndoing")||objj_msgSend(_74,"isRedoing")){
return;
}
objj_msgSend(_71,"updateChangeCount:",CPChangeDone);
}
}),new objj_method(sel_getUid("_undoManagerDidUndoChange:"),function(_75,_76,_77){
with(_75){
objj_msgSend(_75,"updateChangeCount:",CPChangeUndone);
}
}),new objj_method(sel_getUid("_undoManagerDidRedoChange:"),function(_78,_79,_7a){
with(_78){
objj_msgSend(_78,"updateChangeCount:",CPChangeDone);
}
}),new objj_method(sel_getUid("setUndoManager:"),function(_7b,_7c,_7d){
with(_7b){
var _7e=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_undoManager){
objj_msgSend(_7e,"removeObserver:name:object:",_7b,CPUndoManagerDidUndoChangeNotification,_undoManager);
objj_msgSend(_7e,"removeObserver:name:object:",_7b,CPUndoManagerDidRedoChangeNotification,_undoManager);
objj_msgSend(_7e,"removeObserver:name:object:",_7b,CPUndoManagerWillCloseUndoGroupNotification,_undoManager);
}
_undoManager=_7d;
if(_undoManager){
objj_msgSend(_7e,"addObserver:selector:name:object:",_7b,sel_getUid("_undoManagerDidUndoChange:"),CPUndoManagerDidUndoChangeNotification,_undoManager);
objj_msgSend(_7e,"addObserver:selector:name:object:",_7b,sel_getUid("_undoManagerDidRedoChange:"),CPUndoManagerDidRedoChangeNotification,_undoManager);
objj_msgSend(_7e,"addObserver:selector:name:object:",_7b,sel_getUid("_undoManagerWillCloseGroup:"),CPUndoManagerWillCloseUndoGroupNotification,_undoManager);
}
}
}),new objj_method(sel_getUid("undoManager"),function(_7f,_80){
with(_7f){
if(_hasUndoManager&&!_undoManager){
objj_msgSend(_7f,"setUndoManager:",objj_msgSend(objj_msgSend(CPUndoManager,"alloc"),"init"));
}
return _undoManager;
}
}),new objj_method(sel_getUid("windowWillReturnUndoManager:"),function(_81,_82,_83){
with(_81){
return objj_msgSend(_81,"undoManager");
}
}),new objj_method(sel_getUid("saveDocument:"),function(_84,_85,_86){
with(_84){
if(_fileURL){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentWillSaveNotification,_84);
objj_msgSend(_84,"saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:",_fileURL,objj_msgSend(_84,"fileType"),CPSaveOperation,_84,sel_getUid("document:didSave:contextInfo:"),NULL);
}else{
objj_msgSend(_84,"saveDocumentAs:",_84);
}
}
}),new objj_method(sel_getUid("saveDocumentAs:"),function(_87,_88,_89){
with(_87){
_documentName=window.prompt("Document Name:");
if(!_documentName){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentWillSaveNotification,_87);
objj_msgSend(_87,"saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:",objj_msgSend(_87,"proposedFileURL"),objj_msgSend(_87,"fileType"),CPSaveAsOperation,_87,sel_getUid("document:didSave:contextInfo:"),NULL);
}
}),new objj_method(sel_getUid("document:didSave:contextInfo:"),function(_8a,_8b,_8c,_8d,_8e){
with(_8a){
if(_8d){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentDidSaveNotification,_8a);
}else{
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentDidFailToSaveNotification,_8a);
}
}
})]);
var _3d=function(_8f,_90,_91,_92){
return {fileType:_8f,delegate:_90,didReadSelector:_91,contextInfo:_92};
};
var _4e=function(_93,_94,_95,_96,_97,_98,_99){
return {absoluteURL:_93,saveOperation:_94,changeCount:_95,delegate:_96,didSaveSelector:_97,contextInfo:_98,connection:_99};
};
p;22;CPDocumentController.jI;21;Foundation/CPObject.jI;21;Foundation/CPBundle.ji;12;CPDocument.jc;5371;
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CPDocumentController"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_documents"),new objj_ivar("_documentTypes")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPObject")},"init");
if(_4){
_documents=objj_msgSend(objj_msgSend(CPArray,"alloc"),"init");
if(!_1){
_1=_4;
}
_documentTypes=objj_msgSend(objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"infoDictionary"),"objectForKey:","CPBundleDocumentTypes");
}
return _4;
}
}),new objj_method(sel_getUid("documentForURL:"),function(_6,_7,_8){
with(_6){
var _9=0,_a=objj_msgSend(_documents,"count");
for(;_9<_a;++_9){
var _b=_documents[_9];
if(objj_msgSend(objj_msgSend(_b,"fileURL"),"isEqual:",_8)){
return _b;
}
}
return nil;
}
}),new objj_method(sel_getUid("openUntitledDocumentOfType:display:"),function(_c,_d,_e,_f){
with(_c){
var _10=objj_msgSend(_c,"makeUntitledDocumentOfType:error:",_e,nil);
if(_10){
objj_msgSend(_c,"addDocument:",_10);
}
if(_f){
objj_msgSend(_10,"makeWindowControllers");
objj_msgSend(_10,"showWindows");
}
return _10;
}
}),new objj_method(sel_getUid("makeUntitledDocumentOfType:error:"),function(_11,_12,_13,_14){
with(_11){
return objj_msgSend(objj_msgSend(objj_msgSend(_11,"documentClassForType:",_13),"alloc"),"initWithType:error:",_13,_14);
}
}),new objj_method(sel_getUid("openDocumentWithContentsOfURL:display:error:"),function(_15,_16,_17,_18,_19){
with(_15){
var _1a=objj_msgSend(_15,"documentForURL:",_17);
if(!_1a){
var _1b=objj_msgSend(_15,"typeForContentsOfURL:error:",_17,_19);
_1a=objj_msgSend(_15,"makeDocumentWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_17,_1b,_15,sel_getUid("document:didRead:contextInfo:"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_18,"shouldDisplay"));
}else{
if(_18){
objj_msgSend(_1a,"showWindows");
}
}
return _1a;
}
}),new objj_method(sel_getUid("reopenDocumentForURL:withContentsOfURL:error:"),function(_1c,_1d,_1e,_1f,_20){
with(_1c){
return objj_msgSend(_1c,"makeDocumentForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_1e,_1f,objj_msgSend(objj_msgSend(_documentTypes,"objectAtIndex:",0),"objectForKey:","CPBundleTypeName"),_1c,sel_getUid("document:didRead:contextInfo:"),nil);
}
}),new objj_method(sel_getUid("makeDocumentWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_21,_22,_23,_24,_25,_26,_27){
with(_21){
return objj_msgSend(objj_msgSend(objj_msgSend(_21,"documentClassForType:",_24),"alloc"),"initWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_23,_24,_25,_26,_27);
}
}),new objj_method(sel_getUid("makeDocumentForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_28,_29,_2a,_2b,_2c,_2d,_2e,_2f){
with(_28){
return objj_msgSend(objj_msgSend(objj_msgSend(_28,"documentClassForType:",_2c),"alloc"),"initForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_2a,_2b,_2c,_2d,_2e,_2f);
}
}),new objj_method(sel_getUid("document:didRead:contextInfo:"),function(_30,_31,_32,_33,_34){
with(_30){
if(!_33){
return;
}
objj_msgSend(_30,"addDocument:",_32);
objj_msgSend(_32,"makeWindowControllers");
if(objj_msgSend(_34,"objectForKey:","shouldDisplay")){
objj_msgSend(_32,"showWindows");
}
}
}),new objj_method(sel_getUid("newDocument:"),function(_35,_36,_37){
with(_35){
objj_msgSend(_35,"openUntitledDocumentOfType:display:",objj_msgSend(objj_msgSend(_documentTypes,"objectAtIndex:",0),"objectForKey:","CPBundleTypeName"),YES);
}
}),new objj_method(sel_getUid("documents"),function(_38,_39){
with(_38){
return _documents;
}
}),new objj_method(sel_getUid("addDocument:"),function(_3a,_3b,_3c){
with(_3a){
objj_msgSend(_documents,"addObject:",_3c);
}
}),new objj_method(sel_getUid("removeDocument:"),function(_3d,_3e,_3f){
with(_3d){
objj_msgSend(_documents,"removeObjectIdenticalTo:",_3f);
}
}),new objj_method(sel_getUid("defaultType"),function(_40,_41){
with(_40){
return objj_msgSend(_documentTypes[0],"objectForKey:","CPBundleTypeName");
}
}),new objj_method(sel_getUid("typeForContentsOfURL:error:"),function(_42,_43,_44,_45){
with(_42){
var _46=0,_47=_documentTypes.length,_48=objj_msgSend(objj_msgSend(_44,"pathExtension"),"lowercaseString");
for(;_46<_47;++_46){
var _49=_documentTypes[_46],_4a=objj_msgSend(_49,"objectForKey:","CFBundleTypeExtensions"),_4b=0,_4c=_4a.length;
for(;_4b<_4c;++_4b){
if(objj_msgSend(_4a[_4b],"lowercaseString")==_48){
return objj_msgSend(_49,"objectForKey:","CPBundleTypeName");
}
}
}
return objj_msgSend(_42,"defaultType");
}
}),new objj_method(sel_getUid("_infoForType:"),function(_4d,_4e,_4f){
with(_4d){
var i=0,_51=objj_msgSend(_documentTypes,"count");
for(;i<_51;++i){
var _52=_documentTypes[i];
if(objj_msgSend(_52,"objectForKey:","CPBundleTypeName")==_4f){
return _52;
}
}
return nil;
}
}),new objj_method(sel_getUid("documentClassForType:"),function(_53,_54,_55){
with(_53){
var _56=objj_msgSend(objj_msgSend(_53,"_infoForType:",_55),"objectForKey:","CPDocumentClass");
return _56?CPClassFromString(_56):nil;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("sharedDocumentController"),function(_57,_58){
with(_57){
if(!_1){
objj_msgSend(objj_msgSend(_57,"alloc"),"init");
}
return _1;
}
})]);
p;20;CPDOMDisplayServer.jI;22;Foundation/CPRunLoop.jc;3207;
var _1=nil;
CPDOMDisplayServerInstructions=[];
CPDOMDisplayServerInstructionCount=0;
CPDOMDisplayServerViews=[];
CPDOMDisplayServerViewsCount=0;
CPDOMDisplayServerViewsContext={};
var _2=objj_allocateClassPair(CPObject,"CPDOMDisplayServer"),_3=_2.isa;
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("start"),function(_4,_5){
with(_4){
_1=objj_msgSend(CPRunLoop,"currentRunLoop");
objj_msgSend(_1,"performSelector:target:argument:order:modes:",sel_getUid("run"),CPDOMDisplayServer,nil,0,[CPDefaultRunLoopMode]);
}
}),new objj_method(sel_getUid("run"),function(_6,_7){
with(_6){
while(CPDOMDisplayServerInstructionCount||CPDOMDisplayServerViewsCount){
var _8=0;
while(_8<CPDOMDisplayServerInstructionCount){
var _9=CPDOMDisplayServerInstructions[_8++];
try{
switch(_9){
case 0:
case 1:
case 2:
case 3:
var _a=CPDOMDisplayServerInstructions[_8],_b=_a.style,x=(_9==0||_9==2)?"left":"right",y=(_9==0||_9==1)?"top":"bottom";
CPDOMDisplayServerInstructions[_8++]=nil;
var _e=CPDOMDisplayServerInstructions[_8++];
if(_e){
var _f={x:CPDOMDisplayServerInstructions[_8++],y:CPDOMDisplayServerInstructions[_8++]},_10={x:_f.x*_e.a+_f.y*_e.c+_e.tx,y:_f.x*_e.b+_f.y*_e.d+_e.ty};
_b[x]=ROUND(_10.x)+"px";
_b[y]=ROUND(_10.y)+"px";
}else{
_b[x]=ROUND(CPDOMDisplayServerInstructions[_8++])+"px";
_b[y]=ROUND(CPDOMDisplayServerInstructions[_8++])+"px";
}
_a.CPDOMDisplayContext[0]=-1;
break;
case 4:
var _a=CPDOMDisplayServerInstructions[_8],_b=_a.style;
CPDOMDisplayServerInstructions[_8++]=nil;
_a.CPDOMDisplayContext[4]=-1;
_b.width=MAX(0,ROUND(CPDOMDisplayServerInstructions[_8++]))+"px";
_b.height=MAX(0,ROUND(CPDOMDisplayServerInstructions[_8++]))+"px";
break;
case 5:
var _a=CPDOMDisplayServerInstructions[_8];
CPDOMDisplayServerInstructions[_8++]=nil;
_a.CPDOMDisplayContext[5]=-1;
_a.width=MAX(0,ROUND(CPDOMDisplayServerInstructions[_8++]));
_a.height=MAX(0,ROUND(CPDOMDisplayServerInstructions[_8++]));
break;
case 6:
CPDOMDisplayServerInstructions[_8].appendChild(CPDOMDisplayServerInstructions[_8+1]);
CPDOMDisplayServerInstructions[_8++]=nil;
CPDOMDisplayServerInstructions[_8++]=nil;
break;
case 7:
CPDOMDisplayServerInstructions[_8].insertBefore(CPDOMDisplayServerInstructions[_8+1],CPDOMDisplayServerInstructions[_8+2]);
CPDOMDisplayServerInstructions[_8++]=nil;
CPDOMDisplayServerInstructions[_8++]=nil;
CPDOMDisplayServerInstructions[_8++]=nil;
break;
case 8:
CPDOMDisplayServerInstructions[_8].removeChild(CPDOMDisplayServerInstructions[_8+1]);
CPDOMDisplayServerInstructions[_8++]=nil;
CPDOMDisplayServerInstructions[_8++]=nil;
break;
}
}
catch(e){
CPLog("here?"+_9);
}
}
CPDOMDisplayServerInstructionCount=0;
var _11=CPDOMDisplayServerViews,_8=0,_12=CPDOMDisplayServerViewsCount;
CPDOMDisplayServerViews=[];
CPDOMDisplayServerViewsCount=0;
for(;_8<_12;++_8){
var _13=_11[_8];
delete CPDOMDisplayServerViewsContext[objj_msgSend(_13,"hash")];
objj_msgSend(_13,"layoutIfNeeded");
objj_msgSend(_13,"displayIfNeeded");
}
}
objj_msgSend(_1,"performSelector:target:argument:order:modes:",sel_getUid("run"),CPDOMDisplayServer,nil,0,[CPDefaultRunLoopMode]);
}
})]);
objj_msgSend(CPDOMDisplayServer,"start");
p;19;CPDOMWindowBridge.jI;21;Foundation/CPObject.jI;22;Foundation/CPRunLoop.ji;9;CPEvent.ji;17;CPCompatibility.ji;18;CPDOMWindowLayer.jc;19108;
CPSharedDOMWindowBridge=nil;
var _1=[];
var _2,_3,_4;
var _5=objj_allocateClassPair(CPObject,"CPDOMWindowBridge"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_orderedWindows"),new objj_ivar("_mouseDownWindow"),new objj_ivar("_DOMWindow"),new objj_ivar("_DOMBodyElement"),new objj_ivar("_DOMFocusElement"),new objj_ivar("_windowLevels"),new objj_ivar("_windowLayers"),new objj_ivar("_frame"),new objj_ivar("_contentBounds"),new objj_ivar("_mouseIsDown"),new objj_ivar("_lastMouseUp"),new objj_ivar("_lastMouseDown"),new objj_ivar("_charCodes"),new objj_ivar("_keyCode"),new objj_ivar("_DOMEventMode"),new objj_ivar("_DOMPasteboardElement"),new objj_ivar("_pasteboardKeyDownEvent"),new objj_ivar("_overriddenEventType")]);
objj_registerClassPair(_5);
objj_addClassForBundle(_5,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_5,[new objj_method(sel_getUid("initWithFrame:"),function(_7,_8,_9){
with(_7){
alert("unimplemented");
}
}),new objj_method(sel_getUid("_initWithDOMWindow:"),function(_a,_b,_c){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPObject")},"init");
if(_a){
_DOMWindow=_c;
_windowLevels=[];
_windowLayers=objj_msgSend(CPDictionary,"dictionary");
_DOMBodyElement=document.getElementsByTagName("body")[0];
_DOMBodyElement.innerHTML="";
_DOMBodyElement.style.overflow="hidden";
_DOMBodyElement.style.webkitTouchCallout="none";
objj_msgSend(CPString,"_resetSize");
if(document.documentElement){
document.documentElement.style.overflow="hidden";
}
_frame=_2(_DOMWindow);
_contentBounds=CGRectMake(0,0,CPRectGetWidth(_frame),CPRectGetHeight(_frame));
_DOMFocusElement=document.createElement("input");
_DOMFocusElement.style.position="absolute";
_DOMFocusElement.style.zIndex="-1000";
_DOMFocusElement.style.opacity="0";
_DOMFocusElement.style.filter="alpha(opacity=0)";
_DOMBodyElement.appendChild(_DOMFocusElement);
_DOMPasteboardElement=document.createElement("input");
_DOMPasteboardElement.style.position="absolute";
_DOMPasteboardElement.style.top="-10000px";
_DOMPasteboardElement.style.zIndex="99";
_DOMBodyElement.appendChild(_DOMPasteboardElement);
_DOMPasteboardElement.blur();
_charCodes={};
var _d=objj_msgSend(_a,"class"),_e=sel_getUid("_bridgeKeyEvent:"),_f=class_getMethodImplementation(_d,_e),_10=function(_11){
_f(_a,nil,_11);
},_12=sel_getUid("_bridgeMouseEvent:"),_13=class_getMethodImplementation(_d,_12),_14=function(_15){
_13(_a,nil,_15);
},_16=sel_getUid("_bridgeScrollEvent:"),_17=class_getMethodImplementation(_d,_16),_18=function(_19){
_17(_a,nil,_19);
},_1a=sel_getUid("_bridgeResizeEvent:"),_1b=class_getMethodImplementation(_d,_1a),_1c=function(_1d){
_1b(_a,nil,_1d);
},_1e=sel_getUid("_bridgeTouchEvent:"),_1f=class_getMethodImplementation(_d,_1e),_20=function(_21){
_1f(_a,nil,_21);
},_22=_DOMWindow.document;
if(document.addEventListener){
_DOMWindow.addEventListener("resize",_1c,NO);
_22.addEventListener(CPDOMEventMouseUp,_14,NO);
_22.addEventListener(CPDOMEventMouseDown,_14,NO);
_22.addEventListener(CPDOMEventMouseMoved,_14,NO);
_22.addEventListener(CPDOMEventKeyUp,_10,NO);
_22.addEventListener(CPDOMEventKeyDown,_10,NO);
_22.addEventListener(CPDOMEventKeyPress,_10,NO);
_22.addEventListener(CPDOMEventTouchStart,_20,NO);
_22.addEventListener(CPDOMEventTouchEnd,_20,NO);
_22.addEventListener(CPDOMEventTouchMove,_20,NO);
_22.addEventListener(CPDOMEventTouchCancel,_20,NO);
_DOMWindow.addEventListener("DOMMouseScroll",_18,NO);
_DOMWindow.addEventListener(CPDOMEventScrollWheel,_18,NO);
}else{
if(document.attachEvent){
_DOMWindow.attachEvent("onresize",_1c);
_22.attachEvent("on"+CPDOMEventMouseUp,_14);
_22.attachEvent("on"+CPDOMEventMouseDown,_14);
_22.attachEvent("on"+CPDOMEventMouseMoved,_14);
_22.attachEvent("on"+CPDOMEventDoubleClick,_14);
_22.attachEvent("on"+CPDOMEventKeyUp,_10);
_22.attachEvent("on"+CPDOMEventKeyDown,_10);
_22.attachEvent("on"+CPDOMEventKeyPress,_10);
_DOMWindow.onmousewheel=_18;
_22.onmousewheel=_18;
_22.body.ondrag=function(){
return NO;
};
_22.body.onselectstart=function(){
return window.event.srcElement==_DOMPasteboardElement;
};
}
}
_1["INPUT"]=YES;
_1["SELECT"]=YES;
_1["TEXTAREA"]=YES;
_1["OPTION"]=YES;
}
return _a;
}
}),new objj_method(sel_getUid("frame"),function(_23,_24){
with(_23){
return CGRectMakeCopy(_frame);
}
}),new objj_method(sel_getUid("visibleFrame"),function(_25,_26){
with(_25){
var _27=objj_msgSend(_25,"frame");
_27.origin=CGPointMakeZero();
if(objj_msgSend(CPMenu,"menuBarVisible")){
var _28=objj_msgSend(objj_msgSend(CPApp,"mainMenu"),"menuBarHeight");
_27.origin.y+=_28;
_27.size.height-=_28;
}
return _27;
}
}),new objj_method(sel_getUid("contentBounds"),function(_29,_2a){
with(_29){
return CPRectCreateCopy(_contentBounds);
}
}),new objj_method(sel_getUid("orderedWindowsAtLevel:"),function(_2b,_2c,_2d){
with(_2b){
var _2e=objj_msgSend(_2b,"layerAtLevel:create:",_2d,NO);
if(!_2e){
return [];
}
return objj_msgSend(_2e,"orderedWindows");
}
}),new objj_method(sel_getUid("layerAtLevel:create:"),function(_2f,_30,_31,_32){
with(_2f){
var _33=objj_msgSend(_windowLayers,"objectForKey:",_31);
if(!_33&&_32){
_33=objj_msgSend(objj_msgSend(CPDOMWindowLayer,"alloc"),"initWithLevel:",_31);
objj_msgSend(_windowLayers,"setObject:forKey:",_33,_31);
var low=0,_35=_windowLevels.length-1,_36;
while(low<=_35){
_36=FLOOR((low+_35)/2);
if(_windowLevels[_36]>_31){
_35=_36-1;
}else{
low=_36+1;
}
}
objj_msgSend(_windowLevels,"insertObject:atIndex:",_31,_windowLevels[_36]>_31?_36:_36+1);
_33._DOMElement.style.zIndex=_31;
_DOMBodyElement.appendChild(_33._DOMElement);
}
return _33;
}
}),new objj_method(sel_getUid("order:window:relativeTo:"),function(_37,_38,_39,_3a,_3b){
with(_37){
var _3c=objj_msgSend(_37,"layerAtLevel:create:",objj_msgSend(_3a,"level"),_39!=CPWindowOut);
if(_39==CPWindowOut){
return objj_msgSend(_3c,"removeWindow:",_3a);
}
objj_msgSend(_3c,"insertWindow:atIndex:",_3a,(_3b?(_39==CPWindowAbove?_3b._index+1:_3b._index):CPNotFound));
}
}),new objj_method(sel_getUid("_dragHitTest:pasteboard:"),function(_3d,_3e,_3f,_40){
with(_3d){
var _41=_windowLevels,_42=_windowLayers,_43=_41.length;
while(_43--){
if(_41[_43]>=CPDraggingWindowLevel){
continue;
}
var _44=objj_msgSend(_42,"objectForKey:",_41[_43])._windows,_45=_44.length;
while(_45--){
var _46=_44[_45];
if(objj_msgSend(_46,"containsPoint:",_3f)){
return objj_msgSend(_46,"_dragHitTest:pasteboard:",_3f,_40);
}
}
}
return nil;
}
}),new objj_method(sel_getUid("_propagateCurrentDOMEvent:"),function(_47,_48,_49){
with(_47){
StopDOMEventPropagation=!_49;
}
}),new objj_method(sel_getUid("hitTest:"),function(_4a,_4b,_4c){
with(_4a){
var _4d=_windowLevels,_4e=_windowLayers,_4f=_4d.length,_50=nil;
while(_4f--&&!_50){
var _51=objj_msgSend(_4e,"objectForKey:",_4d[_4f])._windows,_52=_51.length;
while(_52--&&!_50){
var _53=_51[_52];
if(!_53._ignoresMouseEvents&&objj_msgSend(_53,"containsPoint:",_4c)){
_50=_53;
}
}
}
return _50;
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("sharedDOMWindowBridge"),function(_54,_55){
with(_54){
if(!CPSharedDOMWindowBridge){
CPSharedDOMWindowBridge=objj_msgSend(objj_msgSend(CPDOMWindowBridge,"alloc"),"_initWithDOMWindow:",window);
}
return CPSharedDOMWindowBridge;
}
})]);
var _2=function(_56){
var _57=nil;
if(_56.outerWidth){
_57=CGRectMake(0,0,_56.outerWidth,_56.outerHeight);
}else{
_57=CGRectMake(0,0,-1,-1);
}
if(window.screenTop){
_57.origin=CGPointMake(_56.screenLeft,_56.screenTop,0);
}else{
if(window.screenX){
_57.origin=CGPointMake(_56.screenX,_56.screenY,0);
}
}
if(_56.innerWidth){
_57.size=CGSizeMake(_56.innerWidth,_56.innerHeight);
}else{
if(document.documentElement&&document.documentElement.clientWidth){
_57.size=CGSizeMake(_56.document.documentElement.clientWidth,_56.document.documentElement.clientHeight);
}else{
_57.size=CGSizeMake(_56.document.body.clientWidth,_56.document.body.clientHeight);
}
}
return _57;
};
var _58={},_59={},_5a={"8":1,"9":1,"37":1,"38":1,"39":1,"40":1,"46":1,"33":1,"34":1};
var _5b=17;
var _5=objj_getClass("CPDOMWindowBridge");
if(!_5){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPDOMWindowBridge\""));
}
var _6=_5.isa;
class_addMethods(_5,[new objj_method(sel_getUid("preventCharacterKeysFromPropagating:"),function(_5c,_5d,_5e){
with(_5c){
for(var i=_5e.length;i>0;i--){
_59[""+_5e[i-1].toLowerCase()]=YES;
}
}
}),new objj_method(sel_getUid("preventCharacterKeyFromPropagating:"),function(_60,_61,_62){
with(_60){
_59[_62.toLowerCase()]=YES;
}
}),new objj_method(sel_getUid("clearCharacterKeysToPreventFromPropagating"),function(_63,_64){
with(_63){
_59={};
}
}),new objj_method(sel_getUid("preventKeyCodesFromPropagating:"),function(_65,_66,_67){
with(_65){
for(var i=_67.length;i>0;i--){
_58[_67[i-1]]=YES;
}
}
}),new objj_method(sel_getUid("preventKeyCodeFromPropagating:"),function(_69,_6a,_6b){
with(_69){
_58[_6b]=YES;
}
}),new objj_method(sel_getUid("clearKeyCodesToPreventFromPropagating"),function(_6c,_6d){
with(_6c){
_58={};
}
}),new objj_method(sel_getUid("_bridgeMouseEvent:"),function(_6e,_6f,_70){
with(_6e){
var _71=_overriddenEventType||_70.type;
if(_71===CPDOMEventDoubleClick){
_overriddenEventType=CPDOMEventMouseDown;
objj_msgSend(_6e,"_bridgeMouseEvent:",_70);
_overriddenEventType=CPDOMEventMouseUp;
objj_msgSend(_6e,"_bridgeMouseEvent:",_70);
_overriddenEventType=nil;
return;
}
try{
var _72,_73={x:_70.clientX,y:_70.clientY},_74=_70.timeStamp?_70.timeStamp:new Date(),_75=(_70.target||_70.srcElement),_76=0,_77=(_70.shiftKey?CPShiftKeyMask:0)|(_70.ctrlKey?CPControlKeyMask:0)|(_70.altKey?CPAlternateKeyMask:0)|(_70.metaKey?CPCommandKeyMask:0);
StopDOMEventPropagation=YES;
if(_mouseDownWindow){
_76=objj_msgSend(_mouseDownWindow,"windowNumber");
}else{
var _78=objj_msgSend(_6e,"hitTest:",_73);
if((_70.type===CPDOMEventMouseDown)&&_78){
_mouseDownWindow=_78;
}
_76=objj_msgSend(_78,"windowNumber");
}
if(_76){
var _79=CPApp._windows[_76]._frame;
_73.x-=(_79.origin.x);
_73.y-=(_79.origin.y);
}
switch(_71){
case CPDOMEventMouseUp:
if(_mouseIsDown){
_72=_CPEventFromNativeMouseEvent(_70,CPLeftMouseUp,_73,_77,_74,_76,nil,-1,_3(_lastMouseUp,_74,_73),0);
_mouseIsDown=NO;
_lastMouseUp=_72;
_mouseDownWindow=nil;
}
if(_DOMEventMode){
_DOMEventMode=NO;
return;
}
break;
case CPDOMEventMouseDown:
if(_1[_75.tagName]&&_75!=_DOMFocusElement){
_DOMEventMode=YES;
_mouseIsDown=YES;
objj_msgSend(CPApp,"sendEvent:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPLeftMouseDown,_73,_77,_74,_76,nil,-1,_3(_lastMouseDown,_74,_73),0));
objj_msgSend(CPApp,"sendEvent:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPLeftMouseUp,_73,_77,_74,_76,nil,-1,_3(_lastMouseDown,_74,_73),0));
return;
}
_72=_CPEventFromNativeMouseEvent(_70,CPLeftMouseDown,_73,_77,_74,_76,nil,-1,_3(_lastMouseDown,_74,_73),0);
_mouseIsDown=YES;
_lastMouseDown=_72;
break;
case CPDOMEventMouseMoved:
if(_DOMEventMode){
return;
}
_72=_CPEventFromNativeMouseEvent(_70,_mouseIsDown?CPLeftMouseDragged:CPMouseMoved,_73,_77,_74,_76,nil,-1,1,0);
break;
}
if(_72){
_72._DOMEvent=_70;
objj_msgSend(CPApp,"sendEvent:",_72);
}
if(StopDOMEventPropagation){
_4(_70);
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
catch(anException){
objj_exception_report(anException,{path:"CPDOMWindowBridge.j"});
}
}
}),new objj_method(sel_getUid("_bridgeKeyEvent:"),function(_7a,_7b,_7c){
with(_7a){
try{
var _7d,_7e=_7c.timeStamp?_7c.timeStamp:new Date(),_7f=(_7c.target||_7c.srcElement),_80=objj_msgSend(objj_msgSend(CPApp,"keyWindow"),"windowNumber"),_81=(_7c.shiftKey?CPShiftKeyMask:0)|(_7c.ctrlKey?CPControlKeyMask:0)|(_7c.altKey?CPAlternateKeyMask:0)|(_7c.metaKey?CPCommandKeyMask:0);
if(_1[_7f.tagName]&&_7f!=_DOMFocusElement&&_7f!=_DOMPasteboardElement){
return;
}
StopDOMEventPropagation=!(_81&(CPControlKeyMask|CPCommandKeyMask))||_59[String.fromCharCode(_7c.keyCode||_7c.charCode).toLowerCase()]||_58[_7c.keyCode];
var _82=NO,_83=NO;
switch(_7c.type){
case CPDOMEventKeyDown:
_keyCode=_7c.keyCode;
var _84=String.fromCharCode(_keyCode).toLowerCase();
if(_84=="v"&&(_81&CPPlatformActionKeyMask)){
_DOMPasteboardElement.select();
_DOMPasteboardElement.value="";
_82=YES;
}else{
if((_84=="c"||_84=="x")&&(_81&CPPlatformActionKeyMask)){
_83=YES;
}else{
if(!CPFeatureIsCompatible(CPJavascriptRemedialKeySupport)){
return;
}else{
if(!_5a[_keyCode]&&(_keyCode==_5b||!(_81&CPControlKeyMask))){
return;
}
}
}
}
case CPDOMEventKeyPress:
if((_7c.target||_7c.srcElement)==_DOMPasteboardElement){
return;
}
var _85=_keyCode,_86=_7c.keyCode||_7c.charCode,_87=(_charCodes[_85]!=nil);
_charCodes[_85]=_86;
var _84=String.fromCharCode(_86),_88=_84.toLowerCase();
_7d=objj_msgSend(CPEvent,"keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:",CPKeyDown,location,_81,_7e,_80,nil,_84,_88,_87,_85);
if(_82){
_pasteboardKeyDownEvent=_7d;
window.setNativeTimeout(function(){
objj_msgSend(_7a,"_checkPasteboardElement");
},0);
return;
}
break;
case CPDOMEventKeyUp:
var _85=_7c.keyCode,_86=_charCodes[_85];
_charCodes[_85]=nil;
var _84=String.fromCharCode(_86),_88=_84.toLowerCase();
if(!(_81&CPShiftKeyMask)){
_84=_88;
}
_7d=objj_msgSend(CPEvent,"keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:",CPKeyUp,location,_81,_7e,_80,nil,_84,_88,NO,_85);
break;
}
if(_7d){
_7d._DOMEvent=_7c;
objj_msgSend(CPApp,"sendEvent:",_7d);
if(_83){
var _89=objj_msgSend(CPPasteboard,"generalPasteboard"),_8a=objj_msgSend(_89,"types");
if(_8a.length){
if(objj_msgSend(_8a,"indexOfObjectIdenticalTo:",CPStringPboardType)!=CPNotFound){
_DOMPasteboardElement.value=objj_msgSend(_89,"stringForType:",CPStringPboardType);
}else{
_DOMPasteboardElement.value=objj_msgSend(_89,"_generateStateUID");
}
_DOMPasteboardElement.select();
window.setNativeTimeout(function(){
objj_msgSend(_7a,"_clearPasteboardElement");
},0);
}
return;
}
}
if(StopDOMEventPropagation){
_4(_7c);
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
catch(anException){
objj_exception_report(anException,{path:"CPDOMWindowBridge.j"});
}
}
}),new objj_method(sel_getUid("_bridgeScrollEvent:"),function(_8b,_8c,_8d){
with(_8b){
if(!_8d){
_8d=window.event;
}
try{
if(CPFeatureIsCompatible(CPJavaScriptMouseWheelValues_8_15)){
var x=0,y=0,_90=_8d.target;
while(_90.nodeType!==1){
_90=_90.parentNode;
}
if(_90.offsetParent){
do{
x+=_90.offsetLeft;
y+=_90.offsetTop;
}while(_90=_90.offsetParent);
}
var _91={x:(x+((_8d.clientX-8)/15)),y:(y+((_8d.clientY-8)/15))};
}else{
var _91={x:_8d.clientX,y:_8d.clientY};
}
var _92=0,_93=0,_94=0,_95=_8d.timeStamp?_8d.timeStamp:new Date(),_96=(_8d.shiftKey?CPShiftKeyMask:0)|(_8d.ctrlKey?CPControlKeyMask:0)|(_8d.altKey?CPAlternateKeyMask:0)|(_8d.metaKey?CPCommandKeyMask:0);
StopDOMEventPropagation=YES;
_94=objj_msgSend(objj_msgSend(_8b,"hitTest:",_91),"windowNumber");
if(!_94){
return;
}
var _97=CPApp._windows[_94]._frame;
_91.x-=CGRectGetMinX(_97);
_91.y-=CGRectGetMinY(_97);
if(typeof _8d.wheelDeltaX!="undefined"){
_92=_8d.wheelDeltaX/120;
_93=_8d.wheelDeltaY/120;
}else{
if(_8d.wheelDelta){
_93=_8d.wheelDelta/120;
}else{
if(_8d.detail){
_93=-_8d.detail/3;
}else{
return;
}
}
}
if(!CPFeatureIsCompatible(CPJavaScriptNegativeMouseWheelValues)){
_92=-_92;
_93=-_93;
}
var _98=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPScrollWheel,_91,_96,_95,_94,nil,-1,1,0);
_98._DOMEvent=_8d;
_98._deltaX=ROUND(_92*1.5);
_98._deltaY=ROUND(_93*1.5);
objj_msgSend(CPApp,"sendEvent:",_98);
if(StopDOMEventPropagation){
_4(_8d);
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
catch(anException){
objj_exception_report(anException,{path:"CPDOMWindowBridge.j"});
}
}
}),new objj_method(sel_getUid("_bridgeResizeEvent:"),function(_99,_9a,_9b){
with(_99){
try{
var _9c=_frame.size;
_frame=_2(_DOMWindow);
_contentBounds.size=CGSizeCreateCopy(_frame.size);
var _9d=_windowLevels,_9e=_windowLayers,_9f=_9d.length;
while(_9f--){
var _a0=objj_msgSend(_9e,"objectForKey:",_9d[_9f])._windows,_a1=_a0.length;
while(_a1--){
objj_msgSend(_a0[_a1],"resizeWithOldBridgeSize:",_9c);
}
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
catch(anException){
objj_exception_report(anException,{path:"CPDOMWindowBridge.j"});
}
}
}),new objj_method(sel_getUid("_bridgeTouchEvent:"),function(_a2,_a3,_a4){
with(_a2){
try{
if(_a4.touches&&(_a4.touches.length==1||(_a4.touches.length==0&&_a4.changedTouches.length==1))){
var _a5={};
switch(_a4.type){
case CPDOMEventTouchStart:
_a5.type=CPDOMEventMouseDown;
break;
case CPDOMEventTouchEnd:
_a5.type=CPDOMEventMouseUp;
break;
case CPDOMEventTouchMove:
_a5.type=CPDOMEventMouseMoved;
break;
case CPDOMEventTouchCancel:
_a5.type=CPDOMEventMouseUp;
break;
}
var _a6=_a4.touches.length?_a4.touches[0]:_a4.changedTouches[0];
_a5.clientX=_a6.clientX;
_a5.clientY=_a6.clientY;
_a5.timestamp=_a4.timestamp;
_a5.target=_a4.target;
_a5.shiftKey=_a5.ctrlKey=_a5.altKey=_a5.metaKey=false;
_a5.preventDefault=function(){
if(_a4.preventDefault){
_a4.preventDefault();
}
};
_a5.stopPropagation=function(){
if(_a4.stopPropagation){
_a4.stopPropagation();
}
};
objj_msgSend(_a2,"_bridgeMouseEvent:",_a5);
return;
}else{
if(_a4.preventDefault){
_a4.preventDefault();
}
if(_a4.stopPropagation){
_a4.stopPropagation();
}
}
}
catch(e){
objj_exception_report(e,{path:"CPDOMWindowBridge.j"});
}
}
}),new objj_method(sel_getUid("_checkPasteboardElement"),function(_a7,_a8){
with(_a7){
try{
var _a9=_DOMPasteboardElement.value;
if(objj_msgSend(_a9,"length")){
var _aa=objj_msgSend(CPPasteboard,"generalPasteboard");
if(objj_msgSend(_aa,"_stateUID")!=_a9){
objj_msgSend(_aa,"declareTypes:owner:",[CPStringPboardType],_a7);
objj_msgSend(_aa,"setString:forType:",_a9,CPStringPboardType);
}
}
objj_msgSend(_a7,"_clearPasteboardElement");
objj_msgSend(CPApp,"sendEvent:",_pasteboardKeyDownEvent);
_pasteboardKeyDownEvent=nil;
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
catch(anException){
objj_exception_report(anException,{path:"CPDOMWindowBridge.j"});
}
}
}),new objj_method(sel_getUid("_clearPasteboardElement"),function(_ab,_ac){
with(_ab){
_DOMPasteboardElement.value="";
_DOMPasteboardElement.blur();
}
})]);
var _ad=5,_ae=(typeof document!="undefined"&&document.addEventListener)?350:1000;
var _3=function(_af,_b0,_b1){
if(!_af){
return 1;
}
var _b2=objj_msgSend(_af,"locationInWindow");
return (_b0-objj_msgSend(_af,"timestamp")<_ae&&ABS(_b2.x-_b1.x)<_ad&&ABS(_b2.y-_b1.y)<_ad)?objj_msgSend(_af,"clickCount")+1:1;
};
var _4=function(_b3){
_b3.cancelBubble=true;
_b3.returnValue=false;
if(_b3.preventDefault){
_b3.preventDefault();
}
if(_b3.stopPropagation){
_b3.stopPropagation();
}
if(_b3.type===CPDOMEventMouseDown){
CPSharedDOMWindowBridge._DOMFocusElement.focus();
CPSharedDOMWindowBridge._DOMFocusElement.blur();
}
};
p;18;CPDOMWindowLayer.jI;20;Foundation/CPArray.jI;21;Foundation/CPObject.jc;2416;
var _1=objj_allocateClassPair(CPObject,"CPDOMWindowLayer"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_level"),new objj_ivar("_windows"),new objj_ivar("_DOMElement")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithLevel:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_level=_5;
_windows=[];
_DOMElement=document.createElement("div");
_DOMElement.style.position="absolute";
_DOMElement.style.top="0px";
_DOMElement.style.left="0px";
_DOMElement.style.width="1px";
_DOMElement.style.height="1px";
}
return _3;
}
}),new objj_method(sel_getUid("level"),function(_6,_7){
with(_6){
return _level;
}
}),new objj_method(sel_getUid("removeWindow:"),function(_8,_9,_a){
with(_8){
if(!_a._isVisible){
return;
}
var _b=_a._index,_c=_windows.length-1;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=8;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_a._DOMElement;
objj_msgSend(_windows,"removeObjectAtIndex:",_a._index);
for(;_b<_c;++_b){
_windows[_b]._index=_b;
_windows[_b]._DOMElement.style.zIndex=_b;
}
_a._isVisible=NO;
}
}),new objj_method(sel_getUid("insertWindow:atIndex:"),function(_d,_e,_f,_10){
with(_d){
var _11=objj_msgSend(_windows,"count"),_12=(_10==CPNotFound?_11:_10),_13=_f._isVisible;
if(_13){
_12=MIN(_12,_f._index);
objj_msgSend(_windows,"removeObjectAtIndex:",_f._index);
}else{
++_11;
}
if(_10==CPNotFound||_10>=_11){
objj_msgSend(_windows,"addObject:",_f);
}else{
objj_msgSend(_windows,"insertObject:atIndex:",_f,_10);
}
for(;_12<_11;++_12){
_windows[_12]._index=_12;
_windows[_12]._DOMElement.style.zIndex=_12;
}
if(!_13){
if(_f._DOMElement.CPDOMDisplayContext){
_f._DOMElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=6;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_f._DOMElement;
_f._isVisible=YES;
if(objj_msgSend(_f,"isFullBridge")){
objj_msgSend(_f,"setFrame:",objj_msgSend(_f._bridge,"visibleFrame"));
}
}
}
}),new objj_method(sel_getUid("orderedWindows"),function(_14,_15){
with(_14){
return _windows;
}
})]);
p;14;CPDragServer.jI;15;AppKit/CPView.jI;16;AppKit/CPEvent.jI;21;AppKit/CPPasteboard.jI;20;AppKit/CPImageView.jc;7236;
var _1=nil;
var _2=nil,_3=nil,_4=nil,_5=nil,_6=nil,_7=nil,_8=nil,_9=nil,_a=nil,_b=nil;
var _c=NO,_d=NO,_e=NO,_f=NO,_10=NO;
var _11=function(){
objj_msgSend(_3,"autoscroll:",_a);
};
var _12=function(_13){
_14(_13);
};
var _14=function(_15){
if(objj_msgSend(_15,"type")==CPLeftMouseUp){
if(_b!==nil){
clearInterval(_b);
}
_b=nil;
_6=objj_msgSend((objj_msgSend(_8,"isKindOfClass:",objj_msgSend(CPWindow,"class"))?_8:objj_msgSend(_8,"window")),"convertBridgeToBase:",objj_msgSend(objj_msgSend(_15,"window"),"convertBaseToBridge:",objj_msgSend(_15,"locationInWindow")));
objj_msgSend(_2,"removeFromSuperview");
objj_msgSend(_1._dragWindow,"orderOut:",nil);
if(_8&&(!objj_msgSend(_8,"respondsToSelector:",sel_getUid("prepareForDragOperation:"))||objj_msgSend(_8,"prepareForDragOperation:",_9))&&(!objj_msgSend(_8,"respondsToSelector:",sel_getUid("performDragOperation:"))||objj_msgSend(_8,"performDragOperation:",_9))&&objj_msgSend(_8,"respondsToSelector:",sel_getUid("concludeDragOperation:"))){
objj_msgSend(_8,"concludeDragOperation:",_9);
}
if(_10){
objj_msgSend(_3,"draggedImage:endedAt:operation:",objj_msgSend(_2,"image"),_6,NO);
}else{
if(_f){
objj_msgSend(_3,"draggedView:endedAt:operation:",_2,_6,NO);
}
}
_c=NO;
_8=nil;
return;
}
if(_b===nil){
if(objj_msgSend(_3,"respondsToSelector:",sel_getUid("autoscroll:"))){
_b=setInterval(_11,100);
}
}
_a=_15;
objj_msgSend(CPApp,"setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:",_14,CPMouseMovedMask|CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,0,NO);
var _16=objj_msgSend(_15,"locationInWindow"),_17=bridgeLocation=objj_msgSend(objj_msgSend(_15,"window"),"convertBaseToBridge:",_16);
var _18=objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"_dragHitTest:pasteboard:",bridgeLocation,_7);
_6=objj_msgSend((objj_msgSend(_18,"isKindOfClass:",objj_msgSend(CPWindow,"class"))?_18:objj_msgSend(_18,"window")),"convertBridgeToBase:",bridgeLocation);
if(_18!=_8){
if(_8&&objj_msgSend(_8,"respondsToSelector:",sel_getUid("draggingExited:"))){
objj_msgSend(_8,"draggingExited:",_9);
}
_8=_18;
if(_8&&objj_msgSend(_8,"respondsToSelector:",sel_getUid("draggingEntered:"))){
objj_msgSend(_8,"draggingEntered:",_9);
}
}else{
if(_8&&objj_msgSend(_8,"respondsToSelector:",sel_getUid("draggingUpdated:"))){
objj_msgSend(_8,"draggingUpdated:",_9);
}
}
_16.x-=_5.x;
_16.y-=_5.y;
objj_msgSend(_2,"setFrameOrigin:",_16);
if(_e){
objj_msgSend(_3,"draggedImage:movedTo:",objj_msgSend(_2,"image"),_16);
}else{
if(_d){
objj_msgSend(_3,"draggedView:movedTo:",_2,_16);
}
}
};
var _19=objj_allocateClassPair(CPObject,"CPDraggingInfo"),_1a=_19.isa;
objj_registerClassPair(_19);
objj_addClassForBundle(_19,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_19,[new objj_method(sel_getUid("draggingSource"),function(_1b,_1c){
with(_1b){
return _3;
}
}),new objj_method(sel_getUid("draggingLocation"),function(_1d,_1e){
with(_1d){
return _6;
}
}),new objj_method(sel_getUid("draggingPasteboard"),function(_1f,_20){
with(_1f){
return _7;
}
}),new objj_method(sel_getUid("draggedImage"),function(_21,_22){
with(_21){
return objj_msgSend(_2,"image");
}
}),new objj_method(sel_getUid("draggedImageLocation"),function(_23,_24){
with(_23){
return objj_msgSend(_23,"draggedViewLocation");
}
}),new objj_method(sel_getUid("draggedViewLocation"),function(_25,_26){
with(_25){
return objj_msgSend((objj_msgSend(_8,"isKindOfClass:",objj_msgSend(CPWindow,"class"))?_8:objj_msgSend(_8,"window")),"convertBridgeToBase:",objj_msgSend(_2,"frame").origin);
}
}),new objj_method(sel_getUid("draggedView"),function(_27,_28){
with(_27){
return _2;
}
})]);
var _19=objj_allocateClassPair(CPObject,"CPDragServer"),_1a=_19.isa;
class_addIvars(_19,[new objj_ivar("_dragWindow"),new objj_ivar("_imageView")]);
objj_registerClassPair(_19);
objj_addClassForBundle(_19,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_19,[new objj_method(sel_getUid("init"),function(_29,_2a){
with(_29){
_29=objj_msgSendSuper({receiver:_29,super_class:objj_getClass("CPObject")},"init");
if(_29){
_dragWindow=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",CPRectMakeZero(),CPBorderlessWindowMask);
objj_msgSend(_dragWindow,"setLevel:",CPDraggingWindowLevel);
}
return _29;
}
}),new objj_method(sel_getUid("dragView:fromWindow:at:offset:event:pasteboard:source:slideBack:"),function(_2b,_2c,_2d,_2e,_2f,_30,_31,_32,_33,_34){
with(_2b){
var _35=objj_msgSend(_31,"locationInWindow");
_2=_2d;
_3=_33;
_4=_2e;
_5=CPPointMake(_35.x-_2f.x,_35.y-_2f.y);
_7=objj_msgSend(CPPasteboard,"pasteboardWithName:",CPDragPboard);
objj_msgSend(_dragWindow,"setFrameSize:",CGSizeMakeCopy(objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"frame").size));
objj_msgSend(_dragWindow,"orderFront:",_2b);
objj_msgSend(_2d,"setFrameOrigin:",_2f);
objj_msgSend(objj_msgSend(_dragWindow,"contentView"),"addSubview:",_2d);
if(_c){
if(objj_msgSend(_3,"respondsToSelector:",sel_getUid("draggedImage:beganAt:"))){
objj_msgSend(_3,"draggedImage:beganAt:",objj_msgSend(_2d,"image"),_2f);
}
_e=objj_msgSend(_3,"respondsToSelector:",sel_getUid("draggedImage:movedTo:"));
_10=objj_msgSend(_3,"respondsToSelector:",sel_getUid("draggedImage:endAt:operation:"));
_d=NO;
_f=NO;
}else{
if(objj_msgSend(_3,"respondsToSelector:",sel_getUid("draggedView:beganAt:"))){
objj_msgSend(_3,"draggedView:beganAt:",_2d,_2f);
}
_d=objj_msgSend(_3,"respondsToSelector:",sel_getUid("draggedView:movedTo:"));
_f=objj_msgSend(_3,"respondsToSelector:",sel_getUid("draggedView:endedAt:operation:"));
_e=NO;
_10=NO;
}
_12(_31);
}
}),new objj_method(sel_getUid("dragImage:fromWindow:at:offset:event:pasteboard:source:slideBack:"),function(_36,_37,_38,_39,_3a,_3b,_3c,_3d,_3e,_3f){
with(_36){
_c=YES;
if(!_imageView){
_imageView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CPRectMakeZero());
}
objj_msgSend(_imageView,"setImage:",_38);
objj_msgSend(_imageView,"setFrameSize:",CGSizeMakeCopy(objj_msgSend(_38,"size")));
objj_msgSend(_36,"dragView:fromWindow:at:offset:event:pasteboard:source:slideBack:",_imageView,_39,_3a,_3b,_3c,_3d,_3e,_3f);
}
})]);
class_addMethods(_1a,[new objj_method(sel_getUid("initialize"),function(_40,_41){
with(_40){
if(_40!=objj_msgSend(CPDragServer,"class")){
return;
}
_9=objj_msgSend(objj_msgSend(CPDraggingInfo,"alloc"),"init");
}
}),new objj_method(sel_getUid("sharedDragServer"),function(_42,_43){
with(_42){
if(!_1){
_1=objj_msgSend(objj_msgSend(CPDragServer,"alloc"),"init");
}
return _1;
}
})]);
var _19=objj_getClass("CPWindow");
if(!_19){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPWindow\""));
}
var _1a=_19.isa;
class_addMethods(_19,[new objj_method(sel_getUid("_dragHitTest:pasteboard:"),function(_44,_45,_46,_47){
with(_44){
if(!_inclusiveRegisteredDraggedTypes){
return nil;
}
var _48={x:_46.x-(_frame.origin.x),y:_46.y-(_frame.origin.y)},_49=objj_msgSend(_windowView,"hitTest:",_48);
while(_49&&!objj_msgSend(_47,"availableTypeFromArray:",objj_msgSend(_49,"registeredDraggedTypes"))){
_49=objj_msgSend(_49,"superview");
}
if(_49){
return _49;
}
if(objj_msgSend(_47,"availableTypeFromArray:",objj_msgSend(_44,"registeredDraggedTypes"))){
return _44;
}
return nil;
}
})]);
p;9;CPEvent.jI;21;Foundation/CPObject.jc;8090;
CPLeftMouseDown=1;
CPLeftMouseUp=2;
CPRightMouseDown=3;
CPRightMouseUp=4;
CPMouseMoved=5;
CPLeftMouseDragged=6;
CPRightMouseDragged=7;
CPMouseEntered=8;
CPMouseExited=9;
CPKeyDown=10;
CPKeyUp=11;
CPFlagsChanged=12;
CPAppKitDefined=13;
CPSystemDefined=14;
CPApplicationDefined=15;
CPPeriodic=16;
CPCursorUpdate=17;
CPScrollWheel=22;
CPOtherMouseDown=25;
CPOtherMouseUp=26;
CPOtherMouseDragged=27;
CPTouchStart=28;
CPTouchMove=29;
CPTouchEnd=30;
CPTouchCancel=31;
CPAlphaShiftKeyMask=1<<16;
CPShiftKeyMask=1<<17;
CPControlKeyMask=1<<18;
CPAlternateKeyMask=1<<19;
CPCommandKeyMask=1<<20;
CPNumericPadKeyMask=1<<21;
CPHelpKeyMask=1<<22;
CPFunctionKeyMask=1<<23;
CPDeviceIndependentModifierFlagsMask=4294901760;
CPLeftMouseDownMask=1<<CPLeftMouseDown;
CPLeftMouseUpMask=1<<CPLeftMouseUp;
CPRightMouseDownMask=1<<CPRightMouseDown;
CPRightMouseUpMask=1<<CPRightMouseUp;
CPOtherMouseDownMask=1<<CPOtherMouseDown;
CPOtherMouseUpMask=1<<CPOtherMouseUp;
CPMouseMovedMask=1<<CPMouseMoved;
CPLeftMouseDraggedMask=1<<CPLeftMouseDragged;
CPRightMouseDraggedMask=1<<CPRightMouseDragged;
CPOtherMouseDragged=1<<CPOtherMouseDragged;
CPMouseEnteredMask=1<<CPMouseEntered;
CPMouseExitedMask=1<<CPMouseExited;
CPCursorUpdateMask=1<<CPCursorUpdate;
CPKeyDownMask=1<<CPKeyDown;
CPKeyUpMask=1<<CPKeyUp;
CPFlagsChangedMask=1<<CPFlagsChanged;
CPAppKitDefinedMask=1<<CPAppKitDefined;
CPSystemDefinedMask=1<<CPSystemDefined;
CPApplicationDefinedMask=1<<CPApplicationDefined;
CPPeriodicMask=1<<CPPeriodic;
CPScrollWheelMask=1<<CPScrollWheel;
CPAnyEventMask=4294967295;
CPDOMEventDoubleClick="dblclick",CPDOMEventMouseDown="mousedown",CPDOMEventMouseUp="mouseup",CPDOMEventMouseMoved="mousemove",CPDOMEventMouseDragged="mousedrag",CPDOMEventKeyUp="keyup",CPDOMEventKeyDown="keydown",CPDOMEventKeyPress="keypress";
CPDOMEventCopy="copy";
CPDOMEventPaste="paste";
CPDOMEventScrollWheel="mousewheel";
CPDOMEventTouchStart="touchstart";
CPDOMEventTouchMove="touchmove";
CPDOMEventTouchEnd="touchend";
CPDOMEventTouchCancel="touchcancel";
var _1=0,_2=nil;
var _3=objj_allocateClassPair(CPObject,"CPEvent"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_type"),new objj_ivar("_location"),new objj_ivar("_modifierFlags"),new objj_ivar("_timestamp"),new objj_ivar("_context"),new objj_ivar("_eventNumber"),new objj_ivar("_clickCount"),new objj_ivar("_pressure"),new objj_ivar("_window"),new objj_ivar("_windowNumber"),new objj_ivar("_characters"),new objj_ivar("_isARepeat"),new objj_ivar("_keyCode"),new objj_ivar("_DOMEvent"),new objj_ivar("_deltaX"),new objj_ivar("_deltaY"),new objj_ivar("_deltaZ")]);
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("_initMouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:"),function(_5,_6,_7,_8,_9,_a,_b,_c,_d,_e,_f){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPObject")},"init");
if(_5){
_type=_7;
_location=CPPointCreateCopy(_8);
_modifierFlags=_9;
_timestamp=_a;
_context=_c;
_eventNumber=_d;
_clickCount=_e;
_pressure=_f;
_window=objj_msgSend(CPApp,"windowWithWindowNumber:",_b);
}
return _5;
}
}),new objj_method(sel_getUid("_initKeyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:"),function(_10,_11,_12,_13,_14,_15,_16,_17,_18,_19,_1a,_1b){
with(_10){
_10=objj_msgSendSuper({receiver:_10,super_class:objj_getClass("CPObject")},"init");
if(_10){
_type=_12;
_location=CPPointCreateCopy(_13);
_modifierFlags=_14;
_timestamp=_15;
_context=_17;
_characters=_18;
_charactersIgnoringModifiers=_19;
_isARepeat=_1a;
_keyCode=_1b;
_windowNumber=_16;
}
return _10;
}
}),new objj_method(sel_getUid("_initOtherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:"),function(_1c,_1d,_1e,_1f,_20,_21,_22,_23,_24,_25,_26){
with(_1c){
_1c=objj_msgSendSuper({receiver:_1c,super_class:objj_getClass("CPObject")},"init");
if(_1c){
_type=_1e;
_location=CPPointCreateCopy(_1f);
_modifierFlags=_20;
_timestamp=_21;
_context=_23;
_subtype=_24;
_data1=_25;
_data2=_26;
}
return _1c;
}
}),new objj_method(sel_getUid("locationInWindow"),function(_27,_28){
with(_27){
return _location;
}
}),new objj_method(sel_getUid("modifierFlags"),function(_29,_2a){
with(_29){
return _modifierFlags;
}
}),new objj_method(sel_getUid("timestamp"),function(_2b,_2c){
with(_2b){
return _timestamp;
}
}),new objj_method(sel_getUid("type"),function(_2d,_2e){
with(_2d){
return _type;
}
}),new objj_method(sel_getUid("window"),function(_2f,_30){
with(_2f){
if(!_window){
_window=objj_msgSend(CPApp,"windowWithWindowNumber:",_windowNumber);
}
return _window;
}
}),new objj_method(sel_getUid("windowNumber"),function(_31,_32){
with(_31){
return _windowNumber;
}
}),new objj_method(sel_getUid("buttonNumber"),function(_33,_34){
with(_33){
return _buttonNumber;
}
}),new objj_method(sel_getUid("clickCount"),function(_35,_36){
with(_35){
return _clickCount;
}
}),new objj_method(sel_getUid("characters"),function(_37,_38){
with(_37){
return _characters;
}
}),new objj_method(sel_getUid("charactersIgnoringModifiers"),function(_39,_3a){
with(_39){
return _charactersIgnoringModifiers;
}
}),new objj_method(sel_getUid("isARepeat"),function(_3b,_3c){
with(_3b){
return _isARepeat;
}
}),new objj_method(sel_getUid("keyCode"),function(_3d,_3e){
with(_3d){
return _keyCode;
}
}),new objj_method(sel_getUid("pressure"),function(_3f,_40){
with(_3f){
return _pressure;
}
}),new objj_method(sel_getUid("_DOMEvent"),function(_41,_42){
with(_41){
return _DOMEvent;
}
}),new objj_method(sel_getUid("deltaX"),function(_43,_44){
with(_43){
return _deltaX;
}
}),new objj_method(sel_getUid("deltaY"),function(_45,_46){
with(_45){
return _deltaY;
}
}),new objj_method(sel_getUid("deltaZ"),function(_47,_48){
with(_47){
return _deltaZ;
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:"),function(_49,_4a,_4b,_4c,_4d,_4e,_4f,_50,_51,_52,_53,_54){
with(_49){
return objj_msgSend(objj_msgSend(_49,"alloc"),"_initKeyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:",_4b,_4c,_4d,_4e,_4f,_50,_51,_52,_53,_54);
}
}),new objj_method(sel_getUid("mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:"),function(_55,_56,_57,_58,_59,_5a,_5b,_5c,_5d,_5e,_5f){
with(_55){
return objj_msgSend(objj_msgSend(_55,"alloc"),"_initMouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",_57,_58,_59,_5a,_5b,_5c,_5d,_5e,_5f);
}
}),new objj_method(sel_getUid("otherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:"),function(_60,_61,_62,_63,_64,_65,_66,_67,_68,_69,_6a){
with(_60){
return objj_msgSend(objj_msgSend(_60,"alloc"),"_initOtherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:",_62,_63,_64,_65,_66,_67,_68,_69,_6a);
}
}),new objj_method(sel_getUid("startPeriodicEventsAfterDelay:withPeriod:"),function(_6b,_6c,_6d,_6e){
with(_6b){
_1=_6e;
_2=window.setTimeout(function(){
_2=window.setInterval(_CPEventFirePeriodEvent,_6e*1000);
},_6d*1000);
}
}),new objj_method(sel_getUid("stopPeriodicEvents"),function(_6f,_70){
with(_6f){
if(_2===nil){
return;
}
window.clearTimeout(_2);
_2=nil;
}
})]);
_CPEventFirePeriodEvent=function(){
objj_msgSend(CPApp,"sendEvent:",objj_msgSend(CPEvent,"otherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:",CPPeriodic,{x:0,y:0},0,0,0,nil,0,0,0));
};
var _71=objj_msgSend(CPEvent,"class");
_CPEventFromNativeMouseEvent=function(_72,_73,_74,_75,_76,_77,_78,_79,_7a,_7b){
_72.isa=_71;
_72._type=_73;
_72._location=_74;
_72._modifierFlags=_75;
_72._timestamp=_76;
_72._windowNumber=_77;
_72._window=nil;
_72._context=_78;
_72._eventNumber=_79;
_72._clickCount=_7a;
_72._pressure=_7b;
return _72;
};
p;14;CPFlashMovie.jI;21;Foundation/CPObject.jc;616;
var _1=objj_allocateClassPair(CPObject,"CPFlashMovie"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_fileName")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFile:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_fileName=_5;
}
return _3;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("flashMovieWithFile:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(objj_msgSend(_6,"alloc"),"initWithFile:",_8);
}
})]);
p;13;CPFlashView.ji;19;CPDOMWindowBridge.ji;14;CPFlashMovie.ji;8;CPView.jc;2148;
var _1=objj_allocateClassPair(CPView,"CPFlashView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_flashMovie"),new objj_ivar("_DOMEmbedElement"),new objj_ivar("_DOMMParamElement"),new objj_ivar("_DOMObjectElement")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPView")},"initWithFrame:",_5);
if(_3){
_DOMObjectElement=document.createElement("object");
_DOMObjectElement.width="100%";
_DOMObjectElement.height="100%";
_DOMObjectElement.style.top="0px";
_DOMObjectElement.style.left="0px";
_DOMParamElement=document.createElement("param");
_DOMParamElement.name="movie";
_DOMObjectElement.appendChild(_DOMParamElement);
var _6=document.createElement("param");
_6.name="wmode";
_6.value="transparent";
_DOMObjectElement.appendChild(_6);
_DOMEmbedElement=document.createElement("embed");
_DOMEmbedElement.type="application/x-shockwave-flash";
_DOMEmbedElement.setAttribute("wmode","transparent");
_DOMEmbedElement.width="100%";
_DOMEmbedElement.height="100%";
_DOMElement.appendChild(_DOMEmbedElement);
_DOMElement.appendChild(_DOMObjectElement);
}
return _3;
}
}),new objj_method(sel_getUid("setFlashMovie:"),function(_7,_8,_9){
with(_7){
if(_flashMovie==_9){
return;
}
_flashMovie=_9;
_DOMParamElement.value=_9._fileName;
if(_DOMEmbedElement){
_DOMEmbedElement.src=_9._fileName;
}
}
}),new objj_method(sel_getUid("flashMovie"),function(_a,_b){
with(_a){
return _flashMovie;
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_c,_d,_e){
with(_c){
objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"_propagateCurrentDOMEvent:",YES);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_f,_10,_11){
with(_f){
objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"_propagateCurrentDOMEvent:",YES);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_12,_13,_14){
with(_12){
objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"_propagateCurrentDOMEvent:",YES);
}
})]);
p;8;CPFont.jc;2706;
var _1={};
_CPFontSystemFontFace="Arial";
var _2=objj_allocateClassPair(CPObject,"CPFont"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_name"),new objj_ivar("_size"),new objj_ivar("_isBold"),new objj_ivar("_cssString")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("_initWithName:size:bold:"),function(_4,_5,_6,_7,_8){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPObject")},"init");
if(_4){
_name=_6;
_size=_7;
_isBold=_8;
_cssString=(_isBold?"bold ":"")+ROUND(_7)+"px '"+_6+"'";
_1[_cssString]=_4;
}
return _4;
}
}),new objj_method(sel_getUid("size"),function(_9,_a){
with(_9){
return _size;
}
}),new objj_method(sel_getUid("cssString"),function(_b,_c){
with(_b){
return _cssString;
}
}),new objj_method(sel_getUid("familyName"),function(_d,_e){
with(_d){
return _name;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("fontWithName:size:"),function(_f,_10,_11,_12){
with(_f){
return _1[(NO?"bold ":"")+ROUND(_12)+"px '"+_11+"'"]||objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:",_11,_12,NO);
}
}),new objj_method(sel_getUid("boldFontWithName:size:"),function(_13,_14,_15,_16){
with(_13){
return _1[(YES?"bold ":"")+ROUND(_16)+"px '"+_15+"'"]||objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:",_15,_16,YES);
}
}),new objj_method(sel_getUid("systemFontOfSize:"),function(_17,_18,_19){
with(_17){
return _1[(NO?"bold ":"")+ROUND(_19)+"px '"+_CPFontSystemFontFace+"'"]||objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:",_CPFontSystemFontFace,_19,NO);
}
}),new objj_method(sel_getUid("boldSystemFontOfSize:"),function(_1a,_1b,_1c){
with(_1a){
return _1[(YES?"bold ":"")+ROUND(_1c)+"px '"+_CPFontSystemFontFace+"'"]||objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:",_CPFontSystemFontFace,_1c,YES);
}
})]);
var _1d="CPFontNameKey",_1e="CPFontSizeKey",_1f="CPFontIsBoldKey";
var _2=objj_getClass("CPFont");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPFont\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_20,_21,_22){
with(_20){
return objj_msgSend(_20,"_initWithName:size:bold:",objj_msgSend(_22,"decodeObjectForKey:",_1d),objj_msgSend(_22,"decodeFloatForKey:",_1e),objj_msgSend(_22,"decodeBoolForKey:",_1f));
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_23,_24,_25){
with(_23){
objj_msgSend(_25,"encodeObject:forKey:",_name,_1d);
objj_msgSend(_25,"encodeFloat:forKey:",_size,_1e);
objj_msgSend(_25,"encodeBool:forKey:",_isBold,_1f);
}
})]);
p;15;CPFontManager.jI;21;Foundation/CPObject.jI;15;AppKit/CPFont.jc;3249;
var _1=nil,_2=Nil;
var _3=objj_allocateClassPair(CPObject,"CPFontManager"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_availableFonts")]);
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("availableFonts"),function(_5,_6){
with(_5){
if(!_availableFonts){
_7=document.createElement("span");
_7.fontSize="24px";
_7.appendChild(document.createTextNode("mmmmmmmmmml"));
var _8=document.createElement("div");
_8.style.position="absolute";
_8.style.top="-1000px";
_8.appendChild(_7);
document.getElementsByTagName("body")[0].appendChild(_8);
_9=_a(["monospace","serif","sans-serif","cursive"]);
_availableFonts=[];
for(var i=0;i<_c.length;i++){
var _d=_e(_c[i]);
if(_d){
_availableFonts.push(_c[i]);
}
}
}
return _availableFonts;
}
}),new objj_method(sel_getUid("fontWithNameIsAvailable:"),function(_f,_10,_11){
with(_f){
return _e(_11);
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("sharedFontManager"),function(_12,_13){
with(_12){
if(!_1){
_1=objj_msgSend(objj_msgSend(_2,"alloc"),"init");
}
return _1;
}
}),new objj_method(sel_getUid("setFontManagerFactory:"),function(_14,_15,_16){
with(_14){
_2=_16;
}
})]);
var _7,_9,_c=["American Typewriter","Apple Chancery","Arial","Arial Black","Arial Narrow","Arial Rounded MT Bold","Arial Unicode MS","Big Caslon","Bitstream Vera Sans","Bitstream Vera Sans Mono","Bitstream Vera Serif","Brush Script MT","Cambria","Caslon","Castellar","Cataneo BT","Centaur","Century Gothic","Century Schoolbook","Century Schoolbook L","Comic Sans","Comic Sans MS","Consolas","Constantia","Cooper Black","Copperplate","Copperplate Gothic Bold","Copperplate Gothic Light","Corbel","Courier","Courier New","Futura","Geneva","Georgia","Georgia Ref","Geeza Pro","Gigi","Gill Sans","Gill Sans MT","Gill Sans MT Condensed","Gill Sans MT Ext Condensed Bold","Gill Sans Ultra Bold","Gill Sans Ultra Bold Condensed","Helvetica","Helvetica Narrow","Helvetica Neue","Herculanum","High Tower Text","Highlight LET","Hoefler Text","Impact","Imprint MT Shadow","Lucida","Lucida Bright","Lucida Calligraphy","Lucida Console","Lucida Fax","Lucida Grande","Lucida Handwriting","Lucida Sans","Lucida Sans Typewriter","Lucida Sans Unicode","Marker Felt","Microsoft Sans Serif","Milano LET","Minion Web","MisterEarl BT","Mistral","Monaco","Monotype Corsiva","Monotype.com","New Century Schoolbook","New York","News Gothic MT","Papyrus","Tahoma","Techno","Tempus Sans ITC","Terminal","Textile","Times","Times New Roman","Tiranti Solid LET","Trebuchet MS","Verdana","Verdana Ref","Zapfino"];
var _e=function(_17){
for(var i=0;i<_9.length;i++){
if(_19(_9[i],_17)){
return true;
}
}
return false;
};
var _1a={};
var _19=function(_1b,_1c){
var a;
if(_1a[_1b]){
a=_1a[_1b];
}else{
_7.style.fontFamily="\""+_1b+"\"";
_1a[_1b]=a={w:_7.offsetWidth,h:_7.offsetHeight};
}
_7.style.fontFamily="\""+_1c+"\", \""+_1b+"\"";
var _1e=_7.offsetWidth;
var _1f=_7.offsetHeight;
return (a.w!=_1e||a.h!=_1f);
};
var _a=function(_20){
for(var i=0;i<_20.length;i++){
for(var j=0;j<i;j++){
if(_19(_20[i],_20[j])){
return [_20[i],_20[j]];
}
}
}
return [_20[0]];
};
objj_msgSend(CPFontManager,"setFontManagerFactory:",objj_msgSend(CPFontManager,"class"));
p;12;CPGeometry.ji;12;CGGeometry.jc;4107;
CPMinXEdge=0;
CPMinYEdge=1;
CPMaxXEdge=2;
CPMaxYEdge=3;
CPMakePoint=CGPointMake;
CPMakeSize=CGSizeMake;
CPMakeRect=CGRectMake;
CPPointCreateCopy=function(_1){
return {x:_1.x,y:_1.y};
};
CPPointMake=function(x,y){
return {x:x,y:y};
};
CPRectInset=function(_4,dX,dY){
return CPRectMake(_4.origin.x+dX,_4.origin.y+dY,_4.size.width-2*dX,_4.size.height-2*dY);
};
CPRectIntegral=function(_7){
alert("CPRectIntegral unimplemented");
};
CPRectIntersection=function(_8,_9){
var _a=CPRectMake(Math.max(CPRectGetMinX(_8),CPRectGetMinX(_9)),Math.max(CPRectGetMinY(_8),CPRectGetMinY(_9)),0,0);
_a.size.width=Math.min(CPRectGetMaxX(_8),CPRectGetMaxX(_9))-CPRectGetMinX(_a);
_a.size.height=Math.min(CPRectGetMaxY(_8),CPRectGetMaxY(_9))-CPRectGetMinY(_a);
return CPRectIsEmpty(_a)?CPRectMakeZero():_a;
};
CPRectCreateCopy=function(_b){
return {origin:CPPointCreateCopy(_b.origin),size:CPSizeCreateCopy(_b.size)};
};
CPRectMake=function(x,y,_e,_f){
return {origin:CPPointMake(x,y),size:CPSizeMake(_e,_f)};
};
CPRectOffset=function(_10,dX,dY){
return CPRectMake(_10.origin.x+dX,_10.origin.y+dY,_10.size.width,_10.size.height);
};
CPRectStandardize=function(_13){
var _14=CPRectGetWidth(_13),_15=CPRectGetHeight(_13),_16=CPRectCreateCopy(_13);
if(_14<0){
_16.origin.x+=_14;
_16.size.width=-_14;
}
if(_15<0){
_16.origin.y+=_15;
_16.size.height=-_15;
}
return _16;
};
CPRectUnion=function(_17,_18){
var _19=Math.min(CPRectGetMinX(_17),CPRectGetMinX(_18)),_1a=Math.min(CPRectGetMinY(_17),CPRectGetMinY(_18)),_1b=Math.max(CPRectGetMaxX(_17),CPRectGetMaxX(_18)),_1c=Math.max(CPRectGetMaxY(_17),CPRectGetMaxY(_18));
return CPRectMake(_19,_1a,_1b-_19,_1c-_1a);
};
CPSizeCreateCopy=function(_1d){
return {width:_1d.width,height:_1d.height};
};
CPSizeMake=function(_1e,_1f){
return {width:_1e,height:_1f};
};
CPRectContainsPoint=function(_20,_21){
return _21.x>=CPRectGetMinX(_20)&&_21.y>=CPRectGetMinY(_20)&&_21.x<CPRectGetMaxX(_20)&&_21.y<CPRectGetMaxY(_20);
};
CPRectContainsRect=function(_22,_23){
return CPRectEqualToRect(CPUnionRect(_22,_23),_23);
};
CPPointEqualToPoint=function(_24,_25){
return _24.x==_25.x&&_24.y==_25.y;
};
CPRectEqualToRect=function(_26,_27){
return CPPointEqualToPoint(_26.origin,_27.origin)&&CPSizeEqualToSize(_26.size,_27.size);
};
CPRectGetHeight=function(_28){
return _28.size.height;
};
CPRectGetMaxX=function(_29){
return _29.origin.x+_29.size.width;
};
CPRectGetMaxY=function(_2a){
return _2a.origin.y+_2a.size.height;
};
CPRectGetMidX=function(_2b){
return _2b.origin.x+(_2b.size.width)/2;
};
CPRectGetMidY=function(_2c){
return _2c.origin.y+(_2c.size.height)/2;
};
CPRectGetMinX=function(_2d){
return _2d.origin.x;
};
CPRectGetMinY=function(_2e){
return _2e.origin.y;
};
CPRectGetWidth=function(_2f){
return _2f.size.width;
};
CPRectIntersectsRect=function(_30,_31){
return !CPRectIsEmpty(CPRectIntersection(_30,_31));
};
CPRectIsEmpty=function(_32){
return _32.size.width<=0||_32.size.height<=0;
};
CPRectIsNull=function(_33){
return _33.size.width<=0||_33.size.height<=0;
};
CPSizeEqualToSize=function(_34,_35){
return _34.width==_35.width&&_34.height==_35.height;
};
CPStringFromPoint=function(_36){
return "{"+_36.x+", "+_36.y+"}";
};
CPStringFromSize=function(_37){
return "{"+_37.width+", "+_37.height+"}";
};
CPStringFromRect=function(_38){
return "{"+CPStringFromPoint(_38.origin)+", "+CPStringFromSize(_38.size)+"}";
};
CPPointFromString=function(_39){
var _3a=_39.indexOf(",");
return {x:parseFloat(_39.substr(1,_3a-1),10),y:parseFloat(_39.substring(_3a+1,_39.length),10)};
};
CPSizeFromString=function(_3b){
var _3c=_3b.indexOf(",");
return {width:parseFloat(_3b.substr(1,_3c-1),10),height:parseFloat(_3b.substring(_3c+1,_3b.length),10)};
};
CPRectFromString=function(_3d){
var _3e=_3d.indexOf(",",_3d.indexOf(",")+1);
return {origin:CPPointFromString(_3d.substr(1,_3e-1)),size:CPSizeFromString(_3d.substring(_3e+2,_3d.length))};
};
CPPointFromEvent=function(_3f){
return CPPointMake(_3f.clientX,_3f.clientY,0);
};
CPSizeMakeZero=function(){
return CPSizeMake(0,0);
};
CPRectMakeZero=function(){
return CPRectMake(0,0,0,0);
};
CPPointMakeZero=function(){
return CPPointMake(0,0,0);
};
p;19;CPGraphicsContext.jc;960;
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CPGraphicsContext"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_graphicsPort")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("initWithGraphicsPort:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPObject")},"init");
if(_4){
_graphicsPort=_6;
}
return _4;
}
}),new objj_method(sel_getUid("graphicsPort"),function(_7,_8){
with(_7){
return _graphicsPort;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("currentContext"),function(_9,_a){
with(_9){
return _1;
}
}),new objj_method(sel_getUid("setCurrentContext:"),function(_b,_c,_d){
with(_b){
_1=_d;
}
}),new objj_method(sel_getUid("graphicsContextWithGraphicsPort:flipped:"),function(_e,_f,_10,_11){
with(_e){
return objj_msgSend(objj_msgSend(_e,"alloc"),"initWithGraphicsPort:",_10);
}
})]);
p;9;CPImage.jI;21;Foundation/CPBundle.jI;33;Foundation/CPNotificationCenter.jI;21;Foundation/CPObject.jI;22;Foundation/CPRunLoop.jI;21;Foundation/CPString.ji;12;CPGeometry.jc;8936;
CPImageLoadStatusInitialized=0;
CPImageLoadStatusLoading=1;
CPImageLoadStatusCompleted=2;
CPImageLoadStatusCancelled=3;
CPImageLoadStatusInvalidData=4;
CPImageLoadStatusUnexpectedEOF=5;
CPImageLoadStatusReadError=6;
CPImageDidLoadNotification="CPImageDidLoadNotification";
CPImageInBundle=function(_1,_2,_3){
if(!_3){
_3=objj_msgSend(CPBundle,"mainBundle");
}
if(_2){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_3,"pathForResource:",_1),_2);
}
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_3,"pathForResource:",_1));
};
var _4=objj_getClass("CPBundle");
if(!_4){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPBundle\""));
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("pathForResource:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"resourcePath")+"/"+_8;
}
})]);
var _4=objj_allocateClassPair(CPObject,"CPImage"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_size"),new objj_ivar("_filename"),new objj_ivar("_delegate"),new objj_ivar("_loadStatus"),new objj_ivar("_image")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("initByReferencingFile:size:"),function(_9,_a,_b,_c){
with(_9){
_9=objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPObject")},"init");
if(_9){
_size=CPSizeCreateCopy(_c);
_filename=_b;
_loadStatus=CPImageLoadStatusInitialized;
}
return _9;
}
}),new objj_method(sel_getUid("initWithContentsOfFile:size:"),function(_d,_e,_f,_10){
with(_d){
_d=objj_msgSend(_d,"initByReferencingFile:size:",_f,_10);
if(_d){
objj_msgSend(_d,"load");
}
return _d;
}
}),new objj_method(sel_getUid("initWithContentsOfFile:"),function(_11,_12,_13){
with(_11){
_11=objj_msgSend(_11,"initByReferencingFile:size:",_13,CGSizeMake(-1,-1));
if(_11){
objj_msgSend(_11,"load");
}
return _11;
}
}),new objj_method(sel_getUid("filename"),function(_14,_15){
with(_14){
return _filename;
}
}),new objj_method(sel_getUid("setSize:"),function(_16,_17,_18){
with(_16){
_size=CGSizeMakeCopy(_18);
}
}),new objj_method(sel_getUid("size"),function(_19,_1a){
with(_19){
return _size;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_1b,_1c,_1d){
with(_1b){
_delegate=_1d;
}
}),new objj_method(sel_getUid("delegate"),function(_1e,_1f){
with(_1e){
return _delegate;
}
}),new objj_method(sel_getUid("loadStatus"),function(_20,_21){
with(_20){
return _loadStatus;
}
}),new objj_method(sel_getUid("load"),function(_22,_23){
with(_22){
if(_loadStatus==CPImageLoadStatusLoading||_loadStatus==CPImageLoadStatusCompleted){
return;
}
_loadStatus=CPImageLoadStatusLoading;
_image=new Image();
var _24=YES;
_image.onload=function(){
if(_24){
window.setTimeout(function(){
objj_msgSend(_22,"_imageDidLoad");
},0);
}else{
objj_msgSend(_22,"_imageDidLoad");
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
objj_msgSend(_22,"_derefFromImage");
};
_image.onerror=function(){
if(_24){
window.setTimeout(function(){
objj_msgSend(_22,"_imageDidError");
},0);
}else{
objj_msgSend(_22,"_imageDidError");
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
objj_msgSend(_22,"_derefFromImage");
};
_image.onabort=function(){
if(_24){
window.setTimeout(function(){
objj_msgSend(_22,"_imageDidAbort");
},0);
}else{
objj_msgSend(_22,"_imageDidAbort");
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
objj_msgSend(_22,"_derefFromImage");
};
_image.src=_filename;
_24=NO;
}
}),new objj_method(sel_getUid("isThreePartImage"),function(_25,_26){
with(_25){
return NO;
}
}),new objj_method(sel_getUid("isNinePartImage"),function(_27,_28){
with(_27){
return NO;
}
}),new objj_method(sel_getUid("_derefFromImage"),function(_29,_2a){
with(_29){
_image.onload=null;
_image.onerror=null;
_image.onabort=null;
}
}),new objj_method(sel_getUid("_imageDidLoad"),function(_2b,_2c){
with(_2b){
_loadStatus=CPImageLoadStatusCompleted;
if(!_size||(_size.width==-1&&_size.height==-1)){
_size=CGSizeMake(_image.width,_image.height);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPImageDidLoadNotification,_2b);
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imageDidLoad:"))){
objj_msgSend(_delegate,"imageDidLoad:",_2b);
}
}
}),new objj_method(sel_getUid("_imageDidError"),function(_2d,_2e){
with(_2d){
_loadStatus=CPImageLoadStatusReadError;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imageDidError:"))){
objj_msgSend(_delegate,"imageDidError:",_2d);
}
}
}),new objj_method(sel_getUid("_imageDidAbort"),function(_2f,_30){
with(_2f){
_loadStatus=CPImageLoadStatusCancelled;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imageDidAbort:"))){
objj_msgSend(_delegate,"imageDidAbort:",_2f);
}
}
})]);
var _4=objj_getClass("CPImage");
if(!_4){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPImage\""));
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_31,_32,_33){
with(_31){
return objj_msgSend(_31,"initWithContentsOfFile:size:",objj_msgSend(_33,"decodeObjectForKey:","CPFilename"),objj_msgSend(_33,"decodeSizeForKey:","CPSize"));
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_34,_35,_36){
with(_34){
objj_msgSend(_36,"encodeObject:forKey:",_filename,"CPFilename");
objj_msgSend(_36,"encodeSize:forKey:",_size,"CPSize");
}
})]);
var _4=objj_allocateClassPair(CPObject,"CPThreePartImage"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_imageSlices"),new objj_ivar("_isVertical")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("initWithImageSlices:isVertical:"),function(_37,_38,_39,_3a){
with(_37){
_37=objj_msgSendSuper({receiver:_37,super_class:objj_getClass("CPObject")},"init");
if(_37){
_imageSlices=_39;
_isVertical=_3a;
}
return _37;
}
}),new objj_method(sel_getUid("filename"),function(_3b,_3c){
with(_3b){
return "";
}
}),new objj_method(sel_getUid("imageSlices"),function(_3d,_3e){
with(_3d){
return _imageSlices;
}
}),new objj_method(sel_getUid("isVertical"),function(_3f,_40){
with(_3f){
return _isVertical;
}
}),new objj_method(sel_getUid("isThreePartImage"),function(_41,_42){
with(_41){
return YES;
}
}),new objj_method(sel_getUid("isNinePartImage"),function(_43,_44){
with(_43){
return NO;
}
})]);
var _45="CPThreePartImageImageSlicesKey",_46="CPThreePartImageIsVerticalKey";
var _4=objj_getClass("CPThreePartImage");
if(!_4){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPThreePartImage\""));
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_47,_48,_49){
with(_47){
_47=objj_msgSendSuper({receiver:_47,super_class:objj_getClass("CPObject")},"init");
if(_47){
_imageSlices=objj_msgSend(_49,"decodeObjectForKey:",_45);
_isVertical=objj_msgSend(_49,"decodeBoolForKey:",_46);
}
return _47;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_4a,_4b,_4c){
with(_4a){
objj_msgSend(_4c,"encodeObject:forKey:",_imageSlices,_45);
objj_msgSend(_4c,"encodeBool:forKey:",_isVertical,_46);
}
})]);
var _4=objj_allocateClassPair(CPObject,"CPNinePartImage"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_imageSlices")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("initWithImageSlices:"),function(_4d,_4e,_4f){
with(_4d){
_4d=objj_msgSendSuper({receiver:_4d,super_class:objj_getClass("CPObject")},"init");
if(_4d){
_imageSlices=_4f;
}
return _4d;
}
}),new objj_method(sel_getUid("filename"),function(_50,_51){
with(_50){
return "";
}
}),new objj_method(sel_getUid("imageSlices"),function(_52,_53){
with(_52){
return _imageSlices;
}
}),new objj_method(sel_getUid("isThreePartImage"),function(_54,_55){
with(_54){
return NO;
}
}),new objj_method(sel_getUid("isNinePartImage"),function(_56,_57){
with(_56){
return YES;
}
})]);
var _58="CPNinePartImageImageSlicesKey";
var _4=objj_getClass("CPNinePartImage");
if(!_4){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPNinePartImage\""));
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_59,_5a,_5b){
with(_59){
_59=objj_msgSendSuper({receiver:_59,super_class:objj_getClass("CPObject")},"init");
if(_59){
_imageSlices=objj_msgSend(_5b,"decodeObjectForKey:",_58);
}
return _59;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_5c,_5d,_5e){
with(_5c){
objj_msgSend(_5e,"encodeObject:forKey:",_imageSlices,_58);
}
})]);
p;13;CPImageView.jI;33;Foundation/CPNotificationCenter.ji;11;CPControl.ji;9;CPImage.ji;14;CPShadowView.jc;8593;
CPScaleProportionally=0;
CPScaleToFit=1;
CPScaleNone=2;
var _1=nil;
var _2=3,_3=3,_4=3,_5=5,_6=_4+_5,_7=_2+_3;
var _8=objj_allocateClassPair(CPControl,"CPImageView"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_DOMImageElement"),new objj_ivar("_hasShadow"),new objj_ivar("_shadowView"),new objj_ivar("_isEditable"),new objj_ivar("_imageRect")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("initWithFrame:"),function(_a,_b,_c){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPControl")},"initWithFrame:",_c);
if(_a){
_DOMImageElement=document.createElement("img");
_DOMImageElement.style.position="absolute";
_DOMImageElement.style.left="0px";
_DOMImageElement.style.top="0px";
if(_DOMImageElement.CPDOMDisplayContext){
_DOMImageElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=6;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMImageElement;
_DOMImageElement.style.visibility="hidden";
}
return _a;
}
}),new objj_method(sel_getUid("image"),function(_d,_e){
with(_d){
return objj_msgSend(_d,"objectValue");
}
}),new objj_method(sel_getUid("setImage:"),function(_f,_10,_11){
with(_f){
objj_msgSend(_f,"setObjectValue:",_11);
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_12,_13,_14){
with(_12){
var _15=objj_msgSend(_12,"objectValue");
if(_15===_14){
return;
}
objj_msgSendSuper({receiver:_12,super_class:objj_getClass("CPControl")},"setObjectValue:",_14);
var _16=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_15){
objj_msgSend(_16,"removeObserver:name:object:",_12,CPImageDidLoadNotification,_15);
}
var _17=objj_msgSend(_12,"objectValue");
_DOMImageElement.src=_17?objj_msgSend(_17,"filename"):"";
var _18=objj_msgSend(_17,"size");
if(_18&&_18.width===-1&&_18.height===-1){
objj_msgSend(_16,"addObserver:selector:name:object:",_12,sel_getUid("imageDidLoad:"),CPImageDidLoadNotification,_17);
_DOMImageElement.width=0;
_DOMImageElement.height=0;
objj_msgSend(_shadowView,"setHidden:",YES);
}else{
objj_msgSend(_12,"hideOrDisplayContents");
objj_msgSend(_12,"setNeedsLayout");
objj_msgSend(_12,"setNeedsDisplay:",YES);
}
}
}),new objj_method(sel_getUid("imageDidLoad:"),function(_19,_1a,_1b){
with(_19){
objj_msgSend(_19,"hideOrDisplayContents");
objj_msgSend(_19,"setNeedsLayout");
objj_msgSend(_19,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("hasShadow"),function(_1c,_1d){
with(_1c){
return _hasShadow;
}
}),new objj_method(sel_getUid("setHasShadow:"),function(_1e,_1f,_20){
with(_1e){
if(_hasShadow==_20){
return;
}
_hasShadow=_20;
if(_hasShadow){
_shadowView=objj_msgSend(objj_msgSend(CPShadowView,"alloc"),"initWithFrame:",objj_msgSend(_1e,"bounds"));
objj_msgSend(_1e,"addSubview:",_shadowView);
objj_msgSend(_1e,"setNeedsLayout");
objj_msgSend(_1e,"setNeedsDisplay:",YES);
}else{
objj_msgSend(_shadowView,"removeFromSuperview");
_shadowView=nil;
}
objj_msgSend(_1e,"hideOrDisplayContents");
}
}),new objj_method(sel_getUid("setImageScaling:"),function(_21,_22,_23){
with(_21){
objj_msgSendSuper({receiver:_21,super_class:objj_getClass("CPControl")},"setImageScaling:",_23);
if(objj_msgSend(_21,"currentValueForThemeAttribute:","image-scaling")===CPScaleToFit){
if(!_DOMImageElement.CPDOMDisplayContext){
_DOMImageElement.CPDOMDisplayContext=[];
}
var _24=_DOMImageElement.CPDOMDisplayContext[0];
if(!(_24>=0)){
_24=_DOMImageElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_24]=0;
CPDOMDisplayServerInstructions[_24+1]=_DOMImageElement;
CPDOMDisplayServerInstructions[_24+2]=NULL;
CPDOMDisplayServerInstructions[_24+3]=0;
CPDOMDisplayServerInstructions[_24+4]=0;
}
objj_msgSend(_21,"setNeedsLayout");
objj_msgSend(_21,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("hideOrDisplayContents"),function(_25,_26){
with(_25){
if(!objj_msgSend(_25,"image")){
_DOMImageElement.style.visibility="hidden";
objj_msgSend(_shadowView,"setHidden:",YES);
}else{
_DOMImageElement.style.visibility="visible";
objj_msgSend(_shadowView,"setHidden:",NO);
}
}
}),new objj_method(sel_getUid("imageRect"),function(_27,_28){
with(_27){
return _imageRect;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_29,_2a){
with(_29){
if(!objj_msgSend(_29,"image")){
return;
}
var _2b=objj_msgSend(_29,"bounds"),_2c=objj_msgSend(_29,"image"),_2d=objj_msgSend(_29,"currentValueForThemeAttribute:","image-scaling"),x=0,y=0,_30=(_hasShadow?_7:0),_31=(_hasShadow?_6:0),_32=(_2b.size.width),_33=(_2b.size.height),_34=_32-_30,_35=_33-_31;
if(_2d===CPScaleToFit){
_DOMImageElement.width=ROUND(_34);
_DOMImageElement.height=ROUND(_35);
}else{
var _36=objj_msgSend(_2c,"size");
if(_36.width==-1&&_36.height==-1){
return;
}
if(_2d===CPScaleProportionally){
if(_34>=_36.width&&_35>=_36.height){
_34=_36.width;
_35=_36.height;
}else{
var _37=_36.width/_36.height,_38=_34/_35;
if(_38>_37){
_34=_35*_37;
}else{
_35=_34/_37;
}
}
_DOMImageElement.width=ROUND(_34);
_DOMImageElement.height=ROUND(_35);
}else{
_34=_36.width;
_35=_36.height;
}
if(_2d==CPScaleNone){
_DOMImageElement.width=ROUND(_36.width);
_DOMImageElement.height=ROUND(_36.height);
}
var x=(_32-_34)/2,y=(_33-_35)/2;
if(!_DOMImageElement.CPDOMDisplayContext){
_DOMImageElement.CPDOMDisplayContext=[];
}
var _39=_DOMImageElement.CPDOMDisplayContext[0];
if(!(_39>=0)){
_39=_DOMImageElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_39]=0;
CPDOMDisplayServerInstructions[_39+1]=_DOMImageElement;
CPDOMDisplayServerInstructions[_39+2]=NULL;
CPDOMDisplayServerInstructions[_39+3]=x;
CPDOMDisplayServerInstructions[_39+4]=y;
}
_imageRect={origin:{x:x,y:y},size:{width:_34,height:_35}};
if(_hasShadow){
objj_msgSend(_shadowView,"setFrame:",{origin:{x:x-_2,y:y-_4},size:{width:_34+_30,height:_35+_31}});
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_3a,_3b,_3c){
with(_3a){
objj_msgSend(objj_msgSend(_3a,"nextResponder"),"mouseDown:",_3c);
}
}),new objj_method(sel_getUid("setEditable:"),function(_3d,_3e,_3f){
with(_3d){
if(_isEditable===_3f){
return;
}
_isEditable=_3f;
if(_isEditable){
objj_msgSend(_3d,"registerForDraggedTypes:",[CPImagesPboardType]);
}else{
var _40=objj_msgSend(_3d,"registeredDraggedTypes");
objj_msgSend(_3d,"unregisterDraggedTypes");
objj_msgSend(_40,"removeObjectIdenticalTo:",CPImagesPboardType);
objj_msgSend(_3d,"registerForDraggedTypes:",_40);
}
}
}),new objj_method(sel_getUid("isEditable"),function(_41,_42){
with(_41){
return _isEditable;
}
}),new objj_method(sel_getUid("performDragOperation:"),function(_43,_44,_45){
with(_43){
var _46=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",objj_msgSend(objj_msgSend(_45,"draggingPasteboard"),"dataForType:",CPImagesPboardType));
if(objj_msgSend(_46,"count")){
objj_msgSend(_43,"setImage:",_46[0]);
}
}
})]);
var _47="CPImageViewImageKey",_48="CPImageViewImageScalingKey",_49="CPImageViewHasShadowKey",_4a="CPImageViewIsEditableKey";
var _8=objj_getClass("CPImageView");
if(!_8){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPImageView\""));
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(_4b,_4c,_4d){
with(_4b){
_DOMImageElement=document.createElement("img");
_DOMImageElement.style.position="absolute";
_DOMImageElement.style.left="0px";
_DOMImageElement.style.top="0px";
_DOMImageElement.style.visibility="hidden";
_4b=objj_msgSendSuper({receiver:_4b,super_class:objj_getClass("CPControl")},"initWithCoder:",_4d);
if(_4b){
_DOMElement.appendChild(_DOMImageElement);
objj_msgSend(_4b,"setHasShadow:",objj_msgSend(_4d,"decodeBoolForKey:",_49));
if(objj_msgSend(_4d,"decodeBoolForKey:",_4a)||NO){
objj_msgSend(_4b,"setEditable:",YES);
}
objj_msgSend(_4b,"setNeedsLayout");
objj_msgSend(_4b,"setNeedsDisplay:",YES);
}
return _4b;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_4e,_4f,_50){
with(_4e){
if(_shadowView){
var _51=_subviews;
_subviews=objj_msgSend(_subviews,"copy");
objj_msgSend(_subviews,"removeObjectIdenticalTo:",_shadowView);
}
objj_msgSendSuper({receiver:_4e,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_50);
if(_shadowView){
_subviews=_51;
}
objj_msgSend(_50,"encodeBool:forKey:",_hasShadow,_49);
if(_isEditable){
objj_msgSend(_50,"encodeBool:forKey:",_isEditable,_4a);
}
}
})]);
p;8;CPMenu.jI;20;Foundation/CPArray.jI;25;Foundation/CPDictionary.jI;33;Foundation/CPNotificationCenter.jI;21;Foundation/CPString.ji;15;CPApplication.ji;12;CPClipView.ji;12;CPMenuItem.ji;9;CPPanel.jc;48184;
CPMenuDidAddItemNotification="CPMenuDidAddItemNotification";
CPMenuDidChangeItemNotification="CPMenuDidChangeItemNotification";
CPMenuDidRemoveItemNotification="CPMenuDidRemoveItemNotification";
CPMenuDidEndTrackingNotification="CPMenuDidEndTrackingNotification";
var _1=19;
var _2=NO,_3="",_4=nil,_5=1,_6=nil,_7=nil;
var _8=objj_allocateClassPair(CPObject,"CPMenu"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_supermenu"),new objj_ivar("_title"),new objj_ivar("_items"),new objj_ivar("_attachedMenu"),new objj_ivar("_autoenablesItems"),new objj_ivar("_showsStateColumn"),new objj_ivar("_delegate"),new objj_ivar("_highlightedIndex"),new objj_ivar("_menuWindow")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("menuBarHeight"),function(_a,_b){
with(_a){
if(_a==objj_msgSend(CPApp,"mainMenu")){
return _1;
}
return 0;
}
}),new objj_method(sel_getUid("initWithTitle:"),function(_c,_d,_e){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("CPObject")},"init");
if(_c){
_title=_e;
_items=[];
_autoenablesItems=YES;
_showsStateColumn=YES;
}
return _c;
}
}),new objj_method(sel_getUid("init"),function(_f,_10){
with(_f){
return objj_msgSend(_f,"initWithTitle:","");
}
}),new objj_method(sel_getUid("insertItem:atIndex:"),function(_11,_12,_13,_14){
with(_11){
var _15=objj_msgSend(_13,"menu");
if(_15){
if(_15!=_11){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Attempted to insert item into menu that was already in another menu.");
}else{
return;
}
}
objj_msgSend(_13,"setMenu:",_11);
objj_msgSend(_items,"insertObject:atIndex:",_13,_14);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPMenuDidAddItemNotification,_11,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_14,"CPMenuItemIndex"));
}
}),new objj_method(sel_getUid("insertItemWithTitle:action:keyEquivalent:atIndex:"),function(_16,_17,_18,_19,_1a,_1b){
with(_16){
var _1c=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",_18,_19,_1a);
objj_msgSend(_16,"insertItem:atIndex:",_1c,_1b);
return _1c;
}
}),new objj_method(sel_getUid("addItem:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSend(_1d,"insertItem:atIndex:",_1f,objj_msgSend(_items,"count"));
}
}),new objj_method(sel_getUid("addItemWithTitle:action:keyEquivalent:"),function(_20,_21,_22,_23,_24){
with(_20){
return objj_msgSend(_20,"insertItemWithTitle:action:keyEquivalent:atIndex:",_22,_23,_24,objj_msgSend(_items,"count"));
}
}),new objj_method(sel_getUid("removeItem:"),function(_25,_26,_27){
with(_25){
objj_msgSend(_25,"removeItemAtIndex:",objj_msgSend(_items,"indexOfObjectIdenticalTo:",_27));
}
}),new objj_method(sel_getUid("removeItemAtIndex:"),function(_28,_29,_2a){
with(_28){
if(_2a<0||_2a>=_items.length){
return;
}
objj_msgSend(_items[_2a],"setMenu:",nil);
objj_msgSend(_items,"removeObjectAtIndex:",_2a);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPMenuDidRemoveItemNotification,_28,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_2a,"CPMenuItemIndex"));
}
}),new objj_method(sel_getUid("itemChanged:"),function(_2b,_2c,_2d){
with(_2b){
if(objj_msgSend(_2d,"menu")!=_2b){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPMenuDidChangeItemNotification,_2b,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_items,"indexOfObjectIdenticalTo:",_2d),"CPMenuItemIndex"));
}
}),new objj_method(sel_getUid("menuWithTag:"),function(_2e,_2f,_30){
with(_2e){
var _31=objj_msgSend(_2e,"indexOfItemWithTag:",_30);
if(_31==CPNotFound){
return nil;
}
return _items[_31];
}
}),new objj_method(sel_getUid("menuWithTitle:"),function(_32,_33,_34){
with(_32){
var _35=objj_msgSend(_32,"indexOfItemWithTitle:",_34);
if(_35==CPNotFound){
return nil;
}
return _items[_35];
}
}),new objj_method(sel_getUid("itemAtIndex:"),function(_36,_37,_38){
with(_36){
return objj_msgSend(_items,"objectAtIndex:",_38);
}
}),new objj_method(sel_getUid("numberOfItems"),function(_39,_3a){
with(_39){
return objj_msgSend(_items,"count");
}
}),new objj_method(sel_getUid("itemArray"),function(_3b,_3c){
with(_3b){
return _items;
}
}),new objj_method(sel_getUid("indexOfItem:"),function(_3d,_3e,_3f){
with(_3d){
if(objj_msgSend(_3f,"menu")!=_3d){
return CPNotFound;
}
return objj_msgSend(_items,"indexOfObjectIdenticalTo:",_3f);
}
}),new objj_method(sel_getUid("indexOfItemWithTitle:"),function(_40,_41,_42){
with(_40){
var _43=0,_44=_items.length;
for(;_43<_44;++_43){
if(objj_msgSend(_items[_43],"title")===_42){
return _43;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithTag:"),function(_45,_46,_47){
with(_45){
var _48=0,_49=_items.length;
for(;_48<_49;++_48){
if(objj_msgSend(_items[_48],"tag")==_47){
return _48;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithTarget:andAction:"),function(_4a,_4b,_4c,_4d){
with(_4a){
var _4e=0,_4f=_items.length;
for(;_4e<_4f;++_4e){
var _50=_items[_4e];
if(objj_msgSend(_50,"target")==_4c&&(!_4d||objj_msgSend(_50,"action")==_4d)){
return _4e;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithRepresentedObject:"),function(_51,_52,_53){
with(_51){
var _54=0,_55=_items.length;
for(;_54<_55;++_54){
if(objj_msgSend(objj_msgSend(_items[_54],"representedObject"),"isEqual:",_53)){
return _54;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithSubmenu:"),function(_56,_57,_58){
with(_56){
var _59=0,_5a=_items.length;
for(;_59<_5a;++_59){
if(objj_msgSend(_items[_59],"submenu")==_58){
return _59;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("setSubmenu:forItem:"),function(_5b,_5c,_5d,_5e){
with(_5b){
objj_msgSend(_5e,"setTarget:",_5e);
objj_msgSend(_5e,"setAction:",sel_getUid("submenuAction:"));
objj_msgSend(_5e,"setSubmenu:",_5d);
}
}),new objj_method(sel_getUid("submenuAction:"),function(_5f,_60,_61){
with(_5f){
}
}),new objj_method(sel_getUid("attachedMenu"),function(_62,_63){
with(_62){
return _attachedMenu;
}
}),new objj_method(sel_getUid("isAttached"),function(_64,_65){
with(_64){
return _isAttached;
}
}),new objj_method(sel_getUid("locationOfSubmenu:"),function(_66,_67,_68){
with(_66){
}
}),new objj_method(sel_getUid("supermenu"),function(_69,_6a){
with(_69){
return _supermenu;
}
}),new objj_method(sel_getUid("setSupermenu:"),function(_6b,_6c,_6d){
with(_6b){
_supermenu=_6d;
}
}),new objj_method(sel_getUid("isTornOff"),function(_6e,_6f){
with(_6e){
return !_supermenu||_6e==objj_msgSend(CPApp,"mainMenu");
}
}),new objj_method(sel_getUid("setAutoenablesItems:"),function(_70,_71,_72){
with(_70){
_autoenablesItems=_72;
}
}),new objj_method(sel_getUid("autoenablesItems"),function(_73,_74){
with(_73){
return _autoenablesItems;
}
}),new objj_method(sel_getUid("update"),function(_75,_76){
with(_75){
}
}),new objj_method(sel_getUid("setTitle:"),function(_77,_78,_79){
with(_77){
_title=_79;
}
}),new objj_method(sel_getUid("title"),function(_7a,_7b){
with(_7a){
return _title;
}
}),new objj_method(sel_getUid("setShowsStateColumn:"),function(_7c,_7d,_7e){
with(_7c){
_showsStateColumn=_7e;
}
}),new objj_method(sel_getUid("showsStateColumn"),function(_7f,_80){
with(_7f){
return _showsStateColumn;
}
}),new objj_method(sel_getUid("highlightedItem"),function(_81,_82){
with(_81){
return _highlightedIndex>=0?_items[_highlightedIndex]:nil;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_83,_84,_85){
with(_83){
_delegate=_85;
}
}),new objj_method(sel_getUid("delegate"),function(_86,_87){
with(_86){
return _delegate;
}
}),new objj_method(sel_getUid("cancelTracking"),function(_88,_89){
with(_88){
objj_msgSend(_menuWindow,"cancelTracking");
}
}),new objj_method(sel_getUid("_setMenuWindow:"),function(_8a,_8b,_8c){
with(_8a){
_menuWindow=_8c;
}
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(_8d,_8e,_8f){
with(_8d){
if(_autoenablesItems){
objj_msgSend(_8d,"update");
}
var _90=0,_91=_items.length,_92=objj_msgSend(_8f,"charactersIgnoringModifiers"),_93=objj_msgSend(_8f,"modifierFlags");
for(;_90<_91;++_90){
var _94=_items[_90],_95=objj_msgSend(_94,"keyEquivalentModifierMask");
if((_93&(CPShiftKeyMask|CPAlternateKeyMask|CPCommandKeyMask|CPControlKeyMask))==_95&&objj_msgSend(_92,"caseInsensitiveCompare:",objj_msgSend(_94,"keyEquivalent"))==CPOrderedSame){
if(objj_msgSend(_94,"isEnabled")){
objj_msgSend(_8d,"performActionForItemAtIndex:",_90);
}else{
}
return YES;
}
if(objj_msgSend(objj_msgSend(_94,"submenu"),"performKeyEquivalent:",_8f)){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("performActionForItemAtIndex:"),function(_96,_97,_98){
with(_96){
var _99=_items[_98];
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_99,"action"),objj_msgSend(_99,"target"),_99);
}
}),new objj_method(sel_getUid("_itemIsHighlighted:"),function(_9a,_9b,_9c){
with(_9a){
return _items[_highlightedIndex]==_9c;
}
}),new objj_method(sel_getUid("_highlightItemAtIndex:"),function(_9d,_9e,_9f){
with(_9d){
var _a0=_highlightedIndex;
_highlightedIndex=_9f;
if(_a0!=CPNotFound){
objj_msgSend(objj_msgSend(_items[_a0],"_menuItemView"),"highlight:",NO);
}
if(_highlightedIndex!=CPNotFound){
objj_msgSend(objj_msgSend(_items[_highlightedIndex],"_menuItemView"),"highlight:",YES);
}
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("initialize"),function(_a1,_a2){
with(_a1){
objj_msgSend(objj_msgSend(_a1,"class"),"setMenuBarAttributes:",objj_msgSend(CPDictionary,"dictionary"));
}
}),new objj_method(sel_getUid("menuBarVisible"),function(_a3,_a4){
with(_a3){
return _2;
}
}),new objj_method(sel_getUid("setMenuBarVisible:"),function(_a5,_a6,_a7){
with(_a5){
if(_2==_a7){
return;
}
_2=_a7;
if(_a7){
if(!_7){
_7=objj_msgSend(objj_msgSend(_CPMenuBarWindow,"alloc"),"init");
}
objj_msgSend(_7,"setMenu:",objj_msgSend(CPApp,"mainMenu"));
objj_msgSend(_7,"setTitle:",_3);
objj_msgSend(_7,"setIconImage:",_4);
objj_msgSend(_7,"setIconImageAlphaValue:",_5);
objj_msgSend(_7,"setColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarBackgroundColor"));
objj_msgSend(_7,"setTextColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTextColor"));
objj_msgSend(_7,"setTitleColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTitleColor"));
objj_msgSend(_7,"setTextShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTextShadowColor"));
objj_msgSend(_7,"setTitleShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTitleShadowColor"));
objj_msgSend(_7,"setHighlightColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightColor"));
objj_msgSend(_7,"setHighlightTextColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightTextColor"));
objj_msgSend(_7,"setHighlightTextShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightTextShadowColor"));
objj_msgSend(_7,"orderFront:",_a5);
}else{
objj_msgSend(_7,"orderOut:",_a5);
}
objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"_bridgeResizeEvent:",nil);
}
}),new objj_method(sel_getUid("setMenuBarTitle:"),function(_a8,_a9,_aa){
with(_a8){
_3=_aa;
objj_msgSend(_7,"setTitle:",_3);
}
}),new objj_method(sel_getUid("menuBarTitle"),function(_ab,_ac){
with(_ab){
return _3;
}
}),new objj_method(sel_getUid("setMenuBarIconImage:"),function(_ad,_ae,_af){
with(_ad){
_CPMenuBarImage=_af;
objj_msgSend(_7,"setIconImage:",_af);
}
}),new objj_method(sel_getUid("menuBarIconImage"),function(_b0,_b1){
with(_b0){
return _CPMenuBarImage;
}
}),new objj_method(sel_getUid("setMenuBarAttributes:"),function(_b2,_b3,_b4){
with(_b2){
if(_6==_b4){
return;
}
_6=objj_msgSend(_b4,"copy");
var _b5=objj_msgSend(_b4,"objectForKey:","CPMenuBarTextColor"),_b6=objj_msgSend(_b4,"objectForKey:","CPMenuBarTitleColor"),_b7=objj_msgSend(_b4,"objectForKey:","CPMenuBarTextShadowColor"),_b8=objj_msgSend(_b4,"objectForKey:","CPMenuBarTitleShadowColor"),_b9=objj_msgSend(_b4,"objectForKey:","CPMenuBarHighlightColor"),_ba=objj_msgSend(_b4,"objectForKey:","CPMenuBarHighlightTextColor"),_bb=objj_msgSend(_b4,"objectForKey:","CPMenuBarHighlightTextShadowColor");
if(!_b5&&_b6){
objj_msgSend(_6,"setObject:forKey:",_b6,"CPMenuBarTextColor");
}else{
if(_b5&&!_b6){
objj_msgSend(_6,"setObject:forKey:",_b5,"CPMenuBarTitleColor");
}else{
if(!_b5&&!_b6){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0.051,0.2,0.275,1),"CPMenuBarTextColor");
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0.051,0.2,0.275,1),"CPMenuBarTitleColor");
}
}
}
if(!_b7&&_b8){
objj_msgSend(_6,"setObject:forKey:",_b8,"CPMenuBarTextShadowColor");
}else{
if(_b7&&!_b8){
objj_msgSend(_6,"setObject:forKey:",_b7,"CPMenuBarTitleShadowColor");
}else{
if(!_b7&&!_b8){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"whiteColor"),"CPMenuBarTextShadowColor");
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"whiteColor"),"CPMenuBarTitleShadowColor");
}
}
}
if(!_b9){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",94/255,130/255,186/255,1),"CPMenuBarHighlightColor");
}
if(!_ba){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"whiteColor"),"CPMenuBarHighlightTextColor");
}
if(!_bb){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"blackColor"),"CPMenuBarHighlightTextShadowColor");
}
if(_7){
objj_msgSend(_7,"setColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarBackgroundColor"));
objj_msgSend(_7,"setTextColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTextColor"));
objj_msgSend(_7,"setTitleColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTitleColor"));
objj_msgSend(_7,"setTextShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTextShadowColor"));
objj_msgSend(_7,"setTitleShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTitleShadowColor"));
objj_msgSend(_7,"setHighlightColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightColor"));
objj_msgSend(_7,"setHighlightTextColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightTextColor"));
objj_msgSend(_7,"setHighlightTextShadowColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarHighlightTextShadowColor"));
}
}
}),new objj_method(sel_getUid("menuBarAttributes"),function(_bc,_bd){
with(_bc){
return _6;
}
}),new objj_method(sel_getUid("_setMenuBarIconImageAlphaValue:"),function(_be,_bf,_c0){
with(_be){
_5=_c0;
objj_msgSend(_7,"setIconImageAlphaValue:",_c0);
}
}),new objj_method(sel_getUid("menuBarHeight"),function(_c1,_c2){
with(_c1){
return _1;
}
}),new objj_method(sel_getUid("popUpContextMenu:withEvent:forView:"),function(_c3,_c4,_c5,_c6,_c7){
with(_c3){
objj_msgSend(_c3,"popUpContextMenu:withEvent:forView:withFont:",_c5,_c6,_c7,nil);
}
}),new objj_method(sel_getUid("popUpContextMenu:withEvent:forView:withFont:"),function(_c8,_c9,_ca,_cb,_cc,_cd){
with(_c8){
objj_msgSend(_c8,"_popUpContextMenu:withEvent:forView:withFont:forMenuBar:",_ca,_cb,_cc,_cd,NO);
}
}),new objj_method(sel_getUid("_popUpContextMenu:withEvent:forView:withFont:forMenuBar:"),function(_ce,_cf,_d0,_d1,_d2,_d3,_d4){
with(_ce){
var _d5=objj_msgSend(_d0,"delegate");
if(objj_msgSend(_d5,"respondsToSelector:",sel_getUid("menuWillOpen:"))){
objj_msgSend(_d5,"menuWillOpen:",_d0);
}
if(!_d3){
_d3=objj_msgSend(CPFont,"systemFontOfSize:",12);
}
var _d6=objj_msgSend(_d2,"window"),_d7=objj_msgSend(_CPMenuWindow,"menuWindowWithMenu:font:",_d0,_d3);
objj_msgSend(_d7,"setDelegate:",_ce);
objj_msgSend(_d7,"setBackgroundStyle:",_d4?_CPMenuWindowMenuBarBackgroundStyle:_CPMenuWindowPopUpBackgroundStyle);
objj_msgSend(_d7,"setFrameOrigin:",objj_msgSend(objj_msgSend(_d1,"window"),"convertBaseToBridge:",objj_msgSend(_d1,"locationInWindow")));
objj_msgSend(_d7,"orderFront:",_ce);
objj_msgSend(_d7,"beginTrackingWithEvent:sessionDelegate:didEndSelector:",_d1,_ce,sel_getUid("_menuWindowDidFinishTracking:highlightedItem:"));
}
}),new objj_method(sel_getUid("_menuWindowDidFinishTracking:highlightedItem:"),function(_d8,_d9,_da,_db){
with(_d8){
var _dc=objj_msgSend(_da,"menu");
objj_msgSend(_CPMenuWindow,"poolMenuWindow:",_da);
var _dd=objj_msgSend(_dc,"delegate");
if(objj_msgSend(_dd,"respondsToSelector:",sel_getUid("menuDidClose:"))){
objj_msgSend(_dd,"menuDidClose:",_dc);
}
if(objj_msgSend(_db,"isEnabled")){
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_db,"action"),objj_msgSend(_db,"target"),_db);
}
}
})]);
var _de="CPMenuTitleKey",_df="CPMenuItemsKey",_e0="CPMenuShowsStateColumnKey";
var _8=objj_getClass("CPMenu");
if(!_8){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPMenu\""));
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(_e1,_e2,_e3){
with(_e1){
_e1=objj_msgSendSuper({receiver:_e1,super_class:objj_getClass("CPObject")},"init");
if(_e1){
_title=objj_msgSend(_e3,"decodeObjectForKey:",_de);
_items=objj_msgSend(_e3,"decodeObjectForKey:",_df);
_showsStateColumn=!objj_msgSend(_e3,"containsValueForKey:",_e0)||objj_msgSend(_e3,"decodeBoolForKey:",_e0);
}
return _e1;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_e4,_e5,_e6){
with(_e4){
objj_msgSend(_e6,"encodeObject:forKey:",_title,_de);
objj_msgSend(_e6,"encodeObject:forKey:",_items,_df);
if(!_showsStateColumn){
objj_msgSend(_e6,"encodeBool:forKey:",_showsStateColumn,_e0);
}
}
})]);
var _e7=[],_e8=5,_e9=[],_ea=-1,_eb=1,_ec=0;
_CPMenuWindowMenuBarBackgroundStyle=0;
_CPMenuWindowPopUpBackgroundStyle=1;
_CPMenuWindowAttachedMenuBackgroundStyle=2;
var _ed=500,_ee=5,_ef=1,_f0=1,_f1=5,_f2=16;
var _8=objj_allocateClassPair(CPWindow,"_CPMenuWindow"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_menuView"),new objj_ivar("_menuClipView"),new objj_ivar("_lastMouseOverMenuView"),new objj_ivar("_moreAboveView"),new objj_ivar("_moreBelowView"),new objj_ivar("_sessionDelegate"),new objj_ivar("_didEndSelector"),new objj_ivar("_startTime"),new objj_ivar("_scrollingState"),new objj_ivar("_lastScreenLocation"),new objj_ivar("_isShowingTopScrollIndicator"),new objj_ivar("_isShowingBottomScrollIndicator"),new objj_ivar("_trackingCanceled"),new objj_ivar("_unconstrainedFrame")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("init"),function(_f3,_f4){
with(_f3){
_f3=objj_msgSendSuper({receiver:_f3,super_class:objj_getClass("CPWindow")},"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessWindowMask);
if(_f3){
objj_msgSend(_f3,"setLevel:",CPPopUpMenuWindowLevel);
objj_msgSend(_f3,"setHasShadow:",YES);
objj_msgSend(_f3,"setAcceptsMouseMovedEvents:",YES);
_unconstrainedFrame=CGRectMakeZero();
var _f5=objj_msgSend(_f3,"contentView");
_menuView=objj_msgSend(objj_msgSend(_CPMenuView,"alloc"),"initWithFrame:",CGRectMakeZero());
_menuClipView=objj_msgSend(objj_msgSend(CPClipView,"alloc"),"initWithFrame:",CGRectMake(_ef,_ee,0,0));
objj_msgSend(_menuClipView,"setDocumentView:",_menuView);
objj_msgSend(_f5,"addSubview:",_menuClipView);
_moreAboveView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_moreAboveView,"setImage:",_CPMenuWindowMoreAboveImage);
objj_msgSend(_moreAboveView,"setFrameSize:",objj_msgSend(_CPMenuWindowMoreAboveImage,"size"));
objj_msgSend(_f5,"addSubview:",_moreAboveView);
_moreBelowView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_moreBelowView,"setImage:",_CPMenuWindowMoreBelowImage);
objj_msgSend(_moreBelowView,"setFrameSize:",objj_msgSend(_CPMenuWindowMoreBelowImage,"size"));
objj_msgSend(_f5,"addSubview:",_moreBelowView);
}
return _f3;
}
}),new objj_method(sel_getUid("overlapOffsetWidth"),function(_f6,_f7){
with(_f6){
return _ef;
}
}),new objj_method(sel_getUid("setFont:"),function(_f8,_f9,_fa){
with(_f8){
objj_msgSend(_menuView,"setFont:",_fa);
}
}),new objj_method(sel_getUid("setBackgroundStyle:"),function(_fb,_fc,_fd){
with(_fb){
var _fe=_e9[_fd];
if(!_fe){
var _ff=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_fb,"class"));
if(_fd==_CPMenuWindowPopUpBackgroundStyle){
_fe=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded0.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindow1.png"),CGSizeMake(1,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded2.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindow3.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindow4.png"),CGSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindow5.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded6.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindow7.png"),CGSizeMake(1,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded8.png"),CGSizeMake(4,4))]));
}else{
if(_fd==_CPMenuWindowMenuBarBackgroundStyle){
_fe=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindow3.png"),CGSizeMake(4,0)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindow4.png"),CGSizeMake(1,0)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindow5.png"),CGSizeMake(4,0)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindow3.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindow4.png"),CGSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindow5.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded6.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindow7.png"),CGSizeMake(1,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ff,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded8.png"),CGSizeMake(4,4))]));
}
}
_e9[_fd]=_fe;
}
objj_msgSend(_fb,"setBackgroundColor:",_fe);
}
}),new objj_method(sel_getUid("setMenu:"),function(self,_cmd,_102){
with(self){
objj_msgSend(_102,"_setMenuWindow:",self);
objj_msgSend(_menuView,"setMenu:",_102);
var _103=objj_msgSend(_menuView,"frame").size;
objj_msgSend(self,"setFrameSize:",CGSizeMake(_ef+_103.width+_f0,_ee+_103.height+_f1));
objj_msgSend(_menuView,"scrollPoint:",CGPointMake(0,0));
objj_msgSend(_menuClipView,"setFrame:",CGRectMake(_ef,_ee,_103.width,_103.height));
}
}),new objj_method(sel_getUid("setMinWidth:"),function(self,_cmd,_106){
with(self){
var size=objj_msgSend(self,"frame").size;
objj_msgSend(self,"setFrameSize:",CGSizeMake(MAX(size.width,_106),size.height));
}
}),new objj_method(sel_getUid("rectForItemAtIndex:"),function(self,_cmd,_10a){
with(self){
return objj_msgSend(_menuView,"convertRect:toView:",objj_msgSend(_menuView,"rectForItemAtIndex:",_10a),nil);
}
}),new objj_method(sel_getUid("orderFront:"),function(self,_cmd,_10d){
with(self){
objj_msgSend(self,"constrainToScreen");
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPWindow")},"orderFront:",_10d);
}
}),new objj_method(sel_getUid("constrainToScreen"),function(self,_cmd){
with(self){
_unconstrainedFrame=CGRectMakeCopy(objj_msgSend(self,"frame"));
var _110=CGRectInset(objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"contentBounds"),5,5),_111=CGRectIntersection(_unconstrainedFrame,_110),_112=objj_msgSend(self,"convertBaseToBridge:",CGPointMake(_ef,_ee));
_111.origin.x=CGRectGetMinX(_unconstrainedFrame);
_111.size.width=CGRectGetWidth(_unconstrainedFrame);
if(CGRectGetWidth(_111)>CGRectGetWidth(_110)){
_111.size.width=CGRectGetWidth(_110);
}
if(CGRectGetMaxX(_111)>CGRectGetMaxX(_110)){
_111.origin.x-=CGRectGetMaxX(_111)-CGRectGetMaxX(_110);
}
if(CGRectGetMinX(_111)<CGRectGetMinX(_110)){
_111.origin.x=CGRectGetMinX(_110);
}
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPWindow")},"setFrame:",_111);
var _113=_ee,_114=_f1,_115=objj_msgSend(self,"contentView"),_116=objj_msgSend(_115,"bounds");
var _117=_112.y<CGRectGetMinY(_111)+_ee,_118=_112.y+CGRectGetHeight(objj_msgSend(_menuView,"frame"))>CGRectGetMaxY(_111)-_f1;
if(_117){
_113+=_f2;
var _119=objj_msgSend(_moreAboveView,"frame");
objj_msgSend(_moreAboveView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_116)-CGRectGetWidth(_119))/2,(_ee+_f2-CGRectGetHeight(_119))/2));
}
objj_msgSend(_moreAboveView,"setHidden:",!_117);
if(_118){
_114+=_f2;
objj_msgSend(_moreBelowView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_116)-CGRectGetWidth(objj_msgSend(_moreBelowView,"frame")))/2,CGRectGetHeight(_116)-_f2-_f1));
}
objj_msgSend(_moreBelowView,"setHidden:",!_118);
var _11a=CGRectMake(_ef,_113,CGRectGetWidth(_111)-_ef-_f0,CGRectGetHeight(_111)-_113-_114);
objj_msgSend(_menuClipView,"setFrame:",_11a);
objj_msgSend(_menuView,"setFrameSize:",CGSizeMake(CGRectGetWidth(_11a),CGRectGetHeight(objj_msgSend(_menuView,"frame"))));
objj_msgSend(_menuView,"scrollPoint:",CGPointMake(0,objj_msgSend(self,"convertBaseToBridge:",_11a.origin).y-_112.y));
}
}),new objj_method(sel_getUid("cancelTracking"),function(self,_cmd){
with(self){
_trackingCanceled=YES;
}
}),new objj_method(sel_getUid("beginTrackingWithEvent:sessionDelegate:didEndSelector:"),function(self,_cmd,_11f,_120,_121){
with(self){
_startTime=objj_msgSend(_11f,"timestamp");
_scrollingState=_ec;
_trackingCanceled=NO;
_sessionDelegate=_120;
_didEndSelector=_121;
objj_msgSend(self,"trackEvent:",_11f);
}
}),new objj_method(sel_getUid("trackEvent:"),function(self,_cmd,_124){
with(self){
var type=objj_msgSend(_124,"type"),_126=objj_msgSend(_124,"window"),_127=_126?objj_msgSend(_126,"convertBaseToBridge:",objj_msgSend(_124,"locationInWindow")):objj_msgSend(_124,"locationInWindow");
if(type==CPPeriodic){
var _128=CGRectInset(objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"contentBounds"),5,5);
if(_scrollingState==_ea){
if(CGRectGetMinY(_unconstrainedFrame)<CGRectGetMinY(_128)){
_unconstrainedFrame.origin.y+=10;
}
}else{
if(_scrollingState==_eb){
if(CGRectGetMaxY(_unconstrainedFrame)>CGRectGetHeight(_128)){
_unconstrainedFrame.origin.y-=10;
}
}
}
objj_msgSend(self,"setFrame:",_unconstrainedFrame);
objj_msgSend(self,"constrainToScreen");
_127=_lastScreenLocation;
}
_lastScreenLocation=_127;
var menu=objj_msgSend(_menuView,"menu"),_12a=objj_msgSend(self,"convertBridgeToBase:",_127),_12b=objj_msgSend(_menuView,"itemIndexAtPoint:",objj_msgSend(_menuView,"convertPoint:fromView:",_12a,nil)),_12c=objj_msgSend(objj_msgSend(menu,"itemAtIndex:",_12b),"view");
if(_12c){
if(!_lastMouseOverMenuView){
objj_msgSend(menu,"_highlightItemAtIndex:",CPNotFound);
}
if(_lastMouseOverMenuView!=_12c){
objj_msgSend(_12c,"mouseExited:",_124);
objj_msgSend(_lastMouseOverMenuView,"mouseEntered:",_124);
_lastMouseOverMenuView=_12c;
}
objj_msgSend(self,"sendEvent:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",type,_12a,objj_msgSend(_124,"modifierFlags"),objj_msgSend(_124,"timestamp"),objj_msgSend(self,"windowNumber"),nil,0,objj_msgSend(_124,"clickCount"),objj_msgSend(_124,"pressure")));
}else{
if(_lastMouseOverMenuView){
objj_msgSend(_lastMouseOverMenuView,"mouseExited:",_124);
_lastMouseOverMenuView=nil;
}
objj_msgSend(menu,"_highlightItemAtIndex:",objj_msgSend(_menuView,"itemIndexAtPoint:",objj_msgSend(_menuView,"convertPoint:fromView:",objj_msgSend(self,"convertBridgeToBase:",_127),nil)));
if(type==CPMouseMoved||type==CPLeftMouseDragged||type==CPLeftMouseDown){
var _12d=objj_msgSend(self,"frame"),_12e=_scrollingState;
_scrollingState=_ec;
if(_127.y<CGRectGetMinY(_12d)+_ee+_f2){
_scrollingState=_ea;
}else{
if(_127.y>CGRectGetMaxY(_12d)-_f1-_f2){
_scrollingState=_eb;
}
}
if(_scrollingState!=_12e){
if(_scrollingState==_ec){
objj_msgSend(CPEvent,"stopPeriodicEvents");
}else{
if(_12e==_ec){
objj_msgSend(CPEvent,"startPeriodicEventsAfterDelay:withPeriod:",0,0.04);
}
}
}
}else{
if(type==CPLeftMouseUp&&(objj_msgSend(_124,"timestamp")-_startTime>_ed)){
if(_scrollingState!=_ec){
objj_msgSend(CPEvent,"stopPeriodicEvents");
}
objj_msgSend(self,"cancelTracking");
}
}
}
if(_trackingCanceled){
objj_msgSend(CPEvent,"stopPeriodicEvents");
var _12f=objj_msgSend(objj_msgSend(_menuView,"menu"),"highlightedItem");
objj_msgSend(menu,"_highlightItemAtIndex:",CPNotFound);
objj_msgSend(_menuView,"setMenu:",nil);
objj_msgSend(self,"orderOut:",self);
if(_sessionDelegate&&_didEndSelector){
objj_msgSend(_sessionDelegate,_didEndSelector,self,_12f);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPMenuDidEndTrackingNotification,menu);
var _130=objj_msgSend(menu,"delegate");
if(objj_msgSend(_130,"respondsToSelector:",sel_getUid("menuDidClose:"))){
objj_msgSend(_130,"menuDidClose:",menu);
}
return;
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",self,sel_getUid("trackEvent:"),CPPeriodicMask|CPMouseMovedMask|CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("menuWindowWithMenu:font:"),function(self,_cmd,_133,_134){
with(self){
var _135=nil;
if(_e7.length){
_135=_e7.pop();
}else{
_135=objj_msgSend(objj_msgSend(_CPMenuWindow,"alloc"),"init");
}
objj_msgSend(_135,"setFont:",_134);
objj_msgSend(_135,"setMenu:",_133);
return _135;
}
}),new objj_method(sel_getUid("poolMenuWindow:"),function(self,_cmd,_138){
with(self){
if(!_138||_e7.length>=_e8){
return;
}
_e7.push(_138);
}
}),new objj_method(sel_getUid("initialize"),function(self,_cmd){
with(self){
if(self!=objj_msgSend(_CPMenuWindow,"class")){
return;
}
var _13b=objj_msgSend(CPBundle,"bundleForClass:",self);
_CPMenuWindowMoreAboveImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_13b,"pathForResource:","_CPMenuWindow/_CPMenuWindowMoreAbove.png"),CGSizeMake(38,18));
_CPMenuWindowMoreBelowImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_13b,"pathForResource:","_CPMenuWindow/_CPMenuWindowMoreBelow.png"),CGSizeMake(38,18));
}
})]);
var _8=objj_allocateClassPair(CPView,"_CPMenuView"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_menuItemViews"),new objj_ivar("_visibleMenuItemInfos"),new objj_ivar("_font")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("setFont:"),function(self,_cmd,_13e){
with(self){
_font=_13e;
}
}),new objj_method(sel_getUid("rectForItemAtIndex:"),function(self,_cmd,_141){
with(self){
return objj_msgSend(_menuItemViews[_141==CPNotFound?0:_141],"frame");
}
}),new objj_method(sel_getUid("itemIndexAtPoint:"),function(self,_cmd,_144){
with(self){
var x=_144.x,_146=objj_msgSend(self,"bounds");
if(x<CGRectGetMinX(_146)||x>CGRectGetMaxX(_146)){
return CPNotFound;
}
var y=_144.y,low=0,high=_visibleMenuItemInfos.length-1;
while(low<=high){
var _14a=FLOOR(low+(high-low)/2),info=_visibleMenuItemInfos[_14a];
frame=objj_msgSend(info.view,"frame");
if(y<CGRectGetMinY(frame)){
high=_14a-1;
}else{
if(y>CGRectGetMaxY(frame)){
low=_14a+1;
}else{
return info.index;
}
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("setMenu:"),function(self,_cmd,_14e){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPView")},"setMenu:",_14e);
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:",sel_getUid("removeFromSuperview"));
_menuItemViews=[];
_visibleMenuItemInfos=[];
var menu=objj_msgSend(self,"menu");
if(!menu){
return;
}
var _150=objj_msgSend(menu,"itemArray"),_151=0,_152=objj_msgSend(_150,"count"),_153=0,y=0,_155=objj_msgSend(menu,"showsStateColumn");
for(;_151<_152;++_151){
var item=_150[_151],view=objj_msgSend(item,"_menuItemView");
_menuItemViews.push(view);
if(objj_msgSend(item,"isHidden")){
continue;
}
_visibleMenuItemInfos.push({view:view,index:_151});
objj_msgSend(view,"setFont:",_font);
objj_msgSend(view,"setShowsStateColumn:",_155);
objj_msgSend(view,"synchronizeWithMenuItem");
objj_msgSend(view,"setFrameOrigin:",CGPointMake(0,y));
objj_msgSend(self,"addSubview:",view);
var size=objj_msgSend(view,"minSize"),_159=size.width;
if(_153<_159){
_153=_159;
}
y+=size.height;
}
for(_151=0;_151<_152;++_151){
var view=_menuItemViews[_151];
objj_msgSend(view,"setFrameSize:",CGSizeMake(_153,CGRectGetHeight(objj_msgSend(view,"frame"))));
}
objj_msgSend(self,"setAutoresizesSubviews:",NO);
objj_msgSend(self,"setFrameSize:",CGSizeMake(_153,y));
objj_msgSend(self,"setAutoresizesSubviews:",YES);
}
})]);
var _1=29,_15a=10,_15b=10,_15c=10;
var _15d=nil,_15e=nil;
var _8=objj_allocateClassPair(CPPanel,"_CPMenuBarWindow"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_menu"),new objj_ivar("_highlightView"),new objj_ivar("_menuItemViews"),new objj_ivar("_trackingMenuItem"),new objj_ivar("_iconImageView"),new objj_ivar("_titleField"),new objj_ivar("_textColor"),new objj_ivar("_titleColor"),new objj_ivar("_textShadowColor"),new objj_ivar("_titleShadowColor"),new objj_ivar("_highlightColor"),new objj_ivar("_highlightTextColor"),new objj_ivar("_highlightTextShadowColor")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("init"),function(self,_cmd){
with(self){
var _161=CGRectGetWidth(objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"contentBounds"));
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPPanel")},"initWithContentRect:styleMask:",CGRectMake(0,0,_161,_1),CPBorderlessWindowMask);
if(self){
objj_msgSend(self,"setLevel:",-1);
objj_msgSend(self,"setAutoresizingMask:",CPWindowWidthSizable);
var _162=objj_msgSend(self,"contentView");
objj_msgSend(_162,"setAutoresizesSubviews:",NO);
objj_msgSend(self,"setBecomesKeyOnlyIfNeeded:",YES);
_iconImageView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(0,0,16,16));
objj_msgSend(_162,"addSubview:",_iconImageView);
_titleField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_titleField,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",12));
objj_msgSend(_titleField,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_titleField,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_162,"addSubview:",_titleField);
}
return self;
}
}),new objj_method(sel_getUid("setTitle:"),function(self,_cmd,_165){
with(self){
var _166=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPBundleName");
if(!objj_msgSend(_166,"length")){
document.title=_165;
}else{
if(objj_msgSend(_165,"length")){
document.title=_165+" - "+_166;
}else{
document.title=_166;
}
}
objj_msgSend(_titleField,"setStringValue:",_165);
objj_msgSend(_titleField,"sizeToFit");
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("setIconImage:"),function(self,_cmd,_169){
with(self){
objj_msgSend(_iconImageView,"setImage:",_169);
objj_msgSend(_iconImageView,"setHidden:",_169==nil);
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("setIconImageAlphaValue:"),function(self,_cmd,_16c){
with(self){
objj_msgSend(_iconImageView,"setAlphaValue:",_16c);
}
}),new objj_method(sel_getUid("setColor:"),function(self,_cmd,_16f){
with(self){
if(!_16f){
if(!_15d){
_15d=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_CPMenuBarWindow,"class")),"pathForResource:","_CPMenuBarWindow/_CPMenuBarWindowBackground.png"),CGSizeMake(1,18)));
}
objj_msgSend(objj_msgSend(self,"contentView"),"setBackgroundColor:",_15d);
}else{
objj_msgSend(objj_msgSend(self,"contentView"),"setBackgroundColor:",_16f);
}
}
}),new objj_method(sel_getUid("setTextColor:"),function(self,_cmd,_172){
with(self){
if(_textColor==_172){
return;
}
_textColor=_172;
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setTextColor:"),_textColor);
}
}),new objj_method(sel_getUid("setTitleColor:"),function(self,_cmd,_175){
with(self){
if(_titleColor==_175){
return;
}
_titleColor=_175;
objj_msgSend(_titleField,"setTextColor:",_175?_175:objj_msgSend(CPColor,"blackColor"));
}
}),new objj_method(sel_getUid("setTextShadowColor:"),function(self,_cmd,_178){
with(self){
if(_textShadowColor==_178){
return;
}
_textShadowColor=_178;
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setTextShadowColor:"),_textShadowColor);
}
}),new objj_method(sel_getUid("setTitleShadowColor:"),function(self,_cmd,_17b){
with(self){
if(_titleShadowColor==_17b){
return;
}
_titleShadowColor=_17b;
objj_msgSend(_titleField,"setTextShadowColor:",_17b?_17b:objj_msgSend(CPColor,"whiteColor"));
}
}),new objj_method(sel_getUid("setHighlightColor:"),function(self,_cmd,_17e){
with(self){
if(_highlightColor==_17e){
return;
}
_highlightColor=_17e;
}
}),new objj_method(sel_getUid("setHighlightTextColor:"),function(self,_cmd,_181){
with(self){
if(_highlightTextColor==_181){
return;
}
_highlightTextColor=_181;
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setActivateColor:"),_highlightTextColor);
}
}),new objj_method(sel_getUid("setHighlightTextShadowColor:"),function(self,_cmd,_184){
with(self){
if(_highlightTextShadowColor==_184){
return;
}
_highlightTextShadowColor=_184;
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setActivateShadowColor:"),_highlightTextShadowColor);
}
}),new objj_method(sel_getUid("setMenu:"),function(self,_cmd,_187){
with(self){
if(_menu==_187){
return;
}
var _188=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_menu){
objj_msgSend(_188,"removeObserver:name:object:",self,CPMenuDidAddItemNotification,_menu);
objj_msgSend(_188,"removeObserver:name:object:",self,CPMenuDidChangeItemNotification,_menu);
objj_msgSend(_188,"removeObserver:name:object:",self,CPMenuDidRemoveItemNotification,_menu);
var _189=objj_msgSend(_menu,"itemArray"),_18a=_189.length;
while(_18a--){
objj_msgSend(objj_msgSend(_189[_18a],"_menuItemView"),"removeFromSuperview");
}
}
_menu=_187;
if(_menu){
objj_msgSend(_188,"addObserver:selector:name:object:",self,sel_getUid("menuDidAddItem:"),CPMenuDidAddItemNotification,_menu);
objj_msgSend(_188,"addObserver:selector:name:object:",self,sel_getUid("menuDidChangeItem:"),CPMenuDidChangeItemNotification,_menu);
objj_msgSend(_188,"addObserver:selector:name:object:",self,sel_getUid("menuDidRemoveItem:"),CPMenuDidRemoveItemNotification,_menu);
}
_menuItemViews=[];
var _18b=objj_msgSend(self,"contentView"),_189=objj_msgSend(_menu,"itemArray"),_18a=_189.length;
for(index=0;index<_18a;++index){
var item=_189[index],_18d=objj_msgSend(item,"_menuItemView");
_menuItemViews.push(_18d);
objj_msgSend(_18d,"setShowsStateColumn:",NO);
objj_msgSend(_18d,"setBelongsToMenuBar:",YES);
objj_msgSend(_18d,"setFont:",_15e);
objj_msgSend(_18d,"setTextColor:",_textColor);
objj_msgSend(_18d,"setHidden:",objj_msgSend(item,"isHidden"));
objj_msgSend(_18d,"synchronizeWithMenuItem");
objj_msgSend(_18b,"addSubview:",_18d);
}
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("menuDidChangeItem:"),function(self,_cmd,_190){
with(self){
var _191=objj_msgSend(_menu,"itemAtIndex:",objj_msgSend(objj_msgSend(_190,"userInfo"),"objectForKey:","CPMenuItemIndex")),_192=objj_msgSend(_191,"_menuItemView");
objj_msgSend(_192,"setHidden:",objj_msgSend(_191,"isHidden"));
objj_msgSend(_192,"synchronizeWithMenuItem");
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("menuDidAddItem:"),function(self,_cmd,_195){
with(self){
var _196=objj_msgSend(objj_msgSend(_195,"userInfo"),"objectForKey:","CPMenuItemIndex"),_197=objj_msgSend(_menu,"itemAtIndex:",_196),_198=objj_msgSend(_197,"_menuItemView");
objj_msgSend(_menuItemViews,"insertObject:atIndex:",_198,_196);
objj_msgSend(_198,"setShowsStateColumn:",NO);
objj_msgSend(_198,"setBelongsToMenuBar:",YES);
objj_msgSend(_198,"setFont:",_15e);
objj_msgSend(_198,"setTextColor:",_textColor);
objj_msgSend(_198,"setHidden:",objj_msgSend(_197,"isHidden"));
objj_msgSend(_198,"synchronizeWithMenuItem");
objj_msgSend(objj_msgSend(self,"contentView"),"addSubview:",_198);
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("menuDidRemoveItem:"),function(self,_cmd,_19b){
with(self){
var _19c=objj_msgSend(objj_msgSend(_19b,"userInfo"),"objectForKey:","CPMenuItemIndex"),_19d=objj_msgSend(_menuItemViews,"objectAtIndex:",_19c);
objj_msgSend(_menuItemViews,"removeObjectAtIndex:",_19c);
objj_msgSend(_19d,"removeFromSuperview");
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("frameForMenuItem:"),function(self,_cmd,_1a0){
with(self){
var _1a1=objj_msgSend(objj_msgSend(_1a0,"_menuItemView"),"frame");
_1a1.origin.x-=5;
_1a1.origin.y=0;
_1a1.size.width+=10;
_1a1.size.height=_1;
return _1a1;
}
}),new objj_method(sel_getUid("menuItemAtPoint:"),function(self,_cmd,_1a4){
with(self){
var _1a5=objj_msgSend(_menu,"itemArray"),_1a6=_1a5.length;
while(_1a6--){
var item=_1a5[_1a6];
if(objj_msgSend(item,"isHidden")||objj_msgSend(item,"isSeparatorItem")){
continue;
}
if(CGRectContainsPoint(objj_msgSend(self,"frameForMenuItem:",item),_1a4)){
return item;
}
}
return nil;
}
}),new objj_method(sel_getUid("mouseDown:"),function(self,_cmd,_1aa){
with(self){
_trackingMenuItem=objj_msgSend(self,"menuItemAtPoint:",objj_msgSend(_1aa,"locationInWindow"));
if(!objj_msgSend(_trackingMenuItem,"isEnabled")){
return;
}
if(objj_msgSend(objj_msgSend(_trackingMenuItem,"_menuItemView"),"eventOnSubmenu:",_1aa)){
return objj_msgSend(self,"showMenu:",_1aa);
}
if(objj_msgSend(_trackingMenuItem,"isEnabled")){
objj_msgSend(self,"trackEvent:",_1aa);
}
}
}),new objj_method(sel_getUid("trackEvent:"),function(self,_cmd,_1ad){
with(self){
var type=objj_msgSend(_1ad,"type");
if(type===CPPeriodic){
return objj_msgSend(self,"showMenu:",_1ad);
}
var _1af=objj_msgSend(self,"frameForMenuItem:",_trackingMenuItem),_1b0=objj_msgSend(_trackingMenuItem,"_menuItemView"),_1b1=CGRectContainsPoint(_1af,objj_msgSend(_1ad,"locationInWindow"));
if(type==CPLeftMouseDown){
if(objj_msgSend(_trackingMenuItem,"submenu")!=nil){
var _1b2=objj_msgSend(_trackingMenuItem,"action");
if(!_1b2||_1b2===sel_getUid("submenuAction:")){
return objj_msgSend(self,"showMenu:",_1ad);
}
objj_msgSend(CPEvent,"startPeriodicEventsAfterDelay:withPeriod:",0,0.5);
}
objj_msgSend(_1b0,"highlight:",_1b1);
}else{
if(type==CPLeftMouseDragged){
if(!_1b1&&objj_msgSend(_trackingMenuItem,"submenu")){
return objj_msgSend(self,"showMenu:",_1ad);
}
objj_msgSend(_1b0,"highlight:",_1b1);
}else{
objj_msgSend(CPEvent,"stopPeriodicEvents");
objj_msgSend(_1b0,"highlight:",NO);
if(_1b1){
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_trackingMenuItem,"action"),objj_msgSend(_trackingMenuItem,"target"),_trackingMenuItem);
}
return;
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",self,sel_getUid("trackEvent:"),CPPeriodicMask|CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("showMenu:"),function(self,_cmd,_1b5){
with(self){
objj_msgSend(CPEvent,"stopPeriodicEvents");
var _1b6=objj_msgSend(self,"frameForMenuItem:",_trackingMenuItem),_1b7=objj_msgSend(_trackingMenuItem,"_menuItemView");
if(!_highlightView){
_highlightView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_1b6);
objj_msgSend(_highlightView,"setBackgroundColor:",_highlightColor?_highlightColor:objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",95/255,131/255,185/255,1));
}else{
objj_msgSend(_highlightView,"setFrame:",_1b6);
}
objj_msgSend(objj_msgSend(self,"contentView"),"addSubview:positioned:relativeTo:",_highlightView,CPWindowBelow,_1b7);
objj_msgSend(_1b7,"activate:",YES);
var _1b8=objj_msgSend(_trackingMenuItem,"submenu");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",self,sel_getUid("menuDidEndTracking:"),CPMenuDidEndTrackingNotification,_1b8);
objj_msgSend(CPMenu,"_popUpContextMenu:withEvent:forView:withFont:forMenuBar:",_1b8,objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPLeftMouseDown,CGPointMake(CGRectGetMinX(_1b6),CGRectGetMaxY(_1b6)),objj_msgSend(_1b5,"modifierFlags"),objj_msgSend(_1b5,"timestamp"),objj_msgSend(self,"windowNumber"),nil,0,objj_msgSend(_1b5,"clickCount"),objj_msgSend(_1b5,"pressure")),objj_msgSend(self,"contentView"),nil,YES);
}
}),new objj_method(sel_getUid("menuDidEndTracking:"),function(self,_cmd,_1bb){
with(self){
objj_msgSend(_highlightView,"removeFromSuperview");
objj_msgSend(objj_msgSend(_trackingMenuItem,"_menuItemView"),"activate:",NO);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",self,CPMenuDidEndTrackingNotification,objj_msgSend(_1bb,"object"));
}
}),new objj_method(sel_getUid("tile"),function(self,_cmd){
with(self){
var _1be=objj_msgSend(_menu,"itemArray"),_1bf=0,_1c0=_1be.length,x=_15b,y=0,_1c3=YES;
for(;_1bf<_1c0;++_1bf){
var item=_1be[_1bf];
if(objj_msgSend(item,"isSeparatorItem")){
x=CGRectGetWidth(objj_msgSend(self,"frame"))-_15c;
_1c3=NO;
continue;
}
if(objj_msgSend(item,"isHidden")){
continue;
}
var _1c5=objj_msgSend(item,"_menuItemView"),_1c6=objj_msgSend(_1c5,"frame");
if(_1c3){
objj_msgSend(_1c5,"setFrameOrigin:",CGPointMake(x,(_1-1-CGRectGetHeight(_1c6))/2));
x+=CGRectGetWidth(objj_msgSend(_1c5,"frame"))+_15a;
}else{
objj_msgSend(_1c5,"setFrameOrigin:",CGPointMake(x-CGRectGetWidth(_1c6),(_1-1-CGRectGetHeight(_1c6))/2));
x=CGRectGetMinX(objj_msgSend(_1c5,"frame"))-_15a;
}
}
var _1c7=objj_msgSend(objj_msgSend(self,"contentView"),"bounds"),_1c8=objj_msgSend(_titleField,"frame");
if(objj_msgSend(_iconImageView,"isHidden")){
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_1c7)-CGRectGetWidth(_1c8))/2,(CGRectGetHeight(_1c7)-CGRectGetHeight(_1c8))/2));
}else{
var _1c9=objj_msgSend(_iconImageView,"frame"),_1ca=CGRectGetWidth(_1c9),_1cb=_1ca+CGRectGetWidth(_1c8);
objj_msgSend(_iconImageView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_1c7)-_1cb)/2,(CGRectGetHeight(_1c7)-CGRectGetHeight(_1c9))/2));
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_1c7)-_1cb)/2+_1ca,(CGRectGetHeight(_1c7)-CGRectGetHeight(_1c8))/2));
}
}
}),new objj_method(sel_getUid("setFrameSize:"),function(self,_cmd,_1ce){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPPanel")},"setFrameSize:",_1ce);
objj_msgSend(self,"tile");
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("initialize"),function(self,_cmd){
with(self){
if(self!=objj_msgSend(_CPMenuBarWindow,"class")){
return;
}
var _1d1=objj_msgSend(CPBundle,"bundleForClass:",self);
_15e=objj_msgSend(CPFont,"systemFontOfSize:",11);
}
})]);
p;12;CPMenuItem.jI;20;Foundation/CPCoder.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jI;16;AppKit/CPImage.jI;15;AppKit/CPMenu.jI;15;AppKit/CPView.jc;23006;
var _1=objj_allocateClassPair(CPObject,"CPMenuItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_isSeparator"),new objj_ivar("_title"),new objj_ivar("_font"),new objj_ivar("_target"),new objj_ivar("_action"),new objj_ivar("_isEnabled"),new objj_ivar("_isHidden"),new objj_ivar("_tag"),new objj_ivar("_state"),new objj_ivar("_image"),new objj_ivar("_alternateImage"),new objj_ivar("_onStateImage"),new objj_ivar("_offStateImage"),new objj_ivar("_mixedStateImage"),new objj_ivar("_submenu"),new objj_ivar("_menu"),new objj_ivar("_keyEquivalent"),new objj_ivar("_keyEquivalentModifierMask"),new objj_ivar("_mnemonicLocation"),new objj_ivar("_isAlternate"),new objj_ivar("_indentationLevel"),new objj_ivar("_toolTip"),new objj_ivar("_representedObject"),new objj_ivar("_view"),new objj_ivar("_menuItemView")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithTitle:action:keyEquivalent:"),function(_3,_4,_5,_6,_7){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_isSeparator=NO;
_title=_5;
_action=_6;
_isEnabled=YES;
_tag=0;
_state=CPOffState;
_keyEquivalent=_7||"";
_keyEquivalentModifierMask=CPPlatformActionKeyMask;
_mnemonicLocation=CPNotFound;
}
return _3;
}
}),new objj_method(sel_getUid("setEnabled:"),function(_8,_9,_a){
with(_8){
if(objj_msgSend(_menu,"autoenablesItems")){
return;
}
_isEnabled=_a;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_8);
}
}),new objj_method(sel_getUid("isEnabled"),function(_b,_c){
with(_b){
return _isEnabled;
}
}),new objj_method(sel_getUid("setHidden:"),function(_d,_e,_f){
with(_d){
if(_isHidden==_f){
return;
}
_isHidden=_f;
objj_msgSend(_menu,"itemChanged:",_d);
}
}),new objj_method(sel_getUid("isHidden"),function(_10,_11){
with(_10){
return _isHidden;
}
}),new objj_method(sel_getUid("isHiddenOrHasHiddenAncestor"),function(_12,_13){
with(_12){
if(_isHidden){
return YES;
}
var _14=objj_msgSend(_menu,"supermenu");
if(objj_msgSend(objj_msgSend(_14,"itemAtIndex:",objj_msgSend(_14,"indexOfItemWithSubmenu:",_menu)),"isHiddenOrHasHiddenAncestor")){
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("setTarget:"),function(_15,_16,_17){
with(_15){
_target=_17;
}
}),new objj_method(sel_getUid("target"),function(_18,_19){
with(_18){
return _target;
}
}),new objj_method(sel_getUid("setAction:"),function(_1a,_1b,_1c){
with(_1a){
_action=_1c;
}
}),new objj_method(sel_getUid("action"),function(_1d,_1e){
with(_1d){
return _action;
}
}),new objj_method(sel_getUid("setTitle:"),function(_1f,_20,_21){
with(_1f){
_mnemonicLocation=CPNotFound;
if(_title==_21){
return;
}
_title=_21;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_1f);
}
}),new objj_method(sel_getUid("title"),function(_22,_23){
with(_22){
return _title;
}
}),new objj_method(sel_getUid("setTextColor:"),function(_24,_25,_26){
with(_24){
}
}),new objj_method(sel_getUid("setFont:"),function(_27,_28,_29){
with(_27){
if(_font==_29){
return;
}
_font=_29;
objj_msgSend(_menu,"itemChanged:",_27);
objj_msgSend(_menuItemView,"setDirty");
}
}),new objj_method(sel_getUid("font"),function(_2a,_2b){
with(_2a){
return _font;
}
}),new objj_method(sel_getUid("setTag:"),function(_2c,_2d,_2e){
with(_2c){
_tag=_2e;
}
}),new objj_method(sel_getUid("tag"),function(_2f,_30){
with(_2f){
return _tag;
}
}),new objj_method(sel_getUid("setState:"),function(_31,_32,_33){
with(_31){
if(_state==_33){
return;
}
_state=_33;
objj_msgSend(_menu,"itemChanged:",_31);
objj_msgSend(_menuItemView,"setDirty");
}
}),new objj_method(sel_getUid("state"),function(_34,_35){
with(_34){
return _state;
}
}),new objj_method(sel_getUid("setImage:"),function(_36,_37,_38){
with(_36){
if(_image==_38){
return;
}
_image=_38;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_36);
}
}),new objj_method(sel_getUid("image"),function(_39,_3a){
with(_39){
return _image;
}
}),new objj_method(sel_getUid("setAlternateImage:"),function(_3b,_3c,_3d){
with(_3b){
_alternateImage=_3d;
}
}),new objj_method(sel_getUid("alternateImage"),function(_3e,_3f){
with(_3e){
return _alternateImage;
}
}),new objj_method(sel_getUid("setOnStateImage:"),function(_40,_41,_42){
with(_40){
if(_onStateImage==_42){
return;
}
_onStateImage=_42;
objj_msgSend(_menu,"itemChanged:",_40);
}
}),new objj_method(sel_getUid("onStateImage"),function(_43,_44){
with(_43){
return _onStateImage;
}
}),new objj_method(sel_getUid("setOffStateImage:"),function(_45,_46,_47){
with(_45){
if(_offStateImage==_47){
return;
}
_offStateImage=_47;
objj_msgSend(_menu,"itemChanged:",_45);
}
}),new objj_method(sel_getUid("offStateImage"),function(_48,_49){
with(_48){
return _offStateImage;
}
}),new objj_method(sel_getUid("setMixedStateImage:"),function(_4a,_4b,_4c){
with(_4a){
if(_mixedStateImage==_4c){
return;
}
_mixedStateImage=_4c;
objj_msgSend(_menu,"itemChanged:",_4a);
}
}),new objj_method(sel_getUid("mixedStateImage"),function(_4d,_4e){
with(_4d){
return _mixedStateImage;
}
}),new objj_method(sel_getUid("setSubmenu:"),function(_4f,_50,_51){
with(_4f){
var _52=objj_msgSend(_submenu,"supermenu");
if(_52==_4f){
return;
}
if(_52){
return alert("bad");
}
objj_msgSend(_submenu,"setSupermenu:",_menu);
_submenu=_51;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_4f);
}
}),new objj_method(sel_getUid("submenu"),function(_53,_54){
with(_53){
return _submenu;
}
}),new objj_method(sel_getUid("hasSubmenu"),function(_55,_56){
with(_55){
return _submenu?YES:NO;
}
}),new objj_method(sel_getUid("isSeparatorItem"),function(_57,_58){
with(_57){
return _isSeparator;
}
}),new objj_method(sel_getUid("setMenu:"),function(_59,_5a,_5b){
with(_59){
_menu=_5b;
}
}),new objj_method(sel_getUid("menu"),function(_5c,_5d){
with(_5c){
return _menu;
}
}),new objj_method(sel_getUid("setKeyEquivalent:"),function(_5e,_5f,_60){
with(_5e){
_keyEquivalent=_60||"";
}
}),new objj_method(sel_getUid("keyEquivalent"),function(_61,_62){
with(_61){
return _keyEquivalent;
}
}),new objj_method(sel_getUid("setKeyEquivalentModifierMask:"),function(_63,_64,_65){
with(_63){
_keyEquivalentModifierMask=_65;
}
}),new objj_method(sel_getUid("keyEquivalentModifierMask"),function(_66,_67){
with(_66){
return _keyEquivalentModifierMask;
}
}),new objj_method(sel_getUid("setMnemonicLocation:"),function(_68,_69,_6a){
with(_68){
_mnemonicLocation=_6a;
}
}),new objj_method(sel_getUid("mnemonicLocation"),function(_6b,_6c){
with(_6b){
return _mnemonicLocation;
}
}),new objj_method(sel_getUid("setTitleWithMnemonicLocation:"),function(_6d,_6e,_6f){
with(_6d){
var _70=objj_msgSend(_6f,"rangeOfString:","&").location;
if(_70==CPNotFound){
objj_msgSend(_6d,"setTitle:",_6f);
}else{
objj_msgSend(_6d,"setTitle:",objj_msgSend(_6f,"substringToIndex:",_70)+objj_msgSend(_6f,"substringFromIndex:",_70+1));
objj_msgSend(_6d,"setMnemonicLocation:",_70);
}
}
}),new objj_method(sel_getUid("mnemonic"),function(_71,_72){
with(_71){
return _mnemonicLocation==CPNotFound?"":objj_msgSend(_title,"characterAtIndex:",_mnemonicLocation);
}
}),new objj_method(sel_getUid("setAlternate:"),function(_73,_74,_75){
with(_73){
_isAlternate=_75;
}
}),new objj_method(sel_getUid("isAlternate"),function(_76,_77){
with(_76){
return _isAlternate;
}
}),new objj_method(sel_getUid("setIndentationLevel:"),function(_78,_79,_7a){
with(_78){
if(_7a<0){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"setIndentationLevel: argument must be greater than 0.");
}
_indentationLevel=MIN(15,_7a);
}
}),new objj_method(sel_getUid("indentationLevel"),function(_7b,_7c){
with(_7b){
return _indentationLevel;
}
}),new objj_method(sel_getUid("setToolTip:"),function(_7d,_7e,_7f){
with(_7d){
_toolTip=_7f;
}
}),new objj_method(sel_getUid("toolTip"),function(_80,_81){
with(_80){
return _toolTip;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_82,_83,_84){
with(_82){
_representedObject=_84;
}
}),new objj_method(sel_getUid("representedObject"),function(_85,_86){
with(_85){
return _representedObject;
}
}),new objj_method(sel_getUid("setView:"),function(_87,_88,_89){
with(_87){
if(_view===_89){
return;
}
_view=_89;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_87);
}
}),new objj_method(sel_getUid("view"),function(_8a,_8b){
with(_8a){
return _view;
}
}),new objj_method(sel_getUid("isHighlighted"),function(_8c,_8d){
with(_8c){
return objj_msgSend(objj_msgSend(_8c,"menu"),"highlightedItem")==_8c;
}
}),new objj_method(sel_getUid("_menuItemView"),function(_8e,_8f){
with(_8e){
if(!_menuItemView){
_menuItemView=objj_msgSend(objj_msgSend(_CPMenuItemView,"alloc"),"initWithFrame:forMenuItem:",CGRectMakeZero(),_8e);
}
return _menuItemView;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("separatorItem"),function(_90,_91){
with(_90){
var _92=objj_msgSend(objj_msgSend(_90,"alloc"),"initWithTitle:action:keyEquivalent:","",nil,nil);
_92._isSeparator=YES;
return _92;
}
})]);
var _93="CPMenuItemIsSeparatorKey",_94="CPMenuItemTitleKey",_95="CPMenuItemTargetKey",_96="CPMenuItemActionKey",_97="CPMenuItemIsEnabledKey",_98="CPMenuItemIsHiddenKey",_99="CPMenuItemTagKey",_9a="CPMenuItemStateKey",_9b="CPMenuItemImageKey",_9c="CPMenuItemAlternateImageKey",_9d="CPMenuItemSubmenuKey",_9e="CPMenuItemMenuKey",_9f="CPMenuItemRepresentedObjectKey",_a0="CPMenuItemViewKey";
var _1=objj_getClass("CPMenuItem");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPMenuItem\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_a1,_a2,_a3){
with(_a1){
_a1=objj_msgSendSuper({receiver:_a1,super_class:objj_getClass("CPObject")},"init");
if(_a1){
_isSeparator=objj_msgSend(_a3,"containsValueForKey:",_93)&&objj_msgSend(_a3,"decodeBoolForKey:",_93);
_title=objj_msgSend(_a3,"decodeObjectForKey:",_94);
_target=objj_msgSend(_a3,"decodeObjectForKey:",_95);
_action=objj_msgSend(_a3,"decodeObjectForKey:",_96);
_isEnabled=objj_msgSend(_a3,"containsValueForKey:",(_97))?objj_msgSend(_a3,"decodeObjectForKey:",(_97)):(YES);
_isHidden=objj_msgSend(_a3,"containsValueForKey:",(_98))?objj_msgSend(_a3,"decodeObjectForKey:",(_98)):(NO);
_tag=objj_msgSend(_a3,"containsValueForKey:",(_99))?objj_msgSend(_a3,"decodeObjectForKey:",(_99)):(0);
_state=objj_msgSend(_a3,"containsValueForKey:",(_9a))?objj_msgSend(_a3,"decodeObjectForKey:",(_9a)):(CPOffState);
_image=objj_msgSend(_a3,"containsValueForKey:",(_9b))?objj_msgSend(_a3,"decodeObjectForKey:",(_9b)):(nil);
_alternateImage=objj_msgSend(_a3,"containsValueForKey:",(_9c))?objj_msgSend(_a3,"decodeObjectForKey:",(_9c)):(nil);
_submenu=objj_msgSend(_a3,"containsValueForKey:",(_9d))?objj_msgSend(_a3,"decodeObjectForKey:",(_9d)):(nil);
_menu=objj_msgSend(_a3,"containsValueForKey:",(_9e))?objj_msgSend(_a3,"decodeObjectForKey:",(_9e)):(nil);
_representedObject=objj_msgSend(_a3,"containsValueForKey:",(_9f))?objj_msgSend(_a3,"decodeObjectForKey:",(_9f)):(nil);
_view=objj_msgSend(_a3,"containsValueForKey:",(_a0))?objj_msgSend(_a3,"decodeObjectForKey:",(_a0)):(nil);
}
return _a1;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_a4,_a5,_a6){
with(_a4){
if(_isSeparator){
objj_msgSend(_a6,"encodeBool:forKey:",_isSeparator,_93);
}
objj_msgSend(_a6,"encodeObject:forKey:",_title,_94);
objj_msgSend(_a6,"encodeObject:forKey:",_target,_95);
objj_msgSend(_a6,"encodeObject:forKey:",_action,_96);
if((_isEnabled)!==(YES)){
objj_msgSend(_a6,"encodeObject:forKey:",(_isEnabled),(_97));
}
if((_isHidden)!==(NO)){
objj_msgSend(_a6,"encodeObject:forKey:",(_isHidden),(_98));
}
if((_tag)!==(0)){
objj_msgSend(_a6,"encodeObject:forKey:",(_tag),(_99));
}
if((_state)!==(CPOffState)){
objj_msgSend(_a6,"encodeObject:forKey:",(_state),(_9a));
}
if((_image)!==(nil)){
objj_msgSend(_a6,"encodeObject:forKey:",(_image),(_9b));
}
if((_alternateImage)!==(nil)){
objj_msgSend(_a6,"encodeObject:forKey:",(_alternateImage),(_9c));
}
if((_submenu)!==(nil)){
objj_msgSend(_a6,"encodeObject:forKey:",(_submenu),(_9d));
}
if((_menu)!==(nil)){
objj_msgSend(_a6,"encodeObject:forKey:",(_menu),(_9e));
}
if((_representedObject)!==(nil)){
objj_msgSend(_a6,"encodeObject:forKey:",(_representedObject),(_9f));
}
if((_view)!==(nil)){
objj_msgSend(_a6,"encodeObject:forKey:",(_view),(_a0));
}
}
})]);
var _a7=3,_a8=16,_a9=14,_aa=17,_ab=4;
var _ac=nil,_ad=nil,_ae=[],_af=[];
var _1=objj_allocateClassPair(CPView,"_CPMenuItemView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_menuItem"),new objj_ivar("_font"),new objj_ivar("_textColor"),new objj_ivar("_textShadowColor"),new objj_ivar("_activateColor"),new objj_ivar("_activateShadowColor"),new objj_ivar("_minSize"),new objj_ivar("_isDirty"),new objj_ivar("_showsStateColumn"),new objj_ivar("_belongsToMenuBar"),new objj_ivar("_stateView"),new objj_ivar("_imageAndTextView"),new objj_ivar("_submenuView")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:forMenuItem:"),function(_b0,_b1,_b2,_b3){
with(_b0){
_b0=objj_msgSendSuper({receiver:_b0,super_class:objj_getClass("CPView")},"initWithFrame:",_b2);
if(_b0){
_menuItem=_b3;
_showsStateColumn=YES;
_isDirty=YES;
objj_msgSend(_b0,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_b0,"synchronizeWithMenuItem");
}
return _b0;
}
}),new objj_method(sel_getUid("minSize"),function(_b4,_b5){
with(_b4){
return _minSize;
}
}),new objj_method(sel_getUid("setDirty"),function(_b6,_b7){
with(_b6){
_isDirty=YES;
}
}),new objj_method(sel_getUid("synchronizeWithMenuItem"),function(_b8,_b9){
with(_b8){
if(!_isDirty){
return;
}
_isDirty=NO;
var _ba=objj_msgSend(_menuItem,"view");
if(objj_msgSend(_menuItem,"isSeparatorItem")){
var _bb=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,5,10,1));
_ba=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,0,10));
objj_msgSend(_ba,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_bb,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_bb,"setBackgroundColor:",objj_msgSend(CPColor,"lightGrayColor"));
objj_msgSend(_ba,"addSubview:",_bb);
}
if(_ba){
objj_msgSend(_imageAndTextView,"removeFromSuperview");
_imageAndTextView=nil;
objj_msgSend(_stateView,"removeFromSuperview");
_stateView=nil;
objj_msgSend(_submenuView,"removeFromSuperview");
_submenuView=nil;
_minSize=objj_msgSend(_ba,"frame").size;
objj_msgSend(_b8,"setFrameSize:",_minSize);
objj_msgSend(_b8,"addSubview:",_ba);
return;
}
var x=_belongsToMenuBar?0:(_a7+objj_msgSend(_menuItem,"indentationLevel")*_aa);
if(_showsStateColumn){
if(!_stateView){
_stateView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(x,(CGRectGetHeight(objj_msgSend(_b8,"frame"))-_a9)/2,_a9,_a9));
objj_msgSend(_stateView,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_b8,"addSubview:",_stateView);
}
var _bd=objj_msgSend(_menuItem,"state");
switch(_bd){
case CPOffState:
case CPOnState:
case CPMixedState:
objj_msgSend(_stateView,"setImage:",_ae[_bd]);
break;
default:
objj_msgSend(_stateView,"setImage:",nil);
}
x+=_a9;
}else{
objj_msgSend(_stateView,"removeFromSuperview");
_stateView=nil;
}
if(!_imageAndTextView){
_imageAndTextView=objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",CGRectMake(0,0,0,0));
objj_msgSend(_imageAndTextView,"setImagePosition:",CPImageLeft);
objj_msgSend(_imageAndTextView,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_b8,"addSubview:",_imageAndTextView);
}
var _be=objj_msgSend(_menuItem,"font");
if(!_be){
_be=_font;
}
objj_msgSend(_imageAndTextView,"setFont:",_be);
objj_msgSend(_imageAndTextView,"setVerticalAlignment:",CPCenterVerticalTextAlignment);
objj_msgSend(_imageAndTextView,"setImage:",objj_msgSend(_menuItem,"image"));
objj_msgSend(_imageAndTextView,"setText:",objj_msgSend(_menuItem,"title"));
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_b8,"textColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_b8,"textShadowColor"));
objj_msgSend(_imageAndTextView,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_imageAndTextView,"setFrameOrigin:",CGPointMake(x,_ab));
objj_msgSend(_imageAndTextView,"sizeToFit");
var _bf=objj_msgSend(_imageAndTextView,"frame");
_bf.size.height+=2*_ab;
x+=CGRectGetWidth(_bf);
if(objj_msgSend(_menuItem,"hasSubmenu")){
x+=3;
if(!_submenuView){
_submenuView=objj_msgSend(objj_msgSend(_CPMenuItemArrowView,"alloc"),"initWithFrame:",CGRectMake(0,0,10,10));
objj_msgSend(_b8,"addSubview:",_submenuView);
}
objj_msgSend(_submenuView,"setHidden:",NO);
objj_msgSend(_submenuView,"setColor:",_belongsToMenuBar?objj_msgSend(_b8,"textColor"):nil);
objj_msgSend(_submenuView,"setFrameOrigin:",CGPointMake(x,(CGRectGetHeight(_bf)-10)/2));
x+=10;
}else{
objj_msgSend(_submenuView,"setHidden:",YES);
}
_minSize=CGSizeMake(x+(_belongsToMenuBar?0:_a8)+3,CGRectGetHeight(_bf));
objj_msgSend(_b8,"setFrameSize:",_minSize);
}
}),new objj_method(sel_getUid("overlapOffsetWidth"),function(_c0,_c1){
with(_c0){
return _a7+(objj_msgSend(objj_msgSend(_menuItem,"menu"),"showsStateColumn")?_a9:0);
}
}),new objj_method(sel_getUid("setShowsStateColumn:"),function(_c2,_c3,_c4){
with(_c2){
_showsStateColumn=_c4;
}
}),new objj_method(sel_getUid("setBelongsToMenuBar:"),function(_c5,_c6,_c7){
with(_c5){
_belongsToMenuBar=_c7;
}
}),new objj_method(sel_getUid("highlight:"),function(_c8,_c9,_ca){
with(_c8){
if(_belongsToMenuBar){
objj_msgSend(_imageAndTextView,"setImage:",_ca?objj_msgSend(_menuItem,"alternateImage"):objj_msgSend(_menuItem,"image"));
}else{
if(objj_msgSend(_menuItem,"isEnabled")){
if(_ca){
objj_msgSend(_c8,"setBackgroundColor:",_ac);
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",_ad);
}else{
objj_msgSend(_c8,"setBackgroundColor:",nil);
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_c8,"textColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_c8,"textShadowColor"));
}
var _cb=objj_msgSend(_menuItem,"state");
switch(_cb){
case CPOffState:
case CPOnState:
case CPMixedState:
objj_msgSend(_stateView,"setImage:",_ca?_af[_cb]:_ae[_cb]);
break;
default:
objj_msgSend(_stateView,"setImage:",nil);
}
}
}
}
}),new objj_method(sel_getUid("activate:"),function(_cc,_cd,_ce){
with(_cc){
objj_msgSend(_imageAndTextView,"setImage:",objj_msgSend(_menuItem,"image"));
if(_ce){
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_cc,"activateColor")||objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_cc,"activateShadowColor")||objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_submenuView,"setColor:",objj_msgSend(_cc,"activateColor")||objj_msgSend(CPColor,"whiteColor"));
}else{
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_cc,"textColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_cc,"textShadowColor"));
objj_msgSend(_submenuView,"setColor:",objj_msgSend(_cc,"textColor"));
}
}
}),new objj_method(sel_getUid("eventOnSubmenu:"),function(_cf,_d0,_d1){
with(_cf){
if(!objj_msgSend(_menuItem,"hasSubmenu")){
return NO;
}
return CGRectContainsPoint(objj_msgSend(_submenuView,"frame"),objj_msgSend(_cf,"convertPoint:fromView:",objj_msgSend(_d1,"locationInWindow"),nil));
}
}),new objj_method(sel_getUid("isHidden"),function(_d2,_d3){
with(_d2){
return objj_msgSend(_menuItem,"isHidden");
}
}),new objj_method(sel_getUid("menuItem"),function(_d4,_d5){
with(_d4){
return _menuItem;
}
}),new objj_method(sel_getUid("setFont:"),function(_d6,_d7,_d8){
with(_d6){
if(_font==_d8){
return;
}
_font=_d8;
objj_msgSend(_d6,"setDirty");
}
}),new objj_method(sel_getUid("setTextColor:"),function(_d9,_da,_db){
with(_d9){
if(_textColor==_db){
return;
}
_textColor=_db;
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_d9,"textColor"));
objj_msgSend(_submenuView,"setColor:",objj_msgSend(_d9,"textColor"));
}
}),new objj_method(sel_getUid("textColor"),function(_dc,_dd){
with(_dc){
return objj_msgSend(_menuItem,"isEnabled")?(_textColor?_textColor:objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",70/255,69/255,69/255,1)):objj_msgSend(CPColor,"darkGrayColor");
}
}),new objj_method(sel_getUid("setTextShadowColor:"),function(_de,_df,_e0){
with(_de){
if(_textShadowColor==_e0){
return;
}
_textShadowColor=_e0;
objj_msgSend(_imageAndTextView,"setTextShadowColor:",objj_msgSend(_de,"textShadowColor"));
}
}),new objj_method(sel_getUid("textShadowColor"),function(_e1,_e2){
with(_e1){
return objj_msgSend(_menuItem,"isEnabled")?(_textShadowColor?_textShadowColor:objj_msgSend(CPColor,"colorWithWhite:alpha:",1,0.8)):objj_msgSend(CPColor,"colorWithWhite:alpha:",0.8,0.8);
}
}),new objj_method(sel_getUid("setActivateColor:"),function(_e3,_e4,_e5){
with(_e3){
_activateColor=_e5;
}
}),new objj_method(sel_getUid("activateColor"),function(_e6,_e7){
with(_e6){
return _activateColor;
}
}),new objj_method(sel_getUid("setActivateShadowColor:"),function(_e8,_e9,_ea){
with(_e8){
_activateShadowColor=_ea;
}
}),new objj_method(sel_getUid("activateShadowColor"),function(_eb,_ec){
with(_eb){
return _activateShadowColor;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("initialize"),function(_ed,_ee){
with(_ed){
if(_ed!=objj_msgSend(_CPMenuItemView,"class")){
return;
}
_ac=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",95/255,131/255,185/255,1);
_ad=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",26/255,73/255,109/255,1);
var _ef=objj_msgSend(CPBundle,"bundleForClass:",_ed);
_ae[CPOffState]=nil;
_af[CPOffState]=nil;
_ae[CPOnState]=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ef,"pathForResource:","CPMenuItem/CPMenuItemOnState.png"),CGSizeMake(14,14));
_af[CPOnState]=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ef,"pathForResource:","CPMenuItem/CPMenuItemOnStateHighlighted.png"),CGSizeMake(14,14));
_ae[CPMixedState]=nil;
_af[CPMixedState]=nil;
}
}),new objj_method(sel_getUid("leftMargin"),function(_f0,_f1){
with(_f0){
return _a7+_a9;
}
})]);
var _1=objj_allocateClassPair(CPView,"_CPMenuItemArrowView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_color")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("setColor:"),function(_f2,_f3,_f4){
with(_f2){
if(_color==_f4){
return;
}
_color=_f4;
objj_msgSend(_f2,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("drawRect:"),function(_f5,_f6,_f7){
with(_f5){
var _f8=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextBeginPath(_f8);
CGContextMoveToPoint(_f8,1,4);
CGContextAddLineToPoint(_f8,9,4);
CGContextAddLineToPoint(_f8,5,8);
CGContextAddLineToPoint(_f8,1,4);
CGContextClosePath(_f8);
CGContextSetFillColor(_f8,_color);
CGContextFillPath(_f8);
}
})]);
p;15;CPOutlineView.ji;13;CPTableView.jc;2698;
var _1=objj_allocateClassPair(CPTableView,"CPOutlineView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_outlineDataSource"),new objj_ivar("_itemsByRow")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPTableView")},"initWithFrame:",_5);
if(_3){
objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPTableView")},"setDataSource:",_3);
_itemsByRow=objj_msgSend(objj_msgSend(CPArray,"alloc"),"init");
}
return _3;
}
}),new objj_method(sel_getUid("setDataSource:"),function(_6,_7,_8){
with(_6){
if(!objj_msgSend(_8,"respondsToSelector:",sel_getUid("outlineView:child:ofItem"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source must implement 'outlineView:child:ofItem'");
}
if(!objj_msgSend(_8,"respondsToSelector:",sel_getUid("outlineView:isItemExpandable"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source must implement 'outlineView:isItemExpandable'");
}
if(!objj_msgSend(_8,"respondsToSelector:",sel_getUid("outlineView:numberOfChildrenOfItem"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source must implement 'outlineView:numberOfChildrenOfItem'");
}
if(!objj_msgSend(_8,"respondsToSelector:",sel_getUid("outlineView:objectValueForTableColumn:byItem"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source must implement 'outlineView:objectValueForTableColumn:byItem'");
}
_outlineDataSource=_8;
objj_msgSend(_6,"reloadData");
}
}),new objj_method(sel_getUid("reloadData"),function(_9,_a){
with(_9){
_numberOfVisibleItems=objj_msgSend(_outlineDataSource,"outlineView:numberOfChildrenOfItem:",_9,nil);
_numberOfRows=_numberOfVisibleItems;
var i=0;
for(;i<_numberOfVisibleItems;++i){
_itemsByRow[i]=objj_msgSend(_outlineDataSource,"outlineView:child:ofItem:",_9,i,nil);
}
objj_msgSend(_9,"loadTableCellsInRect:",objj_msgSend(_9,"bounds"));
}
})]);
var _1=objj_getClass("CPOutlineView");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPOutlineView\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("numberOfRowsInTableView:"),function(_c,_d,_e){
with(_c){
return _numberOfVisibleItems;
}
}),new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"),function(_f,_10,_11,_12,_13){
with(_f){
return objj_msgSend(_outlineDataSource,"outlineView:objectValueForTableColumn:byItem:",_f,_12,_itemsByRow[_13]);
}
})]);
p;9;CPPanel.ji;10;CPWindow.jc;1152;
CPOKButton=1;
CPCancelButton=0;
var _1=objj_allocateClassPair(CPWindow,"CPPanel"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_becomesKeyOnlyIfNeeded"),new objj_ivar("_worksWhenModal")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("isFloatingPanel"),function(_3,_4){
with(_3){
return objj_msgSend(_3,"level")==CPFloatingWindowLevel;
}
}),new objj_method(sel_getUid("setFloatingPanel:"),function(_5,_6,_7){
with(_5){
objj_msgSend(_5,"setLevel:",_7?CPFloatingWindowLevel:CPNormalWindowLevel);
}
}),new objj_method(sel_getUid("becomesKeyOnlyIfNeeded"),function(_8,_9){
with(_8){
return _becomesKeyOnlyIfNeeded;
}
}),new objj_method(sel_getUid("setBecomesKeyOnlyIfNeeded:"),function(_a,_b,_c){
with(_a){
_becomesKeyOnlyIfNeeded=_c;
}
}),new objj_method(sel_getUid("worksWhenModal"),function(_d,_e){
with(_d){
return _worksWhenModal;
}
}),new objj_method(sel_getUid("setWorksWhenModal:"),function(_f,_10,_11){
with(_f){
_worksWhenModal=_11;
}
}),new objj_method(sel_getUid("canBecomeMainWindow"),function(_12,_13){
with(_12){
return NO;
}
})]);
p;14;CPPasteboard.jI;21;Foundation/CPObject.jI;20;Foundation/CPArray.jI;25;Foundation/CPDictionary.jI;40;Foundation/CPPropertyListSerialization.jc;4575;
CPGeneralPboard="CPGeneralPboard";
CPFontPboard="CPFontPboard";
CPRulerPboard="CPRulerPboard";
CPFindPboard="CPFindPboard";
CPDragPboard="CPDragPboard";
CPColorPboardType="CPColorPboardType";
CPFilenamesPboardType="CPFilenamesPboardType";
CPFontPboardType="CPFontPboardType";
CPHTMLPboardType="CPHTMLPboardType";
CPStringPboardType="CPStringPboardType";
CPURLPboardType="CPURLPboardType";
CPImagesPboardType="CPImagesPboardType";
CPVideosPboardType="CPVideosPboardType";
CPImagePboardType="CPImagePboardType";
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CPPasteboard"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_types"),new objj_ivar("_owners"),new objj_ivar("_provided"),new objj_ivar("_changeCount"),new objj_ivar("_stateUID")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("_initWithName:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPObject")},"init");
if(_4){
_name=_6;
_types=[];
_owners=objj_msgSend(CPDictionary,"dictionary");
_provided=objj_msgSend(CPDictionary,"dictionary");
_changeCount=0;
}
return _4;
}
}),new objj_method(sel_getUid("addTypes:owner:"),function(_7,_8,_9,_a){
with(_7){
var i=0,_c=_9.length;
for(;i<_c;++i){
var _d=_9[i];
if(!objj_msgSend(_owners,"objectForKey:",_d)){
objj_msgSend(_types,"addObject:",_d);
objj_msgSend(_provided,"removeObjectForKey:",_d);
}
objj_msgSend(_owners,"setObject:forKey:",_a,_d);
}
return ++_changeCount;
}
}),new objj_method(sel_getUid("declareTypes:owner:"),function(_e,_f,_10,_11){
with(_e){
objj_msgSend(_types,"setArray:",_10);
_owners=objj_msgSend(CPDictionary,"dictionary");
_provided=objj_msgSend(CPDictionary,"dictionary");
var _12=_types.length;
while(_12--){
objj_msgSend(_owners,"setObject:forKey:",_11,_types[_12]);
}
return ++_changeCount;
}
}),new objj_method(sel_getUid("setData:forType:"),function(_13,_14,_15,_16){
with(_13){
objj_msgSend(_provided,"setObject:forKey:",_15,_16);
return YES;
}
}),new objj_method(sel_getUid("setPropertyList:forType:"),function(_17,_18,_19,_1a){
with(_17){
return objj_msgSend(_17,"setData:forType:",objj_msgSend(CPPropertyListSerialization,"dataFromPropertyList:format:errorDescription:",_19,CPPropertyListXMLFormat_v1_0,nil),_1a);
}
}),new objj_method(sel_getUid("setString:forType:"),function(_1b,_1c,_1d,_1e){
with(_1b){
return objj_msgSend(_1b,"setPropertyList:forType:",_1d,_1e);
}
}),new objj_method(sel_getUid("availableTypeFromArray:"),function(_1f,_20,_21){
with(_1f){
return objj_msgSend(_types,"firstObjectCommonWithArray:",_21);
}
}),new objj_method(sel_getUid("types"),function(_22,_23){
with(_22){
return _types;
}
}),new objj_method(sel_getUid("changeCount"),function(_24,_25){
with(_24){
return _changeCount;
}
}),new objj_method(sel_getUid("dataForType:"),function(_26,_27,_28){
with(_26){
var _29=objj_msgSend(_provided,"objectForKey:",_28);
if(_29){
return _29;
}
var _2a=objj_msgSend(_owners,"objectForKey:",_28);
if(_2a){
objj_msgSend(_2a,"pasteboard:provideDataForType:",_26,_28);
++_changeCount;
return objj_msgSend(_provided,"objectForKey:",_28);
}
return nil;
}
}),new objj_method(sel_getUid("propertyListForType:"),function(_2b,_2c,_2d){
with(_2b){
var _2e=objj_msgSend(_2b,"dataForType:",_2d);
if(_2e){
return objj_msgSend(CPPropertyListSerialization,"propertyListFromData:format:errorDescription:",_2e,CPPropertyListXMLFormat_v1_0,nil);
}
return nil;
}
}),new objj_method(sel_getUid("stringForType:"),function(_2f,_30,_31){
with(_2f){
return objj_msgSend(_2f,"propertyListForType:",_31);
}
}),new objj_method(sel_getUid("_generateStateUID"),function(_32,_33){
with(_32){
var _34=32;
_stateUID="";
while(_34--){
_stateUID+=FLOOR(RAND()*16).toString(16).toUpperCase();
}
return _stateUID;
}
}),new objj_method(sel_getUid("_stateUID"),function(_35,_36){
with(_35){
return _stateUID;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("initialize"),function(_37,_38){
with(_37){
if(_37!=objj_msgSend(CPPasteboard,"class")){
return;
}
objj_msgSend(_37,"setVersion:",1);
_1=objj_msgSend(CPDictionary,"dictionary");
}
}),new objj_method(sel_getUid("generalPasteboard"),function(_39,_3a){
with(_39){
return objj_msgSend(CPPasteboard,"pasteboardWithName:",CPGeneralPboard);
}
}),new objj_method(sel_getUid("pasteboardWithName:"),function(_3b,_3c,_3d){
with(_3b){
var _3e=objj_msgSend(_1,"objectForKey:",_3d);
if(_3e){
return _3e;
}
_3e=objj_msgSend(objj_msgSend(CPPasteboard,"alloc"),"_initWithName:",_3d);
objj_msgSend(_1,"setObject:forKey:",_3e,_3d);
return _3e;
}
})]);
p;15;CPPopUpButton.ji;10;CPButton.ji;12;CPGeometry.ji;8;CPMenu.ji;12;CPMenuItem.jc;13753;
var _1=7;
CPPopUpButtonStatePullsDown=CPThemeState("pulls-down");
var _2=objj_allocateClassPair(CPButton,"CPPopUpButton"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_selectedIndex"),new objj_ivar("_preferredEdge"),new objj_ivar("_menu")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:pullsDown:"),function(_4,_5,_6,_7){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPButton")},"initWithFrame:",_6);
if(_4){
_selectedIndex=CPNotFound;
_preferredEdge=CPMaxYEdge;
objj_msgSend(_4,"setValue:forThemeAttribute:",CPImageLeft,"image-position");
objj_msgSend(_4,"setValue:forThemeAttribute:",CPLeftTextAlignment,"alignment");
objj_msgSend(_4,"setValue:forThemeAttribute:",CPLineBreakByTruncatingTail,"line-break-mode");
objj_msgSend(_4,"setMenu:",objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:",""));
objj_msgSend(_4,"setPullsDown:",_7);
}
return _4;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
return objj_msgSend(_8,"initWithFrame:pullsDown:",_a,NO);
}
}),new objj_method(sel_getUid("setPullsDown:"),function(_b,_c,_d){
with(_b){
if(_d){
var _e=objj_msgSend(_b,"setThemeState:",CPPopUpButtonStatePullsDown);
}else{
var _e=objj_msgSend(_b,"unsetThemeState:",CPPopUpButtonStatePullsDown);
}
if(!_e){
return;
}
var _f=objj_msgSend(_menu,"itemArray");
if(objj_msgSend(_f,"count")<=0){
return;
}
objj_msgSend(_f[0],"setHidden:",objj_msgSend(_b,"pullsDown"));
objj_msgSend(_b,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("pullsDown"),function(_10,_11){
with(_10){
return objj_msgSend(_10,"hasThemeState:",CPPopUpButtonStatePullsDown);
}
}),new objj_method(sel_getUid("addItem:"),function(_12,_13,_14){
with(_12){
objj_msgSend(_menu,"addItem:",_14);
}
}),new objj_method(sel_getUid("addItemWithTitle:"),function(_15,_16,_17){
with(_15){
objj_msgSend(_menu,"addItemWithTitle:action:keyEquivalent:",_17,NULL,nil);
}
}),new objj_method(sel_getUid("addItemsWithTitles:"),function(_18,_19,_1a){
with(_18){
var _1b=0,_1c=objj_msgSend(_1a,"count");
for(;_1b<_1c;++_1b){
objj_msgSend(_18,"addItemWithTitle:",_1a[_1b]);
}
}
}),new objj_method(sel_getUid("insertItemWithTitle:atIndex:"),function(_1d,_1e,_1f,_20){
with(_1d){
var _21=objj_msgSend(_1d,"itemArray"),_22=objj_msgSend(_21,"count");
while(_22--){
if(objj_msgSend(_21[_22],"title")==_1f){
objj_msgSend(_1d,"removeItemAtIndex:",_22);
}
}
objj_msgSend(_menu,"insertItemWithTitle:action:keyEquivalent:atIndex:",_1f,NULL,nil,_20);
}
}),new objj_method(sel_getUid("removeAllItems"),function(_23,_24){
with(_23){
var _25=objj_msgSend(_menu,"numberOfItems");
while(_25--){
objj_msgSend(_menu,"removeItemAtIndex:",0);
}
}
}),new objj_method(sel_getUid("removeItemWithTitle:"),function(_26,_27,_28){
with(_26){
objj_msgSend(_26,"removeItemAtIndex:",objj_msgSend(_26,"indexOfItemWithTitle:",_28));
objj_msgSend(_26,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("removeItemAtIndex:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_menu,"removeItemAtIndex:",_2b);
objj_msgSend(_29,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("selectedItem"),function(_2c,_2d){
with(_2c){
if(_selectedIndex<0){
return nil;
}
return objj_msgSend(_menu,"itemAtIndex:",_selectedIndex);
}
}),new objj_method(sel_getUid("titleOfSelectedItem"),function(_2e,_2f){
with(_2e){
return objj_msgSend(objj_msgSend(_2e,"selectedItem"),"title");
}
}),new objj_method(sel_getUid("indexOfSelectedItem"),function(_30,_31){
with(_30){
return _selectedIndex;
}
}),new objj_method(sel_getUid("objectValue"),function(_32,_33){
with(_32){
return _selectedIndex;
}
}),new objj_method(sel_getUid("selectItem:"),function(_34,_35,_36){
with(_34){
objj_msgSend(_34,"selectItemAtIndex:",objj_msgSend(_34,"indexOfItem:",_36));
}
}),new objj_method(sel_getUid("selectItemAtIndex:"),function(_37,_38,_39){
with(_37){
if(_selectedIndex==_39){
return;
}
if(_selectedIndex>=0&&!objj_msgSend(_37,"pullsDown")){
objj_msgSend(objj_msgSend(_37,"selectedItem"),"setState:",CPOffState);
}
_selectedIndex=_39;
if(_selectedIndex>=0&&!objj_msgSend(_37,"pullsDown")){
objj_msgSend(objj_msgSend(_37,"selectedItem"),"setState:",CPOnState);
}
objj_msgSend(_37,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("selectItemWithTag:"),function(_3a,_3b,_3c){
with(_3a){
objj_msgSend(_3a,"selectItemAtIndex:",objj_msgSend(_3a,"indexOfItemWithTag:",_3c));
}
}),new objj_method(sel_getUid("selectItemWithTitle:"),function(_3d,_3e,_3f){
with(_3d){
objj_msgSend(_3d,"selectItemAtIndex:",objj_msgSend(_3d,"indexOfItemWithTitle:",_3f));
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_40,_41,_42){
with(_40){
objj_msgSend(_40,"selectItemAtIndex:",objj_msgSend(_42,"intValue"));
}
}),new objj_method(sel_getUid("menu"),function(_43,_44){
with(_43){
return _menu;
}
}),new objj_method(sel_getUid("setMenu:"),function(_45,_46,_47){
with(_45){
if(_menu===_47){
return;
}
var _48=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_menu){
objj_msgSend(_48,"removeObserver:name:object:",_45,CPMenuDidAddItemNotification,_menu);
objj_msgSend(_48,"removeObserver:name:object:",_45,CPMenuDidChangeItemNotification,_menu);
objj_msgSend(_48,"removeObserver:name:object:",_45,CPMenuDidRemoveItemNotification,_menu);
}
_menu=_47;
if(_menu){
objj_msgSend(_48,"addObserver:selector:name:object:",_45,sel_getUid("menuDidAddItem:"),CPMenuDidAddItemNotification,_menu);
objj_msgSend(_48,"addObserver:selector:name:object:",_45,sel_getUid("menuDidChangeItem:"),CPMenuDidChangeItemNotification,_menu);
objj_msgSend(_48,"addObserver:selector:name:object:",_45,sel_getUid("menuDidRemoveItem:"),CPMenuDidRemoveItemNotification,_menu);
}
objj_msgSend(_45,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("numberOfItems"),function(_49,_4a){
with(_49){
return objj_msgSend(_menu,"numberOfItems");
}
}),new objj_method(sel_getUid("itemArray"),function(_4b,_4c){
with(_4b){
return objj_msgSend(_menu,"itemArray");
}
}),new objj_method(sel_getUid("itemAtIndex:"),function(_4d,_4e,_4f){
with(_4d){
return objj_msgSend(_menu,"itemAtIndex:",_4f);
}
}),new objj_method(sel_getUid("itemTitleAtIndex:"),function(_50,_51,_52){
with(_50){
return objj_msgSend(objj_msgSend(_menu,"itemAtIndex:",_52),"title");
}
}),new objj_method(sel_getUid("itemTitles"),function(_53,_54){
with(_53){
var _55=[],_56=objj_msgSend(_53,"itemArray"),_57=0,_58=objj_msgSend(_56,"count");
for(;_57<_58;++_57){
_56.push(objj_msgSend(_56[_57],"title"));
}
}
}),new objj_method(sel_getUid("itemWithTitle:"),function(_59,_5a,_5b){
with(_59){
return objj_msgSend(_menu,"itemAtIndex:",objj_msgSend(_menu,"indexOfItemWithTitle:",_5b));
}
}),new objj_method(sel_getUid("lastItem"),function(_5c,_5d){
with(_5c){
return objj_msgSend(objj_msgSend(_menu,"itemArray"),"lastObject");
}
}),new objj_method(sel_getUid("indexOfItem:"),function(_5e,_5f,_60){
with(_5e){
return objj_msgSend(_menu,"indexOfItem:",_60);
}
}),new objj_method(sel_getUid("indexOfItemWithTag:"),function(_61,_62,_63){
with(_61){
return objj_msgSend(_menu,"indexOfItemWithTag:",_63);
}
}),new objj_method(sel_getUid("indexOfItemWithTitle:"),function(_64,_65,_66){
with(_64){
return objj_msgSend(_menu,"indexOfItemWithTitle:",_66);
}
}),new objj_method(sel_getUid("indexOfItemWithRepresentedObject:"),function(_67,_68,_69){
with(_67){
return objj_msgSend(_menu,"indexOfItemWithRepresentedObject:",_69);
}
}),new objj_method(sel_getUid("indexOfItemWithTarget:action:"),function(_6a,_6b,_6c,_6d){
with(_6a){
return objj_msgSend(_menu,"indexOfItemWithTarget:action:",_6c,_6d);
}
}),new objj_method(sel_getUid("preferredEdge"),function(_6e,_6f){
with(_6e){
return _preferredEdge;
}
}),new objj_method(sel_getUid("setPreferredEdge:"),function(_70,_71,_72){
with(_70){
_preferredEdge=_72;
}
}),new objj_method(sel_getUid("setTitle:"),function(_73,_74,_75){
with(_73){
if(objj_msgSend(_73,"title")===_75){
return;
}
if(objj_msgSend(_73,"pullsDown")){
var _76=objj_msgSend(_menu,"itemArray");
if(objj_msgSend(_76,"count")<=0){
objj_msgSend(_73,"addItemWithTitle:",_75);
}else{
objj_msgSend(_76[0],"setTitle:",_75);
objj_msgSend(_73,"synchronizeTitleAndSelectedItem");
}
}else{
var _77=objj_msgSend(_73,"indexOfItemWithTitle:",_75);
if(_77<0){
objj_msgSend(_73,"addItemWithTitle:",_75);
_77=objj_msgSend(_73,"numberOfItems")-1;
}
objj_msgSend(_73,"selectItemAtIndex:",_77);
}
}
}),new objj_method(sel_getUid("setImage:"),function(_78,_79,_7a){
with(_78){
}
}),new objj_method(sel_getUid("synchronizeTitleAndSelectedItem"),function(_7b,_7c){
with(_7b){
var _7d=nil;
if(objj_msgSend(_7b,"pullsDown")){
var _7e=objj_msgSend(_menu,"itemArray");
if(objj_msgSend(_7e,"count")>0){
_7d=_7e[0];
}
}else{
_7d=objj_msgSend(_7b,"selectedItem");
}
objj_msgSendSuper({receiver:_7b,super_class:objj_getClass("CPButton")},"setImage:",objj_msgSend(_7d,"image"));
objj_msgSendSuper({receiver:_7b,super_class:objj_getClass("CPButton")},"setTitle:",objj_msgSend(_7d,"title"));
}
}),new objj_method(sel_getUid("menuDidAddItem:"),function(_7f,_80,_81){
with(_7f){
var _82=objj_msgSend(objj_msgSend(_81,"userInfo"),"objectForKey:","CPMenuItemIndex");
if(_selectedIndex<0){
objj_msgSend(_7f,"selectItemAtIndex:",0);
}else{
if(_82==_selectedIndex){
objj_msgSend(_7f,"synchronizeTitleAndSelectedItem");
}else{
if(_82<_selectedIndex){
++_selectedIndex;
}
}
}
if(_82==0&&objj_msgSend(_7f,"pullsDown")){
var _83=objj_msgSend(_menu,"itemArray");
objj_msgSend(_83[0],"setHidden:",YES);
if(_83.length>0){
objj_msgSend(_83[1],"setHidden:",NO);
}
}
var _84=objj_msgSend(_menu,"itemArray")[_82],_85=objj_msgSend(_84,"action");
if(!_85||(_85===sel_getUid("_popUpItemAction:"))){
objj_msgSend(_84,"setTarget:",_7f);
objj_msgSend(_84,"setAction:",sel_getUid("_popUpItemAction:"));
}
}
}),new objj_method(sel_getUid("menuDidChangeItem:"),function(_86,_87,_88){
with(_86){
var _89=objj_msgSend(objj_msgSend(_88,"userInfo"),"objectForKey:","CPMenuItemIndex");
if(objj_msgSend(_86,"pullsDown")&&_89!=0){
return;
}
if(!objj_msgSend(_86,"pullsDown")&&_89!=_selectedIndex){
return;
}
objj_msgSend(_86,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("menuDidRemoveItem:"),function(_8a,_8b,_8c){
with(_8a){
var _8d=objj_msgSend(_8a,"numberOfItems");
if(_8d<=_selectedIndex){
objj_msgSend(_8a,"selectItemAtIndex:",_8d-1);
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_8e,_8f,_90){
with(_8e){
if(!objj_msgSend(_8e,"isEnabled")){
return;
}
objj_msgSend(_8e,"highlight:",YES);
var _91=objj_msgSend(_8e,"menu"),_92=objj_msgSend(_8e,"window"),_93=objj_msgSend(_CPMenuWindow,"menuWindowWithMenu:font:",_91,objj_msgSend(_8e,"font"));
objj_msgSend(_93,"setDelegate:",_8e);
objj_msgSend(_93,"setBackgroundStyle:",_CPMenuWindowPopUpBackgroundStyle);
if(objj_msgSend(_8e,"pullsDown")){
var _94=objj_msgSend(_92,"convertBaseToBridge:",objj_msgSend(_8e,"convertPoint:toView:",CGPointMake(0,CGRectGetMaxY(objj_msgSend(_8e,"bounds"))),nil));
}else{
var _95=objj_msgSend(_8e,"convertRect:toView:",objj_msgSend(_8e,"contentRectForBounds:",objj_msgSend(_8e,"bounds")),nil),_94=objj_msgSend(_92,"convertBaseToBridge:",_95.origin),_96=objj_msgSend(_93,"rectForItemAtIndex:",_selectedIndex);
_94.x-=CGRectGetMinX(_96)+objj_msgSend(_93,"overlapOffsetWidth")+objj_msgSend(objj_msgSend(objj_msgSend(_91,"itemAtIndex:",_selectedIndex),"_menuItemView"),"overlapOffsetWidth");
_94.y-=CGRectGetMinY(_96)+(CGRectGetHeight(_96)-CGRectGetHeight(_95))/2;
}
objj_msgSend(_93,"setFrameOrigin:",_94);
var _97=CGRectGetMaxX(objj_msgSend(_93,"frame")),_98=objj_msgSend(_92,"convertBaseToBridge:",CGPointMake(CGRectGetMaxX(objj_msgSend(_8e,"convertRect:toView:",objj_msgSend(_8e,"bounds"),nil)),0)).x;
if(_97<_98){
objj_msgSend(_93,"setMinWidth:",CGRectGetWidth(objj_msgSend(_93,"frame"))+_98-_97-(objj_msgSend(_8e,"pullsDown")?0:_1));
}
objj_msgSend(_93,"orderFront:",_8e);
objj_msgSend(_93,"beginTrackingWithEvent:sessionDelegate:didEndSelector:",_90,_8e,sel_getUid("menuWindowDidFinishTracking:highlightedItem:"));
}
}),new objj_method(sel_getUid("menuWindowDidFinishTracking:highlightedItem:"),function(_99,_9a,_9b,_9c){
with(_99){
objj_msgSend(_CPMenuWindow,"poolMenuWindow:",_9b);
objj_msgSend(_99,"highlight:",NO);
var _9d=objj_msgSend(_menu,"indexOfItem:",_9c);
if(_9d==CPNotFound){
return;
}
objj_msgSend(_99,"selectItemAtIndex:",_9d);
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_9c,"action"),objj_msgSend(_9c,"target"),_9c);
}
}),new objj_method(sel_getUid("_popUpItemAction:"),function(_9e,_9f,_a0){
with(_9e){
objj_msgSend(_9e,"sendAction:to:",objj_msgSend(_9e,"action"),objj_msgSend(_9e,"target"));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("themeClass"),function(_a1,_a2){
with(_a1){
return "popup-button";
}
})]);
var _a3="CPPopUpButtonMenuKey",_a4="CPPopUpButtonSelectedIndexKey",_a5="CPPopUpButtonPullsDownKey";
var _2=objj_getClass("CPPopUpButton");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPPopUpButton\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_a6,_a7,_a8){
with(_a6){
_a6=objj_msgSendSuper({receiver:_a6,super_class:objj_getClass("CPButton")},"initWithCoder:",_a8);
if(_a6){
_selectedIndex=-1;
objj_msgSend(_a6,"setMenu:",objj_msgSend(_a8,"decodeObjectForKey:",_a3));
objj_msgSend(_a6,"selectItemAtIndex:",objj_msgSend(_a8,"decodeObjectForKey:",_a4));
}
return _a6;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_a9,_aa,_ab){
with(_a9){
objj_msgSendSuper({receiver:_a9,super_class:objj_getClass("CPButton")},"encodeWithCoder:",_ab);
objj_msgSend(_ab,"encodeObject:forKey:",_menu,_a3);
objj_msgSend(_ab,"encodeInt:forKey:",_selectedIndex,_a4);
}
})]);
p;21;CPProgressIndicator.jI;19;AppKit/CGGeometry.jI;20;AppKit/CPImageView.jI;15;AppKit/CPView.jc;8511;
CPProgressIndicatorBarStyle=0;
CPProgressIndicatorSpinningStyle=1;
CPProgressIndicatorHUDBarStyle=2;
var _1=nil,_2=nil,_3=nil,_4=nil;
var _5=objj_allocateClassPair(CPView,"CPProgressIndicator"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_minValue"),new objj_ivar("_maxValue"),new objj_ivar("_doubleValue"),new objj_ivar("_controlSize"),new objj_ivar("_isIndeterminate"),new objj_ivar("_style"),new objj_ivar("_isAnimating"),new objj_ivar("_isDisplayedWhenStoppedSet"),new objj_ivar("_isDisplayedWhenStopped"),new objj_ivar("_barView")]);
objj_registerClassPair(_5);
objj_addClassForBundle(_5,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_5,[new objj_method(sel_getUid("initWithFrame:"),function(_7,_8,_9){
with(_7){
_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("CPView")},"initWithFrame:",_9);
if(_7){
_minValue=0;
_maxValue=100;
_doubleValue=0;
_style=CPProgressIndicatorBarStyle;
_isDisplayedWhenStoppedSet=NO;
_controlSize=CPRegularControlSize;
objj_msgSend(_7,"updateBackgroundColor");
objj_msgSend(_7,"drawBar");
}
return _7;
}
}),new objj_method(sel_getUid("setUsesThreadedAnimation:"),function(_a,_b,_c){
with(_a){
}
}),new objj_method(sel_getUid("startAnimation:"),function(_d,_e,_f){
with(_d){
_isAnimating=YES;
objj_msgSend(_d,"_hideOrDisplay");
}
}),new objj_method(sel_getUid("stopAnimation:"),function(_10,_11,_12){
with(_10){
_isAnimating=NO;
objj_msgSend(_10,"_hideOrDisplay");
}
}),new objj_method(sel_getUid("usesThreadedAnimation"),function(_13,_14){
with(_13){
return NO;
}
}),new objj_method(sel_getUid("incrementBy:"),function(_15,_16,_17){
with(_15){
objj_msgSend(_15,"setDoubleValue:",_doubleValue+_17);
}
}),new objj_method(sel_getUid("setDoubleValue:"),function(_18,_19,_1a){
with(_18){
_doubleValue=MIN(MAX(_1a,_minValue),_maxValue);
objj_msgSend(_18,"drawBar");
}
}),new objj_method(sel_getUid("doubleValue"),function(_1b,_1c){
with(_1b){
return _doubleValue;
}
}),new objj_method(sel_getUid("setMinValue:"),function(_1d,_1e,_1f){
with(_1d){
_minValue=_1f;
}
}),new objj_method(sel_getUid("minValue"),function(_20,_21){
with(_20){
return _minValue;
}
}),new objj_method(sel_getUid("setMaxValue:"),function(_22,_23,_24){
with(_22){
_maxValue=_24;
}
}),new objj_method(sel_getUid("maxValue"),function(_25,_26){
with(_25){
return _maxValue;
}
}),new objj_method(sel_getUid("setControlSize:"),function(_27,_28,_29){
with(_27){
if(_controlSize==_29){
return;
}
_controlSize=_29;
objj_msgSend(_27,"updateBackgroundColor");
}
}),new objj_method(sel_getUid("controlSize"),function(_2a,_2b){
with(_2a){
return _controlSize;
}
}),new objj_method(sel_getUid("setControlTint:"),function(_2c,_2d,_2e){
with(_2c){
}
}),new objj_method(sel_getUid("controlTint"),function(_2f,_30){
with(_2f){
return 0;
}
}),new objj_method(sel_getUid("setBezeled:"),function(_31,_32,_33){
with(_31){
}
}),new objj_method(sel_getUid("isBezeled"),function(_34,_35){
with(_34){
return YES;
}
}),new objj_method(sel_getUid("setIndeterminate:"),function(_36,_37,_38){
with(_36){
if(_isIndeterminate==_38){
return;
}
_isIndeterminate=_38;
objj_msgSend(_36,"updateBackgroundColor");
}
}),new objj_method(sel_getUid("isIndeterminate"),function(_39,_3a){
with(_39){
return _isIndeterminate;
}
}),new objj_method(sel_getUid("setStyle:"),function(_3b,_3c,_3d){
with(_3b){
if(_style==_3d){
return;
}
_style=_3d;
objj_msgSend(_3b,"updateBackgroundColor");
}
}),new objj_method(sel_getUid("sizeToFit"),function(_3e,_3f){
with(_3e){
if(_style==CPProgressIndicatorSpinningStyle){
objj_msgSend(_3e,"setFrameSize:",objj_msgSend(objj_msgSend(_1[_controlSize],"patternImage"),"size"));
}else{
objj_msgSend(_3e,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_3e,"frame")),_4[_2+"BezelBorder"+_3[CPProgressIndicatorBarStyle]+_CPControlIdentifierForControlSize(_controlSize)][0].height));
}
}
}),new objj_method(sel_getUid("setDisplayedWhenStopped:"),function(_40,_41,_42){
with(_40){
if(_isDisplayedWhenStoppedSet&&_isDisplayedWhenStopped==_42){
return;
}
_isDisplayedWhenStoppedSet=YES;
_isDisplayedWhenStopped=_42;
objj_msgSend(_40,"_hideOrDisplay");
}
}),new objj_method(sel_getUid("isDisplayedWhenStopped"),function(_43,_44){
with(_43){
if(_isDisplayedWhenStoppedSet){
return _isDisplayedWhenStopped;
}
if(_style==CPProgressIndicatorBarStyle||_style==CPProgressIndicatorHUDBarStyle){
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("_hideOrDisplay"),function(_45,_46){
with(_45){
objj_msgSend(_45,"setHidden:",!_isAnimating&&!objj_msgSend(_45,"isDisplayedWhenStopped"));
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_47,_48,_49){
with(_47){
objj_msgSendSuper({receiver:_47,super_class:objj_getClass("CPView")},"setFrameSize:",_49);
objj_msgSend(_47,"drawBar");
}
}),new objj_method(sel_getUid("drawBar"),function(_4a,_4b){
with(_4a){
if(_style==CPProgressIndicatorSpinningStyle){
return;
}
if(!_barView){
_barView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(2,2,0,9));
objj_msgSend(_barView,"setBackgroundColor:",objj_msgSend(CPColor,"redColor"));
objj_msgSend(_4a,"addSubview:",_barView);
}
objj_msgSend(_barView,"setBackgroundColor:",_CPControlColorWithPatternImage(_4,_2,"Bar",_3[_style],_CPControlIdentifierForControlSize(_controlSize)));
objj_msgSend(_barView,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_4a,"bounds"))*(_doubleValue-_minValue)/(_maxValue-_minValue)-4,9));
}
}),new objj_method(sel_getUid("updateBackgroundColor"),function(_4c,_4d){
with(_4c){
if(YES){
if(_style==CPProgressIndicatorSpinningStyle){
objj_msgSend(_barView,"removeFromSuperview");
_barView=nil;
objj_msgSend(_4c,"setBackgroundColor:",_1[_controlSize]);
}else{
objj_msgSend(_4c,"setBackgroundColor:",_CPControlThreePartImagePattern(NO,_4,_2,"BezelBorder",_3[_style],_CPControlIdentifierForControlSize(_controlSize)));
objj_msgSend(_4c,"drawBar");
}
}else{
objj_msgSend(_4c,"setBackgroundColor:",nil);
}
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("initialize"),function(_4e,_4f){
with(_4e){
if(_4e!=objj_msgSend(CPProgressIndicator,"class")){
return;
}
var _50=objj_msgSend(CPBundle,"bundleForClass:",_4e);
_1=[];
_1[CPMiniControlSize]=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_50,"pathForResource:","CPProgressIndicator/CPProgressIndicatorSpinningStyleRegular.gif"),CGSizeMake(64,64)));
_1[CPSmallControlSize]=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_50,"pathForResource:","CPProgressIndicator/CPProgressIndicatorSpinningStyleRegular.gif"),CGSizeMake(64,64)));
_1[CPRegularControlSize]=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_50,"pathForResource:","CPProgressIndicator/CPProgressIndicatorSpinningStyleRegular.gif"),CGSizeMake(64,64)));
CPProgressIndicatorBezelBorderViewPool=[];
var _51=CPProgressIndicatorBarStyle,end=CPProgressIndicatorHUDBarStyle;
for(;_51<=end;++_51){
CPProgressIndicatorBezelBorderViewPool[_51]=[];
CPProgressIndicatorBezelBorderViewPool[_51][CPMiniControlSize]=[];
CPProgressIndicatorBezelBorderViewPool[_51][CPSmallControlSize]=[];
CPProgressIndicatorBezelBorderViewPool[_51][CPRegularControlSize]=[];
}
_2=objj_msgSend(_4e,"className");
_3=[];
_3[CPProgressIndicatorBarStyle]="Bar";
_3[CPProgressIndicatorSpinningStyle]="Spinny";
_3[CPProgressIndicatorHUDBarStyle]="HUDBar";
var _53=_CPControlIdentifierForControlSize(CPRegularControlSize),_54=_CPControlIdentifierForControlSize(CPSmallControlSize),_55=_CPControlIdentifierForControlSize(CPMiniControlSize);
_4=[];
var _56=_2+"BezelBorder"+_3[CPProgressIndicatorBarStyle];
_4[_56+_53]=[{width:3,height:15},{width:1,height:15},{width:3,height:15}];
_4[_56+_54]=[{width:3,height:15},{width:1,height:15},{width:3,height:15}];
_4[_56+_55]=[{width:3,height:15},{width:1,height:15},{width:3,height:15}];
_56=_2+"Bar"+_3[CPProgressIndicatorBarStyle];
_4[_56+_53]={width:1,height:9};
_4[_56+_54]={width:1,height:9};
_4[_56+_55]={width:1,height:9};
_56=_2+"BezelBorder"+_3[CPProgressIndicatorHUDBarStyle];
_4[_56+_53]=[{width:3,height:15},{width:1,height:15},{width:3,height:15}];
_4[_56+_54]=[{width:3,height:15},{width:1,height:15},{width:3,height:15}];
_4[_56+_55]=[{width:3,height:15},{width:1,height:15},{width:3,height:15}];
_56=_2+"Bar"+_3[CPProgressIndicatorHUDBarStyle];
_4[_56+_53]={width:1,height:9};
_4[_56+_54]={width:1,height:9};
_4[_56+_55]={width:1,height:9};
}
})]);
p;9;CPRadio.jI;21;Foundation/CPObject.jI;18;Foundation/CPSet.ji;10;CPButton.jc;5034;
var _1=objj_allocateClassPair(CPButton,"CPRadio"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_radioGroup")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:radioGroup:"),function(_3,_4,_5,_6){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPButton")},"initWithFrame:",_5);
if(_3){
objj_msgSend(_3,"setRadioGroup:",_6||objj_msgSend(CPRadioGroup,"new"));
objj_msgSend(_3,"setHighlightsBy:",CPContentsCellMask);
objj_msgSend(_3,"setShowsStateBy:",CPContentsCellMask);
objj_msgSend(_3,"setImagePosition:",CPImageLeft);
objj_msgSend(_3,"setAlignment:",CPLeftTextAlignment);
objj_msgSend(_3,"setBordered:",YES);
}
return _3;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"initWithFrame:radioGroup:",_9,nil);
}
}),new objj_method(sel_getUid("nextState"),function(_a,_b){
with(_a){
return CPOnState;
}
}),new objj_method(sel_getUid("setRadioGroup:"),function(_c,_d,_e){
with(_c){
if(_radioGroup===_e){
return;
}
objj_msgSend(_radioGroup,"_removeRadio:",_c);
_radioGroup=_e;
objj_msgSend(_radioGroup,"_addRadio:",_c);
}
}),new objj_method(sel_getUid("radioGroup"),function(_f,_10){
with(_f){
return _radioGroup;
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_11,_12,_13){
with(_11){
objj_msgSendSuper({receiver:_11,super_class:objj_getClass("CPButton")},"setObjectValue:",_13);
if(objj_msgSend(_11,"state")===CPOnState){
objj_msgSend(_radioGroup,"_setSelectedRadio:",_11);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("radioWithTitle:theme:"),function(_14,_15,_16,_17){
with(_14){
return objj_msgSend(_14,"buttonWithTitle:theme:",_16,_17);
}
}),new objj_method(sel_getUid("radioWithTitle:"),function(_18,_19,_1a){
with(_18){
return objj_msgSend(_18,"buttonWithTitle:",_1a);
}
}),new objj_method(sel_getUid("standardButtonWithTitle:"),function(_1b,_1c,_1d){
with(_1b){
var _1e=objj_msgSend(objj_msgSend(CPRadio,"alloc"),"init");
objj_msgSend(_1e,"setTitle:",_1d);
return _1e;
}
}),new objj_method(sel_getUid("themeClass"),function(_1f,_20){
with(_1f){
return "radio";
}
})]);
var _21="CPRadioRadioGroupKey";
var _1=objj_getClass("CPRadio");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPRadio\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_22,_23,_24){
with(_22){
_22=objj_msgSendSuper({receiver:_22,super_class:objj_getClass("CPButton")},"initWithCoder:",_24);
if(_22){
_radioGroup=objj_msgSend(_24,"decodeObjectForKey:",_21);
}
return _22;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_25,_26,_27){
with(_25){
objj_msgSendSuper({receiver:_25,super_class:objj_getClass("CPButton")},"encodeWithCoder:",_27);
objj_msgSend(_27,"encodeObject:forKey:",_radioGroup,_21);
}
})]);
var _1=objj_allocateClassPair(CPObject,"CPRadioGroup"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_radios"),new objj_ivar("_selectedRadio")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_28,_29){
with(_28){
_28=objj_msgSendSuper({receiver:_28,super_class:objj_getClass("CPObject")},"init");
if(_28){
_radios=objj_msgSend(CPSet,"set");
_selectedRadio=nil;
}
return _28;
}
}),new objj_method(sel_getUid("_addRadio:"),function(_2a,_2b,_2c){
with(_2a){
objj_msgSend(_radios,"addObject:",_2c);
if(objj_msgSend(_2c,"state")===CPOnState){
objj_msgSend(_2a,"_setSelectedRadio:",_2c);
}
}
}),new objj_method(sel_getUid("_removeRadio:"),function(_2d,_2e,_2f){
with(_2d){
if(_selectedRadio===_2f){
_selectedRadio=nil;
}
objj_msgSend(_radios,"removeObject:",_2f);
}
}),new objj_method(sel_getUid("_setSelectedRadio:"),function(_30,_31,_32){
with(_30){
if(_selectedRadio===_32){
return;
}
objj_msgSend(_selectedRadio,"setState:",CPOffState);
_selectedRadio=_32;
}
}),new objj_method(sel_getUid("selectedRadio"),function(_33,_34){
with(_33){
return _selectedRadio;
}
}),new objj_method(sel_getUid("radios"),function(_35,_36){
with(_35){
return objj_msgSend(_radios,"allObjects");
}
})]);
var _37="CPRadioGroupRadiosKey",_38="CPRadioGroupSelectedRadioKey";
var _1=objj_getClass("CPRadioGroup");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPRadioGroup\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_39,_3a,_3b){
with(_39){
_39=objj_msgSendSuper({receiver:_39,super_class:objj_getClass("CPObject")},"init");
if(_39){
_radios=objj_msgSend(_3b,"decodeObjectForKey:",_37);
_selectedRadio=objj_msgSend(_3b,"decodeObjectForKey:",_38);
}
return _39;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_3c,_3d,_3e){
with(_3c){
objj_msgSend(_3e,"encodeObject:forKey:",_radios,_37);
objj_msgSend(_3e,"encodeObject:forKey:",_selectedRadio,_38);
}
})]);
p;13;CPResponder.jI;21;Foundation/CPObject.jc;5510;
CPDeleteKeyCode=8;
CPTabKeyCode=9;
CPReturnKeyCode=13;
CPEscapeKeyCode=27;
CPLeftArrowKeyCode=37;
CPUpArrowKeyCode=38;
CPRightArrowKeyCode=39;
CPDownArrowKeyCode=40;
var _1=objj_allocateClassPair(CPObject,"CPResponder"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_menu"),new objj_ivar("_nextResponder")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("acceptsFirstResponder"),function(_3,_4){
with(_3){
return NO;
}
}),new objj_method(sel_getUid("becomeFirstResponder"),function(_5,_6){
with(_5){
return YES;
}
}),new objj_method(sel_getUid("resignFirstResponder"),function(_7,_8){
with(_7){
return YES;
}
}),new objj_method(sel_getUid("setNextResponder:"),function(_9,_a,_b){
with(_9){
_nextResponder=_b;
}
}),new objj_method(sel_getUid("nextResponder"),function(_c,_d){
with(_c){
return _nextResponder;
}
}),new objj_method(sel_getUid("interpretKeyEvents:"),function(_e,_f,_10){
with(_e){
var _11,_12=0;
while(_11=_10[_12++]){
switch(objj_msgSend(_11,"keyCode")){
case CPLeftArrowKeyCode:
objj_msgSend(_e,"moveBackward:",_e);
break;
case CPRightArrowKeyCode:
objj_msgSend(_e,"moveForward:",_e);
break;
case CPUpArrowKeyCode:
objj_msgSend(_e,"moveUp:",_e);
break;
case CPDownArrowKeyCode:
objj_msgSend(_e,"moveDown:",_e);
break;
case CPDeleteKeyCode:
objj_msgSend(_e,"deleteBackward:",_e);
break;
case CPReturnKeyCode:
case 3:
objj_msgSend(_e,"insertLineBreak:",_e);
break;
case CPEscapeKeyCode:
objj_msgSend(_e,"cancel:",_e);
break;
case CPTabKeyCode:
var _13=objj_msgSend(_11,"modifierFlags")&CPShiftKeyMask;
if(!_13){
objj_msgSend(_e,"insertTab:",_e);
}else{
objj_msgSend(_e,"insertBackTab:",_e);
}
break;
default:
objj_msgSend(_e,"insertText:",objj_msgSend(_11,"characters"));
}
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_14,_15,_16){
with(_14){
objj_msgSend(_nextResponder,"performSelector:withObject:",_15,_16);
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_17,_18,_19){
with(_17){
objj_msgSend(_nextResponder,"performSelector:withObject:",_18,_19);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_1a,_1b,_1c){
with(_1a){
objj_msgSend(_nextResponder,"performSelector:withObject:",_1b,_1c);
}
}),new objj_method(sel_getUid("mouseMoved:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSend(_nextResponder,"performSelector:withObject:",_1e,_1f);
}
}),new objj_method(sel_getUid("mouseEntered:"),function(_20,_21,_22){
with(_20){
objj_msgSend(_nextResponder,"performSelector:withObject:",_21,_22);
}
}),new objj_method(sel_getUid("mouseExited:"),function(_23,_24,_25){
with(_23){
objj_msgSend(_nextResponder,"performSelector:withObject:",_24,_25);
}
}),new objj_method(sel_getUid("scrollWheel:"),function(_26,_27,_28){
with(_26){
objj_msgSend(_nextResponder,"performSelector:withObject:",_27,_28);
}
}),new objj_method(sel_getUid("keyDown:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_nextResponder,"performSelector:withObject:",_2a,_2b);
}
}),new objj_method(sel_getUid("keyUp:"),function(_2c,_2d,_2e){
with(_2c){
objj_msgSend(_nextResponder,"performSelector:withObject:",_2d,_2e);
}
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(_2f,_30,_31){
with(_2f){
return NO;
}
}),new objj_method(sel_getUid("deleteBackward:"),function(_32,_33,_34){
with(_32){
}
}),new objj_method(sel_getUid("insertLineBreak:"),function(_35,_36,_37){
with(_35){
objj_msgSend(_35,"insertNewline:",_37);
}
}),new objj_method(sel_getUid("insertNewline:"),function(_38,_39,_3a){
with(_38){
objj_msgSend(_38,"insertNewline:",_3a);
}
}),new objj_method(sel_getUid("cancel:"),function(_3b,_3c,_3d){
with(_3b){
}
}),new objj_method(sel_getUid("insertTab:"),function(_3e,_3f,_40){
with(_3e){
}
}),new objj_method(sel_getUid("insertBackTab:"),function(_41,_42,_43){
with(_41){
}
}),new objj_method(sel_getUid("insertText:"),function(_44,_45,_46){
with(_44){
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_47,_48,_49){
with(_47){
if(objj_msgSend(_47,"respondsToSelector:",_49)){
objj_msgSend(_47,"performSelector:",_49);
}else{
objj_msgSend(_nextResponder,"doCommandBySelector:",_49);
}
}
}),new objj_method(sel_getUid("tryToPerform:with:"),function(_4a,_4b,_4c,_4d){
with(_4a){
if(objj_msgSend(_4a,"respondsToSelector:",_4c)){
objj_msgSend(_4a,"performSelector:withObject:",_4c,_4d);
return YES;
}
return objj_msgSend(_nextResponder,"tryToPerform:with:",_4c,_4d);
}
}),new objj_method(sel_getUid("setMenu:"),function(_4e,_4f,_50){
with(_4e){
_menu=_50;
}
}),new objj_method(sel_getUid("menu"),function(_51,_52){
with(_51){
return _menu;
}
}),new objj_method(sel_getUid("undoManager"),function(_53,_54){
with(_53){
return objj_msgSend(_nextResponder,"performSelector:",_54);
}
}),new objj_method(sel_getUid("noResponderFor:"),function(_55,_56,_57){
with(_55){
}
})]);
var _58="CPResponderNextResponderKey";
var _1=objj_getClass("CPResponder");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPResponder\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_59,_5a,_5b){
with(_59){
_59=objj_msgSendSuper({receiver:_59,super_class:objj_getClass("CPObject")},"init");
if(_59){
_nextResponder=objj_msgSend(_5b,"decodeObjectForKey:",_58);
}
return _59;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_5c,_5d,_5e){
with(_5c){
if(_nextResponder!==nil){
objj_msgSend(_5e,"encodeConditionalObject:forKey:",_nextResponder,_58);
}
}
})]);
p;12;CPScroller.ji;11;CPControl.jc;15280;
CPScrollerNoPart=0;
CPScrollerDecrementPage=1;
CPScrollerKnob=2;
CPScrollerIncrementPage=3;
CPScrollerDecrementLine=4;
CPScrollerIncrementLine=5;
CPScrollerKnobSlot=6;
CPScrollerIncrementArrow=0;
CPScrollerDecrementArrow=1;
CPNoScrollerParts=0;
CPOnlyScrollerArrows=1;
CPAllScrollerParts=2;
var _1=[CPScrollerKnobSlot,CPScrollerDecrementLine,CPScrollerIncrementLine,CPScrollerKnob],_2={},_3={};
_2[CPScrollerDecrementLine]="decrement-line";
_2[CPScrollerIncrementLine]="increment-line";
_2[CPScrollerKnobSlot]="knob-slot";
_2[CPScrollerKnob]="knob";
var _4=objj_allocateClassPair(CPControl,"CPScroller"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_controlSize"),new objj_ivar("_usableParts"),new objj_ivar("_partRects"),new objj_ivar("_isVertical"),new objj_ivar("_knobProportion"),new objj_ivar("_hitPart"),new objj_ivar("_trackingPart"),new objj_ivar("_trackingFloatValue"),new objj_ivar("_trackingStartPoint")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("isVertical"),function(_6,_7){
with(_6){
return _isVertical;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("CPControl")},"initWithFrame:",_a);
if(_8){
_controlSize=CPRegularControlSize;
_partRects=[];
objj_msgSend(_8,"setFloatValue:knobProportion:",0,1);
_hitPart=CPScrollerNoPart;
objj_msgSend(_8,"_recalculateIsVertical");
}
return _8;
}
}),new objj_method(sel_getUid("setControlSize:"),function(_b,_c,_d){
with(_b){
if(_controlSize==_d){
return;
}
_controlSize=_d;
objj_msgSend(_b,"setNeedsLayout");
objj_msgSend(_b,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("controlSize"),function(_e,_f){
with(_e){
return _controlSize;
}
}),new objj_method(sel_getUid("setFloatValue:"),function(_10,_11,_12){
with(_10){
objj_msgSendSuper({receiver:_10,super_class:objj_getClass("CPControl")},"setFloatValue:",MIN(1,MAX(0,_12)));
objj_msgSend(_10,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setFloatValue:knobProportion:"),function(_13,_14,_15,_16){
with(_13){
_knobProportion=MIN(1,MAX(0.0001,_16));
objj_msgSend(_13,"setFloatValue:",_15);
}
}),new objj_method(sel_getUid("knobProportion"),function(_17,_18){
with(_17){
return _knobProportion;
}
}),new objj_method(sel_getUid("currentValueForThemeAttribute:"),function(_19,_1a,_1b){
with(_19){
var _1c=_themeState;
if(_2[_hitPart]+"-color"!==_1b){
_1c&=~CPThemeStateHighlighted;
}
return objj_msgSend(_19,"valueForThemeAttribute:inState:",_1b,_1c);
}
}),new objj_method(sel_getUid("rectForPart:"),function(_1d,_1e,_1f){
with(_1d){
if(_1f==CPScrollerNoPart){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
return _partRects[_1f];
}
}),new objj_method(sel_getUid("testPart:"),function(_20,_21,_22){
with(_20){
_22=objj_msgSend(_20,"convertPoint:fromView:",_22,nil);
if(CGRectContainsPoint(objj_msgSend(_20,"rectForPart:",CPScrollerKnob),_22)){
return CPScrollerKnob;
}
if(CGRectContainsPoint(objj_msgSend(_20,"rectForPart:",CPScrollerDecrementPage),_22)){
return CPScrollerDecrementPage;
}
if(CGRectContainsPoint(objj_msgSend(_20,"rectForPart:",CPScrollerIncrementPage),_22)){
return CPScrollerIncrementPage;
}
if(CGRectContainsPoint(objj_msgSend(_20,"rectForPart:",CPScrollerDecrementLine),_22)){
return CPScrollerDecrementLine;
}
if(CGRectContainsPoint(objj_msgSend(_20,"rectForPart:",CPScrollerIncrementLine),_22)){
return CPScrollerIncrementLine;
}
if(CGRectContainsPoint(objj_msgSend(_20,"rectForPart:",CPScrollerKnobSlot),_22)){
return CPScrollerKnobSlot;
}
return CPScrollerNoPart;
}
}),new objj_method(sel_getUid("checkSpaceForParts"),function(_23,_24){
with(_23){
var _25=objj_msgSend(_23,"bounds");
if(_knobProportion===1){
_usableParts=CPNoScrollerParts;
_partRects[CPScrollerDecrementPage]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerKnob]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerIncrementPage]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerDecrementLine]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerIncrementLine]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerKnobSlot]={origin:{x:_25.origin.x,y:_25.origin.y},size:{width:_25.size.width,height:_25.size.height}};
return;
}
_usableParts=CPAllScrollerParts;
var _26=objj_msgSend(_23,"currentValueForThemeAttribute:","knob-inset"),_27=objj_msgSend(_23,"currentValueForThemeAttribute:","track-inset"),_28=(_25.size.width),_29=(_25.size.height);
if(objj_msgSend(_23,"isVertical")){
var _2a=objj_msgSend(_23,"currentValueForThemeAttribute:","decrement-line-size"),_2b=objj_msgSend(_23,"currentValueForThemeAttribute:","increment-line-size"),_2c=_2a.height+_27.top,_2d=_2b.height+_27.bottom,_2e=_29-_2c-_2d,_2f=objj_msgSend(_23,"currentValueForThemeAttribute:","minimum-knob-length"),_30=_28-_26.left-_26.right,_31=MAX(_2f,(_2e*_knobProportion)),_32=_2c+(_2e-_31)*objj_msgSend(_23,"floatValue");
_partRects[CPScrollerDecrementPage]={origin:{x:0,y:_2c},size:{width:_28,height:_32-_2c}};
_partRects[CPScrollerKnob]={origin:{x:_26.left,y:_32},size:{width:_30,height:_31}};
_partRects[CPScrollerIncrementPage]={origin:{x:0,y:_32+_31},size:{width:_28,height:_29-(_32+_31)-_2d}};
_partRects[CPScrollerKnobSlot]={origin:{x:_27.left,y:_2c},size:{width:_28-_27.left-_27.right,height:_2e}};
_partRects[CPScrollerDecrementLine]={origin:{x:0,y:0},size:{width:_2a.width,height:_2a.height}};
_partRects[CPScrollerIncrementLine]={origin:{x:0,y:_29-_2b.height},size:{width:_2b.width,height:_2b.height}};
}else{
var _2a=objj_msgSend(_23,"currentValueForThemeAttribute:","decrement-line-size"),_2b=objj_msgSend(_23,"currentValueForThemeAttribute:","increment-line-size"),_33=_2a.width+_27.left,_34=_2b.width+_27.right;
slotWidth=_28-_33-_34,_2f=objj_msgSend(_23,"currentValueForThemeAttribute:","minimum-knob-length"),_30=MAX(_2f,(slotWidth*_knobProportion)),_31=_29-_26.top-_26.bottom,_32=_33+(slotWidth-_30)*objj_msgSend(_23,"floatValue");
_partRects[CPScrollerDecrementPage]={origin:{x:_33,y:0},size:{width:_32-_33,height:_29}};
_partRects[CPScrollerKnob]={origin:{x:_32,y:_26.top},size:{width:_30,height:_31}};
_partRects[CPScrollerIncrementPage]={origin:{x:_32+_30,y:0},size:{width:_28-(_32+_30)-_34,height:_29}};
_partRects[CPScrollerKnobSlot]={origin:{x:_33,y:_27.top},size:{width:slotWidth,height:_29-_27.top-_27.bottom}};
_partRects[CPScrollerDecrementLine]={origin:{x:0,y:0},size:{width:_2a.width,height:_2a.height}};
_partRects[CPScrollerIncrementLine]={origin:{x:_28-_2b.width,y:0},size:{width:_2b.width,height:_2b.height}};
}
}
}),new objj_method(sel_getUid("usableParts"),function(_35,_36){
with(_35){
return _usableParts;
}
}),new objj_method(sel_getUid("drawArrow:highlight:"),function(_37,_38,_39,_3a){
with(_37){
}
}),new objj_method(sel_getUid("drawKnob"),function(_3b,_3c){
with(_3b){
}
}),new objj_method(sel_getUid("drawKnobSlot"),function(_3d,_3e){
with(_3d){
}
}),new objj_method(sel_getUid("createViewForPart:"),function(_3f,_40,_41){
with(_3f){
var _42=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_42,"setHitTests:",NO);
return _42;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_43,_44,_45){
with(_43){
return _partRects[_45];
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_46,_47,_48){
with(_46){
var _49=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_49,"setHitTests:",NO);
return _49;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_4a,_4b){
with(_4a){
objj_msgSend(_4a,"checkSpaceForParts");
var _4c=0,_4d=_1.length;
for(;_4c<_4d;++_4c){
var _4e=_1[_4c];
if(_4c===0){
view=objj_msgSend(_4a,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:",_4e,CPWindowBelow,_1[_4c+1]);
}else{
view=objj_msgSend(_4a,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:",_4e,CPWindowAbove,_1[_4c-1]);
}
if(view){
objj_msgSend(view,"setBackgroundColor:",objj_msgSend(_4a,"currentValueForThemeAttribute:",_2[_4e]+"-color"));
}
}
}
}),new objj_method(sel_getUid("drawParts"),function(_4f,_50){
with(_4f){
objj_msgSend(_4f,"drawKnobSlot");
objj_msgSend(_4f,"drawKnob");
objj_msgSend(_4f,"drawArrow:highlight:",CPScrollerDecrementArrow,NO);
objj_msgSend(_4f,"drawArrow:highlight:",CPScrollerIncrementArrow,NO);
}
}),new objj_method(sel_getUid("hitPart"),function(_51,_52){
with(_51){
return _hitPart;
}
}),new objj_method(sel_getUid("trackKnob:"),function(_53,_54,_55){
with(_53){
var _56=objj_msgSend(_55,"type");
if(_56===CPLeftMouseUp){
_hitPart=CPScrollerNoPart;
return;
}
if(_56===CPLeftMouseDown){
_trackingFloatValue=objj_msgSend(_53,"floatValue");
_trackingStartPoint=objj_msgSend(_53,"convertPoint:fromView:",objj_msgSend(_55,"locationInWindow"),nil);
}else{
if(_56===CPLeftMouseDragged){
var _57=objj_msgSend(_53,"rectForPart:",CPScrollerKnob),_58=objj_msgSend(_53,"rectForPart:",CPScrollerKnobSlot),_59=!objj_msgSend(_53,"isVertical")?((_58.size.width)-(_57.size.width)):((_58.size.height)-(_57.size.height));
if(_59<=0){
objj_msgSend(_53,"setFloatValue:",0);
}else{
var _5a=objj_msgSend(_53,"convertPoint:fromView:",objj_msgSend(_55,"locationInWindow"),nil);
delta=!objj_msgSend(_53,"isVertical")?_5a.x-_trackingStartPoint.x:_5a.y-_trackingStartPoint.y;
objj_msgSend(_53,"setFloatValue:",_trackingFloatValue+delta/_59);
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_53,sel_getUid("trackKnob:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
objj_msgSend(_53,"sendAction:to:",objj_msgSend(_53,"action"),objj_msgSend(_53,"target"));
}
}),new objj_method(sel_getUid("trackScrollButtons:"),function(_5b,_5c,_5d){
with(_5b){
var _5e=objj_msgSend(_5d,"type");
if(_5e===CPLeftMouseUp){
objj_msgSend(_5b,"highlight:",NO);
objj_msgSend(CPEvent,"stopPeriodicEvents");
_hitPart=CPScrollerNoPart;
return;
}
if(_5e===CPLeftMouseDown){
_trackingPart=objj_msgSend(_5b,"hitPart");
_trackingStartPoint=objj_msgSend(_5b,"convertPoint:fromView:",objj_msgSend(_5d,"locationInWindow"),nil);
if(objj_msgSend(_5d,"modifierFlags")&CPAlternateKeyMask){
if(_trackingPart==CPScrollerDecrementLine){
_hitPart=CPScrollerDecrementPage;
}else{
if(_trackingPart==CPScrollerIncrementLine){
_hitPart=CPScrollerIncrementPage;
}else{
if(_trackingPart==CPScrollerDecrementPage||_trackingPart==CPScrollerIncrementPage){
var _5f=objj_msgSend(_5b,"rectForPart:",CPScrollerKnob),_60=!objj_msgSend(_5b,"isVertical")?(_5f.size.width):(_5f.size.height),_61=objj_msgSend(_5b,"rectForPart:",CPScrollerKnobSlot),_62=(!objj_msgSend(_5b,"isVertical")?(_61.size.width):(_61.size.height))-_60;
objj_msgSend(_5b,"setFloatValue:",((!objj_msgSend(_5b,"isVertical")?_trackingStartPoint.x-(_61.origin.x):_trackingStartPoint.y-(_61.origin.y))-_60/2)/_62);
_hitPart=CPScrollerKnob;
objj_msgSend(_5b,"sendAction:to:",objj_msgSend(_5b,"action"),objj_msgSend(_5b,"target"));
return objj_msgSend(_5b,"trackKnob:",_5d);
}
}
}
}
objj_msgSend(_5b,"highlight:",YES);
objj_msgSend(_5b,"sendAction:to:",objj_msgSend(_5b,"action"),objj_msgSend(_5b,"target"));
objj_msgSend(CPEvent,"startPeriodicEventsAfterDelay:withPeriod:",0.5,0.04);
}else{
if(_5e===CPLeftMouseDragged){
_trackingStartPoint=objj_msgSend(_5b,"convertPoint:fromView:",objj_msgSend(_5d,"locationInWindow"),nil);
if(_trackingPart==CPScrollerDecrementPage||_trackingPart==CPScrollerIncrementPage){
var _63=objj_msgSend(_5b,"testPart:",objj_msgSend(_5d,"locationInWindow"));
if(_63==CPScrollerDecrementPage||_63==CPScrollerIncrementPage){
_trackingPart=_63;
_hitPart=_63;
}
}
objj_msgSend(_5b,"highlight:",CGRectContainsPoint(objj_msgSend(_5b,"rectForPart:",_trackingPart),_trackingStartPoint));
}else{
if(_5e==CPPeriodic&&CGRectContainsPoint(objj_msgSend(_5b,"rectForPart:",_trackingPart),_trackingStartPoint)){
objj_msgSend(_5b,"sendAction:to:",objj_msgSend(_5b,"action"),objj_msgSend(_5b,"target"));
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_5b,sel_getUid("trackScrollButtons:"),CPPeriodicMask|CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("_recalculateIsVertical"),function(_64,_65){
with(_64){
var _66=objj_msgSend(_64,"bounds"),_67=(_66.size.width),_68=(_66.size.height);
_isVertical=_67<_68?1:(_67>_68?0:-1);
if(_isVertical===1){
objj_msgSend(_64,"setThemeState:",CPThemeStateVertical);
}else{
if(_isVertical===0){
objj_msgSend(_64,"unsetThemeState:",CPThemeStateVertical);
}
}
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_69,_6a,_6b){
with(_69){
objj_msgSendSuper({receiver:_69,super_class:objj_getClass("CPControl")},"setFrameSize:",_6b);
objj_msgSend(_69,"_recalculateIsVertical");
objj_msgSend(_69,"checkSpaceForParts");
objj_msgSend(_69,"setNeedsLayout");
}
}),new objj_method(sel_getUid("mouseDown:"),function(_6c,_6d,_6e){
with(_6c){
if(!objj_msgSend(_6c,"isEnabled")){
return;
}
_hitPart=objj_msgSend(_6c,"testPart:",objj_msgSend(_6e,"locationInWindow"));
switch(_hitPart){
case CPScrollerKnob:
return objj_msgSend(_6c,"trackKnob:",_6e);
case CPScrollerDecrementLine:
case CPScrollerIncrementLine:
case CPScrollerDecrementPage:
case CPScrollerIncrementPage:
return objj_msgSend(_6c,"trackScrollButtons:",_6e);
}
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("themeClass"),function(_6f,_70){
with(_6f){
return "scroller";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_71,_72){
with(_71){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[nil,nil,nil,nil,{width:0,height:0},{width:0,height:0},{top:(0),right:(0),bottom:(0),left:(0)},{top:(0),right:(0),bottom:(0),left:(0)},{width:0,height:0}],["knob-slot-color","decrement-line-color","increment-line-color","knob-color","decrement-line-size","increment-line-size","track-inset","knob-inset","minimum-knob-length"]);
}
}),new objj_method(sel_getUid("scrollerWidth"),function(_73,_74){
with(_73){
return 17;
}
}),new objj_method(sel_getUid("scrollerWidthForControlSize:"),function(_75,_76,_77){
with(_75){
return 17;
}
})]);
var _78="CPScrollerControlSize",_79="CPScrollerKnobProportion";
var _4=objj_getClass("CPScroller");
if(!_4){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPScroller\""));
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_7a,_7b,_7c){
with(_7a){
if(_7a=objj_msgSendSuper({receiver:_7a,super_class:objj_getClass("CPControl")},"initWithCoder:",_7c)){
_controlSize=CPRegularControlSize;
if(objj_msgSend(_7c,"containsValueForKey:",_78)){
_controlSize=objj_msgSend(_7c,"decodeIntForKey:",_78);
}
_knobProportion=1;
if(objj_msgSend(_7c,"containsValueForKey:",_79)){
_knobProportion=objj_msgSend(_7c,"decodeFloatForKey:",_79);
}
_partRects=[];
_hitPart=CPScrollerNoPart;
objj_msgSend(_7a,"_recalculateIsVertical");
}
return _7a;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_7d,_7e,_7f){
with(_7d){
objj_msgSendSuper({receiver:_7d,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_7f);
objj_msgSend(_7f,"encodeInt:forKey:",_controlSize,_78);
objj_msgSend(_7f,"encodeFloat:forKey:",_knobProportion,_79);
}
})]);
p;14;CPScrollView.ji;8;CPView.ji;12;CPClipView.ji;12;CPScroller.jc;14690;
var _1=objj_allocateClassPair(CPView,"CPScrollView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_contentView"),new objj_ivar("_hasVerticalScroller"),new objj_ivar("_hasHorizontalScroller"),new objj_ivar("_autohidesScrollers"),new objj_ivar("_verticalScroller"),new objj_ivar("_horizontalScroller"),new objj_ivar("_recursionCount"),new objj_ivar("_verticalLineScroll"),new objj_ivar("_verticalPageScroll"),new objj_ivar("_horizontalLineScroll"),new objj_ivar("_horizontalPageScroll")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPView")},"initWithFrame:",_5);
if(_3){
_verticalLineScroll=10;
_verticalPageScroll=10;
_horizontalLineScroll=10;
_horizontalPageScroll=10;
_contentView=objj_msgSend(objj_msgSend(CPClipView,"alloc"),"initWithFrame:",objj_msgSend(_3,"bounds"));
objj_msgSend(_3,"addSubview:",_contentView);
objj_msgSend(_3,"setHasVerticalScroller:",YES);
objj_msgSend(_3,"setHasHorizontalScroller:",YES);
}
return _3;
}
}),new objj_method(sel_getUid("contentSize"),function(_6,_7){
with(_6){
return objj_msgSend(_contentView,"frame").size;
}
}),new objj_method(sel_getUid("documentView"),function(_8,_9){
with(_8){
return objj_msgSend(_contentView,"documentView");
}
}),new objj_method(sel_getUid("setContentView:"),function(_a,_b,_c){
with(_a){
if(!_c){
return;
}
var _d=objj_msgSend(_c,"documentView");
if(_d){
objj_msgSend(_d,"removeFromSuperview");
}
objj_msgSend(_contentView,"removeFromSuperview");
var _e=objj_msgSend(_a,"contentSize");
_contentView=_c;
objj_msgSend(_contentView,"setFrame:",CGRectMake(0,0,_e.width,_e.height));
objj_msgSend(_contentView,"setDocumentView:",_d);
objj_msgSend(_a,"addSubview:",_contentView);
}
}),new objj_method(sel_getUid("contentView"),function(_f,_10){
with(_f){
return _contentView;
}
}),new objj_method(sel_getUid("setDocumentView:"),function(_11,_12,_13){
with(_11){
objj_msgSend(_contentView,"setDocumentView:",_13);
objj_msgSend(_11,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("reflectScrolledClipView:"),function(_14,_15,_16){
with(_14){
if(_contentView!==_16){
return;
}
if(_recursionCount>5){
return;
}
++_recursionCount;
var _17=objj_msgSend(_14,"documentView");
if(!_17){
if(_autohidesScrollers){
objj_msgSend(_verticalScroller,"setHidden:",YES);
objj_msgSend(_horizontalScroller,"setHidden:",YES);
}else{
}
objj_msgSend(_contentView,"setFrame:",objj_msgSend(_14,"bounds"));
--_recursionCount;
return;
}
var _18=objj_msgSend(_17,"frame"),_19=objj_msgSend(_14,"bounds"),_1a=objj_msgSend(_contentView,"bounds").origin,_1b={width:CPRectGetWidth(_18)-CPRectGetWidth(_19),height:CPRectGetHeight(_18)-CPRectGetHeight(_19)},_1c=(!_autohidesScrollers||_1b.height>0)&&_hasVerticalScroller,_1d=(!_autohidesScrollers||_1b.width>0)&&_hasHorizontalScroller,_1e=!objj_msgSend(_verticalScroller,"isHidden"),_1f=!objj_msgSend(_horizontalScroller,"isHidden"),_20=(objj_msgSend(_verticalScroller,"frame").size.width);
horizontalScrollerHeight=(objj_msgSend(_horizontalScroller,"frame").size.height);
if(_autohidesScrollers){
if(_1c){
_1d=(!_autohidesScrollers||_1b.width>-_20)&&_hasHorizontalScroller;
}
if(_1d){
_1c=(!_autohidesScrollers||_1b.height>-horizontalScrollerHeight)&&_hasVerticalScroller;
}
}
objj_msgSend(_verticalScroller,"setHidden:",!_1c);
objj_msgSend(_verticalScroller,"setEnabled:",_1b.height>0);
objj_msgSend(_horizontalScroller,"setHidden:",!_1d);
objj_msgSend(_horizontalScroller,"setEnabled:",_1b.width>0);
if(_1c){
var _21=CPRectGetHeight(_19);
if(_1d){
_21-=horizontalScrollerHeight;
}
_1b.width+=_20;
_19.size.width-=_20;
objj_msgSend(_verticalScroller,"setFloatValue:knobProportion:",(_1b.height<=0)?0:_1a.y/_1b.height,CPRectGetHeight(_19)/CPRectGetHeight(_18));
objj_msgSend(_verticalScroller,"setFrame:",CPRectMake(CPRectGetMaxX(_19),0,_20,_21));
}else{
if(_1e){
objj_msgSend(_verticalScroller,"setFloatValue:knobProportion:",0,1);
}
}
if(_1d){
_1b.height+=horizontalScrollerHeight;
_19.size.height-=horizontalScrollerHeight;
objj_msgSend(_horizontalScroller,"setFloatValue:knobProportion:",(_1b.width<=0)?0:_1a.x/_1b.width,CPRectGetWidth(_19)/CPRectGetWidth(_18));
objj_msgSend(_horizontalScroller,"setFrame:",CPRectMake(0,CPRectGetMaxY(_19),CPRectGetWidth(_19),horizontalScrollerHeight));
}else{
if(_1f){
objj_msgSend(_horizontalScroller,"setFloatValue:knobProportion:",0,1);
}
}
objj_msgSend(_contentView,"setFrame:",_19);
--_recursionCount;
}
}),new objj_method(sel_getUid("setHorizontalScroller:"),function(_22,_23,_24){
with(_22){
if(_horizontalScroller===_24){
return;
}
objj_msgSend(_horizontalScroller,"removeFromSuperview");
objj_msgSend(_horizontalScroller,"setTarget:",nil);
objj_msgSend(_horizontalScroller,"setAction:",nil);
_horizontalScroller=_24;
objj_msgSend(_horizontalScroller,"setTarget:",_22);
objj_msgSend(_horizontalScroller,"setAction:",sel_getUid("_horizontalScrollerDidScroll:"));
objj_msgSend(_22,"addSubview:",_horizontalScroller);
objj_msgSend(_22,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("horizontalScroller"),function(_25,_26){
with(_25){
return _horizontalScroller;
}
}),new objj_method(sel_getUid("setHasHorizontalScroller:"),function(_27,_28,_29){
with(_27){
if(_hasHorizontalScroller===_29){
return;
}
_hasHorizontalScroller=_29;
if(_hasHorizontalScroller&&!_horizontalScroller){
objj_msgSend(_27,"setHorizontalScroller:",objj_msgSend(objj_msgSend(CPScroller,"alloc"),"initWithFrame:",CGRectMake(0,0,CPRectGetWidth(objj_msgSend(_27,"bounds")),objj_msgSend(CPScroller,"scrollerWidth"))));
}else{
if(!_hasHorizontalScroller&&_horizontalScroller){
objj_msgSend(_horizontalScroller,"setHidden:",YES);
objj_msgSend(_27,"reflectScrolledClipView:",_contentView);
}
}
}
}),new objj_method(sel_getUid("hasHorizontalScroller"),function(_2a,_2b){
with(_2a){
return _hasHorizontalScroller;
}
}),new objj_method(sel_getUid("setVerticalScroller:"),function(_2c,_2d,_2e){
with(_2c){
if(_verticalScroller===_2e){
return;
}
objj_msgSend(_verticalScroller,"removeFromSuperview");
objj_msgSend(_verticalScroller,"setTarget:",nil);
objj_msgSend(_verticalScroller,"setAction:",nil);
_verticalScroller=_2e;
objj_msgSend(_verticalScroller,"setTarget:",_2c);
objj_msgSend(_verticalScroller,"setAction:",sel_getUid("_verticalScrollerDidScroll:"));
objj_msgSend(_2c,"addSubview:",_verticalScroller);
objj_msgSend(_2c,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("verticalScroller"),function(_2f,_30){
with(_2f){
return _verticalScroller;
}
}),new objj_method(sel_getUid("setHasVerticalScroller:"),function(_31,_32,_33){
with(_31){
if(_hasVerticalScroller===_33){
return;
}
_hasVerticalScroller=_33;
if(_hasVerticalScroller&&!_verticalScroller){
objj_msgSend(_31,"setVerticalScroller:",objj_msgSend(objj_msgSend(CPScroller,"alloc"),"initWithFrame:",CPRectMake(0,0,objj_msgSend(CPScroller,"scrollerWidth"),CPRectGetHeight(objj_msgSend(_31,"bounds")))));
}else{
if(!_hasVerticalScroller&&_verticalScroller){
objj_msgSend(_verticalScroller,"setHidden:",YES);
objj_msgSend(_31,"reflectScrolledClipView:",_contentView);
}
}
}
}),new objj_method(sel_getUid("hasVerticalScroller"),function(_34,_35){
with(_34){
return _hasVerticalScroller;
}
}),new objj_method(sel_getUid("setAutohidesScrollers:"),function(_36,_37,_38){
with(_36){
if(_autohidesScrollers==_38){
return;
}
_autohidesScrollers=_38;
objj_msgSend(_36,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("autohidesScrollers"),function(_39,_3a){
with(_39){
return _autohidesScrollers;
}
}),new objj_method(sel_getUid("_verticalScrollerDidScroll:"),function(_3b,_3c,_3d){
with(_3b){
var _3e=objj_msgSend(_3d,"floatValue"),_3f=objj_msgSend(objj_msgSend(_contentView,"documentView"),"frame");
contentBounds=objj_msgSend(_contentView,"bounds");
switch(objj_msgSend(_verticalScroller,"hitPart")){
case CPScrollerDecrementLine:
contentBounds.origin.y-=_verticalLineScroll;
break;
case CPScrollerIncrementLine:
contentBounds.origin.y+=_verticalLineScroll;
break;
case CPScrollerDecrementPage:
contentBounds.origin.y-=(contentBounds.size.height)-_verticalPageScroll;
break;
case CPScrollerIncrementPage:
contentBounds.origin.y+=(contentBounds.size.height)-_verticalPageScroll;
break;
case CPScrollerKnobSlot:
case CPScrollerKnob:
default:
contentBounds.origin.y=_3e*((_3f.size.height)-(contentBounds.size.height));
}
objj_msgSend(_contentView,"scrollToPoint:",contentBounds.origin);
}
}),new objj_method(sel_getUid("_horizontalScrollerDidScroll:"),function(_40,_41,_42){
with(_40){
var _43=objj_msgSend(_42,"floatValue"),_44=objj_msgSend(objj_msgSend(_40,"documentView"),"frame"),_45=objj_msgSend(_contentView,"bounds");
switch(objj_msgSend(_horizontalScroller,"hitPart")){
case CPScrollerDecrementLine:
_45.origin.x-=_horizontalLineScroll;
break;
case CPScrollerIncrementLine:
_45.origin.x+=_horizontalLineScroll;
break;
case CPScrollerDecrementPage:
_45.origin.x-=(_45.size.width)-_horizontalPageScroll;
break;
case CPScrollerIncrementPage:
_45.origin.x+=(_45.size.width)-_horizontalPageScroll;
break;
case CPScrollerKnobSlot:
case CPScrollerKnob:
default:
_45.origin.x=_43*((_44.size.width)-(_45.size.width));
}
objj_msgSend(_contentView,"scrollToPoint:",_45.origin);
}
}),new objj_method(sel_getUid("tile"),function(_46,_47){
with(_46){
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_48,_49,_4a){
with(_48){
objj_msgSend(_48,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("setLineScroll:"),function(_4b,_4c,_4d){
with(_4b){
objj_msgSend(_4b,"setHorizonalLineScroll:",_4d);
objj_msgSend(_4b,"setVerticalLineScroll:",_4d);
}
}),new objj_method(sel_getUid("lineScroll"),function(_4e,_4f){
with(_4e){
return objj_msgSend(_4e,"horizontalLineScroll");
}
}),new objj_method(sel_getUid("setHorizontalLineScroll:"),function(_50,_51,_52){
with(_50){
_horizontalLineScroll=_52;
}
}),new objj_method(sel_getUid("horizontalLineScroll"),function(_53,_54){
with(_53){
return _horizontalLineScroll;
}
}),new objj_method(sel_getUid("setVerticalLineScroll:"),function(_55,_56,_57){
with(_55){
_verticalLineScroll=_57;
}
}),new objj_method(sel_getUid("verticalLineScroll"),function(_58,_59){
with(_58){
return _verticalLineScroll;
}
}),new objj_method(sel_getUid("setPageScroll:"),function(_5a,_5b,_5c){
with(_5a){
objj_msgSend(_5a,"setHorizontalPageScroll:",_5c);
objj_msgSend(_5a,"setVerticalPageScroll:",_5c);
}
}),new objj_method(sel_getUid("pageScroll"),function(_5d,_5e){
with(_5d){
return objj_msgSend(_5d,"horizontalPageScroll");
}
}),new objj_method(sel_getUid("setHorizontalPageScroll:"),function(_5f,_60,_61){
with(_5f){
_horizontalPageScroll=_61;
}
}),new objj_method(sel_getUid("horizontalPageScroll"),function(_62,_63){
with(_62){
return _horizontalPageScroll;
}
}),new objj_method(sel_getUid("setVerticalPageScroll:"),function(_64,_65,_66){
with(_64){
_verticalPageScroll=_66;
}
}),new objj_method(sel_getUid("verticalPageScroll"),function(_67,_68){
with(_67){
return _verticalPageScroll;
}
}),new objj_method(sel_getUid("scrollWheel:"),function(_69,_6a,_6b){
with(_69){
var _6c=objj_msgSend(_verticalScroller,"floatValue"),_6d=objj_msgSend(objj_msgSend(_69,"documentView"),"frame"),_6e=objj_msgSend(_contentView,"bounds");
_6e.origin.x+=objj_msgSend(_6b,"deltaX")*_horizontalLineScroll;
_6e.origin.y+=objj_msgSend(_6b,"deltaY")*_verticalLineScroll;
objj_msgSend(_contentView,"scrollToPoint:",_6e.origin);
}
}),new objj_method(sel_getUid("keyDown:"),function(_6f,_70,_71){
with(_6f){
var _72=objj_msgSend(_71,"keyCode"),_73=objj_msgSend(_verticalScroller,"floatValue"),_74=objj_msgSend(objj_msgSend(_6f,"documentView"),"frame"),_75=objj_msgSend(_contentView,"bounds");
switch(_72){
case 33:
_75.origin.y-=(_75.size.height)-_verticalPageScroll;
break;
case 34:
_75.origin.y+=(_75.size.height)-_verticalPageScroll;
break;
case 38:
_75.origin.y-=_verticalLineScroll;
break;
case 40:
_75.origin.y+=_verticalLineScroll;
break;
case 37:
_75.origin.x-=_horizontalLineScroll;
break;
case 49:
_75.origin.x+=_horizontalLineScroll;
break;
default:
return objj_msgSendSuper({receiver:_6f,super_class:objj_getClass("CPView")},"keyDown:",_71);
}
objj_msgSend(_contentView,"scrollToPoint:",_75.origin);
}
})]);
var _76="CPScrollViewContentView",_77="CPScrollViewVLineScroll",_78="CPScrollViewHLineScroll",_79="CPScrollViewVPageScroll",_7a="CPScrollViewHPageScroll",_7b="CPScrollViewHasVScroller",_7c="CPScrollViewHasHScroller",_7d="CPScrollViewVScroller",_7e="CPScrollViewHScroller",_7f="CPScrollViewAutohidesScroller";
var _1=objj_getClass("CPScrollView");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPScrollView\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_80,_81,_82){
with(_80){
if(_80=objj_msgSendSuper({receiver:_80,super_class:objj_getClass("CPView")},"initWithCoder:",_82)){
_verticalLineScroll=objj_msgSend(_82,"decodeFloatForKey:",_77);
_verticalPageScroll=objj_msgSend(_82,"decodeFloatForKey:",_79);
_horizontalLineScroll=objj_msgSend(_82,"decodeFloatForKey:",_78);
_horizontalPageScroll=objj_msgSend(_82,"decodeFloatForKey:",_7a);
_contentView=objj_msgSend(_82,"decodeObjectForKey:",_76);
_verticalScroller=objj_msgSend(_82,"decodeObjectForKey:",_7d);
_horizontalScroller=objj_msgSend(_82,"decodeObjectForKey:",_7e);
_hasVerticalScroller=objj_msgSend(_82,"decodeBoolForKey:",_7b);
_hasHorizontalScroller=objj_msgSend(_82,"decodeBoolForKey:",_7c);
_autohidesScrollers=objj_msgSend(_82,"decodeBoolForKey:",_7f);
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("reflectScrolledClipView:"),_80,_contentView,0,[CPDefaultRunLoopMode]);
}
return _80;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_83,_84,_85){
with(_83){
objj_msgSendSuper({receiver:_83,super_class:objj_getClass("CPView")},"encodeWithCoder:",_85);
objj_msgSend(_85,"encodeObject:forKey:",_contentView,_76);
objj_msgSend(_85,"encodeObject:forKey:",_verticalScroller,_7d);
objj_msgSend(_85,"encodeObject:forKey:",_horizontalScroller,_7e);
objj_msgSend(_85,"encodeFloat:forKey:",_verticalLineScroll,_77);
objj_msgSend(_85,"encodeFloat:forKey:",_verticalPageScroll,_79);
objj_msgSend(_85,"encodeFloat:forKey:",_horizontalLineScroll,_78);
objj_msgSend(_85,"encodeFloat:forKey:",_horizontalPageScroll,_7a);
objj_msgSend(_85,"encodeBool:forKey:",_hasVerticalScroller,_7b);
objj_msgSend(_85,"encodeBool:forKey:",_hasHorizontalScroller,_7c);
objj_msgSend(_85,"encodeBool:forKey:",_autohidesScrollers,_7f);
}
})]);
p;19;CPSecureTextField.ji;13;CPTextField.jc;287;
var _1=objj_allocateClassPair(CPTextField,"CPSecureTextField"),_2=_1.isa;
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("isSecure"),function(_3,_4){
with(_3){
return YES;
}
})]);
p;20;CPSegmentedControl.jI;20;Foundation/CPArray.ji;11;CPControl.jc;20227;
CPSegmentSwitchTrackingSelectOne=0;
CPSegmentSwitchTrackingSelectAny=1;
CPSegmentSwitchTrackingMomentary=2;
var _1=objj_allocateClassPair(CPControl,"CPSegmentedControl"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_segments"),new objj_ivar("_themeStates"),new objj_ivar("_selectedSegment"),new objj_ivar("_segmentStyle"),new objj_ivar("_trackingMode"),new objj_ivar("_trackingSegment"),new objj_ivar("_trackingHighlighted")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_segments=[];
_themeStates=[];
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPControl")},"initWithFrame:",_5);
if(_3){
_selectedSegment=-1;
_trackingMode=CPSegmentSwitchTrackingSelectOne;
}
return _3;
}
}),new objj_method(sel_getUid("selectedTag"),function(_6,_7){
with(_6){
return _segments[_selectedSegment].tag;
}
}),new objj_method(sel_getUid("setSegmentCount:"),function(_8,_9,_a){
with(_8){
if(_segments.length==_a){
return;
}
var _b=CGRectGetHeight(objj_msgSend(_8,"bounds"));
if(_segments.length<_a){
for(var _c=_segments.length;_c<_a;++_c){
_segments[_c]=objj_msgSend(objj_msgSend(_CPSegmentItem,"alloc"),"init");
_themeStates[_c]=CPThemeStateNormal;
}
}else{
if(_a<_segments.length){
for(var _c=_a;_c<_segments.length;++_c){
_segments[_c]=nil;
}
}
}
if(_selectedSegment<_segments.length){
_selectedSegment=-1;
}
objj_msgSend(_8,"tileWithChangedSegment:",0);
}
}),new objj_method(sel_getUid("segmentCount"),function(_d,_e){
with(_d){
return _segments.length;
}
}),new objj_method(sel_getUid("setSelectedSegment:"),function(_f,_10,_11){
with(_f){
objj_msgSend(_f,"setSelected:forSegment:",YES,_11);
}
}),new objj_method(sel_getUid("selectedSegment"),function(_12,_13){
with(_12){
return _selectedSegment;
}
}),new objj_method(sel_getUid("selectSegmentWithTag:"),function(_14,_15,_16){
with(_14){
var _17=0;
for(;_17<_segments.length;++_17){
if(_segments[_17].tag==_16){
objj_msgSend(_14,"setSelectedSegment:",_17);
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("isTracking"),function(_18,_19){
with(_18){
}
}),new objj_method(sel_getUid("setTrackingMode:"),function(_1a,_1b,_1c){
with(_1a){
if(_trackingMode==_1c){
return;
}
_trackingMode=_1c;
if(_trackingMode==CPSegmentSwitchTrackingSelectOne){
var _1d=0,_1e=NO;
for(;_1d<_segments.length;++_1d){
if(_segments[_1d].selected){
if(_1e){
objj_msgSend(_1a,"setSelected:forSegment:",NO,_1d);
}else{
_1e=YES;
}
}
}
}else{
if(_trackingMode==CPSegmentSwitchTrackingMomentary){
var _1d=0;
for(;_1d<_segments.length;++_1d){
if(_segments[_1d].selected){
objj_msgSend(_1a,"setSelected:forSegment:",NO,_1d);
}
}
}
}
}
}),new objj_method(sel_getUid("trackingMode"),function(_1f,_20){
with(_1f){
return _trackingMode;
}
}),new objj_method(sel_getUid("setWidth:forSegment:"),function(_21,_22,_23,_24){
with(_21){
_segments[_24].width=_23;
objj_msgSend(_21,"tileWithChangedSegment:",_24);
}
}),new objj_method(sel_getUid("widthForSegment:"),function(_25,_26,_27){
with(_25){
return _segments[_27].width;
}
}),new objj_method(sel_getUid("setImage:forSegment:"),function(_28,_29,_2a,_2b){
with(_28){
var _2c=_segments[_2b];
_2c.image=_2a;
objj_msgSend(_28,"tileWithChangedSegment:",_2b);
}
}),new objj_method(sel_getUid("imageForSegment:"),function(_2d,_2e,_2f){
with(_2d){
return _segments[_2f].image;
}
}),new objj_method(sel_getUid("setLabel:forSegment:"),function(_30,_31,_32,_33){
with(_30){
var _34=_segments[_33];
_segments[_33].label=_32;
objj_msgSend(_30,"tileWithChangedSegment:",_33);
}
}),new objj_method(sel_getUid("labelForSegment:"),function(_35,_36,_37){
with(_35){
return _segments[_37].label;
}
}),new objj_method(sel_getUid("setMenu:forSegment:"),function(_38,_39,_3a,_3b){
with(_38){
_segments[_3b].menu=_3a;
}
}),new objj_method(sel_getUid("menuForSegment:"),function(_3c,_3d,_3e){
with(_3c){
return _segments[_3e].menu;
}
}),new objj_method(sel_getUid("setSelected:forSegment:"),function(_3f,_40,_41,_42){
with(_3f){
var _43=_segments[_42];
if(_43.selected==_41){
return;
}
_43.selected=_41;
_themeStates[_42]=_41?CPThemeStateSelected:CPThemeStateNormal;
if(_41){
var _44=_selectedSegment;
_selectedSegment=_42;
if(_trackingMode==CPSegmentSwitchTrackingSelectOne&&_44!=_42&&_44!=-1){
_segments[_44].selected=NO;
_themeStates[_44]=CPThemeStateNormal;
objj_msgSend(_3f,"drawSegmentBezel:highlight:",_44,NO);
}
}
if(_trackingMode!=CPSegmentSwitchTrackingMomentary){
objj_msgSend(_3f,"drawSegmentBezel:highlight:",_42,NO);
}
objj_msgSend(_3f,"setNeedsLayout");
objj_msgSend(_3f,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("isSelectedForSegment:"),function(_45,_46,_47){
with(_45){
return _segments[_47].selected;
}
}),new objj_method(sel_getUid("setEnabled:forSegment:"),function(_48,_49,_4a,_4b){
with(_48){
_segments[_4b].enabled=_4a;
objj_msgSend(_48,"setNeedsLayout");
objj_msgSend(_48,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("isEnabledForSegment:"),function(_4c,_4d,_4e){
with(_4c){
return _segments[_4e].enabled;
}
}),new objj_method(sel_getUid("setTag:forSegment:"),function(_4f,_50,_51,_52){
with(_4f){
_segments[_52].tag=_51;
}
}),new objj_method(sel_getUid("tagForSegment:"),function(_53,_54,_55){
with(_53){
return _segments[_55].tag;
}
}),new objj_method(sel_getUid("drawSegmentBezel:highlight:"),function(_56,_57,_58,_59){
with(_56){
if(_59){
_themeStates[_58]|=CPThemeStateHighlighted;
}else{
_themeStates[_58]&=~CPThemeStateHighlighted;
}
objj_msgSend(_56,"setNeedsLayout");
objj_msgSend(_56,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("_leftOffsetForSegment:"),function(_5a,_5b,_5c){
with(_5a){
var _5d=objj_msgSend(_5a,"currentValueForThemeAttribute:","bezel-inset");
if(_5c==0){
return _5d.left;
}
var _5e=objj_msgSend(_5a,"currentValueForThemeAttribute:","divider-thickness");
return objj_msgSend(_5a,"_leftOffsetForSegment:",_5c-1)+objj_msgSend(_5a,"widthForSegment:",_5c-1)+_5e;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_5f,_60,_61){
with(_5f){
var _62=objj_msgSend(_5f,"currentValueForThemeAttribute:","default-height"),_63=objj_msgSend(_5f,"currentValueForThemeAttribute:","content-inset"),_64=objj_msgSend(_5f,"currentValueForThemeAttribute:","bezel-inset"),_65=objj_msgSend(_5f,"bounds");
if(_61==="left-segment-bezel"){
return CGRectMake(_64.left,_64.top,_63.left,_62);
}else{
if(_61==="right-segment-bezel"){
return CGRectMake(CGRectGetMaxX(_65)-_63.right-_64.right,_64.top,_63.right,_62);
}else{
if(_61.substring(0,"segment-bezel".length)=="segment-bezel"){
var _66=parseInt(_61.substring("segment-bezel-".length),10),_67=CGRectCreateCopy(_segments[_66].frame);
if(_66==0){
_67.origin.x+=_63.left;
_67.size.width-=_63.left;
}
if(_66==_segments.length-1){
_67.size.width-=_63.right;
}
return _67;
}else{
if(_61.substring(0,"divider-bezel".length)=="divider-bezel"){
var _66=parseInt(_61.substring("divider-bezel-".length),10),_68=objj_msgSend(_5f,"widthForSegment:",_66),_69=objj_msgSend(_5f,"_leftOffsetForSegment:",_66),_6a=objj_msgSend(_5f,"currentValueForThemeAttribute:","divider-thickness");
return CGRectMake(_69+_68,_64.top,_6a,_62);
}else{
if(_61.substring(0,"segment-content".length)=="segment-content"){
var _66=parseInt(_61.substring("segment-content-".length),10);
return objj_msgSend(_5f,"contentFrameForSegment:",_66);
}
}
}
}
}
return objj_msgSendSuper({receiver:_5f,super_class:objj_getClass("CPControl")},"rectForEphemeralSubviewNamed:",_61);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_6b,_6c,_6d){
with(_6b){
if(_6d.substring(0,"segment-content".length)=="segment-content"){
return objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
}
return objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_6e,_6f){
with(_6e){
var _70=objj_msgSend(_6e,"valueForThemeAttribute:inState:","left-segment-bezel-color",_themeStates[0]);
var _71=objj_msgSend(_6e,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","left-segment-bezel",CPWindowBelow,nil);
objj_msgSend(_71,"setBackgroundColor:",_70);
var _72=objj_msgSend(_6e,"valueForThemeAttribute:inState:","right-segment-bezel-color",_themeStates[_themeStates.length-1]);
var _73=objj_msgSend(_6e,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","right-segment-bezel",CPWindowBelow,nil);
objj_msgSend(_73,"setBackgroundColor:",_72);
for(var i=0,_75=_themeStates.length;i<_75;i++){
var _76=_themeStates[i];
_76|=_themeState&CPThemeStateDisabled;
var _77=objj_msgSend(_6e,"valueForThemeAttribute:inState:","center-segment-bezel-color",_76);
var _78=objj_msgSend(_6e,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","segment-bezel-"+i,CPWindowBelow,nil);
objj_msgSend(_78,"setBackgroundColor:",_77);
var _79=_segments[i];
var _7a=objj_msgSend(_6e,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","segment-content-"+i,CPWindowAbove,"segment-bezel-"+i);
objj_msgSend(_7a,"setText:",_79.label);
objj_msgSend(_7a,"setImage:",_79.image);
objj_msgSend(_7a,"setFont:",objj_msgSend(_6e,"valueForThemeAttribute:inState:","font",_76));
objj_msgSend(_7a,"setTextColor:",objj_msgSend(_6e,"valueForThemeAttribute:inState:","text-color",_76));
objj_msgSend(_7a,"setAlignment:",objj_msgSend(_6e,"valueForThemeAttribute:inState:","alignment",_76));
objj_msgSend(_7a,"setVerticalAlignment:",objj_msgSend(_6e,"valueForThemeAttribute:inState:","vertical-alignment",_76));
objj_msgSend(_7a,"setLineBreakMode:",objj_msgSend(_6e,"valueForThemeAttribute:inState:","line-break-mode",_76));
objj_msgSend(_7a,"setTextShadowColor:",objj_msgSend(_6e,"valueForThemeAttribute:inState:","text-shadow-color",_76));
objj_msgSend(_7a,"setTextShadowOffset:",objj_msgSend(_6e,"valueForThemeAttribute:inState:","text-shadow-offset",_76));
objj_msgSend(_7a,"setImageScaling:",objj_msgSend(_6e,"valueForThemeAttribute:inState:","image-scaling",_76));
if(_79.image&&_79.label){
objj_msgSend(_7a,"setImagePosition:",objj_msgSend(_6e,"valueForThemeAttribute:inState:","image-position",_76));
}else{
if(_79.image){
objj_msgSend(_7a,"setImagePosition:",CPImageOnly);
}
}
if(i==_75-1){
continue;
}
var _7b=_themeStates[i]|_themeStates[i+1];
_7b=(_7b&CPThemeStateSelected&~CPThemeStateHighlighted)?CPThemeStateSelected:CPThemeStateNormal;
_7b|=_themeState&CPThemeStateDisabled;
var _7c=objj_msgSend(_6e,"valueForThemeAttribute:inState:","divider-bezel-color",_7b);
var _7d=objj_msgSend(_6e,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","divider-bezel-"+i,CPWindowBelow,nil);
objj_msgSend(_7d,"setBackgroundColor:",_7c);
}
}
}),new objj_method(sel_getUid("drawSegment:highlight:"),function(_7e,_7f,_80,_81){
with(_7e){
}
}),new objj_method(sel_getUid("tileWithChangedSegment:"),function(_82,_83,_84){
with(_82){
if(_84>=_segments.length){
return;
}
var _85=_segments[_84],_86=_85.width,_87=_themeStates[_84]|(_themeState&CPThemeStateDisabled),_88=objj_msgSend(_82,"valueForThemeAttribute:inState:","content-inset",_87),_89=objj_msgSend(_82,"valueForThemeAttribute:inState:","font",_87);
if(!_86){
if(_85.image&&_85.label){
_86=objj_msgSend(_85.label,"sizeWithFont:",_89).width+objj_msgSend(_85.image,"size").width+_88.left+_88.right;
}else{
if(_85.image){
_86=objj_msgSend(_85.image,"size").width+_88.left+_88.right;
}else{
if(_85.label){
_86=objj_msgSend(_85.label,"sizeWithFont:",_89).width+_88.left+_88.right;
}else{
_86=0;
}
}
}
}
var _8a=_86-CGRectGetWidth(_85.frame);
if(!_8a){
return;
}
var _8b=objj_msgSend(_82,"frame");
objj_msgSend(_82,"setFrameSize:",CGSizeMake(CGRectGetWidth(_8b)+_8a,CGRectGetHeight(_8b)));
_85.width=_86;
_85.frame=objj_msgSend(_82,"frameForSegment:",_84);
var _8c=_84+1;
for(;_8c<_segments.length;++_8c){
_segments[_8c].frame.origin.x+=_8a;
objj_msgSend(_82,"drawSegmentBezel:highlight:",_8c,NO);
objj_msgSend(_82,"drawSegment:highlight:",_8c,NO);
}
objj_msgSend(_82,"drawSegmentBezel:highlight:",_84,NO);
objj_msgSend(_82,"drawSegment:highlight:",_84,NO);
objj_msgSend(_82,"setNeedsLayout");
objj_msgSend(_82,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("frameForSegment:"),function(_8d,_8e,_8f){
with(_8d){
return objj_msgSend(_8d,"bezelFrameForSegment:",_8f);
}
}),new objj_method(sel_getUid("bezelFrameForSegment:"),function(_90,_91,_92){
with(_90){
var _93=objj_msgSend(_90,"currentValueForThemeAttribute:","default-height"),_94=objj_msgSend(_90,"currentValueForThemeAttribute:","bezel-inset"),_95=objj_msgSend(_90,"widthForSegment:",_92),_96=objj_msgSend(_90,"_leftOffsetForSegment:",_92);
return CGRectMake(_96,_94.top,_95,_93);
}
}),new objj_method(sel_getUid("contentFrameForSegment:"),function(_97,_98,_99){
with(_97){
var _9a=objj_msgSend(_97,"currentValueForThemeAttribute:","default-height"),_9b=objj_msgSend(_97,"currentValueForThemeAttribute:","content-inset"),_9c=objj_msgSend(_97,"widthForSegment:",_99),_9d=objj_msgSend(_97,"_leftOffsetForSegment:",_99);
return CGRectMake(_9d+_9b.left,_9b.top,_9c-_9b.left-_9b.right,_9a-_9b.top-_9b.bottom);
}
}),new objj_method(sel_getUid("testSegment:"),function(_9e,_9f,_a0){
with(_9e){
var _a1=objj_msgSend(_9e,"convertPoint:fromView:",_a0,nil),_a2=_segments.length;
while(_a2--){
if(CGRectContainsPoint(_segments[_a2].frame,_a0)){
return _a2;
}
}
return -1;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_a3,_a4,_a5){
with(_a3){
if(!objj_msgSend(_a3,"isEnabled")){
return;
}
objj_msgSend(_a3,"trackSegment:",_a5);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_a6,_a7,_a8){
with(_a6){
}
}),new objj_method(sel_getUid("trackSegment:"),function(_a9,_aa,_ab){
with(_a9){
var _ac=objj_msgSend(_ab,"type"),_ad=objj_msgSend(_a9,"convertPoint:fromView:",objj_msgSend(_ab,"locationInWindow"),nil);
if(_ac==CPLeftMouseUp){
if(_trackingSegment==-1){
return;
}
if(CGRectContainsPoint(_segments[_trackingSegment].frame,_ad)){
if(_trackingMode==CPSegmentSwitchTrackingSelectAny){
objj_msgSend(_a9,"setSelected:forSegment:",!objj_msgSend(_a9,"isSelectedForSegment:",_trackingSegment),_trackingSegment);
_selectedSegment=_trackingSegment;
}else{
objj_msgSend(_a9,"setSelected:forSegment:",YES,_trackingSegment);
}
objj_msgSend(_a9,"sendAction:to:",objj_msgSend(_a9,"action"),objj_msgSend(_a9,"target"));
if(_trackingMode==CPSegmentSwitchTrackingMomentary){
objj_msgSend(_a9,"setSelected:forSegment:",NO,_trackingSegment);
_selectedSegment=-1;
}
}
objj_msgSend(_a9,"drawSegmentBezel:highlight:",_trackingSegment,NO);
_trackingSegment=-1;
return;
}
if(_ac==CPLeftMouseDown){
_trackingHighlighted=YES;
_trackingSegment=objj_msgSend(_a9,"testSegment:",_ad);
objj_msgSend(_a9,"drawSegmentBezel:highlight:",_trackingSegment,YES);
}else{
if(_ac==CPLeftMouseDragged){
if(_trackingSegment==-1){
return;
}
var _ae=CGRectContainsPoint(_segments[_trackingSegment].frame,_ad);
if(_ae!=_trackingHighlighted){
_trackingHighlighted=_ae;
objj_msgSend(_a9,"drawSegmentBezel:highlight:",_trackingSegment,_trackingHighlighted);
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_a9,sel_getUid("trackSegment:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("setFont:"),function(_af,_b0,_b1){
with(_af){
objj_msgSendSuper({receiver:_af,super_class:objj_getClass("CPControl")},"setFont:",_b1);
objj_msgSend(_af,"tileWithChangedSegment:",0);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("themeClass"),function(_b2,_b3){
with(_b2){
return "segmented-control";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_b4,_b5){
with(_b4){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[CPCenterTextAlignment,CPCenterVerticalTextAlignment,CPImageLeft,CPScaleNone,{top:(0),right:(0),bottom:(0),left:(0)},{top:(0),right:(0),bottom:(0),left:(0)},nil,nil,nil,nil,1,24],["alignment","vertical-alignment","image-position","image-scaling","bezel-inset","content-inset","left-segment-bezel-color","right-segment-bezel-color","center-segment-bezel-color","divider-bezel-color","divider-thickness","default-height"]);
}
})]);
var _b6="CPSegmentedControlSegmentsKey",_b7="CPSegmentedControlSelectedKey",_b8="CPSegmentedControlSegmentStyleKey",_b9="CPSegmentedControlTrackingModeKey";
var _1=objj_getClass("CPSegmentedControl");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPSegmentedControl\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_ba,_bb,_bc){
with(_ba){
_ba=objj_msgSendSuper({receiver:_ba,super_class:objj_getClass("CPControl")},"initWithCoder:",_bc);
if(_ba){
var _bd=objj_msgSend(_ba,"frame"),_be=_bd.size.width;
_bd.size.width=0;
objj_msgSend(_ba,"setFrame:",_bd);
_segments=objj_msgSend(_bc,"decodeObjectForKey:",_b6);
_segmentStyle=objj_msgSend(_bc,"decodeIntForKey:",_b8);
_themeStates=[];
if(objj_msgSend(_bc,"containsValueForKey:",_b7)){
_selectedSegment=objj_msgSend(_bc,"decodeIntForKey:",_b7);
}else{
_selectedSegment=-1;
}
if(objj_msgSend(_bc,"containsValueForKey:",_b9)){
_trackingMode=objj_msgSend(_bc,"decodeIntForKey:",_b9);
}else{
_trackingMode=CPSegmentSwitchTrackingSelectOne;
}
for(var i=0;i<_segments.length;i++){
_themeStates[i]=_segments[i].selected?CPThemeStateSelected:CPThemeStateNormal;
objj_msgSend(_ba,"tileWithChangedSegment:",i);
}
var _c0=MAX(_be-objj_msgSend(_ba,"frame").size.width,0),_c1=FLOOR(_c0/_segments.length);
for(var i=0;i<_segments.length;i++){
objj_msgSend(_ba,"setWidth:forSegment:",_segments[i].width+_c1,i);
}
objj_msgSend(_ba,"tileWithChangedSegment:",0);
}
return _ba;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_c2,_c3,_c4){
with(_c2){
objj_msgSendSuper({receiver:_c2,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_c4);
objj_msgSend(_c4,"encodeObject:forKey:",_segments,_b6);
objj_msgSend(_c4,"encodeInt:forKey:",_selectedSegment,_b7);
objj_msgSend(_c4,"encodeInt:forKey:",_segmentStyle,_b8);
objj_msgSend(_c4,"encodeInt:forKey:",_trackingMode,_b9);
}
})]);
var _1=objj_allocateClassPair(CPObject,"_CPSegmentItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("image"),new objj_ivar("label"),new objj_ivar("menu"),new objj_ivar("selected"),new objj_ivar("enabled"),new objj_ivar("tag"),new objj_ivar("width"),new objj_ivar("frame")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_c5,_c6){
with(_c5){
if(_c5=objj_msgSendSuper({receiver:_c5,super_class:objj_getClass("CPObject")},"init")){
image=nil;
label="";
menu=nil;
selected=NO;
enabled=NO;
tag=0;
width=0;
frame=CGRectMakeZero();
}
return _c5;
}
})]);
var _c7="CPSegmentItemImageKey",_c8="CPSegmentItemLabelKey",_c9="CPSegmentItemMenuKey",_ca="CPSegmentItemSelectedKey",_cb="CPSegmentItemEnabledKey",_cc="CPSegmentItemTagKey",_cd="CPSegmentItemWidthKey";
var _1=objj_getClass("_CPSegmentItem");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"_CPSegmentItem\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_ce,_cf,_d0){
with(_ce){
_ce=objj_msgSendSuper({receiver:_ce,super_class:objj_getClass("CPObject")},"init");
if(_ce){
image=objj_msgSend(_d0,"decodeObjectForKey:",_c7);
label=objj_msgSend(_d0,"decodeObjectForKey:",_c8);
menu=objj_msgSend(_d0,"decodeObjectForKey:",_c9);
selected=objj_msgSend(_d0,"decodeBoolForKey:",_ca);
enabled=objj_msgSend(_d0,"decodeBoolForKey:",_cb);
tag=objj_msgSend(_d0,"decodeIntForKey:",_cc);
width=objj_msgSend(_d0,"decodeFloatForKey:",_cd);
frame=CGRectMakeZero();
}
return _ce;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_d1,_d2,_d3){
with(_d1){
objj_msgSend(_d3,"encodeObject:forKey:",image,_c7);
objj_msgSend(_d3,"encodeObject:forKey:",label,_c8);
objj_msgSend(_d3,"encodeObject:forKey:",menu,_c9);
objj_msgSend(_d3,"encodeBool:forKey:",selected,_ca);
objj_msgSend(_d3,"encodeBool:forKey:",enabled,_cb);
objj_msgSend(_d3,"encodeInt:forKey:",tag,_cc);
objj_msgSend(_d3,"encodeFloat:forKey:",width,_cd);
}
})]);
p;10;CPShadow.jI;21;Foundation/CPObject.jc;1307;
var _1=objj_allocateClassPair(CPObject,"CPShadow"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_offset"),new objj_ivar("_blurRadius"),new objj_ivar("_color"),new objj_ivar("_cssString")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("_initWithOffset:blurRadius:color:"),function(_3,_4,_5,_6,_7){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_offset=_5;
_blurRadius=_6;
_color=_7;
_cssString=objj_msgSend(_color,"cssString")+" "+Math.round(_5.width)+"px "+Math.round(_5.height)+"px "+Math.round(_blurRadius)+"px";
}
return _3;
}
}),new objj_method(sel_getUid("shadowOffset"),function(_8,_9){
with(_8){
return _offset;
}
}),new objj_method(sel_getUid("shadowBlurRadius"),function(_a,_b){
with(_a){
return _blurRadius;
}
}),new objj_method(sel_getUid("shadowColor"),function(_c,_d){
with(_c){
return _color;
}
}),new objj_method(sel_getUid("cssString"),function(_e,_f){
with(_e){
return _cssString;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("shadowWithOffset:blurRadius:color:"),function(_10,_11,_12,_13,_14){
with(_10){
return objj_msgSend(objj_msgSend(CPShadow,"alloc"),"_initWithOffset:blurRadius:color:",_12,_13,_14);
}
})]);
p;14;CPShadowView.jI;21;Foundation/CPBundle.ji;12;CGGeometry.ji;9;CPImage.ji;13;CPImageView.ji;8;CPView.jc;5564;
CPLightShadow=0;
CPHeavyShadow=1;
var _1=nil,_2=nil;
var _3=3,_4=3,_5=3,_6=5,_7=7,_8=7,_9=5,_a=5;
var _b=objj_allocateClassPair(CPView,"CPShadowView"),_c=_b.isa;
class_addIvars(_b,[new objj_ivar("_weight")]);
objj_registerClassPair(_b);
objj_addClassForBundle(_b,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_b,[new objj_method(sel_getUid("initWithFrame:"),function(_d,_e,_f){
with(_d){
_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("CPView")},"initWithFrame:",_f);
if(_d){
_weight=CPLightShadow;
objj_msgSend(_d,"setBackgroundColor:",_1);
objj_msgSend(_d,"setHitTests:",NO);
}
return _d;
}
}),new objj_method(sel_getUid("setWeight:"),function(_10,_11,_12){
with(_10){
if(_weight==_12){
return;
}
_weight=_12;
if(_weight==CPLightShadow){
objj_msgSend(_10,"setBackgroundColor:",_1);
}else{
objj_msgSend(_10,"setBackgroundColor:",_2);
}
}
}),new objj_method(sel_getUid("leftInset"),function(_13,_14){
with(_13){
return _weight==CPLightShadow?_3:_7;
}
}),new objj_method(sel_getUid("rightInset"),function(_15,_16){
with(_15){
return _weight==CPLightShadow?_4:_8;
}
}),new objj_method(sel_getUid("topInset"),function(_17,_18){
with(_17){
return _weight==CPLightShadow?_5:_9;
}
}),new objj_method(sel_getUid("bottomInset"),function(_19,_1a){
with(_19){
return _weight==CPLightShadow?_6:_a;
}
}),new objj_method(sel_getUid("horizontalInset"),function(_1b,_1c){
with(_1b){
if(_weight==CPLightShadow){
return _3+_4;
}
return _7+_8;
}
}),new objj_method(sel_getUid("verticalInset"),function(_1d,_1e){
with(_1d){
if(_weight==CPLightShadow){
return _5+_6;
}
return _9+_a;
}
}),new objj_method(sel_getUid("frameForContentFrame:"),function(_1f,_20,_21){
with(_1f){
return objj_msgSend(objj_msgSend(_1f,"class"),"frameForContentFrame:withWeight:",_21,_weight);
}
}),new objj_method(sel_getUid("setFrameForContentFrame:"),function(_22,_23,_24){
with(_22){
objj_msgSend(_22,"setFrame:",objj_msgSend(_22,"frameForContentFrame:",_24));
}
})]);
class_addMethods(_c,[new objj_method(sel_getUid("initialize"),function(_25,_26){
with(_25){
if(_25!=objj_msgSend(CPShadowView,"class")){
return;
}
var _27=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_25,"class"));
_1=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightTopLeft.png"),CGSizeMake(9,9)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightTop.png"),CGSizeMake(1,9)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightTopRight.png"),CGSizeMake(9,9)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightLeft.png"),CGSizeMake(9,1)),nil,objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightRight.png"),CGSizeMake(9,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightBottomLeft.png"),CGSizeMake(9,9)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightBottom.png"),CGSizeMake(1,9)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightBottomRight.png"),CGSizeMake(9,9))]));
_2=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyTopLeft.png"),CGSizeMake(17,17)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyTop.png"),CGSizeMake(1,17)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyTopRight.png"),CGSizeMake(17,17)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyLeft.png"),CGSizeMake(17,1)),nil,objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyRight.png"),CGSizeMake(17,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyBottomLeft.png"),CGSizeMake(17,17)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyBottom.png"),CGSizeMake(1,17)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyBottomRight.png"),CGSizeMake(17,17))]));
}
}),new objj_method(sel_getUid("frameForContentFrame:withWeight:"),function(_28,_29,_2a,_2b){
with(_28){
if(_2b==CPLightShadow){
return CGRectMake((_2a.origin.x)-_3,(_2a.origin.y)-_5,(_2a.size.width)+_3+_4,(_2a.size.height)+_5+_6);
}else{
return CGRectMake((_2a.origin.x)-_7,(_2a.origin.y)-_9,(_2a.size.width)+_7+_8,(_2a.size.height)+_9+_a);
}
}
})]);
p;10;CPSlider.ji;11;CPControl.jc;11216;
CPLinearSlider=0;
CPCircularSlider=1;
var _1=objj_allocateClassPair(CPControl,"CPSlider"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_minValue"),new objj_ivar("_maxValue"),new objj_ivar("_altIncrementValue"),new objj_ivar("_isVertical")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPControl")},"initWithFrame:",_5);
if(_3){
_minValue=0;
_maxValue=100;
objj_msgSend(_3,"setObjectValue:",50);
objj_msgSend(_3,"setContinuous:",YES);
objj_msgSend(_3,"_recalculateIsVertical");
}
return _3;
}
}),new objj_method(sel_getUid("setMinValue:"),function(_6,_7,_8){
with(_6){
if(_minValue===_8){
return;
}
_minValue=_8;
var _9=objj_msgSend(_6,"doubleValue");
if(_9<_minValue){
objj_msgSend(_6,"setDoubleValue:",_minValue);
}
}
}),new objj_method(sel_getUid("minValue"),function(_a,_b){
with(_a){
return _minValue;
}
}),new objj_method(sel_getUid("setMaxValue:"),function(_c,_d,_e){
with(_c){
if(_maxValue===_e){
return;
}
_maxValue=_e;
var _f=objj_msgSend(_c,"doubleValue");
if(_f>_maxValue){
objj_msgSend(_c,"setDoubleValue:",_maxValue);
}
}
}),new objj_method(sel_getUid("maxValue"),function(_10,_11){
with(_10){
return _maxValue;
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_12,_13,_14){
with(_12){
objj_msgSendSuper({receiver:_12,super_class:objj_getClass("CPControl")},"setObjectValue:",MIN(MAX(_14,_minValue),_maxValue));
objj_msgSend(_12,"setNeedsLayout");
objj_msgSend(_12,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setSliderType:"),function(_15,_16,_17){
with(_15){
if(_17===CPCircularSlider){
objj_msgSend(_15,"setThemeState:",CPThemeStateCircular);
}else{
objj_msgSend(_15,"unsetThemeState:",CPThemeStateCircular);
}
}
}),new objj_method(sel_getUid("sliderType"),function(_18,_19){
with(_18){
return objj_msgSend(_18,"hasThemeState:",CPThemeStateCircular)?CPCircularSlider:CPLinearSlider;
}
}),new objj_method(sel_getUid("trackRectForBounds:"),function(_1a,_1b,_1c){
with(_1a){
if(objj_msgSend(_1a,"hasThemeState:",CPThemeStateCircular)){
var _1d=CGRectCreateCopy(_1c);
_1c.size.width=MIN(_1c.size.width,_1c.size.height);
_1c.size.height=_1c.size.width;
if(_1c.size.width<_1d.size.width){
_1c.origin.x+=(_1d.size.width-_1c.size.width)/2;
}else{
_1c.origin.y+=(_1d.size.height-_1c.size.height)/2;
}
}else{
var _1e=objj_msgSend(_1a,"currentValueForThemeAttribute:","track-width");
if(_1e<=0){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
if(objj_msgSend(_1a,"isVertical")){
_1c.origin.x=((_1c.size.width)-_1e)/2;
_1c.size.width=_1e;
}else{
_1c.origin.y=((_1c.size.height)-_1e)/2;
_1c.size.height=_1e;
}
}
return _1c;
}
}),new objj_method(sel_getUid("knobRectForBounds:"),function(_1f,_20,_21){
with(_1f){
var _22=objj_msgSend(_1f,"currentValueForThemeAttribute:","knob-size");
if(_22.width<=0||_22.height<=0){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
var _23={origin:{x:0,y:0},size:{width:_22.width,height:_22.height}},_24=objj_msgSend(_1f,"trackRectForBounds:",_21);
if(!_24||(_24.size.width<=0||_24.size.height<=0)){
_24=_21;
}
if(objj_msgSend(_1f,"hasThemeState:",CPThemeStateCircular)){
var _25=3*PI_2-(1-objj_msgSend(_1f,"doubleValue")-_minValue)/(_maxValue-_minValue)*PI2,_26=CGRectGetWidth(_24)/2-8;
_23.origin.x=_26*COS(_25)+CGRectGetMidX(_24)-3;
_23.origin.y=_26*SIN(_25)+CGRectGetMidY(_24)-2;
}else{
if(objj_msgSend(_1f,"isVertical")){
_23.origin.x=(_24.origin.x+(_24.size.width)/2)-_22.width/2;
_23.origin.y=((objj_msgSend(_1f,"doubleValue")-_minValue)/(_maxValue-_minValue))*((_24.size.height)-_22.height);
}else{
_23.origin.x=((objj_msgSend(_1f,"doubleValue")-_minValue)/(_maxValue-_minValue))*((_24.size.width)-_22.width);
_23.origin.y=(_24.origin.y+(_24.size.height)/2)-_22.height/2;
}
}
return _23;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_27,_28,_29){
with(_27){
if(_29==="track-view"){
return objj_msgSend(_27,"trackRectForBounds:",objj_msgSend(_27,"bounds"));
}else{
if(_29==="knob-view"){
return objj_msgSend(_27,"knobRectForBounds:",objj_msgSend(_27,"bounds"));
}
}
return objj_msgSendSuper({receiver:_27,super_class:objj_getClass("CPControl")},"rectForEphemeralSubviewNamed:",_29);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_2a,_2b,_2c){
with(_2a){
if(_2c==="track-view"||_2c==="knob-view"){
var _2d=objj_msgSend(objj_msgSend(CPView,"alloc"),"init");
objj_msgSend(_2d,"setHitTests:",NO);
return _2d;
}
return objj_msgSendSuper({receiver:_2a,super_class:objj_getClass("CPControl")},"createEphemeralSubviewNamed:",_2c);
}
}),new objj_method(sel_getUid("setAltIncrementValue:"),function(_2e,_2f,_30){
with(_2e){
_altIncrementValue=_30;
}
}),new objj_method(sel_getUid("altIncrementValue"),function(_31,_32){
with(_31){
return _altIncrementValue;
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_33,_34,_35){
with(_33){
objj_msgSendSuper({receiver:_33,super_class:objj_getClass("CPControl")},"setFrameSize:",_35);
objj_msgSend(_33,"_recalculateIsVertical");
}
}),new objj_method(sel_getUid("_recalculateIsVertical"),function(_36,_37){
with(_36){
var _38=objj_msgSend(_36,"bounds"),_39=(_38.size.width),_3a=(_38.size.height);
_isVertical=_39<_3a?1:(_39>_3a?0:-1);
if(_isVertical===1){
objj_msgSend(_36,"setThemeState:",CPThemeStateVertical);
}else{
if(_isVertical===0){
objj_msgSend(_36,"unsetThemeState:",CPThemeStateVertical);
}
}
}
}),new objj_method(sel_getUid("isVertical"),function(_3b,_3c){
with(_3b){
return _isVertical;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_3d,_3e){
with(_3d){
var _3f=objj_msgSend(_3d,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","track-view",CPWindowBelow,"knob-view");
if(_3f){
objj_msgSend(_3f,"setBackgroundColor:",objj_msgSend(_3d,"currentValueForThemeAttribute:","track-color"));
}
var _40=objj_msgSend(_3d,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","knob-view",CPWindowAbove,"track-view");
if(_40){
objj_msgSend(_40,"setBackgroundColor:",objj_msgSend(_3d,"currentValueForThemeAttribute:","knob-color"));
}
}
}),new objj_method(sel_getUid("tracksMouseOutsideOfFrame"),function(_41,_42){
with(_41){
return YES;
}
}),new objj_method(sel_getUid("_valueAtPoint:"),function(_43,_44,_45){
with(_43){
var _46=objj_msgSend(_43,"bounds"),_47=objj_msgSend(_43,"knobRectForBounds:",_46),_48=objj_msgSend(_43,"trackRectForBounds:",_46);
if(objj_msgSend(_43,"hasThemeState:",CPThemeStateCircular)){
var _49=(_47.size.width);
_48.origin.x+=_49/2;
_48.size.width-=_49;
var _4a=objj_msgSend(_43,"minValue"),dx=_45.x-(_48.origin.x+(_48.size.width)/2),dy=_45.y-(_48.origin.y+(_48.size.height)/2);
return MAX(0,MIN(1,1-(3*PI_2-ATAN2(dy,dx))%PI2/PI2))*(objj_msgSend(_43,"maxValue")-_4a)+_4a;
}else{
if(objj_msgSend(_43,"isVertical")){
var _4d=(_47.size.height);
_48.origin.y+=_4d/2;
_48.size.height-=_4d;
var _4a=objj_msgSend(_43,"minValue");
return MAX(0,MIN(1,(_45.y-(_48.origin.y))/(_48.size.height)))*(objj_msgSend(_43,"maxValue")-_4a)+_4a;
}else{
var _49=(_47.size.width);
_48.origin.x+=_49/2;
_48.size.width-=_49;
var _4a=objj_msgSend(_43,"minValue");
return MAX(0,MIN(1,(_45.x-(_48.origin.x))/(_48.size.width)))*(objj_msgSend(_43,"maxValue")-_4a)+_4a;
}
}
}
}),new objj_method(sel_getUid("startTrackingAt:"),function(_4e,_4f,_50){
with(_4e){
var _51=objj_msgSend(_4e,"bounds"),_52=objj_msgSend(_4e,"knobRectForBounds:",{origin:{x:_51.origin.x,y:_51.origin.y},size:{width:_51.size.width,height:_51.size.height}});
if((_50.x>=(_52.origin.x)&&_50.y>=(_52.origin.y)&&_50.x<(_52.origin.x+_52.size.width)&&_50.y<(_52.origin.y+_52.size.height))){
_dragOffset={width:(_52.origin.x+(_52.size.width)/2)-_50.x,height:(_52.origin.y+(_52.size.height)/2)-_50.y};
}else{
var _53=objj_msgSend(_4e,"trackRectForBounds:",_51);
if(_53&&(_50.x>=(_53.origin.x)&&_50.y>=(_53.origin.y)&&_50.x<(_53.origin.x+_53.size.width)&&_50.y<(_53.origin.y+_53.size.height))){
_dragOffset={width:0,height:0};
objj_msgSend(_4e,"setObjectValue:",objj_msgSend(_4e,"_valueAtPoint:",_50));
}else{
return NO;
}
}
objj_msgSend(_4e,"setHighlighted:",YES);
objj_msgSend(_4e,"setNeedsLayout");
objj_msgSend(_4e,"setNeedsDisplay:",YES);
return YES;
}
}),new objj_method(sel_getUid("continueTracking:at:"),function(_54,_55,_56,_57){
with(_54){
objj_msgSend(_54,"setObjectValue:",objj_msgSend(_54,"_valueAtPoint:",{x:_57.x+_dragOffset.width,y:_57.y+_dragOffset.height}));
return YES;
}
}),new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"),function(_58,_59,_5a,_5b,_5c){
with(_58){
objj_msgSend(_58,"setHighlighted:",NO);
if(objj_msgSend(_target,"respondsToSelector:",sel_getUid("sliderDidFinish:"))){
objj_msgSend(_target,"sliderDidFinish:",_58);
}
objj_msgSend(_58,"setNeedsLayout");
objj_msgSend(_58,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setContinuous:"),function(_5d,_5e,_5f){
with(_5d){
if(_5f){
_sendActionOn|=CPLeftMouseDraggedMask;
}else{
_sendActionOn&=~CPLeftMouseDraggedMask;
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("themeClass"),function(_60,_61){
with(_60){
return "slider";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_62,_63){
with(_62){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[nil,{width:0,height:0},0,nil],["knob-color","knob-size","track-width","track-color"]);
}
})]);
var _64="CPSliderMinValueKey",_65="CPSliderMaxValueKey",_66="CPSliderAltIncrValueKey";
var _1=objj_getClass("CPSlider");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPSlider\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_67,_68,_69){
with(_67){
_minValue=objj_msgSend(_69,"decodeDoubleForKey:",_64);
_maxValue=objj_msgSend(_69,"decodeDoubleForKey:",_65);
_67=objj_msgSendSuper({receiver:_67,super_class:objj_getClass("CPControl")},"initWithCoder:",_69);
if(_67){
_altIncrementValue=objj_msgSend(_69,"decodeDoubleForKey:",_66);
objj_msgSend(_67,"setContinuous:",YES);
objj_msgSend(_67,"_recalculateIsVertical");
objj_msgSend(_67,"setNeedsLayout");
objj_msgSend(_67,"setNeedsDisplay:",YES);
}
return _67;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_6a,_6b,_6c){
with(_6a){
objj_msgSendSuper({receiver:_6a,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_6c);
objj_msgSend(_6c,"encodeDouble:forKey:",_minValue,_64);
objj_msgSend(_6c,"encodeDouble:forKey:",_maxValue,_65);
objj_msgSend(_6c,"encodeDouble:forKey:",_altIncrementValue,_66);
}
})]);
var _1=objj_getClass("CPSlider");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPSlider\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("value"),function(_6d,_6e){
with(_6d){
CPLog.warn("[CPSlider value] is deprecated, use doubleValue or objectValue instead.");
return objj_msgSend(_6d,"doubleValue");
}
}),new objj_method(sel_getUid("setValue:"),function(_6f,_70,_71){
with(_6f){
CPLog.warn("[CPSlider setValue:] is deprecated, use setDoubleValue: or setObjectValue: instead.");
objj_msgSend(_6f,"setObjectValue:",_71);
}
})]);
p;21;CPSliderColorPicker.ji;15;CPColorPicker.jc;13716;
var _1=objj_allocateClassPair(CPColorPicker,"CPSliderColorPicker"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_contentView"),new objj_ivar("_redSlider"),new objj_ivar("_greenSlider"),new objj_ivar("_blueSlider"),new objj_ivar("_hueSlider"),new objj_ivar("_saturationSlider"),new objj_ivar("_brightnessSlider"),new objj_ivar("_rgbLabel"),new objj_ivar("_hsbLabel"),new objj_ivar("_redLabel"),new objj_ivar("_greenLabel"),new objj_ivar("_blueLabel"),new objj_ivar("_hueLabel"),new objj_ivar("_saturationLabel"),new objj_ivar("_brightnessLabel"),new objj_ivar("_hexLabel"),new objj_ivar("_redValue"),new objj_ivar("_greenValue"),new objj_ivar("_blueValue"),new objj_ivar("_hueValue"),new objj_ivar("_saturationValue"),new objj_ivar("_brightnessValue"),new objj_ivar("_hexValue")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithPickerMask:colorPanel:"),function(_3,_4,_5,_6){
with(_3){
return objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPColorPicker")},"initWithPickerMask:colorPanel:",_5,_6);
}
}),new objj_method(sel_getUid("initView"),function(_7,_8){
with(_7){
aFrame=CPRectMake(0,0,CPColorPickerViewWidth,CPColorPickerViewHeight);
_contentView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",aFrame);
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
_rgbLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,10,100,20));
objj_msgSend(_rgbLabel,"setStringValue:","Red, Green, Blue");
objj_msgSend(_rgbLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_redLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,35,15,20));
objj_msgSend(_redLabel,"setStringValue:","R");
objj_msgSend(_redLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_redSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CPRectMake(15,35,aFrame.size.width-70,20));
objj_msgSend(_redSlider,"setMaxValue:",1);
objj_msgSend(_redSlider,"setMinValue:",0);
objj_msgSend(_redSlider,"setTarget:",_7);
objj_msgSend(_redSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_redSlider,"setAutoresizingMask:",CPViewWidthSizable);
var _9=function(_a){
if(isNaN(this.value)){
return;
}
switch(this){
case _redValue:
objj_msgSend(_redSlider,"setFloatValue:",MAX(MIN(ROUND(this.value),255)/255,0));
break;
case _greenValue:
objj_msgSend(_greenSlider,"setFloatValue:",MAX(MIN(ROUND(this.value),255)/255,0));
break;
case _blueValue:
objj_msgSend(_blueSlider,"setFloatValue:",MAX(MIN(ROUND(this.value),255)/255,0));
break;
case _hueValue:
objj_msgSend(_hueSlider,"setFloatValue:",MAX(MIN(ROUND(this.value),360),0));
break;
case _saturationValue:
objj_msgSend(_saturationSlider,"setFloatValue:",MAX(MIN(ROUND(this.value),100),0));
break;
case _brightnessValue:
objj_msgSend(_brightnessSlider,"setFloatValue:",MAX(MIN(ROUND(this.value),100),0));
break;
}
this.blur();
};
var _b=function(_c){
_c=_c||window.event;
if(_c.keyCode==13){
_9(_c);
if(_c.preventDefault){
_c.preventDefault();
}else{
if(_c.stopPropagation){
_c.stopPropagation();
}
}
}
};
var _d=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(aFrame.size.width-45,35,45,20));
objj_msgSend(_d,"setAutoresizingMask:",CPViewMinXMargin);
_redValue=document.createElement("input");
_redValue.style.width="40px";
_redValue.style.backgroundColor="transparent";
_redValue.style.border="1px solid black";
_redValue.style.color="black";
_redValue.style.position="absolute";
_redValue.style.top="0px";
_redValue.style.left="0px";
_redValue.onchange=_9;
_d._DOMElement.appendChild(_redValue);
objj_msgSend(_contentView,"addSubview:",_d);
_greenLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,58,15,20));
objj_msgSend(_greenLabel,"setStringValue:","G");
objj_msgSend(_greenLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_greenSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CPRectMake(15,58,aFrame.size.width-70,20));
objj_msgSend(_greenSlider,"setMaxValue:",1);
objj_msgSend(_greenSlider,"setMinValue:",0);
objj_msgSend(_greenSlider,"setTarget:",_7);
objj_msgSend(_greenSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_greenSlider,"setAutoresizingMask:",CPViewWidthSizable);
var _e=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(aFrame.size.width-45,58,45,20));
objj_msgSend(_e,"setAutoresizingMask:",CPViewMinXMargin);
_greenValue=_redValue.cloneNode(false);
_greenValue.onchange=_9;
_e._DOMElement.appendChild(_greenValue);
objj_msgSend(_contentView,"addSubview:",_e);
_blueLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,81,15,20));
objj_msgSend(_blueLabel,"setStringValue:","B");
objj_msgSend(_blueLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_blueSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CPRectMake(15,81,aFrame.size.width-70,20));
objj_msgSend(_blueSlider,"setMaxValue:",1);
objj_msgSend(_blueSlider,"setMinValue:",0);
objj_msgSend(_blueSlider,"setTarget:",_7);
objj_msgSend(_blueSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_blueSlider,"setAutoresizingMask:",CPViewWidthSizable);
var _f=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(aFrame.size.width-45,81,45,20));
objj_msgSend(_f,"setAutoresizingMask:",CPViewMinXMargin);
_blueValue=_redValue.cloneNode(false);
_blueValue.onchange=_9;
_f._DOMElement.appendChild(_blueValue);
objj_msgSend(_contentView,"addSubview:",_f);
_hsbLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,120,190,20));
objj_msgSend(_hsbLabel,"setStringValue:","Hue, Saturation, Brightness");
objj_msgSend(_hsbLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_hueLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,145,15,20));
objj_msgSend(_hueLabel,"setStringValue:","H");
objj_msgSend(_hueLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_hueSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CPRectMake(15,145,aFrame.size.width-70,20));
objj_msgSend(_hueSlider,"setMaxValue:",359);
objj_msgSend(_hueSlider,"setMinValue:",0);
objj_msgSend(_hueSlider,"setTarget:",_7);
objj_msgSend(_hueSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_hueSlider,"setAutoresizingMask:",CPViewWidthSizable);
var _10=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(aFrame.size.width-45,145,45,20));
objj_msgSend(_10,"setAutoresizingMask:",CPViewMinXMargin);
_hueValue=_redValue.cloneNode(false);
_hueValue.onchange=_9;
_10._DOMElement.appendChild(_hueValue);
objj_msgSend(_contentView,"addSubview:",_10);
_saturationLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,168,15,20));
objj_msgSend(_saturationLabel,"setStringValue:","S");
objj_msgSend(_saturationLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_saturationSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CPRectMake(15,168,aFrame.size.width-70,20));
objj_msgSend(_saturationSlider,"setMaxValue:",100);
objj_msgSend(_saturationSlider,"setMinValue:",0);
objj_msgSend(_saturationSlider,"setTarget:",_7);
objj_msgSend(_saturationSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_saturationSlider,"setAutoresizingMask:",CPViewWidthSizable);
var _11=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(aFrame.size.width-45,168,45,20));
objj_msgSend(_11,"setAutoresizingMask:",CPViewMinXMargin);
_saturationValue=_redValue.cloneNode(false);
_saturationValue.onchange=_9;
_11._DOMElement.appendChild(_saturationValue);
objj_msgSend(_contentView,"addSubview:",_11);
_brightnessLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,191,15,20));
objj_msgSend(_brightnessLabel,"setStringValue:","B");
objj_msgSend(_brightnessLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_brightnessSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CPRectMake(15,191,aFrame.size.width-70,20));
objj_msgSend(_brightnessSlider,"setMaxValue:",100);
objj_msgSend(_brightnessSlider,"setMinValue:",0);
objj_msgSend(_brightnessSlider,"setTarget:",_7);
objj_msgSend(_brightnessSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_brightnessSlider,"setAutoresizingMask:",CPViewWidthSizable);
var _12=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(aFrame.size.width-45,191,45,20));
objj_msgSend(_12,"setAutoresizingMask:",CPViewMinXMargin);
_brightnessValue=_redValue.cloneNode(false);
_brightnessValue.onchange=_9;
_12._DOMElement.appendChild(_brightnessValue);
objj_msgSend(_contentView,"addSubview:",_12);
_hexLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,230,30,20));
objj_msgSend(_hexLabel,"setStringValue:","Hex");
objj_msgSend(_hexLabel,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
_hexValue=_redValue.cloneNode(false);
_hexValue.style.top="228px";
_hexValue.style.width="80px";
_hexValue.style.left="35px";
_hexValue.onkeypress=function(_13){
_13=_13||window.event;
if(_13.keyCode==13){
var _14=objj_msgSend(CPColor,"colorWithHexString:",this.value);
if(_14){
objj_msgSend(_7,"setColor:",_14);
objj_msgSend(objj_msgSend(_7,"colorPanel"),"setColor:",_14);
}
if(_13.preventDefault){
_13.preventDefault();
}else{
if(_13.stopPropagation){
_13.stopPropagation();
}
}
this.blur();
}
};
_contentView._DOMElement.appendChild(_hexValue);
objj_msgSend(_contentView,"addSubview:",_rgbLabel);
objj_msgSend(_contentView,"addSubview:",_redLabel);
objj_msgSend(_contentView,"addSubview:",_greenLabel);
objj_msgSend(_contentView,"addSubview:",_blueLabel);
objj_msgSend(_contentView,"addSubview:",_redSlider);
objj_msgSend(_contentView,"addSubview:",_greenSlider);
objj_msgSend(_contentView,"addSubview:",_blueSlider);
objj_msgSend(_contentView,"addSubview:",_hsbLabel);
objj_msgSend(_contentView,"addSubview:",_hueLabel);
objj_msgSend(_contentView,"addSubview:",_saturationLabel);
objj_msgSend(_contentView,"addSubview:",_brightnessLabel);
objj_msgSend(_contentView,"addSubview:",_hueSlider);
objj_msgSend(_contentView,"addSubview:",_saturationSlider);
objj_msgSend(_contentView,"addSubview:",_brightnessSlider);
objj_msgSend(_contentView,"addSubview:",_hexLabel);
}
}),new objj_method(sel_getUid("provideNewView:"),function(_15,_16,_17){
with(_15){
if(_17){
objj_msgSend(_15,"initView");
}
return _contentView;
}
}),new objj_method(sel_getUid("currentMode"),function(_18,_19){
with(_18){
return CPSliderColorPickerMode;
}
}),new objj_method(sel_getUid("supportsMode:"),function(_1a,_1b,_1c){
with(_1a){
return (_1c==CPSliderColorPickerMode)?YES:NO;
}
}),new objj_method(sel_getUid("sliderChanged:"),function(_1d,_1e,_1f){
with(_1d){
var _20,_21=objj_msgSend(_1d,"colorPanel"),_22=objj_msgSend(_21,"opacity");
switch(_1f){
case _hueSlider:
case _saturationSlider:
case _brightnessSlider:
_20=objj_msgSend(CPColor,"colorWithHue:saturation:brightness:alpha:",objj_msgSend(_hueSlider,"floatValue"),objj_msgSend(_saturationSlider,"floatValue"),objj_msgSend(_brightnessSlider,"floatValue"),_22);
objj_msgSend(_1d,"updateRGBSliders:",_20);
break;
case _redSlider:
case _greenSlider:
case _blueSlider:
_20=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",objj_msgSend(_redSlider,"floatValue"),objj_msgSend(_greenSlider,"floatValue"),objj_msgSend(_blueSlider,"floatValue"),_22);
objj_msgSend(_1d,"updateHSBSliders:",_20);
break;
}
objj_msgSend(_1d,"updateLabels");
objj_msgSend(_1d,"updateHex:",_20);
objj_msgSend(_21,"setColor:",_20);
}
}),new objj_method(sel_getUid("setColor:"),function(_23,_24,_25){
with(_23){
objj_msgSend(_23,"updateRGBSliders:",_25);
objj_msgSend(_23,"updateHSBSliders:",_25);
objj_msgSend(_23,"updateHex:",_25);
objj_msgSend(_23,"updateLabels");
}
}),new objj_method(sel_getUid("updateHSBSliders:"),function(_26,_27,_28){
with(_26){
var hsb=objj_msgSend(_28,"hsbComponents");
objj_msgSend(_hueSlider,"setFloatValue:",hsb[0]);
objj_msgSend(_saturationSlider,"setFloatValue:",hsb[1]);
objj_msgSend(_brightnessSlider,"setFloatValue:",hsb[2]);
}
}),new objj_method(sel_getUid("updateHex:"),function(_2a,_2b,_2c){
with(_2a){
_hexValue.value=objj_msgSend(_2c,"hexString");
}
}),new objj_method(sel_getUid("updateRGBSliders:"),function(_2d,_2e,_2f){
with(_2d){
var rgb=objj_msgSend(_2f,"components");
objj_msgSend(_redSlider,"setFloatValue:",rgb[0]);
objj_msgSend(_greenSlider,"setFloatValue:",rgb[1]);
objj_msgSend(_blueSlider,"setFloatValue:",rgb[2]);
}
}),new objj_method(sel_getUid("updateLabels"),function(_31,_32){
with(_31){
_hueValue.value=ROUND(objj_msgSend(_hueSlider,"floatValue"));
_saturationValue.value=ROUND(objj_msgSend(_saturationSlider,"floatValue"));
_brightnessValue.value=ROUND(objj_msgSend(_brightnessSlider,"floatValue"));
_redValue.value=ROUND(objj_msgSend(_redSlider,"floatValue")*255);
_greenValue.value=ROUND(objj_msgSend(_greenSlider,"floatValue")*255);
_blueValue.value=ROUND(objj_msgSend(_blueSlider,"floatValue")*255);
}
}),new objj_method(sel_getUid("provideNewButtonImage"),function(_33,_34){
with(_33){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","slider_button.png"),CGSizeMake(32,32));
}
}),new objj_method(sel_getUid("provideNewAlternateButtonImage"),function(_35,_36){
with(_35){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","slider_button_h.png"),CGSizeMake(32,32));
}
})]);
p;13;CPSplitView.ji;9;CPImage.ji;8;CPView.jc;18484;
CPSplitViewDidResizeSubviewsNotification="CPSplitViewDidResizeSubviewsNotification";
CPSplitViewWillResizeSubviewsNotification="CPSplitViewWillResizeSubviewsNotification";
var _1=nil,_2=nil;
var _3=objj_allocateClassPair(CPView,"CPSplitView"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_delegate"),new objj_ivar("_isVertical"),new objj_ivar("_isPaneSplitter"),new objj_ivar("_currentDivider"),new objj_ivar("_initialOffset"),new objj_ivar("_originComponent"),new objj_ivar("_sizeComponent"),new objj_ivar("_DOMDividerElements"),new objj_ivar("_dividerImagePath"),new objj_ivar("_drawingDivider"),new objj_ivar("_needsResizeSubviews")]);
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("initWithFrame:"),function(_5,_6,_7){
with(_5){
if(_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPView")},"initWithFrame:",_7)){
_currentDivider=CPNotFound;
_DOMDividerElements=[];
objj_msgSend(_5,"_setVertical:",YES);
}
return _5;
}
}),new objj_method(sel_getUid("dividerThickness"),function(_8,_9){
with(_8){
return _isPaneSplitter?1:10;
}
}),new objj_method(sel_getUid("isVertical"),function(_a,_b){
with(_a){
return _isVertical;
}
}),new objj_method(sel_getUid("setVertical:"),function(_c,_d,_e){
with(_c){
if(!objj_msgSend(_c,"_setVertical:",_e)){
return;
}
var _f=objj_msgSend(_c,"frame"),_10=objj_msgSend(_c,"dividerThickness");
objj_msgSend(_c,"_postNotificationWillResize");
var _11=ROUND((_f.size[_sizeComponent]-_10*(_subviews.length-1))/_subviews.length),_12=0,_13=_subviews.length;
if(objj_msgSend(_c,"isVertical")){
for(;_12<_13;++_12){
objj_msgSend(_subviews[_12],"setFrame:",CGRectMake(ROUND((_11+_10)*_12),0,_11,_f.size.height));
}
}else{
for(;_12<_13;++_12){
objj_msgSend(_subviews[_12],"setFrame:",CGRectMake(0,ROUND((_11+_10)*_12),_f.size.width,_11));
}
}
objj_msgSend(_c,"setNeedsDisplay:",YES);
objj_msgSend(_c,"_postNotificationDidResize");
}
}),new objj_method(sel_getUid("_setVertical:"),function(_14,_15,_16){
with(_14){
var _17=(_isVertical!=_16);
_isVertical=_16;
_originComponent=objj_msgSend(_14,"isVertical")?"x":"y";
_sizeComponent=objj_msgSend(_14,"isVertical")?"width":"height";
_dividerImagePath=objj_msgSend(_14,"isVertical")?objj_msgSend(_2,"filename"):objj_msgSend(_1,"filename");
return _17;
}
}),new objj_method(sel_getUid("isPaneSplitter"),function(_18,_19){
with(_18){
return _isPaneSplitter;
}
}),new objj_method(sel_getUid("setIsPaneSplitter:"),function(_1a,_1b,_1c){
with(_1a){
if(_isPaneSplitter==_1c){
return;
}
_isPaneSplitter=_1c;
_DOMDividerElements=[];
objj_msgSend(_1a,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("didAddSubview:"),function(_1d,_1e,_1f){
with(_1d){
_needsResizeSubviews=YES;
}
}),new objj_method(sel_getUid("isSubviewCollapsed:"),function(_20,_21,_22){
with(_20){
return objj_msgSend(_22,"frame").size[_sizeComponent]<1?YES:NO;
}
}),new objj_method(sel_getUid("rectOfDividerAtIndex:"),function(_23,_24,_25){
with(_23){
var _26=objj_msgSend(_subviews[_25],"frame"),_27=CGRectMakeZero();
_27.size=objj_msgSend(_23,"frame").size;
_27.size[_sizeComponent]=objj_msgSend(_23,"dividerThickness");
_27.origin[_originComponent]=_26.origin[_originComponent]+_26.size[_sizeComponent];
return _27;
}
}),new objj_method(sel_getUid("effectiveRectOfDividerAtIndex:"),function(_28,_29,_2a){
with(_28){
var _2b=objj_msgSend(_28,"rectOfDividerAtIndex:",_2a);
var _2c=2;
_2b.size[_sizeComponent]+=_2c*2;
_2b.origin[_originComponent]-=_2c;
return _2b;
}
}),new objj_method(sel_getUid("drawRect:"),function(_2d,_2e,_2f){
with(_2d){
var _30=objj_msgSend(_subviews,"count")-1;
while((_30--)>0){
_drawingDivider=_30;
objj_msgSend(_2d,"drawDividerInRect:",objj_msgSend(_2d,"rectOfDividerAtIndex:",_30));
}
}
}),new objj_method(sel_getUid("drawDividerInRect:"),function(_31,_32,_33){
with(_31){
if(!_DOMDividerElements[_drawingDivider]){
_DOMDividerElements[_drawingDivider]=document.createElement("div");
_DOMDividerElements[_drawingDivider].style.cursor="move";
_DOMDividerElements[_drawingDivider].style.position="absolute";
_DOMDividerElements[_drawingDivider].style.backgroundRepeat="repeat";
if(_DOMDividerElements[_drawingDivider].CPDOMDisplayContext){
_DOMDividerElements[_drawingDivider].CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=6;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMDividerElements[_drawingDivider];
if(_isPaneSplitter){
_DOMDividerElements[_drawingDivider].style.backgroundColor="#A5A5A5";
_DOMDividerElements[_drawingDivider].style.backgroundImage="";
}else{
_DOMDividerElements[_drawingDivider].style.backgroundColor="";
_DOMDividerElements[_drawingDivider].style.backgroundImage="url('"+_dividerImagePath+"')";
}
}
if(!_DOMDividerElements[_drawingDivider].CPDOMDisplayContext){
_DOMDividerElements[_drawingDivider].CPDOMDisplayContext=[];
}
var _34=_DOMDividerElements[_drawingDivider].CPDOMDisplayContext[0];
if(!(_34>=0)){
_34=_DOMDividerElements[_drawingDivider].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_34]=0;
CPDOMDisplayServerInstructions[_34+1]=_DOMDividerElements[_drawingDivider];
CPDOMDisplayServerInstructions[_34+2]=NULL;
CPDOMDisplayServerInstructions[_34+3]=(_33.origin.x);
CPDOMDisplayServerInstructions[_34+4]=(_33.origin.y);
if(!_DOMDividerElements[_drawingDivider].CPDOMDisplayContext){
_DOMDividerElements[_drawingDivider].CPDOMDisplayContext=[];
}
var _34=_DOMDividerElements[_drawingDivider].CPDOMDisplayContext[4];
if(!(_34>=0)){
_34=_DOMDividerElements[_drawingDivider].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_34]=4;
CPDOMDisplayServerInstructions[_34+1]=_DOMDividerElements[_drawingDivider];
CPDOMDisplayServerInstructions[_34+2]=(_33.size.width);
CPDOMDisplayServerInstructions[_34+3]=(_33.size.height);
}
}),new objj_method(sel_getUid("viewWillDraw"),function(_35,_36){
with(_35){
objj_msgSend(_35,"_adjustSubviewsWithCalculatedSize");
}
}),new objj_method(sel_getUid("_adjustSubviewsWithCalculatedSize"),function(_37,_38){
with(_37){
if(!_needsResizeSubviews){
return;
}
_needsResizeSubviews=NO;
var _39=objj_msgSend(_37,"subviews"),_3a=_39.length,_3b=CGSizeMakeZero();
if(objj_msgSend(_37,"isVertical")){
_3b.width+=objj_msgSend(_37,"dividerThickness")*(_3a-1);
_3b.height=CGRectGetHeight(objj_msgSend(_37,"frame"));
}else{
_3b.width=CGRectGetWidth(objj_msgSend(_37,"frame"));
_3b.height+=objj_msgSend(_37,"dividerThickness")*(_3a-1);
}
while(_3a--){
_3b[_sizeComponent]+=objj_msgSend(_39[_3a],"frame").size[_sizeComponent];
}
objj_msgSend(_37,"resizeSubviewsWithOldSize:",_3b);
}
}),new objj_method(sel_getUid("cursorAtPoint:hitDividerAtIndex:"),function(_3c,_3d,_3e,_3f){
with(_3c){
var _40=objj_msgSend(_subviews[_3f],"frame"),_41=_40.origin[_originComponent]+_40.size[_sizeComponent],_42=objj_msgSend(_3c,"effectiveRectOfDividerAtIndex:",_3f),_43=null;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:effectiveRect:forDrawnRect:ofDividerAtIndex:"))){
_42=objj_msgSend(_delegate,"splitView:effectiveRect:forDrawnRect:ofDividerAtIndex:",_3c,_42,_42,_3f);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:additionalEffectiveRectOfDividerAtIndex:"))){
_43=objj_msgSend(_delegate,"splitView:additionalEffectiveRectOfDividerAtIndex:",_3c,_3f);
}
return CGRectContainsPoint(_42,_3e)||(_43&&CGRectContainsPoint(_43,_3e));
}
}),new objj_method(sel_getUid("hitTest:"),function(_44,_45,_46){
with(_44){
if(objj_msgSend(_44,"isHidden")||!objj_msgSend(_44,"hitTests")||!CGRectContainsPoint(objj_msgSend(_44,"frame"),_46)){
return nil;
}
var _47=objj_msgSend(_44,"convertPoint:fromView:",_46,objj_msgSend(_44,"superview"));
var _48=objj_msgSend(_subviews,"count")-1;
for(var i=0;i<_48;i++){
if(objj_msgSend(_44,"cursorAtPoint:hitDividerAtIndex:",_47,i)){
return _44;
}
}
return objj_msgSendSuper({receiver:_44,super_class:objj_getClass("CPView")},"hitTest:",_46);
}
}),new objj_method(sel_getUid("trackDivider:"),function(_4a,_4b,_4c){
with(_4a){
var _4d=objj_msgSend(_4c,"type");
if(_4d==CPLeftMouseUp){
if(_currentDivider!=CPNotFound){
_currentDivider=CPNotFound;
objj_msgSend(_4a,"_postNotificationDidResize");
}
return;
}
if(_4d==CPLeftMouseDown){
var _4e=objj_msgSend(_4a,"convertPoint:fromView:",objj_msgSend(_4c,"locationInWindow"),nil);
_currentDivider=CPNotFound;
var _4f=objj_msgSend(_subviews,"count")-1;
for(var i=0;i<_4f;i++){
var _51=objj_msgSend(_subviews[i],"frame"),_52=_51.origin[_originComponent]+_51.size[_sizeComponent];
if(objj_msgSend(_4a,"cursorAtPoint:hitDividerAtIndex:",_4e,i)){
if(objj_msgSend(_4c,"clickCount")==2&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:canCollapseSubview:"))&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:"))){
var _53=objj_msgSend(_4a,"minPossiblePositionOfDividerAtIndex:",i),_54=objj_msgSend(_4a,"maxPossiblePositionOfDividerAtIndex:",i);
if(objj_msgSend(_delegate,"splitView:canCollapseSubview:",_4a,_subviews[i])&&objj_msgSend(_delegate,"splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:",_4a,_subviews[i],i)){
if(objj_msgSend(_4a,"isSubviewCollapsed:",_subviews[i])){
objj_msgSend(_4a,"setPosition:ofDividerAtIndex:",(_53+(_54-_53)/2),i);
}else{
objj_msgSend(_4a,"setPosition:ofDividerAtIndex:",_53,i);
}
}else{
if(objj_msgSend(_delegate,"splitView:canCollapseSubview:",_4a,_subviews[i+1])&&objj_msgSend(_delegate,"splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:",_4a,_subviews[i+1],i)){
if(objj_msgSend(_4a,"isSubviewCollapsed:",_subviews[i+1])){
objj_msgSend(_4a,"setPosition:ofDividerAtIndex:",(_53+(_54-_53)/2),i);
}else{
objj_msgSend(_4a,"setPosition:ofDividerAtIndex:",_54,i);
}
}
}
}else{
_currentDivider=i;
_initialOffset=_52-_4e[_originComponent];
objj_msgSend(_4a,"_postNotificationWillResize");
}
}
}
}else{
if(_4d==CPLeftMouseDragged&&_currentDivider!=CPNotFound){
var _4e=objj_msgSend(_4a,"convertPoint:fromView:",objj_msgSend(_4c,"locationInWindow"),nil);
objj_msgSend(_4a,"setPosition:ofDividerAtIndex:",(_4e[_originComponent]+_initialOffset),_currentDivider);
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_4a,sel_getUid("trackDivider:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_55,_56,_57){
with(_55){
objj_msgSend(_55,"trackDivider:",_57);
}
}),new objj_method(sel_getUid("maxPossiblePositionOfDividerAtIndex:"),function(_58,_59,_5a){
with(_58){
var _5b=objj_msgSend(_subviews[_5a+1],"frame");
if(_5a+1<objj_msgSend(_subviews,"count")-1){
return _5b.origin[_originComponent]+_5b.size[_sizeComponent]-objj_msgSend(_58,"dividerThickness");
}else{
return objj_msgSend(_58,"frame").size[_sizeComponent]-objj_msgSend(_58,"dividerThickness");
}
}
}),new objj_method(sel_getUid("minPossiblePositionOfDividerAtIndex:"),function(_5c,_5d,_5e){
with(_5c){
if(_5e>0){
var _5f=objj_msgSend(_subviews[_5e-1],"frame");
return _5f.origin[_originComponent]+_5f.size[_sizeComponent]+objj_msgSend(_5c,"dividerThickness");
}else{
return 0;
}
}
}),new objj_method(sel_getUid("setPosition:ofDividerAtIndex:"),function(_60,_61,_62,_63){
with(_60){
objj_msgSend(_60,"_adjustSubviewsWithCalculatedSize");
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:constrainSplitPosition:ofSubviewAt:"))){
_62=objj_msgSend(_delegate,"splitView:constrainSplitPosition:ofSubviewAt:",_60,_62,_63);
}
var _64=objj_msgSend(_60,"maxPossiblePositionOfDividerAtIndex:",_63),_65=objj_msgSend(_60,"minPossiblePositionOfDividerAtIndex:",_63),_66=_64,_67=_65;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:constrainMinCoordinate:ofSubviewAt:"))){
_67=objj_msgSend(_delegate,"splitView:constrainMinCoordinate:ofSubviewAt:",_60,_65,_63);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:constrainMaxCoordinate:ofSubviewAt:"))){
_66=objj_msgSend(_delegate,"splitView:constrainMaxCoordinate:ofSubviewAt:",_60,_64,_63);
}
var _68=objj_msgSend(_60,"frame"),_69=_subviews[_63],_6a=objj_msgSend(_69,"frame"),_6b=_subviews[_63+1],_6c=objj_msgSend(_6b,"frame");
var _6d=MAX(MIN(_62,_66),_67);
if(_62<_65+(_67-_65)/2){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:canCollapseSubview:"))){
if(objj_msgSend(_delegate,"splitView:canCollapseSubview:",_60,_69)){
_6d=_65;
}
}
}
_6a.size[_sizeComponent]=_6d-_6a.origin[_originComponent];
objj_msgSend(_subviews[_63],"setFrame:",_6a);
_6c.size[_sizeComponent]=_6c.origin[_originComponent]+_6c.size[_sizeComponent]-_6d-objj_msgSend(_60,"dividerThickness");
_6c.origin[_originComponent]=_6d+objj_msgSend(_60,"dividerThickness");
objj_msgSend(_subviews[_63+1],"setFrame:",_6c);
objj_msgSend(_60,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_6e,_6f,_70){
with(_6e){
objj_msgSend(_6e,"_adjustSubviewsWithCalculatedSize");
objj_msgSendSuper({receiver:_6e,super_class:objj_getClass("CPView")},"setFrameSize:",_70);
objj_msgSend(_6e,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_71,_72,_73){
with(_71){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitView:resizeSubviewsWithOldSize:"))){
objj_msgSend(_delegate,"splitView:resizeSubviewsWithOldSize:",_71,_73);
return;
}
objj_msgSend(_71,"_postNotificationWillResize");
var _74=0,_75=objj_msgSend(_subviews,"count"),_76=objj_msgSend(_71,"bounds"),_77=objj_msgSend(_71,"dividerThickness"),_78=_75-1,_79=0,_7a=0,_7b=-1,_7c=0,_7d=objj_msgSend(_71,"isVertical");
for(_74=0;_74<_75;++_74){
var _7e=_subviews[_74],_7f=_7d?objj_msgSend(_7e,"autoresizingMask")&CPViewWidthSizable:objj_msgSend(_7e,"autoresizingMask")&CPViewHeightSizable;
if(_7f){
_79+=objj_msgSend(_7e,"frame").size[_sizeComponent];
_7b=_74;
_7c++;
}
}
if(_7c===_75){
_79=0;
}
var _7a=_79?_76.size[_sizeComponent]-_79:0,_80=(_76.size[_sizeComponent]-_78*_77-_7a)/(_73[_sizeComponent]-_78*_77-_7a),_81=_76.size[_sizeComponent]-_73[_sizeComponent];
for(_74=0;_74<_75;++_74){
var _7e=_subviews[_74],_82=CGRectMakeCopy(_76),_7f=_7d?objj_msgSend(_7e,"autoresizingMask")&CPViewWidthSizable:objj_msgSend(_7e,"autoresizingMask")&CPViewHeightSizable;
if(_74+1==_75){
_82.size[_sizeComponent]=_76.size[_sizeComponent]-_82.origin[_originComponent];
}else{
if(_79&&_7f&&_7b===_74){
_82.size[_sizeComponent]=MAX(0,ROUND(objj_msgSend(_7e,"frame").size[_sizeComponent]+_81));
}else{
if(_7f||!_79){
_82.size[_sizeComponent]=MAX(0,ROUND(_80*objj_msgSend(_7e,"frame").size[_sizeComponent]));
_81-=(_82.size[_sizeComponent]-objj_msgSend(_7e,"frame").size[_sizeComponent]);
}else{
if(_79&&!_7f){
_82.size[_sizeComponent]=objj_msgSend(_7e,"frame").size[_sizeComponent];
}else{
alert("SHOULD NEVER GET HERE");
}
}
}
}
_76.origin[_originComponent]+=_82.size[_sizeComponent]+_77;
objj_msgSend(_7e,"setFrame:",_82);
}
objj_msgSend(_71,"_postNotificationDidResize");
}
}),new objj_method(sel_getUid("setDelegate:"),function(_83,_84,_85){
with(_83){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitViewDidResizeSubviews:"))){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_delegate,CPSplitViewDidResizeSubviewsNotification,_83);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitViewWillResizeSubviews:"))){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_delegate,CPSplitViewWillResizeSubviewsNotification,_83);
}
_delegate=_85;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitViewDidResizeSubviews:"))){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_delegate,sel_getUid("splitViewDidResizeSubviews:"),CPSplitViewDidResizeSubviewsNotification,_83);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("splitViewWillResizeSubviews:"))){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_delegate,sel_getUid("splitViewWillResizeSubviews:"),CPSplitViewWillResizeSubviewsNotification,_83);
}
}
}),new objj_method(sel_getUid("_postNotificationWillResize"),function(_86,_87){
with(_86){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPSplitViewWillResizeSubviewsNotification,_86);
}
}),new objj_method(sel_getUid("_postNotificationDidResize"),function(_88,_89){
with(_88){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPSplitViewDidResizeSubviewsNotification,_88);
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("initialize"),function(_8a,_8b){
with(_8a){
if(_8a!=objj_msgSend(CPSplitView,"class")){
return;
}
var _8c=objj_msgSend(CPBundle,"bundleForClass:",_8a);
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_8c,"pathForResource:","CPSplitView/CPSplitViewHorizontal.png"),CPSizeMake(5,10));
_2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_8c,"pathForResource:","CPSplitView/CPSplitViewVertical.png"),CPSizeMake(10,5));
}
})]);
var _8d="CPSplitViewDelegateKey",_8e="CPSplitViewIsVerticalKey",_8f="CPSplitViewIsPaneSplitterKey";
var _3=objj_getClass("CPSplitView");
if(!_3){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPSplitView\""));
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("initWithCoder:"),function(_90,_91,_92){
with(_90){
_90=objj_msgSendSuper({receiver:_90,super_class:objj_getClass("CPView")},"initWithCoder:",_92);
if(_90){
_currentDivider=CPNotFound;
_DOMDividerElements=[];
_delegate=objj_msgSend(_92,"decodeObjectForKey:",_8d);
_isPaneSplitter=objj_msgSend(_92,"decodeBoolForKey:",_8f);
objj_msgSend(_90,"_setVertical:",objj_msgSend(_92,"decodeBoolForKey:",_8e));
}
return _90;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_93,_94,_95){
with(_93){
objj_msgSendSuper({receiver:_93,super_class:objj_getClass("CPView")},"encodeWithCoder:",_95);
objj_msgSend(_95,"encodeConditionalObject:forKey:",_delegate,_8d);
objj_msgSend(_95,"encodeBool:forKey:",_isVertical,_8e);
objj_msgSend(_95,"encodeBool:forKey:",_isPaneSplitter,_8f);
}
})]);
p;17;CPStringDrawing.jI;21;Foundation/CPString.jc;1584;
var _1=nil,_2=nil;
var _3=objj_getClass("CPString");
if(!_3){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPString\""));
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("cssString"),function(_5,_6){
with(_5){
return _5;
}
}),new objj_method(sel_getUid("sizeWithFont:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"sizeWithFont:inWidth:",_9,NULL);
}
}),new objj_method(sel_getUid("sizeWithFont:inWidth:"),function(_a,_b,_c,_d){
with(_a){
if(!_1){
_1=document.createElement("span");
var _e=_1.style;
_e.position="absolute";
_e.whiteSpace="pre";
_e.visibility="visible";
_e.padding="0px";
_e.margin="0px";
_e.left="-100000px";
_e.top="-100000px";
_e.zIndex="10000";
_e.background="red";
document.getElementsByTagName("body")[0].appendChild(_1);
}
if(!_c){
if(!_2){
_2=objj_msgSend(CPFont,"systemFontOfSize:",12);
}
_c=_2;
}
var _e=_1.style;
if(_d===NULL){
_e.width="";
_e.whiteSpace="pre";
}else{
_e.width=ROUND(_d)+"px";
if(document.attachEvent){
_e.wordWrap="break-word";
}else{
_e.whiteSpace="-o-pre-wrap";
_e.whiteSpace="-pre-wrap";
_e.whiteSpace="-moz-pre-wrap";
_e.whiteSpace="pre-wrap";
}
}
_e.font=objj_msgSend(_c,"cssString");
if(CPFeatureIsCompatible(CPJavascriptInnerTextFeature)){
_1.innerText=_a;
}else{
if(CPFeatureIsCompatible(CPJavascriptTextContentFeature)){
_1.textContent=_a;
}
}
return {width:_1.clientWidth,height:_1.clientHeight};
return {width:0,height:0};
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("_resetSize"),function(_f,_10){
with(_f){
_1=nil;
}
})]);
p;15;CPTableColumn.jI;23;Foundation/Foundation.jc;7157;
CPTableColumnNoResizing=0;
CPTableColumnAutoresizingMask=1;
CPTableColumnUserResizingMask=2;
var _1=objj_allocateClassPair(CPObject,"CPTableColumn"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_identifier"),new objj_ivar("_headerView"),new objj_ivar("_tableView"),new objj_ivar("_width"),new objj_ivar("_minWidth"),new objj_ivar("_maxWidth"),new objj_ivar("_resizingMask"),new objj_ivar("_dataView"),new objj_ivar("_dataViewData"),new objj_ivar("_dataViewForView"),new objj_ivar("_purgableInfosForDataView")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithIdentifier:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
objj_msgSend(_3,"_init");
_identifier=_5;
_width=40;
_minWidth=8;
_maxWidth=1000;
var _6=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMakeZero());
objj_msgSend(_6,"setValue:forThemeAttribute:inState:",objj_msgSend(CPColor,"whiteColor"),"text-color",CPThemeStateHighlighted);
objj_msgSend(_3,"setDataView:",_6);
_headerView=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMakeZero());
objj_msgSend(_headerView,"setBackgroundColor:",objj_msgSend(CPColor,"greenColor"));
}
return _3;
}
}),new objj_method(sel_getUid("_init"),function(_7,_8){
with(_7){
_dataViewData={};
_dataViewForView={};
_purgableInfosForDataView={};
}
}),new objj_method(sel_getUid("setIdentifier:"),function(_9,_a,_b){
with(_9){
_identifier=_b;
}
}),new objj_method(sel_getUid("identifier"),function(_c,_d){
with(_c){
return _identifier;
}
}),new objj_method(sel_getUid("setTableView:"),function(_e,_f,_10){
with(_e){
_tableView=_10;
}
}),new objj_method(sel_getUid("tableView"),function(_11,_12){
with(_11){
return _tableView;
}
}),new objj_method(sel_getUid("setWidth:"),function(_13,_14,_15){
with(_13){
_width=_15;
}
}),new objj_method(sel_getUid("width"),function(_16,_17){
with(_16){
return _width;
}
}),new objj_method(sel_getUid("setMinWidth:"),function(_18,_19,_1a){
with(_18){
if(_width<(_minWidth=_1a)){
objj_msgSend(_18,"setWidth:",_minWidth);
}
}
}),new objj_method(sel_getUid("minWidth"),function(_1b,_1c){
with(_1b){
return _minWidth;
}
}),new objj_method(sel_getUid("setMaxWidth:"),function(_1d,_1e,_1f){
with(_1d){
if(_width>(_maxmimumWidth=_1f)){
objj_msgSend(_1d,"setWidth:",_maxWidth);
}
}
}),new objj_method(sel_getUid("setResizingMask:"),function(_20,_21,_22){
with(_20){
_resizingMask=_22;
}
}),new objj_method(sel_getUid("resizingMask"),function(_23,_24){
with(_23){
return _resizingMask;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_25,_26){
with(_25){
var _27=CPRectGetWidth(objj_msgSend(_headerView,"frame"));
if(_27<_minWidth){
objj_msgSend(_25,"setMinWidth:",_27);
}else{
if(_27>_maxWidth){
objj_msgSend(_25,"setMaxWidth:",_27);
}
}
if(_width!=_27){
objj_msgSend(_25,"setWidth:",_27);
}
}
}),new objj_method(sel_getUid("setEditable:"),function(_28,_29,_2a){
with(_28){
_isEditable=_2a;
}
}),new objj_method(sel_getUid("isEditable"),function(_2b,_2c){
with(_2b){
return _isEditable;
}
}),new objj_method(sel_getUid("setHeaderView:"),function(_2d,_2e,_2f){
with(_2d){
_headerView=_2f;
}
}),new objj_method(sel_getUid("headerView"),function(_30,_31){
with(_30){
return _headerView;
}
}),new objj_method(sel_getUid("setDataCell:"),function(_32,_33,_34){
with(_32){
objj_msgSend(_32,"setDataView:",_34);
}
}),new objj_method(sel_getUid("setDataView:"),function(_35,_36,_37){
with(_35){
if(_dataView){
_dataViewData[objj_msgSend(_dataView,"hash")]=nil;
}
_dataView=_37;
_dataViewData[objj_msgSend(_37,"hash")]=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_37);
}
}),new objj_method(sel_getUid("dataCell"),function(_38,_39){
with(_38){
return _dataView;
}
}),new objj_method(sel_getUid("dataView"),function(_3a,_3b){
with(_3a){
return objj_msgSend(_3a,"dataCell");
}
}),new objj_method(sel_getUid("dataCellForRow:"),function(_3c,_3d,_3e){
with(_3c){
return objj_msgSend(_3c,"dataView");
}
}),new objj_method(sel_getUid("dataViewForRow:"),function(_3f,_40,_41){
with(_3f){
return objj_msgSend(_3f,"dataCellForRow:",_41);
}
}),new objj_method(sel_getUid("_markView:inRow:asPurgable:"),function(_42,_43,_44,_45,_46){
with(_42){
var _47=objj_msgSend(_44,"hash"),_48=objj_msgSend(_dataViewForView[_47],"hash");
if(!_purgableInfosForDataView[_48]){
if(!_46){
return;
}
_purgableInfosForDataView[_48]={};
}
if(!_46){
if(_purgableInfosForDataView[_48][_47]){
CPLog.warn("removing unpurgable "+_purgableInfosForDataView[_48][_47]);
}
delete _purgableInfosForDataView[_48][_47];
}else{
_purgableInfosForDataView[_48][_47]={view:(_44),row:(_45)};
}
}
}),new objj_method(sel_getUid("_newDataViewForRow:avoidingRows:"),function(_49,_4a,_4b,_4c){
with(_49){
var _4d=objj_msgSend(_49,"dataViewForRow:",_4b),_4e=objj_msgSend(_4d,"hash"),_4f=_purgableInfosForDataView[_4e];
if(_4f){
for(var key in _4f){
var _51=_4f[key];
delete _4f[key];
return ((_51).view);
}
}
if(!_dataViewData[_4e]){
_dataViewData[_4e]=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_4d);
}
var _52=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",_dataViewData[_4e]);
_dataViewForView[objj_msgSend(_52,"hash")]=_4d;
CPLog.warn("creating cell: %s",_52);
return _52;
}
}),new objj_method(sel_getUid("_purge"),function(_53,_54){
with(_53){
for(var _55 in _purgableInfosForDataView){
var _56=_purgableInfosForDataView[_55];
for(var key in _56){
var _58=((_56[key]).view);
if(!_58){
CPLog.info("key="+key+" view="+_58+" purgableInfos[key]="+_56[key]);
}else{
if(_58._superview){
objj_msgSend(_58,"setHidden:",YES);
}
}
}
}
}
})]);
var _59="CPTableColumnIdentifierKey",_5a="CPTableColumnHeaderViewKey",_5b="CPTableColumnDataViewKey",_5c="CPTableColumnWidthKey",_5d="CPTableColumnMinWidthKey",_5e="CPTableColumnMaxWidthKey",_5f="CPTableColumnResizingMaskKey";
var _1=objj_getClass("CPTableColumn");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTableColumn\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_60,_61,_62){
with(_60){
objj_msgSend(_60,"_init");
_identifier=objj_msgSend(_62,"decodeObjectForKey:",_59);
objj_msgSend(_60,"setHeaderView:",objj_msgSend(_62,"decodeObjectForKey:",_5a));
objj_msgSend(_60,"setDataView:",objj_msgSend(_62,"decodeObjectForKey:",_5b));
_width=objj_msgSend(_62,"decodeFloatForKey:",_5c);
_minWidth=objj_msgSend(_62,"decodeFloatForKey:",_5d);
_maxWidth=objj_msgSend(_62,"decodeFloatForKey:",_5e);
_resizingMask=objj_msgSend(_62,"decodeBoolForKey:",_5f);
return _60;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_63,_64,_65){
with(_63){
objj_msgSend(_65,"encodeObject:forKey:",_identifier,_59);
objj_msgSend(_65,"encodeObject:forKey:",_headerView,_5a);
objj_msgSend(_65,"encodeObject:forKey:",_dataView,_5b);
objj_msgSend(_65,"encodeObject:forKey:",_width,_5c);
objj_msgSend(_65,"encodeObject:forKey:",_minWidth,_5d);
objj_msgSend(_65,"encodeObject:forKey:",_maxWidth,_5e);
objj_msgSend(_65,"encodeObject:forKey:",_resizingMask,_5f);
}
})]);
p;13;CPTableView.ji;11;CPControl.ji;15;CPTableColumn.ji;9;CPColor.ji;13;CPTextField.jc;28383;
CPTableViewColumnDidMoveNotification="CPTableViewColumnDidMoveNotification";
CPTableViewColumnDidResizeNotification="CPTableViewColumnDidResizeNotification";
CPTableViewSelectionDidChangeNotification="CPTableViewSelectionDidChangeNotification";
CPTableViewSelectionIsChangingNotification="CPTableViewSelectionIsChangingNotification";
var _1=1<<0,_2=1<<1,_3=1<<2,_4=1<<3,_5=1<<4,_6=1<<5,_7=1<<6;
var _8=objj_allocateClassPair(CPControl,"CPTableView"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_dataSource"),new objj_ivar("_delegate"),new objj_ivar("_tableColumns"),new objj_ivar("_selectedRowIndexes"),new objj_ivar("_rowHeight"),new objj_ivar("_intercellSpacing"),new objj_ivar("_allowsMultipleSelection"),new objj_ivar("_allowsEmptySelection"),new objj_ivar("_delegateSelectorsCache"),new objj_ivar("_numberOfRows"),new objj_ivar("_hasVariableHeightRows"),new objj_ivar("_columnHeight"),new objj_ivar("_rowHeights"),new objj_ivar("_rowMinYs"),new objj_ivar("_tableCells"),new objj_ivar("_tableColumnViews"),new objj_ivar("_dataViewCache"),new objj_ivar("_objectValueCache"),new objj_ivar("_visibleRows"),new objj_ivar("_visibleColumns"),new objj_ivar("_populatedRows"),new objj_ivar("_populatedColumns"),new objj_ivar("_previousSelectedRowIndexes"),new objj_ivar("_selectionStartRow"),new objj_ivar("_selectionModifier"),new objj_ivar("_currentlySelected"),new objj_ivar("_selectionViews"),new objj_ivar("_selectionViewsPool"),new objj_ivar("_scrollTimer")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("initWithFrame:"),function(_a,_b,_c){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPControl")},"initWithFrame:",_c);
if(_a){
objj_msgSend(_a,"_init");
}
return _a;
}
}),new objj_method(sel_getUid("_init"),function(_d,_e){
with(_d){
_tableColumns=[];
_selectedRowIndexes=objj_msgSend(CPIndexSet,"indexSet");
_rowHeight=17;
_intercellSpacing=CPSizeMake(3,2);
_allowsMultipleSelection=YES;
_allowsEmptySelection=YES;
_tableCells=[];
_tableColumnViews=[];
_dataViewCache={};
_objectValueCache=[];
_visibleRows=CPMakeRange(0,0);
_visibleColumns=CPMakeRange(0,0);
_rowHeights=[];
_rowMinYs=[];
}
}),new objj_method(sel_getUid("_columnHeight"),function(_f,_10){
with(_f){
return _columnHeight;
}
}),new objj_method(sel_getUid("newCellForRow:column:avoidingRows:"),function(_11,_12,_13,_14,_15){
with(_11){
var _16=objj_msgSend(_tableColumns[_14],"_newDataViewForRow:avoidingRows:",_13,_15);
objj_msgSend(_16,"setFrame:",CGRectMake(0,(_hasVariableHeightRows?_rowMinYs[_13]:(_13*(_rowHeight+_intercellSpacing.height))),objj_msgSend(_tableColumns[_14],"width"),(_hasVariableHeightRows?_rowHeights[_13]:_rowHeight)));
if(objj_msgSend(_16,"respondsToSelector:",sel_getUid("highlight:"))){
objj_msgSend(_16,"highlight:",objj_msgSend(_selectedRowIndexes,"containsIndex:",_13));
}
if(!_objectValueCache[_14]){
_objectValueCache[_14]=[];
}
if(_objectValueCache[_14][_13]===undefined){
_objectValueCache[_14][_13]=objj_msgSend(_dataSource,"tableView:objectValueForTableColumn:row:",_11,_tableColumns[_14],_13);
}
objj_msgSend(_16,"setObjectValue:",_objectValueCache[_14][_13]);
return _16;
}
}),new objj_method(sel_getUid("clearCells"),function(_17,_18){
with(_17){
var _19=CPMaxRange(_visibleColumns),_1a=CPMaxRange(_visibleRows);
for(var _1b=_visibleColumns.location;_1b<_19;_1b++){
var _1c=_tableColumns[_1b],_1d=_tableCells[_1b];
for(var row=_visibleRows.location;row<_1a;row++){
var _1f=_1d[row];
if(_1f){
_1d[row]=nil;
objj_msgSend(_1c,"_markView:inRow:asPurgable:",_1f,row,YES);
}else{
CPLog.warn("Missing cell? "+row+","+_1b);
}
}
}
_visibleColumns=CPMakeRange(0,0);
_visibleRows=CPMakeRange(0,0);
}
}),new objj_method(sel_getUid("loadTableCellsInRect:"),function(_20,_21,_22){
with(_20){
if(!_dataSource){
return;
}
var _23=MAX(0,objj_msgSend(_20,"_rowAtY:",CGRectGetMinY(_22))-1),_24=MIN(_numberOfRows,objj_msgSend(_20,"_rowAtY:",CGRectGetMaxY(_22))+1),_25=CPMakeRange(_23,_24-_23),_26=MAX(0,objj_msgSend(_20,"_columnAtX:",CGRectGetMinX(_22))),_27=MIN(_tableColumns.length,objj_msgSend(_20,"_columnAtX:",CGRectGetMaxX(_22))+1),_28=CPMakeRange(_26,_27-_26);
if(CPEqualRanges(_visibleRows,_25)&&CPEqualRanges(_visibleColumns,_28)){
return;
}
var _29=CPUnionRange(_visibleRows,_25),_2a=CPUnionRange(_visibleColumns,_28);
if(_29.length*_2a.length<=(_visibleRows.length*_visibleColumns.length)+(_25.length*_28.length)){
var _2b=CPMaxRange(_2a),_2c=CPMaxRange(_29),_2d;
for(var _2e=_2a.location;_2e<_2b;++_2e){
var _2f=_tableColumns[_2e],_30=_tableCells[_2e],_31=CPLocationInRange(_2e,_28),_32=[];
for(var row=_29.location;row<_2c;++row){
if(_2d=_30[row]){
if(!_31||!CPLocationInRange(row,_25)){
_30[row]=nil;
objj_msgSend(_2f,"_markView:inRow:asPurgable:",_2d,row,YES);
}
}else{
_32.push(row);
}
}
while(_32.length>0){
var row=_32.pop();
_30[row]=objj_msgSend(_20,"newCellForRow:column:avoidingRows:",row,_2e,_25);
if(!_30[row]._superview){
objj_msgSend(_tableColumnViews[_2e],"addSubview:",_30[row]);
}else{
if(_30[row]._isHidden){
objj_msgSend(_30[row],"setHidden:",NO);
}
}
}
objj_msgSend(_2f,"_purge");
}
}else{
var _2b=CPMaxRange(_visibleColumns),_2c=CPMaxRange(_visibleRows),_2d;
for(var _2e=_visibleColumns.location;_2e<_2b;++_2e){
var _2f=_tableColumns[_2e],_30=_tableCells[_2e],_31=CPLocationInRange(_2e,_28);
for(var row=_visibleRows.location;row<_2c;++row){
if(_2d=_30[row]){
if(!_31||!CPLocationInRange(row,_25)){
_30[row]=nil;
objj_msgSend(_2f,"_markView:inRow:asPurgable:",_2d,row,YES);
}
}
}
}
var _2b=CPMaxRange(_28),_2c=CPMaxRange(_25);
for(var _2e=_28.location;_2e<_2b;++_2e){
var _2f=_tableColumns[_2e],_30=_tableCells[_2e];
for(var row=_25.location;row<_2c;++row){
_30[row]=objj_msgSend(_20,"newCellForRow:column:avoidingRows:",row,_2e,_25);
if(!_30[row]._superview){
objj_msgSend(_tableColumnViews[_2e],"addSubview:",_30[row]);
}else{
if(_30[row]._isHidden){
objj_msgSend(_30[row],"setHidden:",NO);
}
}
}
objj_msgSend(_2f,"_purge");
}
}
_visibleRows=_25;
_visibleColumns=_28;
}
}),new objj_method(sel_getUid("setIntercellSpacing:"),function(_34,_35,_36){
with(_34){
if(_intercellSpacing.width!=_36.width){
var i=1,_38=_36.width-_intercellSpacing.width;
total=_38;
for(;i<_tableColumns.length;++i,total+=_38){
var _39=objj_msgSend(_tableColumnViews[i],"frame").origin;
objj_msgSend(_tableColumnViews[i],"setFrameOrigin:",CGPointMake(_39.x+total,_39.y));
}
}
if(_intercellSpacing.height!=_36.height){
var i=0;
for(;i<_tableColumns.length;++i,total+=_38){
objj_msgSend(_tableColumnViews[i],"setFrameSize:",CGSizeMake(objj_msgSend(_tableColumnViews[i],"width"),_numberOfRows*(_rowHeight+_intercellSpacing.height)));
var j=1,y=_rowHeight+_intercellSpacing.height;
for(;j<_numberOfRows;++i,y+=_rowHeight+_intercellSpacing.height){
if(!_tableCells[i][j]){
continue;
}
objj_msgSend(_tableCells[i][j],"setFrameOrigin:",CPPointMake(0,y));
}
}
}
_intercellSpacing=CPSizeCreateCopy(_36);
}
}),new objj_method(sel_getUid("intercellSpacing"),function(_3c,_3d){
with(_3c){
return _intercellSpacing;
}
}),new objj_method(sel_getUid("setRowHeight:"),function(_3e,_3f,_40){
with(_3e){
if(_rowHeight==_40){
return;
}
_rowHeight=_40;
if(_hasVariableHeightRows){
return;
}
for(var row=0;row<_numberOfRows;++row){
for(var _42=0;_42<_tableColumns.length;++_42){
objj_msgSend(_tableCells[_42][row],"setFrameOrigin:",CPPointMake(0,row*(_rowHeight+_intercellSpacing.height)));
}
}
}
}),new objj_method(sel_getUid("rowHeight"),function(_43,_44){
with(_43){
return _rowHeight;
}
}),new objj_method(sel_getUid("addTableColumn:"),function(_45,_46,_47){
with(_45){
var i=0,x=_tableColumns.length?CPRectGetMaxX(objj_msgSend(_45,"rectOfColumn:",_tableColumns.length-1))+_intercellSpacing.width:0,_4a=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(x,0,objj_msgSend(_47,"width"),objj_msgSend(_45,"_columnHeight"))),_4b=[];
objj_msgSend(_tableColumns,"addObject:",_47);
objj_msgSend(_tableColumnViews,"addObject:",_4a);
objj_msgSend(_45,"addSubview:",_4a);
objj_msgSend(_tableCells,"addObject:",_4b);
for(;i<_numberOfRows;++i){
_tableCells[_tableColumns.length-1][i]=nil;
}
}
}),new objj_method(sel_getUid("removeTableColumn:"),function(_4c,_4d,_4e){
with(_4c){
var _4f=objj_msgSend(_4c,"frame"),_50=objj_msgSend(_4e,"width")+_intercellSpacing.width,_51=objj_msgSend(_tableColumns,"indexOfObjectIdenticalTo:",_4e);
objj_msgSend(_tableColumnViews[i],"removeFromSuperview");
objj_msgSend(_tableCells,"removeObjectAtIndex:",_51);
objj_msgSend(_tableColumns,"removeObjectAtIndex:",_51);
objj_msgSend(_tableColumnViews,"removeObjectAtIndex:",_51);
for(;_51<_tableColumns.length;++_51){
objj_msgSend(_tableColumnViews[_51],"setFrameOrigin:",CPPointMake(CPRectGetMinX(objj_msgSend(_tableColumnViews[_51],"frame"))-_50,0));
}
objj_msgSend(_4c,"setFrameSize:",CPSizeMake(CPRectGetWidth(_4f)-_50,CPRectGetHeight(_4f)));
}
}),new objj_method(sel_getUid("moveColumn:toColumn:"),function(_52,_53,_54,_55){
with(_52){
if(_54==_55){
return;
}
}
}),new objj_method(sel_getUid("tableColumns"),function(_56,_57){
with(_56){
return _tableColumns;
}
}),new objj_method(sel_getUid("tableColumnWithIdentifier:"),function(_58,_59,_5a){
with(_58){
for(var i=0;i<_tableColumns.length;i++){
if(objj_msgSend(_tableColumns[i],"isEqual:",_5a)){
return _tableColumns[i];
}
}
return nil;
}
}),new objj_method(sel_getUid("numberOfColumns"),function(_5c,_5d){
with(_5c){
return _tableColumns.length;
}
}),new objj_method(sel_getUid("numberOfRows"),function(_5e,_5f){
with(_5e){
return _numberOfRows;
}
}),new objj_method(sel_getUid("tile"),function(_60,_61){
with(_60){
var _62=10;
}
}),new objj_method(sel_getUid("setDataSource:"),function(_63,_64,_65){
with(_63){
if(!objj_msgSend(_65,"respondsToSelector:",sel_getUid("numberOfRowsInTableView:"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source doesn't support 'numberOfRowsInTableView:'");
}
if(!objj_msgSend(_65,"respondsToSelector:",sel_getUid("tableView:objectValueForTableColumn:row:"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source doesn't support 'tableView:objectValueForTableColumn:row:'");
}
_dataSource=_65;
objj_msgSend(_63,"reloadData");
}
}),new objj_method(sel_getUid("dataSource"),function(_66,_67){
with(_66){
return _dataSource;
}
}),new objj_method(sel_getUid("delegate"),function(_68,_69){
with(_68){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_6a,_6b,_6c){
with(_6a){
if(_delegate===_6c){
return;
}
var _6d=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewColumnDidMove:"))){
objj_msgSend(_6d,"removeObserver:name:object:",_delegate,CPTableViewColumnDidMoveNotification,_6a);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewColumnDidResize:"))){
objj_msgSend(_6d,"removeObserver:name:object:",_delegate,CPTableViewColumnDidResizeNotification,_6a);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewSelectionDidChange:"))){
objj_msgSend(_6d,"removeObserver:name:object:",_delegate,CPTableViewSelectionDidChangeNotification,_6a);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewSelectionIsChanging:"))){
objj_msgSend(_6d,"removeObserver:name:object:",_delegate,CPTableViewSelectionIsChangingNotification,_6a);
}
_delegate=_6c;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewColumnDidMove:"))){
objj_msgSend(_6d,"addObserver:selector:name:object:",_delegate,sel_getUid("tableViewColumnDidMove:"),CPTableViewColumnDidMoveNotification,_6a);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewColumnDidResize:"))){
objj_msgSend(_6d,"addObserver:selector:name:object:",_delegate,sel_getUid("tableViewColumnDidResize:"),CPTableViewColumnDidResizeNotification,_6a);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewSelectionDidChange:"))){
objj_msgSend(_6d,"addObserver:selector:name:object:",_delegate,sel_getUid("tableViewSelectionDidChange:"),CPTableViewSelectionDidChangeNotification,_6a);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewSelectionIsChanging:"))){
objj_msgSend(_6d,"addObserver:selector:name:object:",_delegate,sel_getUid("tableViewSelectionIsChanging:"),CPTableViewSelectionIsChangingNotification,_6a);
}
_delegateSelectorsCache=0;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:willDisplayCell:forTableColumn:row:"))){
_delegateSelectorsCache|=_1;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:shouldSelectRow:"))){
_delegateSelectorsCache|=_2;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:shouldSelectTableColumn:"))){
_delegateSelectorsCache|=_3;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("selectionShouldChangeInTableView:"))){
_delegateSelectorsCache|=_4;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:shouldEditTableColumn:row:"))){
_delegateSelectorsCache|=_5;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:selectionIndexesForProposedSelection:"))){
_delegateSelectorsCache|=_6;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:heightOfRow:"))){
_delegateSelectorsCache|=_7;
_hasVariableHeightRows=YES;
}else{
_hasVariableHeightRows=NO;
}
}
}),new objj_method(sel_getUid("noteNumberOfRowsChanged"),function(_6e,_6f){
with(_6e){
var _70=objj_msgSend(_dataSource,"numberOfRowsInTableView:",_6e);
if(_numberOfRows!=_70){
_numberOfRows=_70;
objj_msgSend(_6e,"_recalculateColumnHeight");
}
}
}),new objj_method(sel_getUid("noteHeightOfRowsWithIndexesChanged:"),function(_71,_72,_73){
with(_71){
objj_msgSend(_71,"_recalculateColumnHeight");
}
}),new objj_method(sel_getUid("rectOfRow:"),function(_74,_75,_76){
with(_74){
return CPRectMake(0,(_hasVariableHeightRows?_rowMinYs[_76]:(_76*(_rowHeight+_intercellSpacing.height))),CPRectGetWidth(objj_msgSend(_74,"bounds")),(_hasVariableHeightRows?_rowHeights[_76]:_rowHeight));
}
}),new objj_method(sel_getUid("rectOfColumn:"),function(_77,_78,_79){
with(_77){
return objj_msgSend(_tableColumnViews[_79],"frame");
}
}),new objj_method(sel_getUid("sizeToFit"),function(_7a,_7b){
with(_7a){
}
}),new objj_method(sel_getUid("_recalculateColumnHeight"),function(_7c,_7d){
with(_7c){
var _7e=_columnHeight;
if(_hasVariableHeightRows){
_rowMinYs[0]=0;
for(var row=0;row<_numberOfRows;row++){
_rowHeights[row]=objj_msgSend(_delegate,"tableView:heightOfRow:",_7c,row);
_rowMinYs[row+1]=_rowMinYs[row]+_rowHeights[row]+_intercellSpacing.height;
}
_columnHeight=_rowMinYs[_numberOfRows];
}else{
_columnHeight=_numberOfRows*(_rowHeight+_intercellSpacing.height);
}
var _80=_tableColumnViews.length;
while(_80--){
objj_msgSend(_tableColumnViews[_80],"setFrameSize:",CGSizeMake(objj_msgSend(_tableColumns[_80],"width"),_columnHeight));
}
objj_msgSend(_7c,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_7c,"frame")),_columnHeight));
}
}),new objj_method(sel_getUid("visibleRectInParent"),function(_81,_82){
with(_81){
var _83=objj_msgSend(_81,"superview");
if(!_83){
return objj_msgSend(_81,"bounds");
}
return objj_msgSend(_81,"convertRect:fromView:",CGRectIntersection(objj_msgSend(_83,"bounds"),objj_msgSend(_81,"frame")),_83);
}
}),new objj_method(sel_getUid("reloadData"),function(_84,_85){
with(_84){
var _86=_numberOfRows;
_numberOfRows=objj_msgSend(_dataSource,"numberOfRowsInTableView:",_84);
if(_86!=_numberOfRows){
objj_msgSend(_84,"_recalculateColumnHeight");
objj_msgSend(_84,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_84,"frame")),objj_msgSend(_84,"_columnHeight")));
}
_objectValueCache=[];
objj_msgSend(_84,"clearCells");
objj_msgSend(_84,"setNeedsLayout");
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_87,_88){
with(_87){
objj_msgSend(_87,"loadTableCellsInRect:",objj_msgSend(_87,"visibleRectInParent"));
}
}),new objj_method(sel_getUid("displaySoon"),function(_89,_8a){
with(_89){
objj_msgSend(_scrollTimer,"invalidate");
_scrollTimer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0.05,_89,sel_getUid("displayNow"),nil,NO);
}
}),new objj_method(sel_getUid("displayNow"),function(_8b,_8c){
with(_8b){
objj_msgSend(_8b,"setNeedsLayout");
}
}),new objj_method(sel_getUid("viewDidMoveToSuperview"),function(_8d,_8e){
with(_8d){
objj_msgSend(objj_msgSend(objj_msgSend(_8d,"enclosingScrollView"),"contentView"),"setPostsBoundsChangedNotifications:",YES);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_8d,sel_getUid("viewBoundsChanged:"),CPViewBoundsDidChangeNotification,objj_msgSend(objj_msgSend(_8d,"enclosingScrollView"),"contentView"));
}
}),new objj_method(sel_getUid("viewBoundsChanged:"),function(_8f,_90,_91){
with(_8f){
objj_msgSend(_8f,"displayNow");
}
}),new objj_method(sel_getUid("setAllowsMultipleSelection:"),function(_92,_93,_94){
with(_92){
if(_allowsMultipleSelection===_94){
return;
}
_allowsMultipleSelection=_94;
}
}),new objj_method(sel_getUid("allowsMultipleSelection"),function(_95,_96){
with(_95){
return _allowsMultipleSelection;
}
}),new objj_method(sel_getUid("setAllowsEmptySelection:"),function(_97,_98,_99){
with(_97){
if(_allowsEmptySelection===_99){
return;
}
_allowsEmptySelection=_99;
}
}),new objj_method(sel_getUid("allowsEmptySelection"),function(_9a,_9b){
with(_9a){
return _allowsEmptySelection;
}
}),new objj_method(sel_getUid("rowAtPoint:"),function(_9c,_9d,_9e){
with(_9c){
var _9f=objj_msgSend(_9c,"_rowAtY:",_9e.y);
if(_9f>=0&&_9f<_numberOfRows){
return _9f;
}else{
return CPNotFound;
}
}
}),new objj_method(sel_getUid("columnAtPoint:"),function(_a0,_a1,_a2){
with(_a0){
var _a3=objj_msgSend(_a0,"_columnAtX:",_a2.x);
if(_a3>=0&&_a3<_tableColumns.length){
return _a3;
}else{
return CPNotFound;
}
}
}),new objj_method(sel_getUid("_rowAtY:"),function(_a4,_a5,y){
with(_a4){
if(_hasVariableHeightRows){
var a=0,b=_numberOfRows;
if(y<_rowMinYs[0]){
return -1;
}
if(y>=_rowMinYs[_rowMinYs.length-1]){
return _numberOfRows;
}
while(true){
var _a9=a+Math.floor((b-a)/2);
if(y<_rowMinYs[_a9]){
b=_a9;
}else{
if(_a9<_numberOfRows-1&&y>=_rowMinYs[_a9+1]){
a=_a9;
}else{
return _a9;
}
}
}
}else{
return FLOOR(y/(_rowHeight+_intercellSpacing.height));
}
}
}),new objj_method(sel_getUid("_columnAtX:"),function(_aa,_ab,x){
with(_aa){
var a=0,b=_tableColumns.length;
var _af=objj_msgSend(_tableColumnViews[_tableColumns.length-1],"frame");
if(x<objj_msgSend(_tableColumnViews[0],"frame").origin.x){
return -1;
}
if(x>=_af.origin.x+_af.size.width){
return _tableColumns.length;
}
while(true){
var _b0=a+Math.floor((b-a)/2);
if(x<objj_msgSend(_tableColumnViews[_b0],"frame").origin.x){
b=_b0;
}else{
if(_b0<_tableColumns.length-1&&x>=objj_msgSend(_tableColumnViews[_b0+1],"frame").origin.x){
a=_b0;
}else{
return _b0;
}
}
}
}
}),new objj_method(sel_getUid("selectRowIndexes:byExtendingSelection:"),function(_b1,_b2,_b3,_b4){
with(_b1){
if(_b4){
_selectedRowIndexes=objj_msgSend(objj_msgSend(_selectedRowIndexes,"copy"),"addIndexes:",_b3);
}else{
if(objj_msgSend(_b3,"count")>0||_allowsEmptySelection){
_selectedRowIndexes=objj_msgSend(_b3,"copy");
}
}
objj_msgSend(_b1,"_drawSelection");
}
}),new objj_method(sel_getUid("selectedRowIndexes"),function(_b5,_b6){
with(_b5){
return _selectedRowIndexes;
}
}),new objj_method(sel_getUid("numberOfSelectedRows"),function(_b7,_b8){
with(_b7){
return objj_msgSend(_selectedRowIndexes,"count");
}
}),new objj_method(sel_getUid("deselectAll:"),function(_b9,_ba,_bb){
with(_b9){
if(!_allowsEmptySelection||objj_msgSend(_selectedRowIndexes,"count")===0||((_delegateSelectorsCache&_4)&&!objj_msgSend(_delegate,"selectionShouldChangeInTableView:",_b9))){
return;
}
objj_msgSend(_b9,"selectRowIndexes:byExtendingSelection:",objj_msgSend(CPIndexSet,"indexSet"),NO);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPTableViewSelectionDidChangeNotification,_b9,nil);
}
}),new objj_method(sel_getUid("editColumn:row:withEvent:select:"),function(_bc,_bd,_be,_bf,_c0,_c1){
with(_bc){
}
}),new objj_method(sel_getUid("_updateSelectionWithMouseAtRow:"),function(_c2,_c3,_c4){
with(_c2){
var _c5;
if(_allowsMultipleSelection){
_c5=objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(MIN(_c4,_selectionStartRow),ABS(_c4-_selectionStartRow)+1));
}else{
if(_c4>=0&&_c4<_numberOfRows){
_c5=objj_msgSend(CPIndexSet,"indexSetWithIndex:",_c4);
}else{
_c5=objj_msgSend(CPIndexSet,"indexSet");
}
}
if(_allowsMultipleSelection&&_selectionModifier&(CPCommandKeyMask|CPControlKeyMask|CPAlternateKeyMask)){
var _c6=objj_msgSend(_c5,"copy"),_c7=objj_msgSend(_c5,"copy");
objj_msgSend(_c7,"removeIndexes:",_previousSelectedRowIndexes);
objj_msgSend(_c6,"removeIndexes:",_c7);
objj_msgSend(_c5,"addIndexes:",_previousSelectedRowIndexes);
objj_msgSend(_c5,"removeIndexes:",_c6);
}
if(!objj_msgSend(_c5,"isEqualToIndexSet:",_selectedRowIndexes)){
if((_delegateSelectorsCache&_4)&&!objj_msgSend(_delegate,"selectionShouldChangeInTableView:",_c2)){
return;
}
if(_delegateSelectorsCache&_6){
_c5=objj_msgSend(_delegate,"tableView:selectionIndexesForProposedSelection:",_c2,_c5);
}else{
if(_delegateSelectorsCache&_2){
var _c8=[];
objj_msgSend(_c5,"getIndexes:maxCount:inIndexRange:",_c8,Number.MAX_VALUE,nil);
for(var i=0;i<_c8.length;i++){
if(!objj_msgSend(_delegate,"tableView:shouldSelectRow:",_c2,_c8[i])){
objj_msgSend(_c5,"removeIndex:",_c8[i]);
}
}
}
}
}
if(!_allowsEmptySelection&&objj_msgSend(_c5,"count")===0){
return;
}
if(!objj_msgSend(_c5,"isEqualToIndexSet:",_selectedRowIndexes)){
objj_msgSend(_c2,"selectRowIndexes:byExtendingSelection:",_c5,NO);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPTableViewSelectionIsChangingNotification,_c2,nil);
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_ca,_cb,_cc){
with(_ca){
objj_msgSend(_ca,"trackSelection:",_cc);
}
}),new objj_method(sel_getUid("setDoubleAction:"),function(_cd,_ce,_cf){
with(_cd){
_doubleAction=_cf;
}
}),new objj_method(sel_getUid("doubleAction"),function(_d0,_d1){
with(_d0){
return _doubleAction;
}
}),new objj_method(sel_getUid("clickedColumn"),function(_d2,_d3){
with(_d2){
return _clickedColumn;
}
}),new objj_method(sel_getUid("clickedRow"),function(_d4,_d5){
with(_d4){
return _clickedRow;
}
}),new objj_method(sel_getUid("trackSelection:"),function(_d6,_d7,_d8){
with(_d6){
var _d9=objj_msgSend(_d8,"type"),_da=objj_msgSend(_d6,"convertPoint:fromView:",objj_msgSend(_d8,"locationInWindow"),nil),_db=MAX(0,MIN(_numberOfRows-1,objj_msgSend(_d6,"_rowAtY:",_da.y)));
if(_d9==CPLeftMouseUp){
_clickedRow=objj_msgSend(_d6,"rowAtPoint:",_da);
_clickedColumn=objj_msgSend(_d6,"columnAtPoint:",_da);
if(objj_msgSend(_d8,"clickCount")===2){
CPLog.warn("edit?!");
objj_msgSend(_d6,"sendAction:to:",_doubleAction,_target);
}else{
if(!objj_msgSend(_previousSelectedRowIndexes,"isEqualToIndexSet:",_selectedRowIndexes)){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPTableViewSelectionDidChangeNotification,_d6,nil);
}
objj_msgSend(_d6,"sendAction:to:",_action,_target);
}
return;
}
if(_d9==CPLeftMouseDown){
_previousSelectedRowIndexes=_selectedRowIndexes;
_selectionModifier=objj_msgSend(_d8,"modifierFlags");
if(_selectionModifier&CPShiftKeyMask){
_selectionStartRow=(ABS(objj_msgSend(_previousSelectedRowIndexes,"firstIndex")-_db)<ABS(objj_msgSend(_previousSelectedRowIndexes,"lastIndex")-_db))?objj_msgSend(_previousSelectedRowIndexes,"firstIndex"):objj_msgSend(_previousSelectedRowIndexes,"lastIndex");
}else{
_selectionStartRow=_db;
}
objj_msgSend(_d6,"_updateSelectionWithMouseAtRow:",_db);
}else{
if(_d9==CPLeftMouseDragged){
objj_msgSend(_d6,"_updateSelectionWithMouseAtRow:",_db);
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_d6,sel_getUid("trackSelection:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("_drawSelection"),function(_dc,_dd){
with(_dc){
if(!_currentlySelected){
_currentlySelected=objj_msgSend(CPIndexSet,"indexSet");
_selectionViews=[];
_selectionViewsPool=[];
}
var _de=objj_msgSend(_currentlySelected,"copy"),_df=[];
objj_msgSend(_de,"removeIndexes:",_selectedRowIndexes);
objj_msgSend(_de,"getIndexes:maxCount:inIndexRange:",_df,Number.MAX_VALUE,nil);
var _e0=objj_msgSend(_selectedRowIndexes,"copy"),_e1=[];
objj_msgSend(_e0,"removeIndexes:",_currentlySelected);
objj_msgSend(_e0,"getIndexes:maxCount:inIndexRange:",_e1,Number.MAX_VALUE,nil);
for(var i=0;i<_df.length;i++){
var row=_df[i];
for(var _e4=0;_e4<_tableColumns.length;_e4++){
if(objj_msgSend(_tableCells[_e4][row],"respondsToSelector:",sel_getUid("highlight:"))){
objj_msgSend(_tableCells[_e4][row],"highlight:",NO);
}
}
}
for(var i=0;i<_e1.length;i++){
var row=_e1[i];
for(var _e4=0;_e4<_tableColumns.length;_e4++){
if(objj_msgSend(_tableCells[_e4][row],"respondsToSelector:",sel_getUid("highlight:"))){
objj_msgSend(_tableCells[_e4][row],"highlight:",YES);
}
}
}
for(var i=0;i<_e1.length;i++){
var _e5=_e1[i],_e6;
if(_df.length>0){
_e6=_selectionViews[_df.pop()];
}else{
if(_selectionViewsPool.length>0){
_e6=_selectionViewsPool.pop();
objj_msgSend(_dc,"addSubview:positioned:relativeTo:",_e6,CPWindowBelow,nil);
}else{
_e6=objj_msgSend(objj_msgSend(CPView,"alloc"),"init");
objj_msgSend(_e6,"setBackgroundColor:",objj_msgSend(CPColor,"alternateSelectedControlColor"));
objj_msgSend(_dc,"addSubview:positioned:relativeTo:",_e6,CPWindowBelow,nil);
}
}
_selectionViews[_e5]=_e6;
var _e7=objj_msgSend(_dc,"rectOfRow:",_e5);
_e7.size.height+=_intercellSpacing.height-1;
objj_msgSend(_e6,"setFrame:",_e7);
}
for(var i=0;i<_df.length;i++){
var row=_df[i],_e6=_selectionViews[row];
objj_msgSend(_e6,"removeFromSuperview");
_selectionViewsPool.push(_e6);
}
_currentlySelected=objj_msgSend(_selectedRowIndexes,"copy");
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("initialize"),function(_e8,_e9){
with(_e8){
}
})]);
var _ea="CPTableViewDataSourceKey",_eb="CPTableViewDelegateKey",_ec="CPTableViewHeaderViewKey",_ed="CPTableViewTableColumnsKey",_ee="CPTableViewRowHeightKey",_ef="CPTableViewIntercellSpacingKey",_f0="CPTableViewMultipleSelectionKey",_f1="CPTableViewEmptySelectionKey";
var _8=objj_getClass("CPTableView");
if(!_8){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTableView\""));
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(_f2,_f3,_f4){
with(_f2){
if(_f2=objj_msgSendSuper({receiver:_f2,super_class:objj_getClass("CPControl")},"initWithCoder:",_f4)){
objj_msgSend(_f2,"_init");
_dataSource=objj_msgSend(_f4,"decodeObjectForKey:",_ea);
_delegate=objj_msgSend(_f4,"decodeObjectForKey:",_eb);
_rowHeight=objj_msgSend(_f4,"decodeFloatForKey:",_ee);
_intercellSpacing=objj_msgSend(_f4,"decodeSizeForKey:",_ef);
_allowsMultipleSelection=objj_msgSend(_f4,"decodeBoolForKey:",_f0);
_allowsEmptySelection=objj_msgSend(_f4,"decodeBoolForKey:",_f1);
var _f5=objj_msgSend(_f4,"decodeObjectForKey:",_ed);
for(var i=0;i<_f5.length;i++){
objj_msgSend(_f2,"addTableColumn:",_f5[i]);
}
}
return _f2;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_f7,_f8,_f9){
with(_f7){
objj_msgSendSuper({receiver:_f7,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_f9);
objj_msgSend(_f9,"encodeObject:forKey:",_dataSource,_ea);
objj_msgSend(_f9,"encodeObject:forKey:",_delegate,_eb);
objj_msgSend(_f9,"encodeObject:forKey:",_tableColumns,_ed);
objj_msgSend(_f9,"encodeFloat:forKey:",_rowHeight,_ee);
objj_msgSend(_f9,"encodeSize:forKey:",_intercellSpacing,_ef);
objj_msgSend(_f9,"encodeBool:forKey:",_allowsMultipleSelection,_f0);
objj_msgSend(_f9,"encodeBool:forKey:",_allowsEmptySelection,_f1);
}
})]);
var _8=objj_getClass("CPColor");
if(!_8){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPColor\""));
}
var _9=_8.isa;
class_addMethods(_9,[new objj_method(sel_getUid("alternateSelectedControlColor"),function(_fa,_fb){
with(_fa){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0.22,0.46,0.84,1]);
}
}),new objj_method(sel_getUid("secondarySelectedControlColor"),function(_fc,_fd){
with(_fc){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0.83,0.83,0.83,1]);
}
})]);
p;11;CPTabView.ji;13;CPImageView.ji;15;CPTabViewItem.ji;8;CPView.jc;18589;
CPTopTabsBezelBorder=0;
CPNoTabsBezelBorder=4;
CPNoTabsLineBorder=5;
CPNoTabsNoBorder=6;
var _1=nil,_2=nil,_3=nil,_4=nil,_5=nil;
var _6=7,_7=7;
var _8=1,_9=2,_a=4,_b=8;
var _c=objj_allocateClassPair(CPView,"CPTabView"),_d=_c.isa;
class_addIvars(_c,[new objj_ivar("_labelsView"),new objj_ivar("_backgroundView"),new objj_ivar("_separatorView"),new objj_ivar("_auxiliaryView"),new objj_ivar("_contentView"),new objj_ivar("_tabViewItems"),new objj_ivar("_selectedTabViewItem"),new objj_ivar("_tabViewType"),new objj_ivar("_delegate"),new objj_ivar("_delegateSelectors")]);
objj_registerClassPair(_c);
objj_addClassForBundle(_c,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_c,[new objj_method(sel_getUid("initWithFrame:"),function(_e,_f,_10){
with(_e){
_e=objj_msgSendSuper({receiver:_e,super_class:objj_getClass("CPView")},"initWithFrame:",_10);
if(_e){
_tabViewType=CPTopTabsBezelBorder;
_tabViewItems=[];
}
return _e;
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_11,_12){
with(_11){
if(_tabViewType!=CPTopTabsBezelBorder||_labelsView){
return;
}
objj_msgSend(_11,"_createBezelBorder");
objj_msgSend(_11,"layoutSubviews");
}
}),new objj_method(sel_getUid("_createBezelBorder"),function(_13,_14){
with(_13){
var _15=objj_msgSend(_13,"bounds");
_labelsView=objj_msgSend(objj_msgSend(_CPTabLabelsView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(_15),0));
objj_msgSend(_labelsView,"setTabView:",_13);
objj_msgSend(_labelsView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_13,"addSubview:",_labelsView);
_backgroundView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_backgroundView,"setBackgroundColor:",_5);
objj_msgSend(_backgroundView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_13,"addSubview:",_backgroundView);
_separatorView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_separatorView,"setBackgroundColor:",objj_msgSend(objj_msgSend(_13,"class"),"bezelBorderColor"));
objj_msgSend(_separatorView,"setAutoresizingMask:",CPViewWidthSizable|CPViewMaxYMargin);
objj_msgSend(_13,"addSubview:",_separatorView);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_16,_17){
with(_16){
if(_tabViewType==CPTopTabsBezelBorder){
var _18=objj_msgSend(_16,"bounds"),_19=objj_msgSend(_CPTabLabelsView,"height");
_18.origin.y+=_19;
_18.size.height-=_19;
objj_msgSend(_backgroundView,"setFrame:",_18);
var _1a=5;
if(_auxiliaryView){
_1a=CGRectGetHeight(objj_msgSend(_auxiliaryView,"frame"));
objj_msgSend(_auxiliaryView,"setFrame:",CGRectMake(_6,_19,CGRectGetWidth(_18)-_6-_7,_1a));
}
objj_msgSend(_separatorView,"setFrame:",CGRectMake(_6,_19+_1a,CGRectGetWidth(_18)-_6-_7,1));
}
objj_msgSend(_contentView,"setFrame:",objj_msgSend(_16,"contentRect"));
}
}),new objj_method(sel_getUid("addTabViewItem:"),function(_1b,_1c,_1d){
with(_1b){
objj_msgSend(_1b,"insertTabViewItem:atIndex:",_1d,objj_msgSend(_tabViewItems,"count"));
}
}),new objj_method(sel_getUid("insertTabViewItem:atIndex:"),function(_1e,_1f,_20,_21){
with(_1e){
if(!_labelsView&&_tabViewType==CPTopTabsBezelBorder){
objj_msgSend(_1e,"_createBezelBorder");
}
objj_msgSend(_tabViewItems,"insertObject:atIndex:",_20,_21);
objj_msgSend(_labelsView,"tabView:didAddTabViewItem:",_1e,_20);
if(objj_msgSend(_tabViewItems,"count")==1){
objj_msgSend(_1e,"selectFirstTabViewItem:",_1e);
}
if(_delegateSelectors&_b){
objj_msgSend(_delegate,"tabViewDidChangeNumberOfTabViewItems:",_1e);
}
}
}),new objj_method(sel_getUid("removeTabViewItem:"),function(_22,_23,_24){
with(_22){
objj_msgSend(_tabViewItems,"removeObjectIdenticalTo:",_24);
objj_msgSend(_labelsView,"tabView:didRemoveTabViewItem:",_22,_24);
if(_delegateSelectors&_b){
objj_msgSend(_delegate,"tabViewDidChangeNumberOfTabViewItems:",_22);
}
}
}),new objj_method(sel_getUid("indexOfTabViewItem:"),function(_25,_26,_27){
with(_25){
return objj_msgSend(_tabViewItems,"indexOfObjectIdenticalTo:",_27);
}
}),new objj_method(sel_getUid("indexOfTabViewItemWithIdentifier:"),function(_28,_29,_2a){
with(_28){
var _2b=0,_2c=objj_msgSend(_tabViewItems,"count");
for(;_2b<_2c;++_2b){
if(objj_msgSend(objj_msgSend(_tabViewItems[_2b],"identifier"),"isEqual:",_2a)){
return _2b;
}
}
return _2b;
}
}),new objj_method(sel_getUid("numberOfTabViewItems"),function(_2d,_2e){
with(_2d){
return objj_msgSend(_tabViewItems,"count");
}
}),new objj_method(sel_getUid("tabViewItemAtIndex:"),function(_2f,_30,_31){
with(_2f){
return _tabViewItems[_31];
}
}),new objj_method(sel_getUid("tabViewItems"),function(_32,_33){
with(_32){
return _tabViewItems;
}
}),new objj_method(sel_getUid("selectFirstTabViewItem:"),function(_34,_35,_36){
with(_34){
var _37=objj_msgSend(_tabViewItems,"count");
if(_37){
objj_msgSend(_34,"selectTabViewItemAtIndex:",0);
}
}
}),new objj_method(sel_getUid("selectLastTabViewItem:"),function(_38,_39,_3a){
with(_38){
var _3b=objj_msgSend(_tabViewItems,"count");
if(_3b){
objj_msgSend(_38,"selectTabViewItemAtIndex:",_3b-1);
}
}
}),new objj_method(sel_getUid("selectNextTabViewItem:"),function(_3c,_3d,_3e){
with(_3c){
if(!_selectedTabViewItem){
return;
}
var _3f=objj_msgSend(_3c,"indexOfTabViewItem:",_selectedTabViewItem),_40=objj_msgSend(_tabViewItems,"count");
objj_msgSend(_3c,"selectTabViewItemAtIndex:",_3f+1%_40);
}
}),new objj_method(sel_getUid("selectPreviousTabViewItem:"),function(_41,_42,_43){
with(_41){
if(!_selectedTabViewItem){
return;
}
var _44=objj_msgSend(_41,"indexOfTabViewItem:",_selectedTabViewItem),_45=objj_msgSend(_tabViewItems,"count");
objj_msgSend(_41,"selectTabViewItemAtIndex:",_44==0?_45:_44-1);
}
}),new objj_method(sel_getUid("selectTabViewItem:"),function(_46,_47,_48){
with(_46){
if((_delegateSelectors&_9)&&!objj_msgSend(_delegate,"tabView:shouldSelectTabViewItem:",_46,_48)){
return;
}
if(_delegateSelectors&_a){
objj_msgSend(_delegate,"tabView:willSelectTabViewItem:",_46,_48);
}
if(_selectedTabViewItem){
_selectedTabViewItem._tabState=CPBackgroundTab;
objj_msgSend(_labelsView,"tabView:didChangeStateOfTabViewItem:",_46,_selectedTabViewItem);
objj_msgSend(_contentView,"removeFromSuperview");
objj_msgSend(_auxiliaryView,"removeFromSuperview");
}
_selectedTabViewItem=_48;
_selectedTabViewItem._tabState=CPSelectedTab;
_contentView=objj_msgSend(_selectedTabViewItem,"view");
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
_auxiliaryView=objj_msgSend(_selectedTabViewItem,"auxiliaryView");
objj_msgSend(_auxiliaryView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_46,"addSubview:",_contentView);
if(_auxiliaryView){
objj_msgSend(_46,"addSubview:",_auxiliaryView);
}
objj_msgSend(_labelsView,"tabView:didChangeStateOfTabViewItem:",_46,_selectedTabViewItem);
objj_msgSend(_46,"layoutSubviews");
if(_delegateSelectors&_8){
objj_msgSend(_delegate,"tabView:didSelectTabViewItem:",_46,_48);
}
}
}),new objj_method(sel_getUid("selectTabViewItemAtIndex:"),function(_49,_4a,_4b){
with(_49){
objj_msgSend(_49,"selectTabViewItem:",_tabViewItems[_4b]);
}
}),new objj_method(sel_getUid("selectedTabViewItem"),function(_4c,_4d){
with(_4c){
return _selectedTabViewItem;
}
}),new objj_method(sel_getUid("setTabViewType:"),function(_4e,_4f,_50){
with(_4e){
if(_tabViewType==_50){
return;
}
_tabViewType=_50;
if(_tabViewType==CPNoTabsBezelBorder||_tabViewType==CPNoTabsLineBorder||_tabViewType==CPNoTabsNoBorder){
objj_msgSend(_labelsView,"removeFromSuperview");
}else{
if(!objj_msgSend(_labelsView,"superview")){
objj_msgSend(_4e,"addSubview:",_labelsView);
}
}
if(_tabViewType==CPNoTabsLineBorder||_tabViewType==CPNoTabsNoBorder){
objj_msgSend(_backgroundView,"removeFromSuperview");
}else{
if(!objj_msgSend(_backgroundView,"superview")){
objj_msgSend(_4e,"addSubview:",_backgroundView);
}
}
objj_msgSend(_4e,"layoutSubviews");
}
}),new objj_method(sel_getUid("tabViewType"),function(_51,_52){
with(_51){
return _tabViewType;
}
}),new objj_method(sel_getUid("contentRect"),function(_53,_54){
with(_53){
var _55=CGRectMakeCopy(objj_msgSend(_53,"bounds"));
if(_tabViewType==CPTopTabsBezelBorder){
var _56=objj_msgSend(_CPTabLabelsView,"height"),_57=_auxiliaryView?CGRectGetHeight(objj_msgSend(_auxiliaryView,"frame")):5,_58=1;
_55.origin.y+=_56+_57+_58;
_55.size.height-=_56+_57+_58*2;
_55.origin.x+=_6;
_55.size.width-=_6+_7;
}
return _55;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_59,_5a,_5b){
with(_59){
if(_delegate==_5b){
return;
}
_delegate=_5b;
_delegateSelectors=0;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabView:shouldSelectTabViewItem:"))){
_delegateSelectors|=_9;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabView:willSelectTabViewItem:"))){
_delegateSelectors|=_a;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabView:didSelectTabViewItem:"))){
_delegateSelectors|=_8;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tabViewDidChangeNumberOfTabViewItems:"))){
_delegateSelectors|=_b;
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_5c,_5d,_5e){
with(_5c){
var _5f=objj_msgSend(_labelsView,"convertPoint:fromView:",objj_msgSend(_5e,"locationInWindow"),nil),_60=objj_msgSend(_labelsView,"representedTabViewItemAtPoint:",_5f);
if(_60){
objj_msgSend(_5c,"selectTabViewItem:",_60);
}
}
})]);
class_addMethods(_d,[new objj_method(sel_getUid("initialize"),function(_61,_62){
with(_61){
if(_61!=CPTabView){
return;
}
var _63=objj_msgSend(CPBundle,"bundleForClass:",_61),_64=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:","",CGSizeMake(7,0)),_65=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_63,"pathForResource:","CPTabView/CPTabViewBezelBackgroundCenter.png"),CGSizeMake(1,1)),_66=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_63,"pathForResource:","CPTabView/CPTabViewBezelBorderLeft.png"),CGSizeMake(7,1)),_67=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_63,"pathForResource:","CPTabView/CPTabViewBezelBorder.png"),CGSizeMake(1,1)),_68=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_63,"pathForResource:","CPTabView/CPTabViewBezelBorderRight.png"),CGSizeMake(7,1));
_5=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[_64,_64,_64,_66,_65,_68,_66,_67,_68]));
_4=objj_msgSend(CPColor,"colorWithPatternImage:",_67);
}
}),new objj_method(sel_getUid("bezelBorderColor"),function(_69,_6a){
with(_69){
return _4;
}
})]);
var _6b="CPTabViewItemsKey",_6c="CPTabViewSelectedItemKey",_6d="CPTabViewTypeKey",_6e="CPTabViewDelegateKey";
var _c=objj_getClass("CPTabView");
if(!_c){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTabView\""));
}
var _d=_c.isa;
class_addMethods(_c,[new objj_method(sel_getUid("initWithCoder:"),function(_6f,_70,_71){
with(_6f){
if(_6f=objj_msgSendSuper({receiver:_6f,super_class:objj_getClass("CPView")},"initWithCoder:",_71)){
_tabViewType=objj_msgSend(_71,"decodeIntForKey:",_6d);
_tabViewItems=[];
objj_msgSend(_6f,"_createBezelBorder");
var _72=objj_msgSend(_71,"decodeObjectForKey:",_6b);
for(var i=0;_72&&i<_72.length;i++){
objj_msgSend(_6f,"insertTabViewItem:atIndex:",_72[i],i);
}
var _74=objj_msgSend(_71,"decodeObjectForKey:",_6c);
if(_74){
objj_msgSend(_6f,"selectTabViewItem:",_74);
}
objj_msgSend(_6f,"setDelegate:",objj_msgSend(_71,"decodeObjectForKey:",_6e));
}
return _6f;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_75,_76,_77){
with(_75){
var _78=_subviews;
_subviews=[];
objj_msgSendSuper({receiver:_75,super_class:objj_getClass("CPView")},"encodeWithCoder:",_77);
_subviews=_78;
objj_msgSend(_77,"encodeObject:forKey:",_tabViewItems,_6b);
objj_msgSend(_77,"encodeObject:forKey:",_selectedTabViewItem,_6c);
objj_msgSend(_77,"encodeInt:forKey:",_tabViewType,_6d);
objj_msgSend(_77,"encodeConditionalObject:forKey:",_delegate,_6e);
}
})]);
var _79=nil,_7a=10,_7b=15;
var _c=objj_allocateClassPair(CPView,"_CPTabLabelsView"),_d=_c.isa;
class_addIvars(_c,[new objj_ivar("_tabView"),new objj_ivar("_tabLabels")]);
objj_registerClassPair(_c);
objj_addClassForBundle(_c,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_c,[new objj_method(sel_getUid("initWithFrame:"),function(_7c,_7d,_7e){
with(_7c){
_7c=objj_msgSendSuper({receiver:_7c,super_class:objj_getClass("CPView")},"initWithFrame:",_7e);
if(_7c){
_tabLabels=[];
objj_msgSend(_7c,"setBackgroundColor:",_79);
objj_msgSend(_7c,"setFrameSize:",CGSizeMake(CGRectGetWidth(_7e),26));
}
return _7c;
}
}),new objj_method(sel_getUid("setTabView:"),function(_7f,_80,_81){
with(_7f){
_tabView=_81;
}
}),new objj_method(sel_getUid("tabView"),function(_82,_83){
with(_82){
return _tabView;
}
}),new objj_method(sel_getUid("tabView:didAddTabViewItem:"),function(_84,_85,_86,_87){
with(_84){
var _88=objj_msgSend(objj_msgSend(_CPTabLabel,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_88,"setTabViewItem:",_87);
_tabLabels.push(_88);
objj_msgSend(_84,"addSubview:",_88);
objj_msgSend(_84,"layoutSubviews");
}
}),new objj_method(sel_getUid("tabView:didRemoveTabViewItem:"),function(_89,_8a,_8b,_8c){
with(_89){
var _8d=objj_msgSend(_8b,"indexOfTabViewItem:",_8c),_8e=_tabLabels[_8d];
objj_msgSend(_tabLabels,"removeObjectAtIndex:",_8d);
objj_msgSend(_8e,"removeFromSuperview");
objj_msgSend(_89,"layoutSubviews");
}
}),new objj_method(sel_getUid("tabView:didChangeStateOfTabViewItem:"),function(_8f,_90,_91,_92){
with(_8f){
objj_msgSend(_tabLabels[objj_msgSend(_91,"indexOfTabViewItem:",_92)],"setTabState:",objj_msgSend(_92,"tabState"));
}
}),new objj_method(sel_getUid("representedTabViewItemAtPoint:"),function(_93,_94,_95){
with(_93){
var _96=0,_97=_tabLabels.length;
for(;_96<_97;++_96){
var _98=_tabLabels[_96];
if(CGRectContainsPoint(objj_msgSend(_98,"frame"),_95)){
return objj_msgSend(_98,"tabViewItem");
}
}
return nil;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_99,_9a){
with(_99){
var _9b=0,_9c=_tabLabels.length,_9d=((objj_msgSend(_99,"bounds").size.width)-(_9c-1)*_7a-2*_7b)/_9c,x=_7b;
for(;_9b<_9c;++_9b){
var _9f=_tabLabels[_9b],_a0={origin:{x:x,y:8},size:{width:_9d,height:18}};
objj_msgSend(_9f,"setFrame:",_a0);
x=(_a0.origin.x+_a0.size.width)+_7a;
}
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_a1,_a2,_a3){
with(_a1){
if(CGSizeEqualToSize(objj_msgSend(_a1,"frame").size,_a3)){
return;
}
objj_msgSendSuper({receiver:_a1,super_class:objj_getClass("CPView")},"setFrameSize:",_a3);
objj_msgSend(_a1,"layoutSubviews");
}
})]);
class_addMethods(_d,[new objj_method(sel_getUid("initialize"),function(_a4,_a5){
with(_a4){
if(_a4!=objj_msgSend(_CPTabLabelsView,"class")){
return;
}
var _a6=objj_msgSend(CPBundle,"bundleForClass:",_a4);
_79=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a6,"pathForResource:","CPTabView/_CPTabLabelsViewLeft.png"),CGSizeMake(12,26)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a6,"pathForResource:","CPTabView/_CPTabLabelsViewCenter.png"),CGSizeMake(1,26)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a6,"pathForResource:","CPTabView/_CPTabLabelsViewRight.png"),CGSizeMake(12,26))],NO));
}
}),new objj_method(sel_getUid("height"),function(_a7,_a8){
with(_a7){
return 26;
}
})]);
var _a9=nil,_aa=nil;
var _c=objj_allocateClassPair(CPView,"_CPTabLabel"),_d=_c.isa;
class_addIvars(_c,[new objj_ivar("_tabViewItem"),new objj_ivar("_labelField")]);
objj_registerClassPair(_c);
objj_addClassForBundle(_c,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_c,[new objj_method(sel_getUid("initWithFrame:"),function(_ab,_ac,_ad){
with(_ab){
_ab=objj_msgSendSuper({receiver:_ab,super_class:objj_getClass("CPView")},"initWithFrame:",_ad);
if(_ab){
_labelField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_labelField,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_labelField,"setFrame:",CGRectMake(5,0,CGRectGetWidth(_ad)-10,20));
objj_msgSend(_labelField,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_labelField,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",11));
objj_msgSend(_ab,"addSubview:",_labelField);
objj_msgSend(_ab,"setTabState:",CPBackgroundTab);
}
return _ab;
}
}),new objj_method(sel_getUid("setTabState:"),function(_ae,_af,_b0){
with(_ae){
objj_msgSend(_ae,"setBackgroundColor:",_b0==CPSelectedTab?_aa:_a9);
}
}),new objj_method(sel_getUid("setTabViewItem:"),function(_b1,_b2,_b3){
with(_b1){
_tabViewItem=_b3;
objj_msgSend(_b1,"update");
}
}),new objj_method(sel_getUid("tabViewItem"),function(_b4,_b5){
with(_b4){
return _tabViewItem;
}
}),new objj_method(sel_getUid("update"),function(_b6,_b7){
with(_b6){
objj_msgSend(_labelField,"setStringValue:",objj_msgSend(_tabViewItem,"label"));
}
})]);
class_addMethods(_d,[new objj_method(sel_getUid("initialize"),function(_b8,_b9){
with(_b8){
if(_b8!=objj_msgSend(_CPTabLabel,"class")){
return;
}
var _ba=objj_msgSend(CPBundle,"bundleForClass:",_b8);
_a9=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ba,"pathForResource:","CPTabView/_CPTabLabelBackgroundLeft.png"),CGSizeMake(6,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ba,"pathForResource:","CPTabView/_CPTabLabelBackgroundCenter.png"),CGSizeMake(1,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ba,"pathForResource:","CPTabView/_CPTabLabelBackgroundRight.png"),CGSizeMake(6,18))],NO));
_aa=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPThreePartImage,"alloc"),"initWithImageSlices:isVertical:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ba,"pathForResource:","CPTabView/_CPTabLabelSelectedLeft.png"),CGSizeMake(3,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ba,"pathForResource:","CPTabView/_CPTabLabelSelectedCenter.png"),CGSizeMake(1,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_ba,"pathForResource:","CPTabView/_CPTabLabelSelectedRight.png"),CGSizeMake(3,18))],NO));
}
})]);
p;15;CPTabViewItem.jI;21;Foundation/CPObject.jI;15;AppKit/CPView.jc;2568;
CPSelectedTab=0;
CPBackgroundTab=1;
CPPressedTab=2;
var _1=objj_allocateClassPair(CPObject,"CPTabViewItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_identifier"),new objj_ivar("_label"),new objj_ivar("_view"),new objj_ivar("_auxiliaryView")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithIdentifier:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_identifier=_5;
}
return _3;
}
}),new objj_method(sel_getUid("setLabel:"),function(_6,_7,_8){
with(_6){
_label=_8;
}
}),new objj_method(sel_getUid("label"),function(_9,_a){
with(_9){
return _label;
}
}),new objj_method(sel_getUid("tabState"),function(_b,_c){
with(_b){
return _tabState;
}
}),new objj_method(sel_getUid("setIdentifier:"),function(_d,_e,_f){
with(_d){
_identifier=_f;
}
}),new objj_method(sel_getUid("identifier"),function(_10,_11){
with(_10){
return _identifier;
}
}),new objj_method(sel_getUid("setView:"),function(_12,_13,_14){
with(_12){
_view=_14;
}
}),new objj_method(sel_getUid("view"),function(_15,_16){
with(_15){
return _view;
}
}),new objj_method(sel_getUid("setAuxiliaryView:"),function(_17,_18,_19){
with(_17){
_auxiliaryView=_19;
}
}),new objj_method(sel_getUid("auxiliaryView"),function(_1a,_1b){
with(_1a){
return _auxiliaryView;
}
}),new objj_method(sel_getUid("tabView"),function(_1c,_1d){
with(_1c){
return _tabView;
}
})]);
var _1e="CPTabViewItemIdentifierKey",_1f="CPTabViewItemLabelKey",_20="CPTabViewItemViewKey",_21="CPTabViewItemAuxViewKey";
var _1=objj_getClass("CPTabViewItem");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTabViewItem\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_22,_23,_24){
with(_22){
_22=objj_msgSendSuper({receiver:_22,super_class:objj_getClass("CPObject")},"init");
if(_22){
_identifier=objj_msgSend(_24,"decodeObjectForKey:",_1e);
_label=objj_msgSend(_24,"decodeObjectForKey:",_1f);
_view=objj_msgSend(_24,"decodeObjectForKey:",_20);
_auxiliaryView=objj_msgSend(_24,"decodeObjectForKey:",_21);
}
return _22;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_25,_26,_27){
with(_25){
objj_msgSend(_27,"encodeObject:forKey:",_identifier,_1e);
objj_msgSend(_27,"encodeObject:forKey:",_label,_1f);
objj_msgSend(_27,"encodeObject:forKey:",_view,_20);
objj_msgSend(_27,"encodeObject:forKey:",_auxiliaryView,_21);
}
})]);
p;13;CPTextField.ji;11;CPControl.ji;17;CPStringDrawing.ji;17;CPCompatibility.jc;20532;
CPLineBreakByWordWrapping=0;
CPLineBreakByCharWrapping=1;
CPLineBreakByClipping=2;
CPLineBreakByTruncatingHead=3;
CPLineBreakByTruncatingTail=4;
CPLineBreakByTruncatingMiddle=5;
CPTextFieldSquareBezel=0;
CPTextFieldRoundedBezel=1;
var _1=nil,_2=nil,_3=nil,_4=nil,_5=nil,_6=NO,_7=NO,_8=NO,_9=nil,_a=nil,_b=nil,_c=nil,_d=nil,_e=nil;
var _f="•";
var _10=objj_getClass("CPString");
if(!_10){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPString\""));
}
var _11=_10.isa;
class_addMethods(_10,[new objj_method(sel_getUid("string"),function(_12,_13){
with(_12){
return _12;
}
})]);
CPTextFieldStateRounded=CPThemeState("rounded");
CPTextFieldStatePlaceholder=CPThemeState("placeholder");
var _10=objj_allocateClassPair(CPControl,"CPTextField"),_11=_10.isa;
class_addIvars(_10,[new objj_ivar("_isEditable"),new objj_ivar("_isSelectable"),new objj_ivar("_isSecure"),new objj_ivar("_drawsBackground"),new objj_ivar("_textFieldBackgroundColor"),new objj_ivar("_placeholderString"),new objj_ivar("_delegate"),new objj_ivar("_textDidChangeValue"),new objj_ivar("_bezelStyle"),new objj_ivar("_isBordered"),new objj_ivar("_controlSize")]);
objj_registerClassPair(_10);
objj_addClassForBundle(_10,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_10,[new objj_method(sel_getUid("_inputElement"),function(_14,_15){
with(_14){
if(!_1){
_1=document.createElement("input");
_1.style.position="absolute";
_1.style.border="0px";
_1.style.padding="0px";
_1.style.margin="0px";
_1.style.whiteSpace="pre";
_1.style.background="transparent";
_1.style.outline="none";
_b=function(_16){
if(_4&&_4._DOMElement!=_1.parentNode){
return;
}
if(!_6){
objj_msgSend(objj_msgSend(_4,"window"),"makeFirstResponder:",nil);
return;
}
CPTextFieldHandleBlur(_16,_1);
_7=YES;
return true;
};
_e=function(_17){
_5=objj_msgSend(_4,"stringValue");
_d(_17);
return true;
};
_d=function(_18){
_18=_18||window.event;
if(_18.keyCode==CPReturnKeyCode||_18.keyCode==CPTabKeyCode){
if(_18.preventDefault){
_18.preventDefault();
}
if(_18.stopPropagation){
_18.stopPropagation();
}
_18.cancelBubble=true;
var _19=_4;
if(_18&&_18.keyCode==CPReturnKeyCode){
objj_msgSend(_19,"sendAction:to:",objj_msgSend(_19,"action"),objj_msgSend(_19,"target"));
objj_msgSend(objj_msgSend(_19,"window"),"makeFirstResponder:",nil);
}else{
if(_18&&_18.keyCode==CPTabKeyCode){
if(!_18.shiftKey){
objj_msgSend(objj_msgSend(_19,"window"),"selectNextKeyView:",_19);
}else{
objj_msgSend(objj_msgSend(_19,"window"),"selectPreviousKeyView:",_19);
}
}
}
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
};
_c=function(){
objj_msgSend(_4,"setStringValue:",_1.value);
if(objj_msgSend(_4,"stringValue")!==_5){
_5=objj_msgSend(_4,"stringValue");
objj_msgSend(_4,"textDidChange:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidChangeNotification,_4,nil));
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
};
CPTextFieldHandleBlur=function(_1a){
var _1b=_4;
_4=nil;
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
};
if(document.attachEvent){
_1.attachEvent("on"+CPDOMEventKeyUp,_c);
_1.attachEvent("on"+CPDOMEventKeyDown,_e);
_1.attachEvent("on"+CPDOMEventKeyPress,_d);
}else{
_1.addEventListener(CPDOMEventKeyUp,_c,NO);
_1.addEventListener(CPDOMEventKeyDown,_e,NO);
_1.addEventListener(CPDOMEventKeyPress,_d,NO);
}
_1.onblur=_b;
_3=_1;
}
if(CPFeatureIsCompatible(CPInputTypeCanBeChangedFeature)){
if(objj_msgSend(_14,"isSecure")){
_1.type="password";
}else{
_1.type="text";
}
return _1;
}
if(objj_msgSend(_14,"isSecure")){
if(!_2){
_2=document.createElement("input");
_2.style.position="absolute";
_2.style.border="0px";
_2.style.padding="0px";
_2.style.margin="0px";
_2.style.whiteSpace="pre";
_2.style.background="transparent";
_2.style.outline="none";
_2.type="password";
_2.attachEvent("on"+CPDOMEventKeyUp,_c);
_2.attachEvent("on"+CPDOMEventKeyDown,_e);
_2.attachEvent("on"+CPDOMEventKeyPress,_d);
_2.onblur=_b;
}
_1=_2;
}else{
_1=_3;
}
return _1;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_1c,_1d,_1e){
with(_1c){
_1c=objj_msgSendSuper({receiver:_1c,super_class:objj_getClass("CPControl")},"initWithFrame:",_1e);
if(_1c){
objj_msgSend(_1c,"setStringValue:","");
objj_msgSend(_1c,"setPlaceholderString:","");
_sendActionOn=CPKeyUpMask|CPKeyDownMask;
objj_msgSend(_1c,"setValue:forThemeAttribute:",CPLeftTextAlignment,"alignment");
}
return _1c;
}
}),new objj_method(sel_getUid("setEditable:"),function(_1f,_20,_21){
with(_1f){
_isEditable=_21;
}
}),new objj_method(sel_getUid("isEditable"),function(_22,_23){
with(_22){
return _isEditable;
}
}),new objj_method(sel_getUid("setSelectable:"),function(_24,_25,_26){
with(_24){
_isSelectable=_26;
}
}),new objj_method(sel_getUid("isSelectable"),function(_27,_28){
with(_27){
return _isSelectable;
}
}),new objj_method(sel_getUid("setSecure:"),function(_29,_2a,_2b){
with(_29){
_isSecure=_2b;
}
}),new objj_method(sel_getUid("isSecure"),function(_2c,_2d){
with(_2c){
return _isSecure;
}
}),new objj_method(sel_getUid("setBezeled:"),function(_2e,_2f,_30){
with(_2e){
if(_30){
objj_msgSend(_2e,"setThemeState:",CPThemeStateBezeled);
}else{
objj_msgSend(_2e,"unsetThemeState:",CPThemeStateBezeled);
}
}
}),new objj_method(sel_getUid("isBezeled"),function(_31,_32){
with(_31){
return objj_msgSend(_31,"hasThemeState:",CPThemeStateBezeled);
}
}),new objj_method(sel_getUid("setBezelStyle:"),function(_33,_34,_35){
with(_33){
var _36=_35===CPTextFieldRoundedBezel;
if(_36){
objj_msgSend(_33,"setThemeState:",CPTextFieldStateRounded);
}else{
objj_msgSend(_33,"unsetThemeState:",CPTextFieldStateRounded);
}
}
}),new objj_method(sel_getUid("bezelStyle"),function(_37,_38){
with(_37){
if(objj_msgSend(_37,"hasThemeState:",CPTextFieldStateRounded)){
return CPTextFieldRoundedBezel;
}
return CPTextFieldSquareBezel;
}
}),new objj_method(sel_getUid("setBordered:"),function(_39,_3a,_3b){
with(_39){
if(_3b){
objj_msgSend(_39,"setThemeState:",CPThemeStateBordered);
}else{
objj_msgSend(_39,"unsetThemeState:",CPThemeStateBordered);
}
}
}),new objj_method(sel_getUid("isBordered"),function(_3c,_3d){
with(_3c){
return objj_msgSend(_3c,"hasThemeState:",CPThemeStateBordered);
}
}),new objj_method(sel_getUid("setDrawsBackground:"),function(_3e,_3f,_40){
with(_3e){
if(_drawsBackground==_40){
return;
}
_drawsBackground=_40;
objj_msgSend(_3e,"setNeedsLayout");
objj_msgSend(_3e,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("drawsBackground"),function(_41,_42){
with(_41){
return _drawsBackground;
}
}),new objj_method(sel_getUid("setTextFieldBackgroundColor:"),function(_43,_44,_45){
with(_43){
if(_textFieldBackgroundColor==_45){
return;
}
_textFieldBackgroundColor=_45;
objj_msgSend(_43,"setNeedsLayout");
objj_msgSend(_43,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("textFieldBackgroundColor"),function(_46,_47){
with(_46){
return _textFieldBackgroundColor;
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(_48,_49){
with(_48){
return objj_msgSend(_48,"isEditable")&&objj_msgSend(_48,"isEnabled");
}
}),new objj_method(sel_getUid("becomeFirstResponder"),function(_4a,_4b){
with(_4a){
if(_4&&objj_msgSend(_4,"window")!==objj_msgSend(_4a,"window")){
objj_msgSend(objj_msgSend(_4,"window"),"makeFirstResponder:",nil);
}
objj_msgSend(_4a,"setThemeState:",CPThemeStateEditing);
objj_msgSend(_4a,"_updatePlaceholderState");
objj_msgSend(_4a,"setNeedsLayout");
var _4c=objj_msgSend(_4a,"stringValue"),_4d=objj_msgSend(_4a,"_inputElement");
_4d.value=_4c;
_4d.style.color=objj_msgSend(objj_msgSend(_4a,"currentValueForThemeAttribute:","text-color"),"cssString");
_4d.style.font=objj_msgSend(objj_msgSend(_4a,"currentValueForThemeAttribute:","font"),"cssString");
_4d.style.zIndex=1000;
var _4e=objj_msgSend(_4a,"contentRectForBounds:",objj_msgSend(_4a,"bounds"));
_4d.style.top=(_4e.origin.y)+"px";
_4d.style.left=((_4e.origin.x)-1)+"px";
_4d.style.width=(_4e.size.width)+"px";
_4d.style.height=(_4e.size.height)+"px";
_DOMElement.appendChild(_4d);
window.setTimeout(function(){
_4d.focus();
_4=_4a;
},0);
objj_msgSend(_4a,"textDidBeginEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidBeginEditingNotification,_4a,nil));
objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"_propagateCurrentDOMEvent:",YES);
_8=YES;
if(document.attachEvent){
_9=document.body.onselectstart;
_a=document.body.ondrag;
document.body.ondrag=function(){
};
document.body.onselectstart=function(){
};
}
return YES;
}
}),new objj_method(sel_getUid("resignFirstResponder"),function(_4f,_50){
with(_4f){
objj_msgSend(_4f,"unsetThemeState:",CPThemeStateEditing);
objj_msgSend(_4f,"_updatePlaceholderState");
objj_msgSend(_4f,"setNeedsLayout");
var _51=objj_msgSend(_4f,"_inputElement");
objj_msgSend(_4f,"setObjectValue:",_51.value);
_6=YES;
_51.blur();
if(!_7){
_b();
}
_7=NO;
_6=NO;
if(_51.parentNode==_DOMElement){
_51.parentNode.removeChild(_51);
}
_8=NO;
if(document.attachEvent){
_9=nil;
_a=nil;
document.body.ondrag=_a;
document.body.onselectstart=_9;
}
objj_msgSend(_4f,"textDidEndEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidBeginEditingNotification,_4f,nil));
return YES;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_52,_53,_54){
with(_52){
if(objj_msgSend(_52,"isEditable")&&objj_msgSend(_52,"isEnabled")){
return objj_msgSend(objj_msgSend(_52,"window"),"makeFirstResponder:",_52);
}else{
return objj_msgSend(objj_msgSend(_52,"nextResponder"),"mouseDown:",_54);
}
}
}),new objj_method(sel_getUid("objectValue"),function(_55,_56){
with(_55){
return objj_msgSendSuper({receiver:_55,super_class:objj_getClass("CPControl")},"objectValue");
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_57,_58,_59){
with(_57){
objj_msgSendSuper({receiver:_57,super_class:objj_getClass("CPControl")},"setObjectValue:",_59);
objj_msgSend(_57,"_updatePlaceholderState");
}
}),new objj_method(sel_getUid("_updatePlaceholderState"),function(_5a,_5b){
with(_5a){
var _5c=objj_msgSend(_5a,"stringValue");
if((!_5c||objj_msgSend(_5c,"length")===0)&&!objj_msgSend(_5a,"hasThemeState:",CPThemeStateEditing)){
objj_msgSend(_5a,"setThemeState:",CPTextFieldStatePlaceholder);
}else{
objj_msgSend(_5a,"unsetThemeState:",CPTextFieldStatePlaceholder);
}
}
}),new objj_method(sel_getUid("setPlaceholderString:"),function(_5d,_5e,_5f){
with(_5d){
if(_placeholderString===_5f){
return;
}
_placeholderString=_5f;
if(objj_msgSend(_5d,"hasThemeState:",CPTextFieldStatePlaceholder)){
objj_msgSend(_5d,"setNeedsLayout");
objj_msgSend(_5d,"setNeedsDisplay:",YES);
}
}
}),new objj_method(sel_getUid("placeholderString"),function(_60,_61){
with(_60){
return _placeholderString;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_62,_63){
with(_62){
var _64=objj_msgSend((objj_msgSend(_62,"stringValue")||" "),"sizeWithFont:",objj_msgSend(_62,"currentValueForThemeAttribute:","font")),_65=objj_msgSend(_62,"currentValueForThemeAttribute:","content-inset"),_66=objj_msgSend(_62,"currentValueForThemeAttribute:","min-size"),_67=objj_msgSend(_62,"currentValueForThemeAttribute:","max-size");
_64.width=MAX(_64.width+_65.left+_65.right,_66.width);
_64.height=MAX(_64.height+_65.top+_65.bottom,_66.height);
if(_67.width>=0){
_64.width=MIN(_64.width,_67.width);
}
if(_67.height>=0){
_64.height=MIN(_64.height,_67.height);
}
if(objj_msgSend(_62,"isEditable")){
_64.width=CGRectGetWidth(objj_msgSend(_62,"frame"));
}
objj_msgSend(_62,"setFrameSize:",_64);
}
}),new objj_method(sel_getUid("selectText:"),function(_68,_69,_6a){
with(_68){
var _6b=objj_msgSend(_68,"_inputElement");
if(_6b.parentNode==_DOMElement&&(objj_msgSend(_68,"isEditable")||objj_msgSend(_68,"isSelectable"))){
_6b.select();
}
}
}),new objj_method(sel_getUid("setDelegate:"),function(_6c,_6d,_6e){
with(_6c){
var _6f=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_delegate){
objj_msgSend(_6f,"removeObserver:name:object:",_delegate,CPControlTextDidBeginEditingNotification,_6c);
objj_msgSend(_6f,"removeObserver:name:object:",_delegate,CPControlTextDidChangeNotification,_6c);
objj_msgSend(_6f,"removeObserver:name:object:",_delegate,CPControlTextDidEndEditingNotification,_6c);
}
_delegate=_6e;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidBeginEditing:"))){
objj_msgSend(_6f,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidBeginEditing:"),CPControlTextDidBeginEditingNotification,_6c);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidChange:"))){
objj_msgSend(_6f,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidChange:"),CPControlTextDidChangeNotification,_6c);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("controlTextDidEndEditing:"))){
objj_msgSend(_6f,"addObserver:selector:name:object:",_delegate,sel_getUid("controlTextDidEndEditing:"),CPControlTextDidEndEditingNotification,_6c);
}
}
}),new objj_method(sel_getUid("delegate"),function(_70,_71){
with(_70){
return _delegate;
}
}),new objj_method(sel_getUid("contentRectForBounds:"),function(_72,_73,_74){
with(_72){
var _75=objj_msgSend(_72,"currentValueForThemeAttribute:","content-inset");
if(!_75){
return _74;
}
_74.origin.x+=_75.left;
_74.origin.y+=_75.top;
_74.size.width-=_75.left+_75.right;
_74.size.height-=_75.top+_75.bottom;
return _74;
}
}),new objj_method(sel_getUid("bezelRectForBounds:"),function(_76,_77,_78){
with(_76){
var _79=objj_msgSend(_76,"currentValueForThemeAttribute:","bezel-inset");
if(((_79).top===0&&(_79).right===0&&(_79).bottom===0&&(_79).left===0)){
return _78;
}
_78.origin.x+=_79.left;
_78.origin.y+=_79.top;
_78.size.width-=_79.left+_79.right;
_78.size.height-=_79.top+_79.bottom;
return _78;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_7a,_7b,_7c){
with(_7a){
if(_7c==="bezel-view"){
return objj_msgSend(_7a,"bezelRectForBounds:",objj_msgSend(_7a,"bounds"));
}else{
if(_7c==="content-view"){
return objj_msgSend(_7a,"contentRectForBounds:",objj_msgSend(_7a,"bounds"));
}
}
return objj_msgSendSuper({receiver:_7a,super_class:objj_getClass("CPControl")},"rectForEphemeralSubviewNamed:",_7c);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_7d,_7e,_7f){
with(_7d){
if(_7f==="bezel-view"){
var _80=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_80,"setHitTests:",NO);
return _80;
}else{
var _80=objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
return _80;
}
return objj_msgSendSuper({receiver:_7d,super_class:objj_getClass("CPControl")},"createEphemeralSubviewNamed:",_7f);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_81,_82){
with(_81){
var _83=objj_msgSend(_81,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","bezel-view",CPWindowBelow,"content-view");
if(_83){
objj_msgSend(_83,"setBackgroundColor:",objj_msgSend(_81,"currentValueForThemeAttribute:","bezel-color"));
}
var _84=objj_msgSend(_81,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","content-view",CPWindowAbove,"bezel-view");
if(_84){
objj_msgSend(_84,"setHidden:",objj_msgSend(_81,"hasThemeState:",CPThemeStateEditing));
var _85="";
if(objj_msgSend(_81,"hasThemeState:",CPTextFieldStatePlaceholder)){
_85=objj_msgSend(_81,"placeholderString");
}else{
_85=objj_msgSend(_81,"stringValue");
if(objj_msgSend(_81,"isSecure")){
_85=_86(_85);
}
}
objj_msgSend(_84,"setText:",_85);
objj_msgSend(_84,"setTextColor:",objj_msgSend(_81,"currentValueForThemeAttribute:","text-color"));
objj_msgSend(_84,"setFont:",objj_msgSend(_81,"currentValueForThemeAttribute:","font"));
objj_msgSend(_84,"setAlignment:",objj_msgSend(_81,"currentValueForThemeAttribute:","alignment"));
objj_msgSend(_84,"setVerticalAlignment:",objj_msgSend(_81,"currentValueForThemeAttribute:","vertical-alignment"));
objj_msgSend(_84,"setLineBreakMode:",objj_msgSend(_81,"currentValueForThemeAttribute:","line-break-mode"));
objj_msgSend(_84,"setTextShadowColor:",objj_msgSend(_81,"currentValueForThemeAttribute:","text-shadow-color"));
objj_msgSend(_84,"setTextShadowOffset:",objj_msgSend(_81,"currentValueForThemeAttribute:","text-shadow-offset"));
}
}
})]);
class_addMethods(_11,[new objj_method(sel_getUid("textFieldWithStringValue:placeholder:width:"),function(_87,_88,_89,_8a,_8b){
with(_87){
return objj_msgSend(_87,"textFieldWithStringValue:placeholder:width:theme:",_89,_8a,_8b,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("textFieldWithStringValue:placeholder:width:theme:"),function(_8c,_8d,_8e,_8f,_90,_91){
with(_8c){
var _92=objj_msgSend(objj_msgSend(_8c,"alloc"),"initWithFrame:",CGRectMake(0,0,_90,29));
objj_msgSend(_92,"setTheme:",_91);
objj_msgSend(_92,"setStringValue:",_8e);
objj_msgSend(_92,"setPlaceholderString:",_8f);
objj_msgSend(_92,"setBordered:",YES);
objj_msgSend(_92,"setBezeled:",YES);
objj_msgSend(_92,"setEditable:",YES);
objj_msgSend(_92,"sizeToFit");
return _92;
}
}),new objj_method(sel_getUid("roundedTextFieldWithStringValue:placeholder:width:"),function(_93,_94,_95,_96,_97){
with(_93){
return objj_msgSend(_93,"roundedTextFieldWithStringValue:placeholder:width:theme:",_95,_96,_97,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("roundedTextFieldWithStringValue:placeholder:width:theme:"),function(_98,_99,_9a,_9b,_9c,_9d){
with(_98){
var _9e=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,0,_9c,29));
objj_msgSend(_9e,"setTheme:",_9d);
objj_msgSend(_9e,"setStringValue:",_9a);
objj_msgSend(_9e,"setPlaceholderString:",_9b);
objj_msgSend(_9e,"setBezelStyle:",CPTextFieldRoundedBezel);
objj_msgSend(_9e,"setBordered:",YES);
objj_msgSend(_9e,"setBezeled:",YES);
objj_msgSend(_9e,"setEditable:",YES);
objj_msgSend(_9e,"sizeToFit");
return _9e;
}
}),new objj_method(sel_getUid("labelWithTitle:"),function(_9f,_a0,_a1){
with(_9f){
return objj_msgSend(_9f,"labelWithTitle:theme:",_a1,objj_msgSend(CPTheme,"defaultTheme"));
}
}),new objj_method(sel_getUid("labelWithTitle:theme:"),function(_a2,_a3,_a4,_a5){
with(_a2){
var _a6=objj_msgSend(objj_msgSend(_a2,"alloc"),"init");
objj_msgSend(_a6,"setStringValue:",_a4);
objj_msgSend(_a6,"sizeToFit");
return _a6;
}
}),new objj_method(sel_getUid("themeClass"),function(_a7,_a8){
with(_a7){
return "textfield";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_a9,_aa){
with(_a9){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[{top:(0),right:(0),bottom:(0),left:(0)},{top:(2),right:(2),bottom:(2),left:(2)},nil],["bezel-inset","content-inset","bezel-color"]);
}
})]);
var _86=function(_ab){
if(!_ab){
return "";
}
var _ac="",_ad=_ab.length;
while(_ad--){
_ac+=_f;
}
return _ac;
};
var _ae="CPTextFieldIsEditableKey",_af="CPTextFieldIsSelectableKey",_b0="CPTextFieldIsBorderedKey",_b1="CPTextFieldIsBezeledKey",_b2="CPTextFieldBezelStyleKey",_b3="CPTextFieldDrawsBackgroundKey",_b4="CPTextFieldLineBreakModeKey",_b5="CPTextFieldBackgroundColorKey",_b6="CPTextFieldPlaceholderStringKey";
var _10=objj_getClass("CPTextField");
if(!_10){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTextField\""));
}
var _11=_10.isa;
class_addMethods(_10,[new objj_method(sel_getUid("initWithCoder:"),function(_b7,_b8,_b9){
with(_b7){
_b7=objj_msgSendSuper({receiver:_b7,super_class:objj_getClass("CPControl")},"initWithCoder:",_b9);
if(_b7){
objj_msgSend(_b7,"setEditable:",objj_msgSend(_b9,"decodeBoolForKey:",_ae));
objj_msgSend(_b7,"setSelectable:",objj_msgSend(_b9,"decodeBoolForKey:",_af));
objj_msgSend(_b7,"setDrawsBackground:",objj_msgSend(_b9,"decodeBoolForKey:",_b3));
objj_msgSend(_b7,"setTextFieldBackgroundColor:",objj_msgSend(_b9,"decodeObjectForKey:",_b5));
objj_msgSend(_b7,"setPlaceholderString:",objj_msgSend(_b9,"decodeObjectForKey:",_b6));
}
return _b7;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_ba,_bb,_bc){
with(_ba){
objj_msgSendSuper({receiver:_ba,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_bc);
objj_msgSend(_bc,"encodeBool:forKey:",_isEditable,_ae);
objj_msgSend(_bc,"encodeBool:forKey:",_isSelectable,_af);
objj_msgSend(_bc,"encodeBool:forKey:",_drawsBackground,_b3);
objj_msgSend(_bc,"encodeObject:forKey:",_textFieldBackgroundColor,_b5);
objj_msgSend(_bc,"encodeObject:forKey:",_placeholderString,_b6);
}
})]);
p;9;CPTheme.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jc;10887;
var _1={},_2=nil;
var _3=objj_allocateClassPair(CPObject,"CPTheme"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_name"),new objj_ivar("_attributes")]);
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("initWithName:"),function(_5,_6,_7){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPObject")},"init");
if(_5){
_name=_7;
_attributes=objj_msgSend(CPDictionary,"dictionary");
_1[_name]=_5;
}
return _5;
}
}),new objj_method(sel_getUid("name"),function(_8,_9){
with(_8){
return _name;
}
}),new objj_method(sel_getUid("_attributeWithName:forClass:"),function(_a,_b,_c,_d){
with(_a){
var _e=objj_msgSend(_attributes,"objectForKey:",_d);
if(!_e){
return nil;
}
return objj_msgSend(_e,"objectForKey:",_c);
}
}),new objj_method(sel_getUid("takeThemeFromObject:"),function(_f,_10,_11){
with(_f){
var _12=objj_msgSend(_11,"_themeAttributeDictionary"),_13=nil,_14=objj_msgSend(_12,"keyEnumerator"),_15=objj_msgSend(objj_msgSend(_11,"class"),"themeClass");
while(_13=objj_msgSend(_14,"nextObject")){
objj_msgSend(_f,"_recordAttribute:forClass:",objj_msgSend(_12,"objectForKey:",_13),_15);
}
}
}),new objj_method(sel_getUid("_recordAttribute:forClass:"),function(_16,_17,_18,_19){
with(_16){
if(!objj_msgSend(_18,"hasValues")){
return;
}
var _1a=objj_msgSend(_attributes,"objectForKey:",_19);
if(!_1a){
_1a=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_attributes,"setObject:forKey:",_1a,_19);
}
var _1b=objj_msgSend(_18,"name"),_1c=objj_msgSend(_1a,"objectForKey:",_1b);
if(_1c){
objj_msgSend(_1a,"setObject:forKey:",objj_msgSend(_1c,"attributeMergedWithAttribute:",_18),_1b);
}else{
objj_msgSend(_1a,"setObject:forKey:",_18,_1b);
}
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("setDefaultTheme:"),function(_1d,_1e,_1f){
with(_1d){
_2=_1f;
}
}),new objj_method(sel_getUid("defaultTheme"),function(_20,_21){
with(_20){
return _2;
}
}),new objj_method(sel_getUid("themeNamed:"),function(_22,_23,_24){
with(_22){
return _1[_24];
}
})]);
var _25="CPThemeNameKey",_26="CPThemeAttributesKey";
var _3=objj_getClass("CPTheme");
if(!_3){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTheme\""));
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("initWithCoder:"),function(_27,_28,_29){
with(_27){
_27=objj_msgSendSuper({receiver:_27,super_class:objj_getClass("CPObject")},"init");
if(_27){
_name=objj_msgSend(_29,"decodeObjectForKey:",_25);
_attributes=objj_msgSend(_29,"decodeObjectForKey:",_26);
_1[_name]=_27;
}
return _27;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_2a,_2b,_2c){
with(_2a){
objj_msgSend(_2c,"encodeObject:forKey:",_name,_25);
objj_msgSend(_2c,"encodeObject:forKey:",_attributes,_26);
}
})]);
var _3=objj_allocateClassPair(CPKeyedUnarchiver,"_CPThemeKeyedUnarchiver"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_bundle")]);
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("initForReadingWithData:bundle:"),function(_2d,_2e,_2f,_30){
with(_2d){
_2d=objj_msgSendSuper({receiver:_2d,super_class:objj_getClass("CPKeyedUnarchiver")},"initForReadingWithData:",_2f);
if(_2d){
_bundle=_30;
}
return _2d;
}
}),new objj_method(sel_getUid("bundle"),function(_31,_32){
with(_31){
return _bundle;
}
}),new objj_method(sel_getUid("awakenCustomResources"),function(_33,_34){
with(_33){
return YES;
}
})]);
var _35={},_36={},_37=0;
CPThemeState=function(_38){
var _39=_35[_38];
if(_39===undefined){
if(_38.indexOf("+")===-1){
_39=1<<_37++;
}else{
var _39=0,_3a=_38.split("+"),_3b=_3a.length;
while(_3b--){
var _3c=_3a[_3b],_3d=_35[_3c];
if(_3d===undefined){
_3d=1<<_37++;
_35[_3c]=_3d;
_36[_3d]=_3c;
}
_39|=_3d;
}
}
_35[_38]=_39;
_36[_39]=_38;
}
return _39;
};
CPThemeStateName=function(_3e){
var _3f=_36[_3e];
if(_3f!==undefined){
return _3f;
}
if(!(_3e&(_3e-1))){
return "";
}
var _40=1,_3f="";
for(;_40<_3e;_40<<=1){
if(_3e&_40){
_3f+=(_3f.length===0?"":"+")+_36[_40];
}
}
_36[_3e]=_3f;
return _3f;
};
_36[0]="normal";
CPThemeStateNormal=_35["normal"]=0;
CPThemeStateDisabled=CPThemeState("disabled");
CPThemeStateHighlighted=CPThemeState("highlighted");
CPThemeStateSelected=CPThemeState("selected");
CPThemeStateBezeled=CPThemeState("bezeled");
CPThemeStateBordered=CPThemeState("bordered");
CPThemeStateEditable=CPThemeState("editable");
CPThemeStateEditing=CPThemeState("editing");
CPThemeStateVertical=CPThemeState("vertical");
CPThemeStateDefault=CPThemeState("default");
CPThemeStateCircular=CPThemeState("circular");
var _3=objj_allocateClassPair(CPObject,"_CPThemeAttribute"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_name"),new objj_ivar("_defaultValue"),new objj_ivar("_values"),new objj_ivar("_cache"),new objj_ivar("_parentAttribute")]);
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("initWithName:defaultValue:"),function(_41,_42,_43,_44){
with(_41){
_41=objj_msgSendSuper({receiver:_41,super_class:objj_getClass("CPObject")},"init");
if(_41){
_cache={};
_name=_43;
_defaultValue=_44;
_values=objj_msgSend(CPDictionary,"dictionary");
}
return _41;
}
}),new objj_method(sel_getUid("name"),function(_45,_46){
with(_45){
return _name;
}
}),new objj_method(sel_getUid("defaultValue"),function(_47,_48){
with(_47){
return _defaultValue;
}
}),new objj_method(sel_getUid("hasValues"),function(_49,_4a){
with(_49){
return objj_msgSend(_values,"count")>0;
}
}),new objj_method(sel_getUid("isTrivial"),function(_4b,_4c){
with(_4b){
return (objj_msgSend(_values,"count")===1)&&(Number(objj_msgSend(_values,"allKeys")[0])===CPThemeStateNormal);
}
}),new objj_method(sel_getUid("setValue:"),function(_4d,_4e,_4f){
with(_4d){
_cache={};
if(_4f===undefined||_4f===nil){
_values=objj_msgSend(CPDictionary,"dictionary");
}else{
_values=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_4f,String(CPThemeStateNormal));
}
}
}),new objj_method(sel_getUid("setValue:forState:"),function(_50,_51,_52,_53){
with(_50){
_cache={};
if((_52===undefined)||(_52===nil)){
objj_msgSend(_values,"removeObjectForKey:",String(_53));
}else{
objj_msgSend(_values,"setObject:forKey:",_52,String(_53));
}
}
}),new objj_method(sel_getUid("value"),function(_54,_55){
with(_54){
return objj_msgSend(_54,"valueForState:",CPThemeStateNormal);
}
}),new objj_method(sel_getUid("valueForState:"),function(_56,_57,_58){
with(_56){
var _59=_cache[_58];
if(_59!==undefined){
return _59;
}
_59=objj_msgSend(_values,"objectForKey:",String(_58));
if((_59===undefined||_59===nil)&&_58!==CPThemeStateNormal){
if(_58&(_58-1)){
var _5a=0,_5b=objj_msgSend(_values,"allKeys"),_5c=_5b.length;
while(_5c--){
var _5d=Number(_5b[_5c]);
if((_5d&_58)===_5d){
var _5e=_5f[_5d];
if(_5e===undefined){
_5e=_60(_5d);
}
if(_5e>_5a){
_5a=_5e;
_59=objj_msgSend(_values,"objectForKey:",String(_5d));
}
}
}
}
if(_59===undefined||_59===nil){
_59=objj_msgSend(_values,"objectForKey:",String(CPThemeStateNormal));
}
}
if(_59===undefined||_59===nil){
_59=objj_msgSend(_parentAttribute,"valueForState:",_58);
}
if(_59===undefined||_59===nil){
_59=_defaultValue;
}
_cache[_58]=_59;
return _59;
}
}),new objj_method(sel_getUid("setParentAttribute:"),function(_61,_62,_63){
with(_61){
if(_parentAttribute===_63){
return;
}
_cache={};
_parentAttribute=_63;
}
}),new objj_method(sel_getUid("attributeMergedWithAttribute:"),function(_64,_65,_66){
with(_64){
var _67=objj_msgSend(objj_msgSend(_CPThemeAttribute,"alloc"),"initWithName:defaultValue:",_name,_defaultValue);
_67._values=objj_msgSend(_values,"copy");
objj_msgSend(_67._values,"addEntriesFromDictionary:",_66._values);
return _67;
}
})]);
var _3=objj_getClass("_CPThemeAttribute");
if(!_3){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"_CPThemeAttribute\""));
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("initWithCoder:"),function(_68,_69,_6a){
with(_68){
_68=objj_msgSendSuper({receiver:_68,super_class:objj_getClass("CPObject")},"init");
if(_68){
_cache={};
_name=objj_msgSend(_6a,"decodeObjectForKey:","name");
_values=objj_msgSend(CPDictionary,"dictionary");
if(objj_msgSend(_6a,"containsValueForKey:","value")){
var _6b=CPThemeStateNormal;
if(objj_msgSend(_6a,"containsValueForKey:","state")){
_6b=CPThemeState(objj_msgSend(_6a,"decodeObjectForKey:","state"));
}
objj_msgSend(_values,"setObject:forKey:",objj_msgSend(_6a,"decodeObjectForKey:","value"),_6b);
}else{
var _6c=objj_msgSend(_6a,"decodeObjectForKey:","values"),_6d=objj_msgSend(_6c,"allKeys"),_6e=_6d.length;
while(_6e--){
var key=_6d[_6e];
objj_msgSend(_values,"setObject:forKey:",objj_msgSend(_6c,"objectForKey:",key),CPThemeState(key));
}
}
}
return _68;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_70,_71,_72){
with(_70){
objj_msgSend(_72,"encodeObject:forKey:",_name,"name");
var _73=objj_msgSend(_values,"allKeys"),_74=_73.length;
if(_74===1){
var _75=_73[0];
if(Number(_75)!==CPThemeStateNormal){
objj_msgSend(_72,"encodeObject:forKey:",CPThemeStateName(Number(_75)),"state");
}
objj_msgSend(_72,"encodeObject:forKey:",objj_msgSend(_values,"objectForKey:",_75),"value");
}else{
var _76=objj_msgSend(CPDictionary,"dictionary");
while(_74--){
var key=_73[_74];
objj_msgSend(_76,"setObject:forKey:",objj_msgSend(_values,"objectForKey:",key),CPThemeStateName(Number(key)));
}
objj_msgSend(_72,"encodeObject:forKey:",_76,"values");
}
}
})]);
var _5f=[0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,4,1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,5,1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,5,2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,6];
var _60=function(_78){
var _79=0,_7a=_78;
while(_78){
++_79;
_78&=(_78-1);
}
_5f[_7a]=_79;
return _79;
};
_60.displayName="numberOfOnes";
CPThemeAttributeEncode=function(_7b,_7c){
var _7d=_7c._values,_7e=objj_msgSend(_7d,"count"),key="$a"+objj_msgSend(_7c,"name");
if(_7e===1){
var _80=objj_msgSend(_7d,"allKeys")[0];
if(Number(_80)===0){
objj_msgSend(_7b,"encodeObject:forKey:",objj_msgSend(_7d,"objectForKey:",_80),key);
return YES;
}
}
if(_7e>=1){
objj_msgSend(_7b,"encodeObject:forKey:",_7c,key);
return YES;
}
return NO;
};
CPThemeAttributeDecode=function(_81,_82,_83,_84,_85){
var key="$a"+_82;
if(!objj_msgSend(_81,"containsValueForKey:",key)){
var _87=objj_msgSend(objj_msgSend(_CPThemeAttribute,"alloc"),"initWithName:defaultValue:",_82,_83);
}else{
var _87=objj_msgSend(_81,"decodeObjectForKey:",key);
if(!_87.isa||!objj_msgSend(_87,"isKindOfClass:",objj_msgSend(_CPThemeAttribute,"class"))){
var _88=objj_msgSend(objj_msgSend(_CPThemeAttribute,"alloc"),"initWithName:defaultValue:",_82,_83);
objj_msgSend(_88,"setValue:",_87);
_87=_88;
}
}
if(_84&&_85){
objj_msgSend(_87,"setParentAttribute:",objj_msgSend(_84,"_attributeWithName:forClass:",_82,_85));
}
return _87;
};
p;14;CPThemeBlend.jI;21;Foundation/CPObject.jI;16;AppKit/CPTheme.jI;29;AppKit/_CPCibCustomResource.jI;30;AppKit/_CPCibKeyedUnarchiver.jc;1452;
var _1=objj_allocateClassPair(CPObject,"CPThemeBlend"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_bundle"),new objj_ivar("_themes"),new objj_ivar("_loadDelegate")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("themes"),function(_3,_4){
with(_3){
return _themes;
}
}),new objj_method(sel_getUid("initWithContentsOfURL:"),function(_5,_6,_7){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPObject")},"init");
if(_5){
_bundle=objj_msgSend(objj_msgSend(CPBundle,"alloc"),"initWithPath:",_7+"/Info.plist");
}
return _5;
}
}),new objj_method(sel_getUid("loadWithDelegate:"),function(_8,_9,_a){
with(_8){
_loadDelegate=_a;
objj_msgSend(_bundle,"loadWithDelegate:",_8);
}
}),new objj_method(sel_getUid("bundleDidFinishLoading:"),function(_b,_c,_d){
with(_b){
var _e=objj_msgSend(_bundle,"objectForInfoDictionaryKey:","CPBundleReplacedFiles"),_f=0,_10=_e.length,_11=objj_msgSend(_bundle,"bundlePath");
while(_10--){
var _12=_e[_10];
if(objj_msgSend(_12,"pathExtension")==="keyedtheme"){
var _13=objj_msgSend(objj_msgSend(_CPThemeKeyedUnarchiver,"alloc"),"initForReadingWithData:bundle:",objj_msgSend(CPData,"dataWithString:",objj_files[_11+"/"+_12].contents),_bundle);
objj_msgSend(_13,"decodeObjectForKey:","root");
objj_msgSend(_13,"finishDecoding");
}
}
objj_msgSend(_loadDelegate,"blendDidFinishLoading:",_b);
}
})]);
p;11;CPToolbar.jI;21;Foundation/CPObject.ji;15;CPPopUpButton.ji;15;CPToolbarItem.jc;17238;
CPToolbarDisplayModeDefault=0;
CPToolbarDisplayModeIconAndLabel=1;
CPToolbarDisplayModeIconOnly=2;
CPToolbarDisplayModeLabelOnly=3;
var _1=nil;
var _2=nil;
var _3=objj_allocateClassPair(CPObject,"CPToolbar"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_identifier"),new objj_ivar("_displayMode"),new objj_ivar("_showsBaselineSeparator"),new objj_ivar("_allowsUserCustomization"),new objj_ivar("_isVisible"),new objj_ivar("_delegate"),new objj_ivar("_itemIdentifiers"),new objj_ivar("_identifiedItems"),new objj_ivar("_defaultItems"),new objj_ivar("_allowedItems"),new objj_ivar("_selectableItems"),new objj_ivar("_items"),new objj_ivar("_itemsSortedByVisibilityPriority"),new objj_ivar("_toolbarView"),new objj_ivar("_window")]);
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("initWithIdentifier:"),function(_5,_6,_7){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPObject")},"init");
if(_5){
_items=[];
_identifier=_7;
_isVisible=YES;
objj_msgSend(CPToolbar,"_addToolbar:forIdentifier:",_5,_identifier);
}
return _5;
}
}),new objj_method(sel_getUid("setDisplayMode:"),function(_8,_9,_a){
with(_8){
}
}),new objj_method(sel_getUid("identifier"),function(_b,_c){
with(_b){
return _identifier;
}
}),new objj_method(sel_getUid("delegate"),function(_d,_e){
with(_d){
return _delegate;
}
}),new objj_method(sel_getUid("isVisible"),function(_f,_10){
with(_f){
return _isVisible;
}
}),new objj_method(sel_getUid("setVisible:"),function(_11,_12,_13){
with(_11){
if(_isVisible===_13){
return;
}
_isVisible=_13;
objj_msgSend(_window,"_noteToolbarChanged");
}
}),new objj_method(sel_getUid("_window"),function(_14,_15){
with(_14){
return _window;
}
}),new objj_method(sel_getUid("_setWindow:"),function(_16,_17,_18){
with(_16){
_window=_18;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_19,_1a,_1b){
with(_19){
if(_delegate==_1b){
return;
}
_delegate=_1b;
objj_msgSend(_19,"_reloadToolbarItems");
}
}),new objj_method(sel_getUid("_loadConfiguration"),function(_1c,_1d){
with(_1c){
}
}),new objj_method(sel_getUid("_toolbarView"),function(_1e,_1f){
with(_1e){
if(!_toolbarView){
_toolbarView=objj_msgSend(objj_msgSend(_CPToolbarView,"alloc"),"initWithFrame:",CPRectMake(0,0,1200,59));
objj_msgSend(_toolbarView,"setToolbar:",_1e);
objj_msgSend(_toolbarView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_toolbarView,"reloadToolbarItems");
}
return _toolbarView;
}
}),new objj_method(sel_getUid("_reloadToolbarItems"),function(_20,_21){
with(_20){
if(!_delegate){
return;
}
var _22=objj_msgSend(_itemIdentifiers,"count");
if(!_22){
_itemIdentifiers=objj_msgSend(objj_msgSend(_delegate,"toolbarDefaultItemIdentifiers:",_20),"mutableCopy");
_22=objj_msgSend(_itemIdentifiers,"count");
}
_items=[];
var _23=0;
for(;_23<_22;++_23){
var _24=_itemIdentifiers[_23],_25=objj_msgSend(CPToolbarItem,"_standardItemWithItemIdentifier:",_24);
if(!_25){
_25=objj_msgSend(_delegate,"toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:",_20,_24,YES);
}
_25=objj_msgSend(_25,"copy");
if(_25==nil){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,sprintf("_delegate %s returned nil toolbar item returned for identifier %s",_delegate,_24));
}
objj_msgSend(_items,"addObject:",_25);
}
_itemsSortedByVisibilityPriority=objj_msgSend(_items,"sortedArrayUsingFunction:context:",_26,NULL);
objj_msgSend(_toolbarView,"reloadToolbarItems");
}
}),new objj_method(sel_getUid("items"),function(_27,_28){
with(_27){
return _items;
}
}),new objj_method(sel_getUid("visibleItems"),function(_29,_2a){
with(_29){
return objj_msgSend(_toolbarView,"visibleItems");
}
}),new objj_method(sel_getUid("itemsSortedByVisibilityPriority"),function(_2b,_2c){
with(_2b){
return _itemsSortedByVisibilityPriority;
}
}),new objj_method(sel_getUid("_itemForItemIdentifier:willBeInsertedIntoToolbar:"),function(_2d,_2e,_2f,_30){
with(_2d){
var _31=objj_msgSend(_identifiedItems,"objectForKey:",_2f);
if(!_31){
_31=objj_msgSend(CPToolbarItem,"_standardItemWithItemIdentifier:",_2f);
if(_delegate&&!_31){
_31=objj_msgSend(objj_msgSend(_delegate,"toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:",_2d,_2f,_30),"copy");
if(!_31){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,sprintf("_delegate %s returned nil toolbar item returned for identifier %s",_delegate,_2f));
}
}
objj_msgSend(_identifiedItems,"setObject:forKey:",_31,_2f);
}
return _31;
}
}),new objj_method(sel_getUid("_itemsWithIdentifiers:"),function(_32,_33,_34){
with(_32){
var _35=[];
for(var i=0;i<_34.length;i++){
objj_msgSend(_35,"addObject:",objj_msgSend(_32,"_itemForItemIdentifier:willBeInsertedIntoToolbar:",_34[i],NO));
}
return _35;
}
}),new objj_method(sel_getUid("_defaultToolbarItems"),function(_37,_38){
with(_37){
if(!_defaultItems){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("toolbarDefaultItemIdentifiers:"))){
_defaultItems=objj_msgSend(_37,"_itemsWithIdentifiers:",objj_msgSend(_delegate,"toolbarDefaultItemIdentifiers:",_37));
}
}
return _defaultItems;
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("initialize"),function(_39,_3a){
with(_39){
if(_39!=objj_msgSend(CPToolbar,"class")){
return;
}
_1=objj_msgSend(CPDictionary,"dictionary");
_2=objj_msgSend(CPDictionary,"dictionary");
}
}),new objj_method(sel_getUid("_addToolbar:forIdentifier:"),function(_3b,_3c,_3d,_3e){
with(_3b){
var _3f=objj_msgSend(_1,"objectForKey:",_3e);
if(!_3f){
_3f=[];
objj_msgSend(_1,"setObject:forKey:",_3f,_3e);
}
objj_msgSend(_3f,"addObject:",_3d);
}
})]);
var _40="CPToolbarIdentifierKey",_41="CPToolbarDisplayModeKey",_42="CPToolbarShowsBaselineSeparatorKey",_43="CPToolbarAllowsUserCustomizationKey",_44="CPToolbarIsVisibleKey",_45="CPToolbarDelegateKey",_46="CPToolbarIdentifiedItemsKey",_47="CPToolbarDefaultItemsKey",_48="CPToolbarAllowedItemsKey",_49="CPToolbarSelectableItemsKey";
var _3=objj_getClass("CPToolbar");
if(!_3){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPToolbar\""));
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("initWithCoder:"),function(_4a,_4b,_4c){
with(_4a){
_4a=objj_msgSendSuper({receiver:_4a,super_class:objj_getClass("CPObject")},"init");
if(_4a){
_identifier=objj_msgSend(_4c,"decodeObjectForKey:",_40);
_displayMode=objj_msgSend(_4c,"decodeIntForKey:",_41);
_showsBaselineSeparator=objj_msgSend(_4c,"decodeBoolForKey:",_42);
_allowsUserCustomization=objj_msgSend(_4c,"decodeBoolForKey:",_43);
_isVisible=objj_msgSend(_4c,"decodeBoolForKey:",_44);
_identifiedItems=objj_msgSend(_4c,"decodeObjectForKey:",_46);
_defaultItems=objj_msgSend(_4c,"decodeObjectForKey:",_47);
_allowedItems=objj_msgSend(_4c,"decodeObjectForKey:",_48);
_selectableItems=objj_msgSend(_4c,"decodeObjectForKey:",_49);
_items=[];
objj_msgSend(CPToolbar,"_addToolbar:forIdentifier:",_4a,_identifier);
objj_msgSend(_4a,"setDelegate:",objj_msgSend(_4c,"decodeObjectForKey:",_45));
}
return _4a;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_4d,_4e,_4f){
with(_4d){
objj_msgSend(_4f,"encodeObject:forKey:",_identifier,_40);
objj_msgSend(_4f,"encodeInt:forKey:",_displayMode,_41);
objj_msgSend(_4f,"encodeBool:forKey:",_showsBaselineSeparator,_42);
objj_msgSend(_4f,"encodeBool:forKey:",_allowsUserCustomization,_43);
objj_msgSend(_4f,"encodeBool:forKey:",_isVisible,_44);
objj_msgSend(_4f,"encodeObject:forKey:",_identifiedItems,_46);
objj_msgSend(_4f,"encodeObject:forKey:",_defaultItems,_47);
objj_msgSend(_4f,"encodeObject:forKey:",_allowedItems,_48);
objj_msgSend(_4f,"encodeObject:forKey:",_selectableItems,_49);
objj_msgSend(_4f,"encodeConditionalObject:forKey:",_delegate,_45);
}
})]);
var _50=nil,_51=nil,_52=nil;
var _53=5,_54=10,_55=20;
var _56=function(_57,_58,_59,_5a){
return {index:_57,view:_58,label:_59,minWidth:_5a};
};
var _3=objj_allocateClassPair(CPView,"_CPToolbarView"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_toolbar"),new objj_ivar("_flexibleWidthIndexes"),new objj_ivar("_visibleFlexibleWidthIndexes"),new objj_ivar("_itemInfos"),new objj_ivar("_visibleItems"),new objj_ivar("_invisibleItems"),new objj_ivar("_additionalItemsButton"),new objj_ivar("_labelColor"),new objj_ivar("_labelShadowColor"),new objj_ivar("_minWidth")]);
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("initWithFrame:"),function(_5b,_5c,_5d){
with(_5b){
_5b=objj_msgSendSuper({receiver:_5b,super_class:objj_getClass("CPView")},"initWithFrame:",_5d);
if(_5b){
_minWidth=0;
_labelColor=objj_msgSend(CPColor,"blackColor");
_labelShadowColor=objj_msgSend(CPColor,"colorWithWhite:alpha:",1,0.75);
_additionalItemsButton=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:pullsDown:",CGRectMake(0,0,10,15),YES);
objj_msgSend(_additionalItemsButton,"setBordered:",NO);
objj_msgSend(_additionalItemsButton,"setImagePosition:",CPImageOnly);
objj_msgSend(objj_msgSend(_additionalItemsButton,"menu"),"setShowsStateColumn:",NO);
objj_msgSend(_additionalItemsButton,"setAlternateImage:",_52);
}
return _5b;
}
}),new objj_method(sel_getUid("setToolbar:"),function(_5e,_5f,_60){
with(_5e){
_toolbar=_60;
}
}),new objj_method(sel_getUid("toolbar"),function(_61,_62){
with(_61){
return _toolbar;
}
}),new objj_method(sel_getUid("setLabelColor:"),function(_63,_64,_65){
with(_63){
if(_labelColor===_65){
return;
}
_labelColor=_65;
var _66=objj_msgSend(_toolbar,"items"),_67=objj_msgSend(_66,"count");
while(_67--){
objj_msgSend(objj_msgSend(_63,"labelForItem:",_66[_67]),"setTextColor:",_labelColor);
}
}
}),new objj_method(sel_getUid("setLabelShadowColor:"),function(_68,_69,_6a){
with(_68){
if(_labelShadowColor===_6a){
return;
}
_labelShadowColor=_6a;
var _6b=objj_msgSend(_toolbar,"items"),_6c=objj_msgSend(_6b,"count");
while(_6c--){
objj_msgSend(objj_msgSend(_68,"labelForItem:",_6b[_6c]),"setTextShadowColor:",_labelShadowColor);
}
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_6d,_6e,_6f){
with(_6d){
objj_msgSend(_6d,"layoutSubviews");
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_70,_71){
with(_70){
var _72=objj_msgSend(_toolbar,"items"),_73=CGRectGetWidth(objj_msgSend(_70,"bounds")),_74=_minWidth,_75=objj_msgSend(CPIndexSet,"indexSet"),_76=[];
_visibleItems=_72;
if(_73<_74){
_73-=_55;
_visibleItems=objj_msgSend(_visibleItems,"copy");
var _77=objj_msgSend(_toolbar,"itemsSortedByVisibilityPriority"),_78=_77.length;
while(_74>_73){
var _79=_77[_78--];
_74-=objj_msgSend(_70,"minWidthForItem:",_79)+_54;
objj_msgSend(_visibleItems,"removeObjectIdenticalTo:",_79);
objj_msgSend(_76,"addObject:",_79);
objj_msgSend(objj_msgSend(_70,"viewForItem:",_79),"setHidden:",YES);
objj_msgSend(objj_msgSend(_70,"labelForItem:",_79),"setHidden:",YES);
}
}
var _7a=_visibleItems.length,_7b=0;
while(_7a--){
var _79=_visibleItems[_7a],_7c=objj_msgSend(_79,"minSize"),_7d=objj_msgSend(_70,"viewForItem:",_79);
if(_7c.width!=objj_msgSend(_79,"maxSize").width){
objj_msgSend(_75,"addIndex:",_7a);
}else{
objj_msgSend(_7d,"setFrameSize:",CGSizeMake(objj_msgSend(_79,"minSize").width,CGRectGetHeight(objj_msgSend(_7d,"frame"))));
}
objj_msgSend(_7d,"setHidden:",NO);
objj_msgSend(objj_msgSend(_70,"labelForItem:",_79),"setHidden:",NO);
if(_7b<_7c.height){
_7b=_7c.height;
}
}
var _7e=_73-_74,_7f=0;
while(_7e&&objj_msgSend(_75,"count")){
_7f+=_7e/objj_msgSend(_75,"count");
_7e=0;
var _7a=CPNotFound;
while((_7a=objj_msgSend(_75,"indexGreaterThanIndex:",_7a))!=CPNotFound){
var _79=_visibleItems[_7a];
_7d=objj_msgSend(_70,"viewForItem:",_79),_80=objj_msgSend(_7d,"frame"),proposedWidth=objj_msgSend(_79,"minSize").width+_7f,constrainedWidth=MIN(proposedWidth,objj_msgSend(_79,"maxSize").width);
if(constrainedWidth<proposedWidth){
objj_msgSend(_75,"removeIndex:",_7a);
_7e+=proposedWidth-constrainedWidth;
}
objj_msgSend(_7d,"setFrameSize:",CGSizeMake(constrainedWidth,CGRectGetHeight(_80)));
}
}
var _78=_visibleItems.length,x=_54,_82=[];
for(_7a=0;_7a<_78;++_7a){
var _79=_visibleItems[_7a],_7d=objj_msgSend(_70,"viewForItem:",_79),_80=objj_msgSend(_7d,"frame"),_83=CGRectGetWidth(_80),_84=objj_msgSend(_70,"labelForItem:",_79),_85=objj_msgSend(_84,"frame"),_86=CGRectGetWidth(_85),_87=MAX(objj_msgSend(_70,"minWidthForItem:",_79),_83),_88=CGRectGetHeight(_80);
objj_msgSend(_7d,"setFrame:",CGRectMake(x+(_87-_83)/2,_53+(_7b-_88)/2,_83,_88));
objj_msgSend(_84,"setFrameOrigin:",CGPointMake(x+(_87-_86)/2,_53+_7b+2));
x+=_87+_54;
if(objj_msgSend(_79,"itemIdentifier")==CPToolbarSeparatorItemIdentifier){
_82.push(_79);
}
}
for(_7a=0,_78=_82.length;_7a<_78;++_7a){
var _7d=objj_msgSend(_70,"viewForItem:",_82[_7a]),_88=53;
objj_msgSend(_7d,"setFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_7d,"frame")),(59-_88)/2,CGRectGetWidth(objj_msgSend(_7d,"frame")),_88));
}
if(objj_msgSend(_76,"count")){
var _7a=0,_78=objj_msgSend(_72,"count");
_invisibleItems=[];
for(;_7a<_78;++_7a){
var _79=_72[_7a];
if(objj_msgSend(_76,"indexOfObjectIdenticalTo:",_79)!=CPNotFound){
objj_msgSend(_invisibleItems,"addObject:",_79);
}
}
objj_msgSend(_additionalItemsButton,"setFrameOrigin:",CGPointMake(_73+5,(CGRectGetHeight(objj_msgSend(_70,"bounds"))-CGRectGetHeight(objj_msgSend(_additionalItemsButton,"frame")))/2));
objj_msgSend(_70,"addSubview:",_additionalItemsButton);
objj_msgSend(_additionalItemsButton,"removeAllItems");
var _7a=0,_78=objj_msgSend(_invisibleItems,"count");
objj_msgSend(_additionalItemsButton,"addItemWithTitle:","Additional Items");
objj_msgSend(objj_msgSend(_additionalItemsButton,"itemArray")[0],"setImage:",_51);
for(;_7a<_78;++_7a){
var _79=_invisibleItems[_7a];
objj_msgSend(_additionalItemsButton,"addItemWithTitle:",objj_msgSend(_79,"label"));
var _89=objj_msgSend(_additionalItemsButton,"itemArray")[_7a+1];
objj_msgSend(_89,"setImage:",objj_msgSend(_79,"image"));
objj_msgSend(_89,"setTarget:",objj_msgSend(_79,"target"));
objj_msgSend(_89,"setAction:",objj_msgSend(_79,"action"));
}
}else{
objj_msgSend(_additionalItemsButton,"removeFromSuperview");
}
}
}),new objj_method(sel_getUid("viewForItem:"),function(_8a,_8b,_8c){
with(_8a){
var _8d=objj_msgSend(_itemInfos,"objectForKey:",objj_msgSend(_8c,"hash"));
if(!_8d){
return nil;
}
return _8d.view;
}
}),new objj_method(sel_getUid("labelForItem:"),function(_8e,_8f,_90){
with(_8e){
var _91=objj_msgSend(_itemInfos,"objectForKey:",objj_msgSend(_90,"hash"));
if(!_91){
return nil;
}
return _91.label;
}
}),new objj_method(sel_getUid("minWidthForItem:"),function(_92,_93,_94){
with(_92){
var _95=objj_msgSend(_itemInfos,"objectForKey:",objj_msgSend(_94,"hash"));
if(!_95){
return 0;
}
return _95.minWidth;
}
}),new objj_method(sel_getUid("reloadToolbarItems"),function(_96,_97){
with(_96){
var _98=objj_msgSend(_96,"subviews"),_99=_98.length;
while(_99--){
objj_msgSend(_98[_99],"removeFromSuperview");
}
var _9a=objj_msgSend(_toolbar,"items"),_9b=0;
_99=_9a.length;
_itemInfos=objj_msgSend(CPDictionary,"dictionary");
_minWidth=_54;
for(;_9b<_99;++_9b){
var _9c=_9a[_9b],_9d=objj_msgSend(_9c,"view");
if(!_9d){
_9d=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(0,0,32,32));
objj_msgSend(_9d,"setBordered:",NO);
objj_msgSend(_9d,"setImage:",objj_msgSend(_9c,"image"));
objj_msgSend(_9d,"setAlternateImage:",objj_msgSend(_9c,"alternateImage"));
objj_msgSend(_9d,"setTarget:",objj_msgSend(_9c,"target"));
objj_msgSend(_9d,"setAction:",objj_msgSend(_9c,"action"));
objj_msgSend(_9d,"setTag:",objj_msgSend(_9c,"tag"));
objj_msgSend(_9d,"setImagePosition:",CPImageOnly);
}
objj_msgSend(_96,"addSubview:",_9d);
var _9e=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_9e,"setStringValue:",objj_msgSend(_9c,"label"));
objj_msgSend(_9e,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",11));
objj_msgSend(_9e,"setTextColor:",_labelColor);
objj_msgSend(_9e,"setTextShadowColor:",_labelShadowColor);
objj_msgSend(_9e,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_9e,"sizeToFit");
objj_msgSend(_9e,"setTarget:",objj_msgSend(_9c,"target"));
objj_msgSend(_9e,"setAction:",objj_msgSend(_9c,"action"));
objj_msgSend(_96,"addSubview:",_9e);
var _9f=objj_msgSend(_9c,"minSize"),_a0=MAX(_9f.width,CGRectGetWidth(objj_msgSend(_9e,"frame")));
objj_msgSend(_itemInfos,"setObject:forKey:",_56(_9b,_9d,_9e,_a0),objj_msgSend(_9c,"hash"));
_minWidth+=_a0+_54;
}
objj_msgSend(_96,"layoutSubviews");
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("initialize"),function(_a1,_a2){
with(_a1){
if(_a1!=objj_msgSend(_CPToolbarView,"class")){
return;
}
var _a3=objj_msgSend(CPBundle,"bundleForClass:",_a1);
_51=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a3,"pathForResource:","_CPToolbarView/_CPToolbarViewExtraItemsImage.png"),CPSizeMake(10,15));
_52=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_a3,"pathForResource:","_CPToolbarView/_CPToolbarViewExtraItemsAlternateImage.png"),CGSizeMake(10,15));
}
})]);
var _26=function(lhs,rhs){
var _a6=objj_msgSend(lhs,"visibilityPriority"),_a7=objj_msgSend(rhs,"visibilityPriority");
if(_a6==_a7){
return CPOrderedSame;
}
if(_a6>_a7){
return CPOrderedAscending;
}
return CPOrderedDescending;
};
p;15;CPToolbarItem.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jI;16;AppKit/CPImage.jI;15;AppKit/CPView.jc;9705;
CPToolbarItemVisibilityPriorityStandard=0;
CPToolbarItemVisibilityPriorityLow=-1000;
CPToolbarItemVisibilityPriorityHigh=1000;
CPToolbarItemVisibilityPriorityUser=2000;
CPToolbarSeparatorItemIdentifier="CPToolbarSeparatorItemIdentifier";
CPToolbarSpaceItemIdentifier="CPToolbarSpaceItemIdentifier";
CPToolbarFlexibleSpaceItemIdentifier="CPToolbarFlexibleSpaceItemIdentifier";
CPToolbarShowColorsItemIdentifier="CPToolbarShowColorsItemIdentifier";
CPToolbarShowFontsItemIdentifier="CPToolbarShowFontsItemIdentifier";
CPToolbarCustomizeToolbarItemIdentifier="CPToolbarCustomizeToolbarItemIdentifier";
CPToolbarPrintItemIdentifier="CPToolbarPrintItemIdentifier";
var _1=objj_allocateClassPair(CPObject,"CPToolbarItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_itemIdentifier"),new objj_ivar("_toolbar"),new objj_ivar("_label"),new objj_ivar("_paletteLabel"),new objj_ivar("_toolTip"),new objj_ivar("_tag"),new objj_ivar("_target"),new objj_ivar("_action"),new objj_ivar("_isEnabled"),new objj_ivar("_image"),new objj_ivar("_alternateImage"),new objj_ivar("_view"),new objj_ivar("_minSize"),new objj_ivar("_maxSize"),new objj_ivar("_visibilityPriority")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithItemIdentifier:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_itemIdentifier=_5;
_tag=0;
_isEnabled=YES;
_minSize=CGSizeMakeZero();
_maxSize=CGSizeMakeZero();
_visibilityPriority=CPToolbarItemVisibilityPriorityStandard;
}
return _3;
}
}),new objj_method(sel_getUid("itemIdentifier"),function(_6,_7){
with(_6){
return _itemIdentifier;
}
}),new objj_method(sel_getUid("toolbar"),function(_8,_9){
with(_8){
return _toolbar;
}
}),new objj_method(sel_getUid("label"),function(_a,_b){
with(_a){
return _label;
}
}),new objj_method(sel_getUid("setLabel:"),function(_c,_d,_e){
with(_c){
_label=_e;
}
}),new objj_method(sel_getUid("paletteLabel"),function(_f,_10){
with(_f){
return _paletteLabel;
}
}),new objj_method(sel_getUid("setPaletteLabel:"),function(_11,_12,_13){
with(_11){
_paletteLabel=_13;
}
}),new objj_method(sel_getUid("toolTip"),function(_14,_15){
with(_14){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("toolTip"))){
return objj_msgSend(_view,"toolTip");
}
return _toolTip;
}
}),new objj_method(sel_getUid("setToolTip:"),function(_16,_17,_18){
with(_16){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setToolTip:"))){
objj_msgSend(view,"setToolTip:",_18);
}
_toolTip=_18;
}
}),new objj_method(sel_getUid("tag"),function(_19,_1a){
with(_19){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("tag"))){
return objj_msgSend(_view,"tag");
}
return _tag;
}
}),new objj_method(sel_getUid("setTag:"),function(_1b,_1c,_1d){
with(_1b){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setTag:"))){
objj_msgSend(_view,"setTag:",_1d);
}
_tag=_1d;
}
}),new objj_method(sel_getUid("target"),function(_1e,_1f){
with(_1e){
if(_view){
return objj_msgSend(_view,"respondsToSelector:",sel_getUid("target"))?objj_msgSend(_view,"target"):nil;
}
return _target;
}
}),new objj_method(sel_getUid("setTarget:"),function(_20,_21,_22){
with(_20){
if(!_view){
_target=_22;
}else{
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setTarget:"))){
objj_msgSend(_view,"setTarget:",_22);
}
}
}
}),new objj_method(sel_getUid("action"),function(_23,_24){
with(_23){
if(_view){
return objj_msgSend(_view,"respondsToSelector:",sel_getUid("action"))?objj_msgSend(_view,"action"):nil;
}
return _action;
}
}),new objj_method(sel_getUid("setAction:"),function(_25,_26,_27){
with(_25){
if(!_view){
_action=_27;
}else{
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setAction:"))){
objj_msgSend(_view,"setAction:",_27);
}
}
}
}),new objj_method(sel_getUid("isEnabled"),function(_28,_29){
with(_28){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("isEnabled"))){
return objj_msgSend(_view,"isEnabled");
}
return _isEnabled;
}
}),new objj_method(sel_getUid("setEnabled:"),function(_2a,_2b,_2c){
with(_2a){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setEnabled:"))){
objj_msgSend(_view,"setEnabled:",_2c);
}
_isEnabled=_2c;
}
}),new objj_method(sel_getUid("image"),function(_2d,_2e){
with(_2d){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("image"))){
return objj_msgSend(_view,"image");
}
return _image;
}
}),new objj_method(sel_getUid("setImage:"),function(_2f,_30,_31){
with(_2f){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setImage:"))){
objj_msgSend(_view,"setImage:",_31);
}
_image=_31;
if(!_image){
return;
}
if(_minSize.width==0&&_minSize.height==0&&_maxSize.width==0&&_maxSize.height==0){
var _32=objj_msgSend(_image,"size");
if(_32.width>0||_32.height>0){
objj_msgSend(_2f,"setMinSize:",_32);
objj_msgSend(_2f,"setMaxSize:",_32);
}
}
}
}),new objj_method(sel_getUid("setAlternateImage:"),function(_33,_34,_35){
with(_33){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setAlternateImage:"))){
objj_msgSend(_view,"setAlternateImage:",_35);
}
_alternateImage=_35;
}
}),new objj_method(sel_getUid("alternateImage"),function(_36,_37){
with(_36){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("alternateIamge"))){
return objj_msgSend(_view,"alternateImage");
}
return _alternateImage;
}
}),new objj_method(sel_getUid("view"),function(_38,_39){
with(_38){
return _view;
}
}),new objj_method(sel_getUid("setView:"),function(_3a,_3b,_3c){
with(_3a){
if(_view==_3c){
return;
}
_view=_3c;
if(_view){
if(_tag!==0&&objj_msgSend(_view,"respondsToSelector:",sel_getUid("setTag:"))){
objj_msgSend(_view,"setTag:",_tag);
}
_target=nil;
_action=nil;
}
}
}),new objj_method(sel_getUid("minSize"),function(_3d,_3e){
with(_3d){
return _minSize;
}
}),new objj_method(sel_getUid("setMinSize:"),function(_3f,_40,_41){
with(_3f){
_minSize=CGSizeMakeCopy(_41);
_maxSize=CGSizeMake(MAX(_minSize.width,_maxSize.width),MAX(_minSize.height,_maxSize.height));
}
}),new objj_method(sel_getUid("maxSize"),function(_42,_43){
with(_42){
return _maxSize;
}
}),new objj_method(sel_getUid("setMaxSize:"),function(_44,_45,_46){
with(_44){
_maxSize=CGSizeMakeCopy(_46);
_minSize=CGSizeMake(MIN(_minSize.width,_maxSize.width),MIN(_minSize.height,_maxSize.height));
}
}),new objj_method(sel_getUid("visibilityPriority"),function(_47,_48){
with(_47){
return _visibilityPriority;
}
}),new objj_method(sel_getUid("setVisibilityPriority:"),function(_49,_4a,_4b){
with(_49){
_visibilityPriority=_4b;
}
})]);
var _1=objj_getClass("CPToolbarItem");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPToolbarItem\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("copy"),function(_4c,_4d){
with(_4c){
var _4e=objj_msgSend(objj_msgSend(objj_msgSend(_4c,"class"),"alloc"),"initWithItemIdentifier:",_itemIdentifier);
if(_view){
objj_msgSend(_4e,"setView:",objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_view)));
}
objj_msgSend(_4e,"setLabel:",_label);
objj_msgSend(_4e,"setPaletteLabel:",_paletteLabel);
objj_msgSend(_4e,"setToolTip:",objj_msgSend(_4c,"toolTip"));
objj_msgSend(_4e,"setTag:",objj_msgSend(_4c,"tag"));
objj_msgSend(_4e,"setTarget:",objj_msgSend(_4c,"target"));
objj_msgSend(_4e,"setAction:",objj_msgSend(_4c,"action"));
objj_msgSend(_4e,"setEnabled:",objj_msgSend(_4c,"isEnabled"));
objj_msgSend(_4e,"setImage:",objj_msgSend(_4c,"image"));
objj_msgSend(_4e,"setAlternateImage:",objj_msgSend(_4c,"alternateImage"));
objj_msgSend(_4e,"setMinSize:",_minSize);
objj_msgSend(_4e,"setMaxSize:",_maxSize);
objj_msgSend(_4e,"setVisibilityPriority:",_visibilityPriority);
return _4e;
}
})]);
var _4f=nil,_50=nil;
var _1=objj_getClass("CPToolbarItem");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPToolbarItem\""));
}
var _2=_1.isa;
class_addMethods(_2,[new objj_method(sel_getUid("_separatorItemView"),function(_51,_52){
with(_51){
if(!_4f){
_4f=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,2,32));
sizes={};
sizes["CPToolbarItemSeparator"]=[CGSizeMake(2,26),CGSizeMake(2,1),CGSizeMake(2,26)];
objj_msgSend(_4f,"setBackgroundColor:",_CPControlThreePartImagePattern(YES,sizes,"CPToolbarItem","Separator"));
}
return _4f;
}
}),new objj_method(sel_getUid("_spaceItemView"),function(_53,_54){
with(_53){
if(!_50){
_50=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
}
return _50;
}
}),new objj_method(sel_getUid("_standardItemWithItemIdentifier:"),function(_55,_56,_57){
with(_55){
var _58=objj_msgSend(objj_msgSend(CPToolbarItem,"alloc"),"initWithItemIdentifier:",_57);
switch(_57){
case CPToolbarSeparatorItemIdentifier:
objj_msgSend(_58,"setView:",objj_msgSend(_55,"_separatorItemView"));
objj_msgSend(_58,"setMinSize:",CGSizeMake(2,0));
objj_msgSend(_58,"setMaxSize:",CGSizeMake(2,100000));
return _58;
case CPToolbarSpaceItemIdentifier:
objj_msgSend(_58,"setView:",objj_msgSend(_55,"_spaceItemView"));
objj_msgSend(_58,"setMinSize:",CGSizeMake(32,32));
objj_msgSend(_58,"setMaxSize:",CGSizeMake(32,32));
return _58;
case CPToolbarFlexibleSpaceItemIdentifier:
objj_msgSend(_58,"setView:",objj_msgSend(_55,"_spaceItemView"));
objj_msgSend(_58,"setMinSize:",CGSizeMake(32,32));
objj_msgSend(_58,"setMaxSize:",CGSizeMake(10000,32));
return _58;
case CPToolbarShowColorsItemIdentifier:
return nil;
case CPToolbarShowFontsItemIdentifier:
return nil;
case CPToolbarCustomizeToolbarItemIdentifier:
return nil;
case CPToolbarPrintItemIdentifier:
return nil;
}
return nil;
}
})]);
p;8;CPView.jI;20;Foundation/CPArray.jI;26;Foundation/CPObjJRuntime.ji;19;CGAffineTransform.ji;12;CGGeometry.ji;9;CPColor.ji;20;CPDOMDisplayServer.ji;12;CPGeometry.ji;19;CPGraphicsContext.ji;13;CPResponder.ji;9;CPTheme.jc;65549;
CPViewNotSizable=0;
CPViewMinXMargin=1;
CPViewWidthSizable=2;
CPViewMaxXMargin=4;
CPViewMinYMargin=8;
CPViewHeightSizable=16;
CPViewMaxYMargin=32;
CPViewBoundsDidChangeNotification="CPViewBoundsDidChangeNotification";
CPViewFrameDidChangeNotification="CPViewFrameDidChangeNotification";
var _1=nil,_2=nil;
var _3=nil,_4=0,_5=1,_6=2,_7=3,_8={},_9={};
var _a=objj_allocateClassPair(CPResponder,"CPView"),_b=_a.isa;
class_addIvars(_a,[new objj_ivar("_window"),new objj_ivar("_superview"),new objj_ivar("_subviews"),new objj_ivar("_graphicsContext"),new objj_ivar("_tag"),new objj_ivar("_frame"),new objj_ivar("_bounds"),new objj_ivar("_boundsTransform"),new objj_ivar("_inverseBoundsTransform"),new objj_ivar("_registeredDraggedTypes"),new objj_ivar("_registeredDraggedTypesArray"),new objj_ivar("_isHidden"),new objj_ivar("_hitTests"),new objj_ivar("_postsFrameChangedNotifications"),new objj_ivar("_postsBoundsChangedNotifications"),new objj_ivar("_inhibitFrameAndBoundsChangedNotifications"),new objj_ivar("_displayHash"),new objj_ivar("_DOMElement"),new objj_ivar("_DOMContentsElement"),new objj_ivar("_DOMImageParts"),new objj_ivar("_DOMImageSizes"),new objj_ivar("_backgroundType"),new objj_ivar("_dirtyRect"),new objj_ivar("_opacity"),new objj_ivar("_backgroundColor"),new objj_ivar("_autoresizesSubviews"),new objj_ivar("_autoresizingMask"),new objj_ivar("_layer"),new objj_ivar("_wantsLayer"),new objj_ivar("_isInFullScreenMode"),new objj_ivar("_fullScreenModeState"),new objj_ivar("_needsLayout"),new objj_ivar("_ephemeralSubviews"),new objj_ivar("_theme"),new objj_ivar("_themeAttributes"),new objj_ivar("_themeState"),new objj_ivar("_nextKeyView"),new objj_ivar("_previousKeyView")]);
objj_registerClassPair(_a);
objj_addClassForBundle(_a,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_a,[new objj_method(sel_getUid("init"),function(_c,_d){
with(_c){
return objj_msgSend(_c,"initWithFrame:",CGRectMakeZero());
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_e,_f,_10){
with(_e){
_e=objj_msgSendSuper({receiver:_e,super_class:objj_getClass("CPResponder")},"init");
if(_e){
var _11=(_10.size.width),_12=(_10.size.height);
_subviews=[];
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
_tag=-1;
_frame={origin:{x:_10.origin.x,y:_10.origin.y},size:{width:_10.size.width,height:_10.size.height}};
_bounds={origin:{x:0,y:0},size:{width:_11,height:_12}};
_autoresizingMask=CPViewNotSizable;
_autoresizesSubviews=YES;
_opacity=1;
_isHidden=NO;
_hitTests=YES;
_displayHash=objj_msgSend(_e,"hash");
_DOMElement=_3.cloneNode(false);
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _13=_DOMElement.CPDOMDisplayContext[0];
if(!(_13>=0)){
_13=_DOMElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_13]=0;
CPDOMDisplayServerInstructions[_13+1]=_DOMElement;
CPDOMDisplayServerInstructions[_13+2]=NULL;
CPDOMDisplayServerInstructions[_13+3]=(_10.origin.x);
CPDOMDisplayServerInstructions[_13+4]=(_10.origin.y);
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _13=_DOMElement.CPDOMDisplayContext[4];
if(!(_13>=0)){
_13=_DOMElement.CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_13]=4;
CPDOMDisplayServerInstructions[_13+1]=_DOMElement;
CPDOMDisplayServerInstructions[_13+2]=_11;
CPDOMDisplayServerInstructions[_13+3]=_12;
_DOMImageParts=[];
_DOMImageSizes=[];
_theme=objj_msgSend(CPTheme,"defaultTheme");
_themeState=CPThemeStateNormal;
objj_msgSend(_e,"_loadThemeAttributes");
}
return _e;
}
}),new objj_method(sel_getUid("superview"),function(_14,_15){
with(_14){
return _superview;
}
}),new objj_method(sel_getUid("subviews"),function(_16,_17){
with(_16){
return _subviews;
}
}),new objj_method(sel_getUid("window"),function(_18,_19){
with(_18){
return _window;
}
}),new objj_method(sel_getUid("addSubview:"),function(_1a,_1b,_1c){
with(_1a){
objj_msgSend(_1a,"_insertSubview:atIndex:",_1c,CPNotFound);
}
}),new objj_method(sel_getUid("addSubview:positioned:relativeTo:"),function(_1d,_1e,_1f,_20,_21){
with(_1d){
var _22=_21?objj_msgSend(_subviews,"indexOfObjectIdenticalTo:",_21):CPNotFound;
if(_22===CPNotFound){
_22=(_20===CPWindowAbove)?objj_msgSend(_subviews,"count"):0;
}else{
if(_20===CPWindowAbove){
++_22;
}
}
objj_msgSend(_1d,"_insertSubview:atIndex:",_1f,_22);
}
}),new objj_method(sel_getUid("_insertSubview:atIndex:"),function(_23,_24,_25,_26){
with(_23){
var _27=_subviews.length;
objj_msgSend(objj_msgSend(_23,"window"),"_dirtyKeyViewLoop");
if(_25._superview==_23){
var _28=objj_msgSend(_subviews,"indexOfObjectIdenticalTo:",_25);
if(_28===_26||_28===_27-1&&_26===_27){
return;
}
objj_msgSend(_subviews,"removeObjectAtIndex:",_28);
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=8;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_25._DOMElement;
if(_26>_28){
--_26;
}
--_27;
}else{
objj_msgSend(_25,"removeFromSuperview");
objj_msgSend(_25,"_setWindow:",_window);
objj_msgSend(_25,"viewWillMoveToSuperview:",_23);
_25._superview=_23;
}
if(_26===CPNotFound||_26>=_27){
_subviews.push(_25);
if(_25._DOMElement.CPDOMDisplayContext){
_25._DOMElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=6;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_25._DOMElement;
}else{
_subviews.splice(_26,0,_25);
if(_25._DOMElement.CPDOMDisplayContext){
_25._DOMElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=7;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_25._DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_subviews[_26+1]._DOMElement;
}
objj_msgSend(_25,"setNextResponder:",_23);
objj_msgSend(_25,"viewDidMoveToSuperview");
objj_msgSend(_23,"didAddSubview:",_25);
}
}),new objj_method(sel_getUid("didAddSubview:"),function(_29,_2a,_2b){
with(_29){
}
}),new objj_method(sel_getUid("removeFromSuperview"),function(_2c,_2d){
with(_2c){
if(!_superview){
return;
}
objj_msgSend(objj_msgSend(_2c,"window"),"_dirtyKeyViewLoop");
objj_msgSend(_superview,"willRemoveSubview:",_2c);
objj_msgSend(objj_msgSend(_superview,"subviews"),"removeObject:",_2c);
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=8;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_superview._DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
_superview=nil;
objj_msgSend(_2c,"_setWindow:",nil);
}
}),new objj_method(sel_getUid("replaceSubview:with:"),function(_2e,_2f,_30,_31){
with(_2e){
if(_30._superview!=_2e){
return;
}
var _32=objj_msgSend(_subviews,"indexOfObjectIdenticalTo:",_30);
objj_msgSend(_30,"removeFromSuperview");
objj_msgSend(_2e,"_insertSubview:atIndex:",_31,_32);
}
}),new objj_method(sel_getUid("_setWindow:"),function(_33,_34,_35){
with(_33){
if(_window===_35){
return;
}
objj_msgSend(objj_msgSend(_33,"window"),"_dirtyKeyViewLoop");
if(objj_msgSend(_window,"firstResponder")===_33){
objj_msgSend(_window,"makeFirstResponder:",nil);
}
objj_msgSend(_33,"viewWillMoveToWindow:",_35);
if(_registeredDraggedTypes){
objj_msgSend(_window,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
objj_msgSend(_35,"_noteRegisteredDraggedTypes:",_registeredDraggedTypes);
}
_window=_35;
var _36=objj_msgSend(_subviews,"count");
while(_36--){
objj_msgSend(_subviews[_36],"_setWindow:",_35);
}
objj_msgSend(_33,"viewDidMoveToWindow");
objj_msgSend(objj_msgSend(_33,"window"),"_dirtyKeyViewLoop");
}
}),new objj_method(sel_getUid("isDescendantOf:"),function(_37,_38,_39){
with(_37){
var _3a=_37;
do{
if(_3a==_39){
return YES;
}
}while(_3a=objj_msgSend(_3a,"superview"));
return NO;
}
}),new objj_method(sel_getUid("viewDidMoveToSuperview"),function(_3b,_3c){
with(_3b){
objj_msgSend(_3b,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_3d,_3e){
with(_3d){
}
}),new objj_method(sel_getUid("viewWillMoveToSuperview:"),function(_3f,_40,_41){
with(_3f){
}
}),new objj_method(sel_getUid("viewWillMoveToWindow:"),function(_42,_43,_44){
with(_42){
}
}),new objj_method(sel_getUid("willRemoveSubview:"),function(_45,_46,_47){
with(_45){
}
}),new objj_method(sel_getUid("enclosingMenuItem"),function(_48,_49){
with(_48){
var _4a=_48;
while(_4a&&!objj_msgSend(_4a,"isKindOfClass:",objj_msgSend(_CPMenuItemView,"class"))){
_4a=objj_msgSend(_4a,"superview");
}
if(_4a){
return _4a._menuItem;
}
return nil;
}
}),new objj_method(sel_getUid("setTag:"),function(_4b,_4c,_4d){
with(_4b){
_tag=_4d;
}
}),new objj_method(sel_getUid("tag"),function(_4e,_4f){
with(_4e){
return _tag;
}
}),new objj_method(sel_getUid("viewWithTag:"),function(_50,_51,_52){
with(_50){
if(objj_msgSend(_50,"tag")===_52){
return _50;
}
var _53=0,_54=_subviews.length;
for(;_53<_54;++_53){
var _55=objj_msgSend(_subviews[_53],"viewWithTag:",_52);
if(_55){
return _55;
}
}
return nil;
}
}),new objj_method(sel_getUid("isFlipped"),function(_56,_57){
with(_56){
return YES;
}
}),new objj_method(sel_getUid("setFrame:"),function(_58,_59,_5a){
with(_58){
if(((_frame.origin.x==_5a.origin.x&&_frame.origin.y==_5a.origin.y)&&(_frame.size.width==_5a.size.width&&_frame.size.height==_5a.size.height))){
return;
}
_inhibitFrameAndBoundsChangedNotifications=YES;
objj_msgSend(_58,"setFrameOrigin:",_5a.origin);
objj_msgSend(_58,"setFrameSize:",_5a.size);
_inhibitFrameAndBoundsChangedNotifications=NO;
if(_postsFrameChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewFrameDidChangeNotification,_58);
}
}
}),new objj_method(sel_getUid("frame"),function(_5b,_5c){
with(_5b){
return {origin:{x:_frame.origin.x,y:_frame.origin.y},size:{width:_frame.size.width,height:_frame.size.height}};
}
}),new objj_method(sel_getUid("setCenter:"),function(_5d,_5e,_5f){
with(_5d){
objj_msgSend(_5d,"setFrameOrigin:",CGPointMake(_5f.x-_frame.size.width/2,_5f.y-_frame.size.height/2));
}
}),new objj_method(sel_getUid("center"),function(_60,_61){
with(_60){
return CGPointMake(_frame.size.width/2+_frame.origin.x,_frame.size.height/2+_frame.origin.y);
}
}),new objj_method(sel_getUid("setFrameOrigin:"),function(_62,_63,_64){
with(_62){
var _65=_frame.origin;
if(!_64||(_65.x==_64.x&&_65.y==_64.y)){
return;
}
_65.x=_64.x;
_65.y=_64.y;
if(_postsFrameChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewFrameDidChangeNotification,_62);
}
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _66=_DOMElement.CPDOMDisplayContext[0];
if(!(_66>=0)){
_66=_DOMElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_66]=0;
CPDOMDisplayServerInstructions[_66+1]=_DOMElement;
CPDOMDisplayServerInstructions[_66+2]=_superview?_superview._boundsTransform:NULL;
CPDOMDisplayServerInstructions[_66+3]=_65.x;
CPDOMDisplayServerInstructions[_66+4]=_65.y;
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_67,_68,_69){
with(_67){
var _6a=_frame.size;
if(!_69||(_6a.width==_69.width&&_6a.height==_69.height)){
return;
}
var _6b={width:_6a.width,height:_6a.height};
_6a.width=_69.width;
_6a.height=_69.height;
if(YES){
_bounds.size.width=_69.width;
_bounds.size.height=_69.height;
}
if(_layer){
objj_msgSend(_layer,"_owningViewBoundsChanged");
}
if(_autoresizesSubviews){
objj_msgSend(_67,"resizeSubviewsWithOldSize:",_6b);
}
objj_msgSend(_67,"setNeedsLayout");
objj_msgSend(_67,"setNeedsDisplay:",YES);
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _6c=_DOMElement.CPDOMDisplayContext[4];
if(!(_6c>=0)){
_6c=_DOMElement.CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_6c]=4;
CPDOMDisplayServerInstructions[_6c+1]=_DOMElement;
CPDOMDisplayServerInstructions[_6c+2]=_6a.width;
CPDOMDisplayServerInstructions[_6c+3]=_6a.height;
if(_DOMContentsElement){
if(!_DOMContentsElement.CPDOMDisplayContext){
_DOMContentsElement.CPDOMDisplayContext=[];
}
var _6c=_DOMContentsElement.CPDOMDisplayContext[5];
if(!(_6c>=0)){
_6c=_DOMContentsElement.CPDOMDisplayContext[5]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_6c]=5;
CPDOMDisplayServerInstructions[_6c+1]=_DOMContentsElement;
CPDOMDisplayServerInstructions[_6c+2]=_6a.width;
CPDOMDisplayServerInstructions[_6c+3]=_6a.height;
if(!_DOMContentsElement.CPDOMDisplayContext){
_DOMContentsElement.CPDOMDisplayContext=[];
}
var _6c=_DOMContentsElement.CPDOMDisplayContext[4];
if(!(_6c>=0)){
_6c=_DOMContentsElement.CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_6c]=4;
CPDOMDisplayServerInstructions[_6c+1]=_DOMContentsElement;
CPDOMDisplayServerInstructions[_6c+2]=_6a.width;
CPDOMDisplayServerInstructions[_6c+3]=_6a.height;
}
if(_backgroundType!==_4){
var _6d=objj_msgSend(objj_msgSend(_backgroundColor,"patternImage"),"imageSlices");
if(_backgroundType===_5){
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _6c=_DOMImageParts[1].CPDOMDisplayContext[4];
if(!(_6c>=0)){
_6c=_DOMImageParts[1].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_6c]=4;
CPDOMDisplayServerInstructions[_6c+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_6c+2]=_6a.width;
CPDOMDisplayServerInstructions[_6c+3]=_6a.height-_DOMImageSizes[0].height-_DOMImageSizes[2].height;
}else{
if(_backgroundType===_6){
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _6c=_DOMImageParts[1].CPDOMDisplayContext[4];
if(!(_6c>=0)){
_6c=_DOMImageParts[1].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_6c]=4;
CPDOMDisplayServerInstructions[_6c+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_6c+2]=_6a.width-_DOMImageSizes[0].width-_DOMImageSizes[2].width;
CPDOMDisplayServerInstructions[_6c+3]=_6a.height;
}else{
if(_backgroundType===_7){
var _6e=_6a.width-_DOMImageSizes[0].width-_DOMImageSizes[2].width,_6f=_6a.height-_DOMImageSizes[0].height-_DOMImageSizes[6].height;
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _6c=_DOMImageParts[1].CPDOMDisplayContext[4];
if(!(_6c>=0)){
_6c=_DOMImageParts[1].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_6c]=4;
CPDOMDisplayServerInstructions[_6c+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_6c+2]=_6e;
CPDOMDisplayServerInstructions[_6c+3]=_DOMImageSizes[0].height;
if(!_DOMImageParts[3].CPDOMDisplayContext){
_DOMImageParts[3].CPDOMDisplayContext=[];
}
var _6c=_DOMImageParts[3].CPDOMDisplayContext[4];
if(!(_6c>=0)){
_6c=_DOMImageParts[3].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_6c]=4;
CPDOMDisplayServerInstructions[_6c+1]=_DOMImageParts[3];
CPDOMDisplayServerInstructions[_6c+2]=_DOMImageSizes[3].width;
CPDOMDisplayServerInstructions[_6c+3]=_6f;
if(!_DOMImageParts[4].CPDOMDisplayContext){
_DOMImageParts[4].CPDOMDisplayContext=[];
}
var _6c=_DOMImageParts[4].CPDOMDisplayContext[4];
if(!(_6c>=0)){
_6c=_DOMImageParts[4].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_6c]=4;
CPDOMDisplayServerInstructions[_6c+1]=_DOMImageParts[4];
CPDOMDisplayServerInstructions[_6c+2]=_6e;
CPDOMDisplayServerInstructions[_6c+3]=_6f;
if(!_DOMImageParts[5].CPDOMDisplayContext){
_DOMImageParts[5].CPDOMDisplayContext=[];
}
var _6c=_DOMImageParts[5].CPDOMDisplayContext[4];
if(!(_6c>=0)){
_6c=_DOMImageParts[5].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_6c]=4;
CPDOMDisplayServerInstructions[_6c+1]=_DOMImageParts[5];
CPDOMDisplayServerInstructions[_6c+2]=_DOMImageSizes[5].width;
CPDOMDisplayServerInstructions[_6c+3]=_6f;
if(!_DOMImageParts[7].CPDOMDisplayContext){
_DOMImageParts[7].CPDOMDisplayContext=[];
}
var _6c=_DOMImageParts[7].CPDOMDisplayContext[4];
if(!(_6c>=0)){
_6c=_DOMImageParts[7].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_6c]=4;
CPDOMDisplayServerInstructions[_6c+1]=_DOMImageParts[7];
CPDOMDisplayServerInstructions[_6c+2]=_6e;
CPDOMDisplayServerInstructions[_6c+3]=_DOMImageSizes[7].height;
}
}
}
}
if(_postsFrameChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewFrameDidChangeNotification,_67);
}
}
}),new objj_method(sel_getUid("setBounds:"),function(_70,_71,_72){
with(_70){
if(((_bounds.origin.x==_72.origin.x&&_bounds.origin.y==_72.origin.y)&&(_bounds.size.width==_72.size.width&&_bounds.size.height==_72.size.height))){
return;
}
_inhibitFrameAndBoundsChangedNotifications=YES;
objj_msgSend(_70,"setBoundsOrigin:",_72.origin);
objj_msgSend(_70,"setBoundsSize:",_72.size);
_inhibitFrameAndBoundsChangedNotifications=NO;
if(_postsBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewBoundsDidChangeNotification,_70);
}
}
}),new objj_method(sel_getUid("bounds"),function(_73,_74){
with(_73){
return {origin:{x:_bounds.origin.x,y:_bounds.origin.y},size:{width:_bounds.size.width,height:_bounds.size.height}};
}
}),new objj_method(sel_getUid("setBoundsOrigin:"),function(_75,_76,_77){
with(_75){
var _78=_bounds.origin;
if((_78.x==_77.x&&_78.y==_77.y)){
return;
}
_78.x=_77.x;
_78.y=_77.y;
if(_78.x!=0||_78.y!=0){
_boundsTransform={a:1,b:0,c:0,d:1,tx:-_78.x,ty:-_78.y};
_inverseBoundsTransform=CGAffineTransformInvert(_boundsTransform);
}else{
_boundsTransform=nil;
_inverseBoundsTransform=nil;
}
var _79=_subviews.length;
while(_79--){
var _7a=_subviews[_79],_78=_7a._frame.origin;
if(!_7a._DOMElement.CPDOMDisplayContext){
_7a._DOMElement.CPDOMDisplayContext=[];
}
var _7b=_7a._DOMElement.CPDOMDisplayContext[0];
if(!(_7b>=0)){
_7b=_7a._DOMElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_7b]=0;
CPDOMDisplayServerInstructions[_7b+1]=_7a._DOMElement;
CPDOMDisplayServerInstructions[_7b+2]=_boundsTransform;
CPDOMDisplayServerInstructions[_7b+3]=_78.x;
CPDOMDisplayServerInstructions[_7b+4]=_78.y;
}
if(_postsBoundsChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewBoundsDidChangeNotification,_75);
}
}
}),new objj_method(sel_getUid("setBoundsSize:"),function(_7c,_7d,_7e){
with(_7c){
var _7f=_bounds.size;
if((_7f.width==_7e.width&&_7f.height==_7e.height)){
return;
}
var _80=_frame.size;
if(!(_7f.width==_80.width&&_7f.height==_80.height)){
var _81=_bounds.origin;
_81.x/=_7f.width/_80.width;
_81.y/=_7f.height/_80.height;
}
_7f.width=_7e.width;
_7f.height=_7e.height;
if(!(_7f.width==_80.width&&_7f.height==_80.height)){
var _81=_bounds.origin;
_81.x*=_7f.width/_80.width;
_81.y*=_7f.height/_80.height;
}
if(_postsBoundsChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewBoundsDidChangeNotification,_7c);
}
}
}),new objj_method(sel_getUid("resizeWithOldSuperviewSize:"),function(_82,_83,_84){
with(_82){
var _85=objj_msgSend(_82,"autoresizingMask");
if(_85==CPViewNotSizable){
return;
}
var _86=_superview._frame,_87={origin:{x:_frame.origin.x,y:_frame.origin.y},size:{width:_frame.size.width,height:_frame.size.height}},dX=((_86.size.width)-_84.width)/(((_85&CPViewMinXMargin)?1:0)+(_85&CPViewWidthSizable?1:0)+(_85&CPViewMaxXMargin?1:0)),dY=((_86.size.height)-_84.height)/((_85&CPViewMinYMargin?1:0)+(_85&CPViewHeightSizable?1:0)+(_85&CPViewMaxYMargin?1:0));
if(_85&CPViewMinXMargin){
_87.origin.x+=dX;
}
if(_85&CPViewWidthSizable){
_87.size.width+=dX;
}
if(_85&CPViewMinYMargin){
_87.origin.y+=dY;
}
if(_85&CPViewHeightSizable){
_87.size.height+=dY;
}
objj_msgSend(_82,"setFrame:",_87);
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_8a,_8b,_8c){
with(_8a){
var _8d=_subviews.length;
while(_8d--){
objj_msgSend(_subviews[_8d],"resizeWithOldSuperviewSize:",_8c);
}
}
}),new objj_method(sel_getUid("setAutoresizesSubviews:"),function(_8e,_8f,_90){
with(_8e){
_autoresizesSubviews=!!_90;
}
}),new objj_method(sel_getUid("autoresizesSubviews"),function(_91,_92){
with(_91){
return _autoresizesSubviews;
}
}),new objj_method(sel_getUid("setAutoresizingMask:"),function(_93,_94,_95){
with(_93){
_autoresizingMask=_95;
}
}),new objj_method(sel_getUid("autoresizingMask"),function(_96,_97){
with(_96){
return _autoresizingMask;
}
}),new objj_method(sel_getUid("enterFullScreenMode"),function(_98,_99){
with(_98){
return objj_msgSend(_98,"enterFullScreenMode:withOptions:",nil,nil);
}
}),new objj_method(sel_getUid("enterFullScreenMode:withOptions:"),function(_9a,_9b,_9c,_9d){
with(_9a){
_fullScreenModeState=_9e(_9a);
var _9f=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"contentBounds"),CPBorderlessWindowMask);
objj_msgSend(_9f,"setLevel:",CPScreenSaverWindowLevel);
objj_msgSend(_9f,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
var _a0=objj_msgSend(_9f,"contentView");
objj_msgSend(_a0,"setBackgroundColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_a0,"addSubview:",_9a);
objj_msgSend(_9a,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_9a,"setFrame:",CGRectMakeCopy(objj_msgSend(_a0,"bounds")));
objj_msgSend(_9f,"makeKeyAndOrderFront:",_9a);
objj_msgSend(_9f,"makeFirstResponder:",_9a);
_isInFullScreenMode=YES;
return YES;
}
}),new objj_method(sel_getUid("exitFullScreenMode"),function(_a1,_a2){
with(_a1){
objj_msgSend(_a1,"exitFullScreenModeWithOptions:",nil);
}
}),new objj_method(sel_getUid("exitFullScreenModeWithOptions:"),function(_a3,_a4,_a5){
with(_a3){
if(!_isInFullScreenMode){
return;
}
_isInFullScreenMode=NO;
objj_msgSend(_a3,"setFrame:",_fullScreenModeState.frame);
objj_msgSend(_a3,"setAutoresizingMask:",_fullScreenModeState.autoresizingMask);
objj_msgSend(_fullScreenModeState.superview,"_insertSubview:atIndex:",_a3,_fullScreenModeState.index);
objj_msgSend(objj_msgSend(_a3,"window"),"orderOut:",_a3);
}
}),new objj_method(sel_getUid("isInFullScreenMode"),function(_a6,_a7){
with(_a6){
return _isInFullScreenMode;
}
}),new objj_method(sel_getUid("setHidden:"),function(_a8,_a9,_aa){
with(_a8){
_aa=!!_aa;
if(_isHidden===_aa){
return;
}
_isHidden=_aa;
_DOMElement.style.display=_isHidden?"none":"block";
if(_aa){
var _ab=objj_msgSend(_window,"firstResponder");
if(objj_msgSend(_ab,"isKindOfClass:",objj_msgSend(CPView,"class"))){
do{
if(_a8==_ab){
objj_msgSend(_window,"makeFirstResponder:",objj_msgSend(_a8,"nextValidKeyView"));
break;
}
}while(_ab=objj_msgSend(_ab,"superview"));
}
}
}
}),new objj_method(sel_getUid("isHidden"),function(_ac,_ad){
with(_ac){
return _isHidden;
}
}),new objj_method(sel_getUid("setAlphaValue:"),function(_ae,_af,_b0){
with(_ae){
if(_opacity==_b0){
return;
}
_opacity=_b0;
if(CPFeatureIsCompatible(CPOpacityRequiresFilterFeature)){
if(_b0==1){
try{
_DOMElement.style.removeAttribute("filter");
}
catch(anException){
}
}else{
_DOMElement.style.filter="alpha(opacity="+_b0*100+")";
}
}else{
_DOMElement.style.opacity=_b0;
}
}
}),new objj_method(sel_getUid("alphaValue"),function(_b1,_b2){
with(_b1){
return _opacity;
}
}),new objj_method(sel_getUid("isHiddenOrHasHiddenAncestor"),function(_b3,_b4){
with(_b3){
var _b5=_b3;
while(_b5&&!objj_msgSend(_b5,"isHidden")){
_b5=objj_msgSend(_b5,"superview");
}
return _b5!==nil;
}
}),new objj_method(sel_getUid("acceptsFirstMouse:"),function(_b6,_b7,_b8){
with(_b6){
return YES;
}
}),new objj_method(sel_getUid("hitTests"),function(_b9,_ba){
with(_b9){
return _hitTests;
}
}),new objj_method(sel_getUid("setHitTests:"),function(_bb,_bc,_bd){
with(_bb){
_hitTests=!!_bd;
}
}),new objj_method(sel_getUid("hitTest:"),function(_be,_bf,_c0){
with(_be){
if(_isHidden||!_hitTests||!CPRectContainsPoint(_frame,_c0)){
return nil;
}
var _c1=nil,i=_subviews.length,_c3={x:_c0.x-(_frame.origin.x),y:_c0.y-(_frame.origin.y)};
if(_inverseBoundsTransform){
_c3={x:_c3.x*_inverseBoundsTransform.a+_c3.y*_inverseBoundsTransform.c+_inverseBoundsTransform.tx,y:_c3.x*_inverseBoundsTransform.b+_c3.y*_inverseBoundsTransform.d+_inverseBoundsTransform.ty};
}
while(i--){
if(_c1=objj_msgSend(_subviews[i],"hitTest:",_c3)){
return _c1;
}
}
return _be;
}
}),new objj_method(sel_getUid("mouseDownCanMoveWindow"),function(_c4,_c5){
with(_c4){
return !objj_msgSend(_c4,"isOpaque");
}
}),new objj_method(sel_getUid("mouseDown:"),function(_c6,_c7,_c8){
with(_c6){
if(objj_msgSend(_c6,"mouseDownCanMoveWindow")){
objj_msgSendSuper({receiver:_c6,super_class:objj_getClass("CPResponder")},"mouseDown:",_c8);
}
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_c9,_ca,_cb){
with(_c9){
if(_backgroundColor==_cb){
return;
}
_backgroundColor=_cb;
var _cc=objj_msgSend(_backgroundColor,"patternImage"),_cd=0;
if(objj_msgSend(_cc,"isThreePartImage")){
_backgroundType=objj_msgSend(_cc,"isVertical")?_5:_6;
_cd=3-_DOMImageParts.length;
}else{
if(objj_msgSend(_cc,"isNinePartImage")){
_backgroundType=_7;
_cd=9-_DOMImageParts.length;
}else{
_backgroundType=_4;
_cd=0-_DOMImageParts.length;
}
}
if(_cd>0){
while(_cd--){
var _ce=_3.cloneNode(false);
_ce.style.zIndex=-1000;
_DOMImageParts.push(_ce);
_DOMElement.appendChild(_ce);
}
}else{
_cd=-_cd;
while(_cd--){
_DOMElement.removeChild(_DOMImageParts.pop());
}
}
if(_backgroundType==_4){
_DOMElement.style.background=_backgroundColor?objj_msgSend(_backgroundColor,"cssString"):"";
}else{
var _cf=objj_msgSend(_cc,"imageSlices"),_d0=MIN(_DOMImageParts.length,_cf.length),_d1=_frame.size;
while(_d0--){
var _d2=_cf[_d0],_d3=_DOMImageSizes[_d0]=_d2?objj_msgSend(_d2,"size"):{width:0,height:0};
if(!_DOMImageParts[_d0].CPDOMDisplayContext){
_DOMImageParts[_d0].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[_d0].CPDOMDisplayContext[4];
if(!(_d4>=0)){
_d4=_DOMImageParts[_d0].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_d4]=4;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[_d0];
CPDOMDisplayServerInstructions[_d4+2]=_d3.width;
CPDOMDisplayServerInstructions[_d4+3]=_d3.height;
_DOMImageParts[_d0].style.background=_d2?"url(\""+objj_msgSend(_d2,"filename")+"\")":"";
}
if(_backgroundType==_7){
var _d5=_d1.width-_DOMImageSizes[0].width-_DOMImageSizes[2].width,_d6=_d1.height-_DOMImageSizes[0].height-_DOMImageSizes[6].height;
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[1].CPDOMDisplayContext[4];
if(!(_d4>=0)){
_d4=_DOMImageParts[1].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_d4]=4;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_d4+2]=_d5;
CPDOMDisplayServerInstructions[_d4+3]=_DOMImageSizes[0].height;
if(!_DOMImageParts[3].CPDOMDisplayContext){
_DOMImageParts[3].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[3].CPDOMDisplayContext[4];
if(!(_d4>=0)){
_d4=_DOMImageParts[3].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_d4]=4;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[3];
CPDOMDisplayServerInstructions[_d4+2]=_DOMImageSizes[3].width;
CPDOMDisplayServerInstructions[_d4+3]=_d6;
if(!_DOMImageParts[4].CPDOMDisplayContext){
_DOMImageParts[4].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[4].CPDOMDisplayContext[4];
if(!(_d4>=0)){
_d4=_DOMImageParts[4].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_d4]=4;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[4];
CPDOMDisplayServerInstructions[_d4+2]=_d5;
CPDOMDisplayServerInstructions[_d4+3]=_d6;
if(!_DOMImageParts[5].CPDOMDisplayContext){
_DOMImageParts[5].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[5].CPDOMDisplayContext[4];
if(!(_d4>=0)){
_d4=_DOMImageParts[5].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_d4]=4;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[5];
CPDOMDisplayServerInstructions[_d4+2]=_DOMImageSizes[5].width;
CPDOMDisplayServerInstructions[_d4+3]=_d6;
if(!_DOMImageParts[7].CPDOMDisplayContext){
_DOMImageParts[7].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[7].CPDOMDisplayContext[4];
if(!(_d4>=0)){
_d4=_DOMImageParts[7].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_d4]=4;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[7];
CPDOMDisplayServerInstructions[_d4+2]=_d5;
CPDOMDisplayServerInstructions[_d4+3]=_DOMImageSizes[7].height;
if(!_DOMImageParts[0].CPDOMDisplayContext){
_DOMImageParts[0].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[0].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[0].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=0;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[0];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=0;
CPDOMDisplayServerInstructions[_d4+4]=0;
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[1].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[1].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=0;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=_DOMImageSizes[0].width;
CPDOMDisplayServerInstructions[_d4+4]=0;
if(!_DOMImageParts[2].CPDOMDisplayContext){
_DOMImageParts[2].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[2].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[2].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=1;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[2];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=0;
CPDOMDisplayServerInstructions[_d4+4]=0;
if(!_DOMImageParts[3].CPDOMDisplayContext){
_DOMImageParts[3].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[3].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[3].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=0;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[3];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=0;
CPDOMDisplayServerInstructions[_d4+4]=_DOMImageSizes[1].height;
if(!_DOMImageParts[4].CPDOMDisplayContext){
_DOMImageParts[4].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[4].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[4].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=0;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[4];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=_DOMImageSizes[0].width;
CPDOMDisplayServerInstructions[_d4+4]=_DOMImageSizes[0].height;
if(!_DOMImageParts[5].CPDOMDisplayContext){
_DOMImageParts[5].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[5].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[5].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=1;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[5];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=0;
CPDOMDisplayServerInstructions[_d4+4]=_DOMImageSizes[1].height;
if(!_DOMImageParts[6].CPDOMDisplayContext){
_DOMImageParts[6].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[6].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[6].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=2;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[6];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=0;
CPDOMDisplayServerInstructions[_d4+4]=0;
if(!_DOMImageParts[7].CPDOMDisplayContext){
_DOMImageParts[7].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[7].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[7].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=2;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[7];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=_DOMImageSizes[6].width;
CPDOMDisplayServerInstructions[_d4+4]=0;
if(!_DOMImageParts[8].CPDOMDisplayContext){
_DOMImageParts[8].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[8].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[8].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=3;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[8];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=0;
CPDOMDisplayServerInstructions[_d4+4]=0;
}else{
if(_backgroundType==_5){
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[1].CPDOMDisplayContext[4];
if(!(_d4>=0)){
_d4=_DOMImageParts[1].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_d4]=4;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_d4+2]=_d1.width;
CPDOMDisplayServerInstructions[_d4+3]=_d1.height-_DOMImageSizes[0].height-_DOMImageSizes[2].height;
if(!_DOMImageParts[0].CPDOMDisplayContext){
_DOMImageParts[0].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[0].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[0].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=0;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[0];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=0;
CPDOMDisplayServerInstructions[_d4+4]=0;
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[1].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[1].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=0;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=0;
CPDOMDisplayServerInstructions[_d4+4]=_DOMImageSizes[0].height;
if(!_DOMImageParts[2].CPDOMDisplayContext){
_DOMImageParts[2].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[2].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[2].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=2;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[2];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=0;
CPDOMDisplayServerInstructions[_d4+4]=0;
}else{
if(_backgroundType==_6){
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[1].CPDOMDisplayContext[4];
if(!(_d4>=0)){
_d4=_DOMImageParts[1].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_d4]=4;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_d4+2]=_d1.width-_DOMImageSizes[0].width-_DOMImageSizes[2].width;
CPDOMDisplayServerInstructions[_d4+3]=_d1.height;
if(!_DOMImageParts[0].CPDOMDisplayContext){
_DOMImageParts[0].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[0].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[0].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=0;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[0];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=0;
CPDOMDisplayServerInstructions[_d4+4]=0;
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[1].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[1].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=0;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=_DOMImageSizes[0].width;
CPDOMDisplayServerInstructions[_d4+4]=0;
if(!_DOMImageParts[2].CPDOMDisplayContext){
_DOMImageParts[2].CPDOMDisplayContext=[];
}
var _d4=_DOMImageParts[2].CPDOMDisplayContext[0];
if(!(_d4>=0)){
_d4=_DOMImageParts[2].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_d4]=1;
CPDOMDisplayServerInstructions[_d4+1]=_DOMImageParts[2];
CPDOMDisplayServerInstructions[_d4+2]=NULL;
CPDOMDisplayServerInstructions[_d4+3]=0;
CPDOMDisplayServerInstructions[_d4+4]=0;
}
}
}
}
}
}),new objj_method(sel_getUid("backgroundColor"),function(_d7,_d8){
with(_d7){
return _backgroundColor;
}
}),new objj_method(sel_getUid("convertPoint:fromView:"),function(_d9,_da,_db,_dc){
with(_d9){
return CGPointApplyAffineTransform(_db,_dd(_dc,_d9));
}
}),new objj_method(sel_getUid("convertPoint:toView:"),function(_de,_df,_e0,_e1){
with(_de){
return CGPointApplyAffineTransform(_e0,_dd(_de,_e1));
}
}),new objj_method(sel_getUid("convertSize:fromView:"),function(_e2,_e3,_e4,_e5){
with(_e2){
return CGSizeApplyAffineTransform(_e4,_dd(_e5,_e2));
}
}),new objj_method(sel_getUid("convertSize:toView:"),function(_e6,_e7,_e8,_e9){
with(_e6){
return CGSizeApplyAffineTransform(_e8,_dd(_e6,_e9));
}
}),new objj_method(sel_getUid("convertRect:fromView:"),function(_ea,_eb,_ec,_ed){
with(_ea){
return CGRectApplyAffineTransform(_ec,_dd(_ed,_ea));
}
}),new objj_method(sel_getUid("convertRect:toView:"),function(_ee,_ef,_f0,_f1){
with(_ee){
return CGRectApplyAffineTransform(_f0,_dd(_ee,_f1));
}
}),new objj_method(sel_getUid("setPostsFrameChangedNotifications:"),function(_f2,_f3,_f4){
with(_f2){
_f4=!!_f4;
if(_postsFrameChangedNotifications===_f4){
return;
}
_postsFrameChangedNotifications=_f4;
if(_postsFrameChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewFrameDidChangeNotification,_f2);
}
}
}),new objj_method(sel_getUid("postsFrameChangedNotifications"),function(_f5,_f6){
with(_f5){
return _postsFrameChangedNotifications;
}
}),new objj_method(sel_getUid("setPostsBoundsChangedNotifications:"),function(_f7,_f8,_f9){
with(_f7){
_f9=!!_f9;
if(_postsBoundsChangedNotifications===_f9){
return;
}
_postsBoundsChangedNotifications=_f9;
if(_postsBoundsChangedNotifications){
objj_msgSend(_1,"postNotificationName:object:",CPViewBoundsDidChangeNotification,_f7);
}
}
}),new objj_method(sel_getUid("postsBoundsChangedNotifications"),function(_fa,_fb){
with(_fa){
return _postsBoundsChangedNotifications;
}
}),new objj_method(sel_getUid("dragImage:at:offset:event:pasteboard:source:slideBack:"),function(_fc,_fd,_fe,_ff,_100,_101,_102,_103,_104){
with(_fc){
objj_msgSend(_window,"dragImage:at:offset:event:pasteboard:source:slideBack:",_fe,objj_msgSend(_fc,"convertPoint:toView:",_ff,nil),_100,_101,_102,_103,_104);
}
}),new objj_method(sel_getUid("dragView:at:offset:event:pasteboard:source:slideBack:"),function(self,_cmd,_107,_108,_109,_10a,_10b,_10c,_10d){
with(self){
objj_msgSend(_window,"dragView:at:offset:event:pasteboard:source:slideBack:",_107,objj_msgSend(self,"convertPoint:toView:",_108,nil),_109,_10a,_10b,_10c,_10d);
}
}),new objj_method(sel_getUid("registerForDraggedTypes:"),function(self,_cmd,_110){
with(self){
if(!_110||!objj_msgSend(_110,"count")){
return;
}
var _111=objj_msgSend(self,"window");
objj_msgSend(_111,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
objj_msgSend(_registeredDraggedTypes,"addObjectsFromArray:",_110);
objj_msgSend(_111,"_noteRegisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypesArray=nil;
}
}),new objj_method(sel_getUid("registeredDraggedTypes"),function(self,_cmd){
with(self){
if(!_registeredDraggedTypesArray){
_registeredDraggedTypesArray=objj_msgSend(_registeredDraggedTypes,"allObjects");
}
return _registeredDraggedTypesArray;
}
}),new objj_method(sel_getUid("unregisterDraggedTypes"),function(self,_cmd){
with(self){
objj_msgSend(objj_msgSend(self,"window"),"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
}
}),new objj_method(sel_getUid("drawRect:"),function(self,_cmd,_118){
with(self){
}
}),new objj_method(sel_getUid("setNeedsDisplay:"),function(self,_cmd,_11b){
with(self){
if(_11b){
objj_msgSend(self,"setNeedsDisplayInRect:",objj_msgSend(self,"bounds"));
}else{
var _11c=CPDOMDisplayServerViewsContext[objj_msgSend(self,"hash")];
if(typeof _11c!="undefined"){
CPDOMDisplayServerViewsContext[objj_msgSend(self,"hash")];
CPDOMDisplayServerViews[_11c]=NULL;
}
}
}
}),new objj_method(sel_getUid("setNeedsDisplayInRect:"),function(self,_cmd,_11f){
with(self){
var hash=objj_msgSend(objj_msgSend(self,"class"),"hash"),_121=_8[hash];
if(!_121&&typeof _121==="undefined"){
_121=objj_msgSend(self,"methodForSelector:",sel_getUid("drawRect:"))!=objj_msgSend(CPView,"instanceMethodForSelector:",sel_getUid("drawRect:"));
_8[hash]=_121;
}
if(!_121){
return;
}
if((_11f.size.width<=0||_11f.size.height<=0)){
return;
}
if(_dirtyRect&&!(_dirtyRect.size.width<=0||_dirtyRect.size.height<=0)){
_dirtyRect=CGRectUnion(_11f,_dirtyRect);
}else{
_dirtyRect={origin:{x:_11f.origin.x,y:_11f.origin.y},size:{width:_11f.size.width,height:_11f.size.height}};
}
var _122=objj_msgSend(self,"hash");
if(typeof (CPDOMDisplayServerViewsContext[_122])=="undefined"){
CPDOMDisplayServerViews[CPDOMDisplayServerViewsCount++]=self;
CPDOMDisplayServerViewsContext[_122]=self;
}
}
}),new objj_method(sel_getUid("needsDisplay"),function(self,_cmd){
with(self){
return _dirtyRect&&!(_dirtyRect.size.width<=0||_dirtyRect.size.height<=0);
}
}),new objj_method(sel_getUid("displayIfNeeded"),function(self,_cmd){
with(self){
if(objj_msgSend(self,"needsDisplay")){
objj_msgSend(self,"displayRect:",_dirtyRect);
}
}
}),new objj_method(sel_getUid("display"),function(self,_cmd){
with(self){
objj_msgSend(self,"displayRect:",objj_msgSend(self,"visibleRect"));
}
}),new objj_method(sel_getUid("displayIfNeededInRect:"),function(self,_cmd,_12b){
with(self){
if(objj_msgSend(self,"needsDisplay")){
objj_msgSend(self,"displayRect:",_12b);
}
}
}),new objj_method(sel_getUid("displayRect:"),function(self,_cmd,_12e){
with(self){
objj_msgSend(self,"viewWillDraw");
objj_msgSend(self,"displayRectIgnoringOpacity:inContext:",_12e,nil);
_dirtyRect=NULL;
}
}),new objj_method(sel_getUid("displayRectIgnoringOpacity:inContext:"),function(self,_cmd,_131,_132){
with(self){
objj_msgSend(self,"lockFocus");
CGContextClearRect(objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_131);
objj_msgSend(self,"drawRect:",_131);
objj_msgSend(self,"unlockFocus");
}
}),new objj_method(sel_getUid("viewWillDraw"),function(self,_cmd){
with(self){
}
}),new objj_method(sel_getUid("lockFocus"),function(self,_cmd){
with(self){
if(!_graphicsContext){
var _137=CGBitmapGraphicsContextCreate();
_DOMContentsElement=_137.DOMElement;
_DOMContentsElement.style.zIndex=-100;
_DOMContentsElement.style.overflow="hidden";
_DOMContentsElement.style.position="absolute";
_DOMContentsElement.style.visibility="visible";
_DOMContentsElement.width=ROUND((_frame.size.width));
_DOMContentsElement.height=ROUND((_frame.size.height));
_DOMContentsElement.style.top="0px";
_DOMContentsElement.style.left="0px";
_DOMContentsElement.style.width=ROUND((_frame.size.width))+"px";
_DOMContentsElement.style.height=ROUND((_frame.size.height))+"px";
if(_DOMContentsElement.CPDOMDisplayContext){
_DOMContentsElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=6;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMContentsElement;
_graphicsContext=objj_msgSend(CPGraphicsContext,"graphicsContextWithGraphicsPort:flipped:",_137,YES);
}
objj_msgSend(CPGraphicsContext,"setCurrentContext:",_graphicsContext);
CGContextSaveGState(objj_msgSend(_graphicsContext,"graphicsPort"));
}
}),new objj_method(sel_getUid("unlockFocus"),function(self,_cmd){
with(self){
CGContextRestoreGState(objj_msgSend(_graphicsContext,"graphicsPort"));
objj_msgSend(CPGraphicsContext,"setCurrentContext:",nil);
}
}),new objj_method(sel_getUid("setNeedsLayout"),function(self,_cmd){
with(self){
_needsLayout=YES;
var hash=objj_msgSend(objj_msgSend(self,"class"),"hash"),_13d=_9[hash];
if(_13d===undefined){
_13d=objj_msgSend(self,"methodForSelector:",sel_getUid("layoutSubviews"))!=objj_msgSend(CPView,"instanceMethodForSelector:",sel_getUid("layoutSubviews"));
_9[hash]=_13d;
}
if(!_13d){
return;
}
if(_needsLayout){
var _13e=objj_msgSend(self,"hash");
if(typeof (CPDOMDisplayServerViewsContext[_13e])=="undefined"){
CPDOMDisplayServerViews[CPDOMDisplayServerViewsCount++]=self;
CPDOMDisplayServerViewsContext[_13e]=self;
}
}
}
}),new objj_method(sel_getUid("layoutIfNeeded"),function(self,_cmd){
with(self){
if(_needsLayout){
_needsLayout=NO;
objj_msgSend(self,"layoutSubviews");
}
}
}),new objj_method(sel_getUid("layoutSubviews"),function(self,_cmd){
with(self){
}
}),new objj_method(sel_getUid("isOpaque"),function(self,_cmd){
with(self){
return NO;
}
}),new objj_method(sel_getUid("visibleRect"),function(self,_cmd){
with(self){
if(!_superview){
return _bounds;
}
return CGRectIntersection(objj_msgSend(self,"convertRect:fromView:",objj_msgSend(_superview,"visibleRect"),_superview),_bounds);
}
}),new objj_method(sel_getUid("_enclosingClipView"),function(self,_cmd){
with(self){
var _149=_superview,_14a=objj_msgSend(CPClipView,"class");
while(_149&&!objj_msgSend(_149,"isKindOfClass:",_14a)){
_149=_149._superview;
}
return _149;
}
}),new objj_method(sel_getUid("scrollPoint:"),function(self,_cmd,_14d){
with(self){
var _14e=objj_msgSend(self,"_enclosingClipView");
if(!_14e){
return;
}
objj_msgSend(_14e,"scrollToPoint:",objj_msgSend(self,"convertPoint:toView:",_14d,_14e));
}
}),new objj_method(sel_getUid("scrollRectToVisible:"),function(self,_cmd,_151){
with(self){
var _152=objj_msgSend(self,"visibleRect");
_151=CGRectIntersection(_151,_bounds);
if((_151.size.width<=0||_151.size.height<=0)||CGRectContainsRect(_152,_151)){
return NO;
}
var _153=objj_msgSend(self,"_enclosingClipView");
if(!_153){
return NO;
}
var _154={x:_152.origin.x,y:_152.origin.y};
if((_151.origin.x)<=(_152.origin.x)){
_154.x=(_151.origin.x);
}else{
if((_151.origin.x+_151.size.width)>(_152.origin.x+_152.size.width)){
_154.x+=(_151.origin.x+_151.size.width)-(_152.origin.x+_152.size.width);
}
}
if((_151.origin.y)<=(_152.origin.y)){
_154.y=CGRectGetMinY(_151);
}else{
if((_151.origin.y+_151.size.height)>(_152.origin.y+_152.size.height)){
_154.y+=(_151.origin.y+_151.size.height)-(_152.origin.y+_152.size.height);
}
}
objj_msgSend(_153,"scrollToPoint:",CGPointMake(_154.x,_154.y));
return YES;
}
}),new objj_method(sel_getUid("autoscroll:"),function(self,_cmd,_157){
with(self){
return objj_msgSend(objj_msgSend(self,"superview"),"autoscroll:",_157);
}
}),new objj_method(sel_getUid("adjustScroll:"),function(self,_cmd,_15a){
with(self){
return _15a;
}
}),new objj_method(sel_getUid("scrollRect:by:"),function(self,_cmd,_15d,_15e){
with(self){
}
}),new objj_method(sel_getUid("enclosingScrollView"),function(self,_cmd){
with(self){
var _161=_superview,_162=objj_msgSend(CPScrollView,"class");
while(_161&&!objj_msgSend(_161,"isKindOfClass:",_162)){
_161=_161._superview;
}
return _161;
}
}),new objj_method(sel_getUid("scrollClipView:toPoint:"),function(self,_cmd,_165,_166){
with(self){
objj_msgSend(_165,"scrollToPoint:",_166);
}
}),new objj_method(sel_getUid("reflectScrolledClipView:"),function(self,_cmd,_169){
with(self){
}
})]);
class_addMethods(_b,[new objj_method(sel_getUid("initialize"),function(self,_cmd){
with(self){
if(self!==objj_msgSend(CPView,"class")){
return;
}
_3=document.createElement("div");
var _16c=_3.style;
_16c.overflow="hidden";
_16c.position="absolute";
_16c.visibility="visible";
_16c.zIndex=0;
_1=objj_msgSend(CPNotificationCenter,"defaultCenter");
}
})]);
var _a=objj_getClass("CPView");
if(!_a){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPView\""));
}
var _b=_a.isa;
class_addMethods(_a,[new objj_method(sel_getUid("canBecomeKeyView"),function(self,_cmd){
with(self){
return objj_msgSend(self,"acceptsFirstResponder")&&!objj_msgSend(self,"isHiddenOrHasHiddenAncestor");
}
}),new objj_method(sel_getUid("nextKeyView"),function(self,_cmd){
with(self){
return _nextKeyView;
}
}),new objj_method(sel_getUid("nextValidKeyView"),function(self,_cmd){
with(self){
var _173=objj_msgSend(self,"nextKeyView");
while(_173&&!objj_msgSend(_173,"canBecomeKeyView")){
_173=objj_msgSend(_173,"nextKeyView");
}
return _173;
}
}),new objj_method(sel_getUid("previousKeyView"),function(self,_cmd){
with(self){
return _previousKeyView;
}
}),new objj_method(sel_getUid("previousValidKeyView"),function(self,_cmd){
with(self){
var _178=objj_msgSend(self,"previousKeyView");
while(_178&&!objj_msgSend(_178,"canBecomeKeyView")){
_178=objj_msgSend(_178,"previousKeyView");
}
return _178;
}
}),new objj_method(sel_getUid("_setPreviousKeyView:"),function(self,_cmd,_17b){
with(self){
_previousKeyView=_17b;
}
}),new objj_method(sel_getUid("setNextKeyView:"),function(self,_cmd,next){
with(self){
_nextKeyView=next;
objj_msgSend(_nextKeyView,"_setPreviousKeyView:",self);
}
})]);
var _a=objj_getClass("CPView");
if(!_a){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPView\""));
}
var _b=_a.isa;
class_addMethods(_a,[new objj_method(sel_getUid("setLayer:"),function(self,_cmd,_181){
with(self){
if(_layer==_181){
return;
}
if(_layer){
_layer._owningView=nil;
_DOMElement.removeChild(_layer._DOMElement);
}
_layer=_181;
if(_layer){
var _182=CGRectMakeCopy(objj_msgSend(self,"bounds"));
objj_msgSend(_layer,"_setOwningView:",self);
_layer._DOMElement.style.zIndex=100;
_DOMElement.appendChild(_layer._DOMElement);
}
}
}),new objj_method(sel_getUid("layer"),function(self,_cmd){
with(self){
return _layer;
}
}),new objj_method(sel_getUid("setWantsLayer:"),function(self,_cmd,_187){
with(self){
_wantsLayer=!!_187;
}
}),new objj_method(sel_getUid("wantsLayer"),function(self,_cmd){
with(self){
return _wantsLayer;
}
})]);
var _a=objj_getClass("CPView");
if(!_a){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPView\""));
}
var _b=_a.isa;
class_addMethods(_a,[new objj_method(sel_getUid("themeState"),function(self,_cmd){
with(self){
return _themeState;
}
}),new objj_method(sel_getUid("hasThemeState:"),function(self,_cmd,_18e){
with(self){
return !!(_themeState&((typeof _18e==="string")?CPThemeState(_18e):_18e));
}
}),new objj_method(sel_getUid("setThemeState:"),function(self,_cmd,_191){
with(self){
var _192=(typeof _191==="string")?CPThemeState(_191):_191;
if(_themeState&_192){
return NO;
}
_themeState|=_192;
objj_msgSend(self,"setNeedsLayout");
objj_msgSend(self,"setNeedsDisplay:",YES);
return YES;
}
}),new objj_method(sel_getUid("unsetThemeState:"),function(self,_cmd,_195){
with(self){
var _196=((typeof _195==="string")?CPThemeState(_195):_195);
if(!(_themeState&_196)){
return NO;
}
_themeState&=~_196;
objj_msgSend(self,"setNeedsLayout");
objj_msgSend(self,"setNeedsDisplay:",YES);
return YES;
}
}),new objj_method(sel_getUid("_loadThemeAttributes"),function(self,_cmd){
with(self){
var _199=objj_msgSend(self,"class"),_19a=objj_msgSend(_199,"_themeAttributes"),_19b=_19a.length;
if(!_19b){
return;
}
var _19c=objj_msgSend(self,"theme"),_19d=objj_msgSend(_199,"themeClass");
_themeAttributes={};
while(_19b--){
var _19e=_19a[_19b--],_19f=objj_msgSend(objj_msgSend(_CPThemeAttribute,"alloc"),"initWithName:defaultValue:",_19e,_19a[_19b]);
objj_msgSend(_19f,"setParentAttribute:",objj_msgSend(_19c,"_attributeWithName:forClass:",_19e,_19d));
_themeAttributes[_19e]=_19f;
}
}
}),new objj_method(sel_getUid("setTheme:"),function(self,_cmd,_1a2){
with(self){
if(_theme===_1a2){
return;
}
_theme=_1a2;
objj_msgSend(self,"viewDidChangeTheme");
}
}),new objj_method(sel_getUid("theme"),function(self,_cmd){
with(self){
return _theme;
}
}),new objj_method(sel_getUid("viewDidChangeTheme"),function(self,_cmd){
with(self){
if(!_themeAttributes){
return;
}
var _1a7=objj_msgSend(self,"theme"),_1a8=objj_msgSend(objj_msgSend(self,"class"),"themeClass");
for(var _1a9 in _themeAttributes){
if(_themeAttributes.hasOwnProperty(_1a9)){
objj_msgSend(_themeAttributes[_1a9],"setParentAttribute:",objj_msgSend(_1a7,"_attributeWithName:forClass:",_1a9,_1a8));
}
}
objj_msgSend(self,"setNeedsLayout");
objj_msgSend(self,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("_themeAttributeDictionary"),function(self,_cmd){
with(self){
var _1ac=objj_msgSend(CPDictionary,"dictionary");
if(_themeAttributes){
var _1ad=objj_msgSend(self,"theme");
for(var _1ae in _themeAttributes){
if(_themeAttributes.hasOwnProperty(_1ae)){
objj_msgSend(_1ac,"setObject:forKey:",_themeAttributes[_1ae],_1ae);
}
}
}
return _1ac;
}
}),new objj_method(sel_getUid("setValue:forThemeAttribute:inState:"),function(self,_cmd,_1b1,_1b2,_1b3){
with(self){
if(!_themeAttributes||!_themeAttributes[_1b2]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_1b2+"'");
}
var _1b4=objj_msgSend(self,"currentValueForThemeAttribute:",_1b2);
objj_msgSend(_themeAttributes[_1b2],"setValue:forState:",_1b1,_1b3);
if(objj_msgSend(self,"currentValueForThemeAttribute:",_1b2)===_1b4){
return;
}
objj_msgSend(self,"setNeedsDisplay:",YES);
objj_msgSend(self,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setValue:forThemeAttribute:"),function(self,_cmd,_1b7,_1b8){
with(self){
if(!_themeAttributes||!_themeAttributes[_1b8]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_1b8+"'");
}
var _1b9=objj_msgSend(self,"currentValueForThemeAttribute:",_1b8);
objj_msgSend(_themeAttributes[_1b8],"setValue:",_1b7);
if(objj_msgSend(self,"currentValueForThemeAttribute:",_1b8)===_1b9){
return;
}
objj_msgSend(self,"setNeedsDisplay:",YES);
objj_msgSend(self,"setNeedsLayout");
}
}),new objj_method(sel_getUid("valueForThemeAttribute:inState:"),function(self,_cmd,_1bc,_1bd){
with(self){
if(!_themeAttributes||!_themeAttributes[_1bc]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_1bc+"'");
}
return objj_msgSend(_themeAttributes[_1bc],"valueForState:",_1bd);
}
}),new objj_method(sel_getUid("valueForThemeAttribute:"),function(self,_cmd,_1c0){
with(self){
if(!_themeAttributes||!_themeAttributes[_1c0]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_1c0+"'");
}
return objj_msgSend(_themeAttributes[_1c0],"value");
}
}),new objj_method(sel_getUid("currentValueForThemeAttribute:"),function(self,_cmd,_1c3){
with(self){
if(!_themeAttributes||!_themeAttributes[_1c3]){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(self,"className")+" does not contain theme attribute '"+_1c3+"'");
}
return objj_msgSend(_themeAttributes[_1c3],"valueForState:",_themeState);
}
})]);
class_addMethods(_b,[new objj_method(sel_getUid("themeClass"),function(self,_cmd){
with(self){
return nil;
}
}),new objj_method(sel_getUid("themeAttributes"),function(self,_cmd){
with(self){
return nil;
}
}),new objj_method(sel_getUid("_themeAttributes"),function(self,_cmd){
with(self){
if(!_2){
_2={};
}
var _1ca=objj_msgSend(self,"class"),_1cb=objj_msgSend(CPView,"class"),_1cc=[];
for(;_1ca&&_1ca!==_1cb;_1ca=objj_msgSend(_1ca,"superclass")){
var _1cd=_2[class_getName(_1ca)];
if(_1cd){
_1cc=_1cc.length?_1cc.concat(_1cd):_1cc;
_2[objj_msgSend(self,"className")]=_1cc;
break;
}
var _1ce=objj_msgSend(_1ca,"themeAttributes");
if(!_1ce){
continue;
}
var _1cf=objj_msgSend(_1ce,"allKeys"),_1d0=_1cf.length;
while(_1d0--){
var _1d1=_1cf[_1d0];
_1cc.push(objj_msgSend(_1ce,"objectForKey:",_1d1));
_1cc.push(_1d1);
}
}
return _1cc;
}
})]);
var _1d2="CPViewAutoresizingMask",_1d3="CPViewAutoresizesSubviews",_1d4="CPViewBackgroundColor",_1d5="CPViewBoundsKey",_1d6="CPViewFrameKey",_1d7="CPViewHitTestsKey",_1d8="CPViewIsHiddenKey",_1d9="CPViewOpacityKey",_1da="CPViewSubviewsKey",_1db="CPViewSuperviewKey",_1dc="CPViewTagKey",_1dd="CPViewThemeStateKey",_1de="CPViewWindowKey",_1df="CPViewNextKeyViewKey",_1e0="CPViewPreviousKeyViewKey";
var _a=objj_getClass("CPView");
if(!_a){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPView\""));
}
var _b=_a.isa;
class_addMethods(_a,[new objj_method(sel_getUid("initWithCoder:"),function(self,_cmd,_1e3){
with(self){
_DOMElement=_3.cloneNode(false);
_frame=objj_msgSend(_1e3,"decodeRectForKey:",_1d6);
_bounds=objj_msgSend(_1e3,"decodeRectForKey:",_1d5);
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPResponder")},"initWithCoder:",_1e3);
if(self){
_tag=objj_msgSend(_1e3,"containsValueForKey:",_1dc)?objj_msgSend(_1e3,"decodeIntForKey:",_1dc):-1;
_window=objj_msgSend(_1e3,"decodeObjectForKey:",_1de);
_subviews=objj_msgSend(_1e3,"decodeObjectForKey:",_1da)||[];
_superview=objj_msgSend(_1e3,"decodeObjectForKey:",_1db);
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
_autoresizingMask=objj_msgSend(_1e3,"decodeIntForKey:",_1d2)||CPViewNotSizable;
_autoresizesSubviews=!objj_msgSend(_1e3,"containsValueForKey:",_1d3)||objj_msgSend(_1e3,"decodeBoolForKey:",_1d3);
_hitTests=!objj_msgSend(_1e3,"containsValueForKey:",_1d7)||objj_msgSend(_1e3,"decodeObjectForKey:",_1d7);
_DOMImageParts=[];
_DOMImageSizes=[];
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _1e4=_DOMElement.CPDOMDisplayContext[0];
if(!(_1e4>=0)){
_1e4=_DOMElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_1e4]=0;
CPDOMDisplayServerInstructions[_1e4+1]=_DOMElement;
CPDOMDisplayServerInstructions[_1e4+2]=NULL;
CPDOMDisplayServerInstructions[_1e4+3]=(_frame.origin.x);
CPDOMDisplayServerInstructions[_1e4+4]=(_frame.origin.y);
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _1e4=_DOMElement.CPDOMDisplayContext[4];
if(!(_1e4>=0)){
_1e4=_DOMElement.CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_1e4]=4;
CPDOMDisplayServerInstructions[_1e4+1]=_DOMElement;
CPDOMDisplayServerInstructions[_1e4+2]=(_frame.size.width);
CPDOMDisplayServerInstructions[_1e4+3]=(_frame.size.height);
var _1e5=0,_1e6=_subviews.length;
for(;_1e5<_1e6;++_1e5){
if(_subviews[_1e5]._DOMElement.CPDOMDisplayContext){
_subviews[_1e5]._DOMElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=6;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_subviews[_1e5]._DOMElement;
}
_displayHash=objj_msgSend(self,"hash");
if(objj_msgSend(_1e3,"containsValueForKey:",_1d8)){
objj_msgSend(self,"setHidden:",objj_msgSend(_1e3,"decodeBoolForKey:",_1d8));
}else{
_isHidden=NO;
}
if(objj_msgSend(_1e3,"containsValueForKey:",_1d9)){
objj_msgSend(self,"setAlphaValue:",objj_msgSend(_1e3,"decodeIntForKey:",_1d9));
}else{
_opacity=1;
}
objj_msgSend(self,"setBackgroundColor:",objj_msgSend(_1e3,"decodeObjectForKey:",_1d4));
_theme=objj_msgSend(CPTheme,"defaultTheme");
_themeState=CPThemeState(objj_msgSend(_1e3,"decodeIntForKey:",_1dd));
_themeAttributes={};
var _1e7=objj_msgSend(self,"class"),_1e8=objj_msgSend(_1e7,"themeClass"),_1e9=objj_msgSend(_1e7,"_themeAttributes"),_1e6=_1e9.length;
while(_1e6--){
var _1ea=_1e9[_1e6--];
_themeAttributes[_1ea]=CPThemeAttributeDecode(_1e3,_1ea,_1e9[_1e6],_theme,_1e8);
}
objj_msgSend(self,"setNeedsDisplay:",YES);
}
return self;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(self,_cmd,_1ed){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPResponder")},"encodeWithCoder:",_1ed);
if(_tag!==-1){
objj_msgSend(_1ed,"encodeInt:forKey:",_tag,_1dc);
}
objj_msgSend(_1ed,"encodeRect:forKey:",_frame,_1d6);
objj_msgSend(_1ed,"encodeRect:forKey:",_bounds,_1d5);
if(_window!==nil){
objj_msgSend(_1ed,"encodeConditionalObject:forKey:",_window,_1de);
}
if(_subviews.length>0){
objj_msgSend(_1ed,"encodeObject:forKey:",_subviews,_1da);
}
if(_superview!==nil){
objj_msgSend(_1ed,"encodeConditionalObject:forKey:",_superview,_1db);
}
if(_autoresizingMask!==CPViewNotSizable){
objj_msgSend(_1ed,"encodeInt:forKey:",_autoresizingMask,_1d2);
}
if(!_autoresizesSubviews){
objj_msgSend(_1ed,"encodeBool:forKey:",_autoresizesSubviews,_1d3);
}
if(_backgroundColor!==nil){
objj_msgSend(_1ed,"encodeObject:forKey:",_backgroundColor,_1d4);
}
if(_hitTests!==YES){
objj_msgSend(_1ed,"encodeBool:forKey:",_hitTests,_1d7);
}
if(_opacity!==1){
objj_msgSend(_1ed,"encodeFloat:forKey:",_opacity,_1d9);
}
if(_isHidden){
objj_msgSend(_1ed,"encodeBool:forKey:",_isHidden,_1d8);
}
var _1ee=objj_msgSend(self,"nextKeyView");
if(_1ee!==nil){
objj_msgSend(_1ed,"encodeConditionalObject:forKey:",_1ee,_1df);
}
var _1ef=objj_msgSend(self,"previousKeyView");
if(_1ef!==nil){
objj_msgSend(_1ed,"encodeConditionalObject:forKey:",_1ef,_1e0);
}
objj_msgSend(_1ed,"encodeInt:forKey:",CPThemeStateName(_themeState),_1dd);
for(var _1f0 in _themeAttributes){
if(_themeAttributes.hasOwnProperty(_1f0)){
CPThemeAttributeEncode(_1ed,_themeAttributes[_1f0]);
}
}
}
})]);
var _9e=function(_1f1){
var _1f2=_1f1._superview;
return {autoresizingMask:_1f1._autoresizingMask,frame:CGRectMakeCopy(_1f1._frame),index:(_1f2?objj_msgSend(_1f2._subviews,"indexOfObjectIdenticalTo:",_1f1):0),superview:_1f2};
};
var _dd=function(_1f3,_1f4){
var _1f5=CGAffineTransformMakeIdentity(),_1f6=YES,_1f7=nil,_1f8=nil;
if(_1f3){
var view=_1f3;
while(view&&view!=_1f4){
var _1fa=view._frame;
_1f5.tx+=(_1fa.origin.x);
_1f5.ty+=(_1fa.origin.y);
if(view._boundsTransform){
var tx=_1f5.tx*view._boundsTransform.a+_1f5.ty*view._boundsTransform.c+view._boundsTransform.tx;
_1f5.ty=_1f5.tx*view._boundsTransform.b+_1f5.ty*view._boundsTransform.d+view._boundsTransform.ty;
_1f5.tx=tx;
var a=_1f5.a*view._boundsTransform.a+_1f5.b*view._boundsTransform.c,b=_1f5.a*view._boundsTransform.b+_1f5.b*view._boundsTransform.d,c=_1f5.c*view._boundsTransform.a+_1f5.d*view._boundsTransform.c;
_1f5.d=_1f5.c*view._boundsTransform.b+_1f5.d*view._boundsTransform.d;
_1f5.a=a;
_1f5.b=b;
_1f5.c=c;
}
view=view._superview;
}
if(view===_1f4){
return _1f5;
}else{
if(_1f3&&_1f4){
_1f7=objj_msgSend(_1f3,"window");
_1f8=objj_msgSend(_1f4,"window");
if(_1f7&&_1f8&&_1f7!==_1f8){
_1f6=NO;
var _1fa=objj_msgSend(_1f7,"frame");
_1f5.tx+=(_1fa.origin.x);
_1f5.ty+=(_1fa.origin.y);
}
}
}
}
var view=_1f4;
while(view){
var _1fa=view._frame;
_1f5.tx-=(_1fa.origin.x);
_1f5.ty-=(_1fa.origin.y);
if(view._boundsTransform){
var tx=_1f5.tx*view._inverseBoundsTransform.a+_1f5.ty*view._inverseBoundsTransform.c+view._inverseBoundsTransform.tx;
_1f5.ty=_1f5.tx*view._inverseBoundsTransform.b+_1f5.ty*view._inverseBoundsTransform.d+view._inverseBoundsTransform.ty;
_1f5.tx=tx;
var a=_1f5.a*view._inverseBoundsTransform.a+_1f5.b*view._inverseBoundsTransform.c,b=_1f5.a*view._inverseBoundsTransform.b+_1f5.b*view._inverseBoundsTransform.d,c=_1f5.c*view._inverseBoundsTransform.a+_1f5.d*view._inverseBoundsTransform.c;
_1f5.d=_1f5.c*view._inverseBoundsTransform.b+_1f5.d*view._inverseBoundsTransform.d;
_1f5.a=a;
_1f5.b=b;
_1f5.c=c;
}
view=view._superview;
}
if(!_1f6){
var _1fa=objj_msgSend(_1f8,"frame");
_1f5.tx-=(_1fa.origin.x);
_1f5.ty-=(_1fa.origin.y);
}
return _1f5;
};
p;11;CPWebView.jI;15;AppKit/CPView.jc;13126;
CPWebViewProgressStartedNotification="CPWebViewProgressStartedNotification";
CPWebViewProgressFinishedNotification="CPWebViewProgressFinishedNotification";
CPWebViewScrollAppKit=1;
CPWebViewScrollNative=2;
var _1=objj_allocateClassPair(CPView,"CPWebView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_scrollView"),new objj_ivar("_frameView"),new objj_ivar("_iframe"),new objj_ivar("_mainFrameURL"),new objj_ivar("_backwardStack"),new objj_ivar("_forwardStack"),new objj_ivar("_ignoreLoadStart"),new objj_ivar("_ignoreLoadEnd"),new objj_ivar("_downloadDelegate"),new objj_ivar("_frameLoadDelegate"),new objj_ivar("_policyDelegate"),new objj_ivar("_resourceLoadDelegate"),new objj_ivar("_UIDelegate"),new objj_ivar("_wso"),new objj_ivar("_url"),new objj_ivar("_html"),new objj_ivar("_loadCallback"),new objj_ivar("_scrollMode"),new objj_ivar("_scrollSize")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:frameName:groupName:"),function(_3,_4,_5,_6,_7){
with(_3){
if(_3=objj_msgSend(_3,"initWithFrame:",_5)){
_iframe.name=_6;
}
return _3;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
if(_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("CPView")},"initWithFrame:",_a)){
_mainFrameURL=nil;
_backwardStack=[];
_forwardStack=[];
_scrollMode=CPWebViewScrollNative;
objj_msgSend(_8,"_initDOMWithFrame:",_a);
}
return _8;
}
}),new objj_method(sel_getUid("_initDOMWithFrame:"),function(_b,_c,_d){
with(_b){
_ignoreLoadStart=YES;
_ignoreLoadEnd=YES;
_iframe=document.createElement("iframe");
_iframe.name="iframe_"+Math.floor(Math.random()*10000);
_iframe.style.width="100%";
_iframe.style.height="100%";
_iframe.style.borderWidth="0px";
objj_msgSend(_b,"setDrawsBackground:",YES);
_loadCallback=function(){
if(!_ignoreLoadStart){
objj_msgSend(_b,"_startedLoading");
if(_mainFrameURL){
objj_msgSend(_backwardStack,"addObject:",_mainFrameURL);
}
_mainFrameURL=_iframe.src;
_mainFrameURL=_iframe.src;
objj_msgSend(_forwardStack,"removeAllObjects");
}else{
_ignoreLoadStart=NO;
}
if(!_ignoreLoadEnd){
objj_msgSend(_b,"_finishedLoading");
}else{
_ignoreLoadEnd=NO;
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
};
if(_iframe.addEventListener){
_iframe.addEventListener("load",_loadCallback,false);
}else{
if(_iframe.attachEvent){
_iframe.attachEvent("onload",_loadCallback);
}
}
_frameView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",objj_msgSend(_b,"bounds"));
_scrollView=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",objj_msgSend(_b,"bounds"));
objj_msgSend(_scrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_scrollView,"setDocumentView:",_frameView);
_frameView._DOMElement.appendChild(_iframe);
objj_msgSend(_b,"_setScrollMode:",_scrollMode);
objj_msgSend(_b,"addSubview:",_scrollView);
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_e,_f,_10){
with(_e){
objj_msgSendSuper({receiver:_e,super_class:objj_getClass("CPView")},"setFrameSize:",_10);
objj_msgSend(_e,"_resizeWebFrame");
}
}),new objj_method(sel_getUid("_resizeWebFrame"),function(_11,_12){
with(_11){
if(_scrollMode===CPWebViewScrollAppKit){
if(_scrollSize){
objj_msgSend(_frameView,"setFrameSize:",_scrollSize);
}else{
objj_msgSend(_frameView,"setFrameSize:",objj_msgSend(_scrollView,"bounds").size);
var win=null;
try{
win=objj_msgSend(_11,"DOMWindow");
}
catch(e){
}
if(win&&win.document){
var _14=win.document.body.scrollWidth,_15=win.document.body.scrollHeight;
_iframe.setAttribute("width",_14);
_iframe.setAttribute("height",_15);
objj_msgSend(_frameView,"setFrameSize:",CGSizeMake(_14,_15));
}else{
CPLog.warn("using default size 800*1600");
objj_msgSend(_frameView,"setFrameSize:",CGSizeMake(800,1600));
}
}
}
}
}),new objj_method(sel_getUid("setScrollMode:"),function(_16,_17,_18){
with(_16){
if(_scrollMode==_18){
return;
}
objj_msgSend(_16,"_setScrollMode:",_18);
}
}),new objj_method(sel_getUid("_setScrollMode:"),function(_19,_1a,_1b){
with(_19){
_scrollMode=_1b;
_ignoreLoadStart=YES;
_ignoreLoadEnd=YES;
var _1c=_iframe.parentNode;
_1c.removeChild(_iframe);
if(_scrollMode===CPWebViewScrollAppKit){
objj_msgSend(_scrollView,"setHasHorizontalScroller:",YES);
objj_msgSend(_scrollView,"setHasVerticalScroller:",YES);
_iframe.setAttribute("scrolling","no");
}else{
objj_msgSend(_scrollView,"setHasHorizontalScroller:",NO);
objj_msgSend(_scrollView,"setHasVerticalScroller:",NO);
_iframe.setAttribute("scrolling","auto");
objj_msgSend(_frameView,"setFrameSize:",objj_msgSend(_scrollView,"bounds").size);
}
_1c.appendChild(_iframe);
}
}),new objj_method(sel_getUid("loadHTMLString:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSend(_1d,"loadHTMLString:baseURL:",_1f,nil);
}
}),new objj_method(sel_getUid("loadHTMLString:baseURL:"),function(_20,_21,_22,URL){
with(_20){
objj_msgSend(_20,"_setScrollMode:",CPWebViewScrollAppKit);
objj_msgSend(_20,"_startedLoading");
_ignoreLoadStart=YES;
_ignoreLoadEnd=NO;
_url=null;
_html=_22;
objj_msgSend(_20,"_load");
}
}),new objj_method(sel_getUid("_loadMainFrameURL"),function(_24,_25){
with(_24){
objj_msgSend(_24,"_setScrollMode:",CPWebViewScrollNative);
objj_msgSend(_24,"_startedLoading");
_ignoreLoadStart=YES;
_ignoreLoadEnd=NO;
_url=_mainFrameURL;
_html=null;
objj_msgSend(_24,"_load");
}
}),new objj_method(sel_getUid("_load"),function(_26,_27){
with(_26){
if(_url){
_iframe.src=_url;
}else{
if(_html){
_iframe.src="";
window.setTimeout(function(){
var win=objj_msgSend(_26,"DOMWindow");
win.document.write(_html);
window.setTimeout(_loadCallback,1);
},0);
}
}
}
}),new objj_method(sel_getUid("_startedLoading"),function(_29,_2a){
with(_29){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWebViewProgressStartedNotification,_29);
if(objj_msgSend(_frameLoadDelegate,"respondsToSelector:",sel_getUid("webView:didStartProvisionalLoadForFrame:"))){
objj_msgSend(_frameLoadDelegate,"webView:didStartProvisionalLoadForFrame:",_29,nil);
}
}
}),new objj_method(sel_getUid("_finishedLoading"),function(_2b,_2c){
with(_2b){
objj_msgSend(_2b,"_resizeWebFrame");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWebViewProgressFinishedNotification,_2b);
if(objj_msgSend(_frameLoadDelegate,"respondsToSelector:",sel_getUid("webView:didFinishLoadForFrame:"))){
objj_msgSend(_frameLoadDelegate,"webView:didFinishLoadForFrame:",_2b,nil);
}
}
}),new objj_method(sel_getUid("mainFrameURL"),function(_2d,_2e){
with(_2d){
return _mainFrameURL;
}
}),new objj_method(sel_getUid("setMainFrameURL:"),function(_2f,_30,_31){
with(_2f){
if(_mainFrameURL){
objj_msgSend(_backwardStack,"addObject:",_mainFrameURL);
}
_mainFrameURL=_31;
objj_msgSend(_forwardStack,"removeAllObjects");
objj_msgSend(_2f,"_loadMainFrameURL");
}
}),new objj_method(sel_getUid("goBack"),function(_32,_33){
with(_32){
if(_backwardStack.length>0){
if(_mainFrameURL){
objj_msgSend(_forwardStack,"addObject:",_mainFrameURL);
}
_mainFrameURL=objj_msgSend(_backwardStack,"lastObject");
objj_msgSend(_backwardStack,"removeLastObject");
objj_msgSend(_32,"_loadMainFrameURL");
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("goForward"),function(_34,_35){
with(_34){
if(_forwardStack.length>0){
if(_mainFrameURL){
objj_msgSend(_backwardStack,"addObject:",_mainFrameURL);
}
_mainFrameURL=objj_msgSend(_forwardStack,"lastObject");
objj_msgSend(_forwardStack,"removeLastObject");
objj_msgSend(_34,"_loadMainFrameURL");
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("canGoBack"),function(_36,_37){
with(_36){
return (_backwardStack.length>0);
}
}),new objj_method(sel_getUid("canGoForward"),function(_38,_39){
with(_38){
return (_forwardStack.length>0);
}
}),new objj_method(sel_getUid("backForwardList"),function(_3a,_3b){
with(_3a){
return {back:_backwardStack,forward:_forwardStack};
}
}),new objj_method(sel_getUid("close"),function(_3c,_3d){
with(_3c){
_iframe.parentNode.removeChild(_iframe);
}
}),new objj_method(sel_getUid("DOMWindow"),function(_3e,_3f){
with(_3e){
return (_iframe.contentDocument&&_iframe.contentDocument.defaultView)||_iframe.contentWindow;
}
}),new objj_method(sel_getUid("windowScriptObject"),function(_40,_41){
with(_40){
var win=objj_msgSend(_40,"DOMWindow");
if(!_wso||win!=objj_msgSend(_wso,"window")){
if(win){
_wso=objj_msgSend(objj_msgSend(CPWebScriptObject,"alloc"),"initWithWindow:",win);
}else{
_wso=nil;
}
}
return _wso;
}
}),new objj_method(sel_getUid("stringByEvaluatingJavaScriptFromString:"),function(_43,_44,_45){
with(_43){
var _46=objj_msgSend(_43,"objectByEvaluatingJavaScriptFromString:",_45);
return _46?String(_46):nil;
}
}),new objj_method(sel_getUid("objectByEvaluatingJavaScriptFromString:"),function(_47,_48,_49){
with(_47){
return objj_msgSend(objj_msgSend(_47,"windowScriptObject"),"evaluateWebScript:",_49);
}
}),new objj_method(sel_getUid("computedStyleForElement:pseudoElement:"),function(_4a,_4b,_4c,_4d){
with(_4a){
var win=objj_msgSend(objj_msgSend(_4a,"windowScriptObject"),"window");
if(win){
return win.document.defaultView.getComputedStyle(_4c,_4d);
}
return nil;
}
}),new objj_method(sel_getUid("drawsBackground"),function(_4f,_50){
with(_4f){
return _iframe.style.backgroundColor!="";
}
}),new objj_method(sel_getUid("setDrawsBackground:"),function(_51,_52,_53){
with(_51){
_iframe.style.backgroundColor=_53?"white":"";
}
}),new objj_method(sel_getUid("takeStringURLFrom:"),function(_54,_55,_56){
with(_54){
objj_msgSend(_54,"setMainFrameURL:",objj_msgSend(_56,"stringValue"));
}
}),new objj_method(sel_getUid("goBack:"),function(_57,_58,_59){
with(_57){
objj_msgSend(_57,"goBack");
}
}),new objj_method(sel_getUid("goForward:"),function(_5a,_5b,_5c){
with(_5a){
objj_msgSend(_5a,"goForward");
}
}),new objj_method(sel_getUid("stopLoading:"),function(_5d,_5e,_5f){
with(_5d){
}
}),new objj_method(sel_getUid("reload:"),function(_60,_61,_62){
with(_60){
objj_msgSend(_60,"_loadMainFrameURL");
}
}),new objj_method(sel_getUid("print:"),function(_63,_64,_65){
with(_63){
try{
objj_msgSend(_63,"DOMWindow").print();
}
catch(e){
alert("Please click the webpage and select \"Print\" from the \"File\" menu");
}
}
}),new objj_method(sel_getUid("downloadDelegate"),function(_66,_67){
with(_66){
return _downloadDelegate;
}
}),new objj_method(sel_getUid("setDownloadDelegate:"),function(_68,_69,_6a){
with(_68){
_downloadDelegate=_6a;
}
}),new objj_method(sel_getUid("frameLoadDelegate"),function(_6b,_6c){
with(_6b){
return _frameLoadDelegate;
}
}),new objj_method(sel_getUid("setFrameLoadDelegate:"),function(_6d,_6e,_6f){
with(_6d){
_frameLoadDelegate=_6f;
}
}),new objj_method(sel_getUid("policyDelegate"),function(_70,_71){
with(_70){
return _policyDelegate;
}
}),new objj_method(sel_getUid("setPolicyDelegate:"),function(_72,_73,_74){
with(_72){
_policyDelegate=_74;
}
}),new objj_method(sel_getUid("resourceLoadDelegate"),function(_75,_76){
with(_75){
return _resourceLoadDelegate;
}
}),new objj_method(sel_getUid("setResourceLoadDelegate:"),function(_77,_78,_79){
with(_77){
_resourceLoadDelegate=_79;
}
}),new objj_method(sel_getUid("UIDelegate"),function(_7a,_7b){
with(_7a){
return _UIDelegate;
}
}),new objj_method(sel_getUid("setUIDelegate:"),function(_7c,_7d,_7e){
with(_7c){
_UIDelegate=_7e;
}
})]);
var _1=objj_allocateClassPair(CPObject,"CPWebScriptObject"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_window")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithWindow:"),function(_7f,_80,_81){
with(_7f){
if(_7f=objj_msgSendSuper({receiver:_7f,super_class:objj_getClass("CPObject")},"init")){
_window=_81;
}
return _7f;
}
}),new objj_method(sel_getUid("callWebScriptMethod:withArguments:"),function(_82,_83,_84,_85){
with(_82){
if(typeof _window[_84]=="function"){
try{
return _window[_84].apply(_85);
}
catch(e){
}
}
return undefined;
}
}),new objj_method(sel_getUid("evaluateWebScript:"),function(_86,_87,_88){
with(_86){
try{
return _window.eval(_88);
}
catch(e){
}
return undefined;
}
}),new objj_method(sel_getUid("window"),function(_89,_8a){
with(_89){
return _window;
}
})]);
var _1=objj_getClass("CPWebView");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPWebView\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_8b,_8c,_8d){
with(_8b){
_8b=objj_msgSendSuper({receiver:_8b,super_class:objj_getClass("CPView")},"initWithCoder:",_8d);
if(_8b){
_mainFrameURL=nil;
_backwardStack=[];
_forwardStack=[];
_scrollMode=CPWebViewScrollNative;
objj_msgSend(_8b,"_initDOMWithFrame:",objj_msgSend(_8b,"frame"));
objj_msgSend(_8b,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
}
return _8b;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_8e,_8f,_90){
with(_8e){
var _91=_subviews;
_subviews=[];
objj_msgSendSuper({receiver:_8e,super_class:objj_getClass("CPView")},"encodeWithCoder:",_90);
_subviews=_91;
}
})]);
p;10;CPWindow.jI;25;Foundation/CPCountedSet.jI;33;Foundation/CPNotificationCenter.jI;26;Foundation/CPUndoManager.ji;12;CGGeometry.ji;13;CPAnimation.ji;13;CPResponder.jc;43828;
CPBorderlessWindowMask=0;
CPTitledWindowMask=1<<0;
CPClosableWindowMask=1<<1;
CPMiniaturizableWindowMask=1<<2;
CPResizableWindowMask=1<<3;
CPTexturedBackgroundWindowMask=1<<8;
CPBorderlessBridgeWindowMask=1<<20;
CPHUDBackgroundWindowMask=1<<21;
CPWindowNotSizable=0;
CPWindowMinXMargin=1;
CPWindowWidthSizable=2;
CPWindowMaxXMargin=4;
CPWindowMinYMargin=8;
CPWindowHeightSizable=16;
CPWindowMaxYMargin=32;
CPBackgroundWindowLevel=-1;
CPNormalWindowLevel=4;
CPFloatingWindowLevel=5;
CPSubmenuWindowLevel=6;
CPTornOffMenuWindowLevel=6;
CPMainMenuWindowLevel=8;
CPStatusWindowLevel=9;
CPModalPanelWindowLevel=10;
CPPopUpMenuWindowLevel=11;
CPDraggingWindowLevel=12;
CPScreenSaverWindowLevel=13;
CPWindowOut=0;
CPWindowAbove=1;
CPWindowBelow=2;
CPWindowWillCloseNotification="CPWindowWillCloseNotification";
CPWindowDidBecomeMainNotification="CPWindowDidBecomeMainNotification";
CPWindowDidResignMainNotification="CPWindowDidResignMainNotification";
CPWindowDidMoveNotification="CPWindowDidMoveNotification";
var _1=20,_2=19,_3=10,_4=10,_5=5,_6=nil;
var _7=nil,_8=nil;
var _9=objj_allocateClassPair(CPResponder,"CPWindow"),_a=_9.isa;
class_addIvars(_9,[new objj_ivar("_windowNumber"),new objj_ivar("_styleMask"),new objj_ivar("_frame"),new objj_ivar("_level"),new objj_ivar("_isVisible"),new objj_ivar("_isAnimating"),new objj_ivar("_hasShadow"),new objj_ivar("_isMovableByWindowBackground"),new objj_ivar("_isDocumentEdited"),new objj_ivar("_isDocumentSaving"),new objj_ivar("_shadowView"),new objj_ivar("_windowView"),new objj_ivar("_contentView"),new objj_ivar("_toolbarView"),new objj_ivar("_mouseOverView"),new objj_ivar("_leftMouseDownView"),new objj_ivar("_rightMouseDownView"),new objj_ivar("_toolbar"),new objj_ivar("_firstResponder"),new objj_ivar("_initialFirstResponder"),new objj_ivar("_delegate"),new objj_ivar("_title"),new objj_ivar("_acceptsMouseMovedEvents"),new objj_ivar("_ignoresMouseEvents"),new objj_ivar("_windowController"),new objj_ivar("_minSize"),new objj_ivar("_maxSize"),new objj_ivar("_undoManager"),new objj_ivar("_representedURL"),new objj_ivar("_registeredDraggedTypes"),new objj_ivar("_registeredDraggedTypesArray"),new objj_ivar("_inclusiveRegisteredDraggedTypes"),new objj_ivar("_defaultButton"),new objj_ivar("_defaultButtonEnabled"),new objj_ivar("_autorecalculatesKeyViewLoop"),new objj_ivar("_keyViewLoopIsDirty"),new objj_ivar("_DOMElement"),new objj_ivar("_bridge"),new objj_ivar("_autoresizingMask"),new objj_ivar("_delegateRespondsToWindowWillReturnUndoManagerSelector"),new objj_ivar("_isFullBridge"),new objj_ivar("_fullBridgeSession")]);
objj_registerClassPair(_9);
objj_addClassForBundle(_9,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_9,[new objj_method(sel_getUid("initWithContentRect:styleMask:"),function(_b,_c,_d,_e){
with(_b){
return objj_msgSend(_b,"initWithContentRect:styleMask:bridge:",_d,_e,objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"));
}
}),new objj_method(sel_getUid("initWithContentRect:styleMask:bridge:"),function(_f,_10,_11,_12,_13){
with(_f){
_f=objj_msgSendSuper({receiver:_f,super_class:objj_getClass("CPResponder")},"init");
if(_f){
_isFullBridge=NO;
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
_windowNumber=objj_msgSend(CPApp._windows,"count");
CPApp._windows[_windowNumber]=_f;
_styleMask=_12;
_level=CPNormalWindowLevel;
_minSize=CGSizeMake(0,0);
_maxSize=CGSizeMake(1000000,1000000);
var _14=objj_msgSend(objj_msgSend(_f,"class"),"_windowViewClassForStyleMask:",_12);
_frame=objj_msgSend(_14,"frameRectForContentRect:",_11);
_windowView=objj_msgSend(objj_msgSend(_14,"alloc"),"initWithFrame:styleMask:",CGRectMake(0,0,CGRectGetWidth(_frame),CGRectGetHeight(_frame)),_12);
objj_msgSend(_windowView,"_setWindow:",_f);
objj_msgSend(_windowView,"setNextResponder:",_f);
objj_msgSend(_f,"setMovableByWindowBackground:",_12&CPHUDBackgroundWindowMask);
objj_msgSend(_f,"setContentView:",objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero()));
_firstResponder=_f;
_DOMElement=document.createElement("div");
_DOMElement.style.position="absolute";
_DOMElement.style.visibility="visible";
_DOMElement.style.zIndex=0;
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _15=_DOMElement.CPDOMDisplayContext[0];
if(!(_15>=0)){
_15=_DOMElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_15]=0;
CPDOMDisplayServerInstructions[_15+1]=_DOMElement;
CPDOMDisplayServerInstructions[_15+2]=NULL;
CPDOMDisplayServerInstructions[_15+3]=(_frame.origin.x);
CPDOMDisplayServerInstructions[_15+4]=(_frame.origin.y);
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _15=_DOMElement.CPDOMDisplayContext[4];
if(!(_15>=0)){
_15=_DOMElement.CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_15]=4;
CPDOMDisplayServerInstructions[_15+1]=_DOMElement;
CPDOMDisplayServerInstructions[_15+2]=1;
CPDOMDisplayServerInstructions[_15+3]=1;
if(_windowView._DOMElement.CPDOMDisplayContext){
_windowView._DOMElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=6;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_windowView._DOMElement;
objj_msgSend(_f,"setBridge:",_13);
objj_msgSend(_f,"setNextResponder:",CPApp);
objj_msgSend(_f,"setHasShadow:",_12!==CPBorderlessWindowMask);
if(_12&CPBorderlessBridgeWindowMask){
objj_msgSend(_f,"setFullBridge:",YES);
}
_defaultButtonEnabled=YES;
_keyViewLoopIsDirty=YES;
}
return _f;
}
}),new objj_method(sel_getUid("awakeFromCib"),function(_16,_17){
with(_16){
if(_initialFirstResponder){
objj_msgSend(_16,"makeFirstResponder:",_initialFirstResponder);
}
_keyViewLoopIsDirty=!objj_msgSend(_16,"_hasKeyViewLoop");
}
}),new objj_method(sel_getUid("_setWindowView:"),function(_18,_19,_1a){
with(_18){
if(_windowView===_1a){
return;
}
var _1b=_windowView;
_windowView=_1a;
if(_1b){
objj_msgSend(_1b,"_setWindow:",nil);
objj_msgSend(_1b,"noteToolbarChanged");
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=8;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_1b._DOMElement;
}
if(_windowView){
if(_windowView._DOMElement.CPDOMDisplayContext){
_windowView._DOMElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=6;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_windowView._DOMElement;
var _1c=objj_msgSend(_contentView,"convertRect:toView:",objj_msgSend(_contentView,"bounds"),nil);
_1c.origin=objj_msgSend(_18,"convertBaseToBridge:",_1c.origin);
objj_msgSend(_windowView,"_setWindow:",_18);
objj_msgSend(_windowView,"setNextResponder:",_18);
objj_msgSend(_windowView,"addSubview:",_contentView);
objj_msgSend(_windowView,"setTitle:",_title);
objj_msgSend(_windowView,"noteToolbarChanged");
objj_msgSend(_18,"setFrame:",objj_msgSend(_18,"frameRectForContentRect:",_1c));
}
}
}),new objj_method(sel_getUid("setFullBridge:"),function(_1d,_1e,_1f){
with(_1d){
_1f=!!_1f;
if(_isFullBridge===_1f){
return;
}
_isFullBridge=_1f;
if(_isFullBridge){
_fullBridgeSession=_CPWindowFullBridgeSessionMake(_windowView,objj_msgSend(_1d,"contentRectForFrameRect:",objj_msgSend(_1d,"frame")),objj_msgSend(_1d,"hasShadow"),objj_msgSend(_1d,"level"));
var _20=objj_msgSend(objj_msgSend(_1d,"class"),"_windowViewClassForFullBridgeStyleMask:",_styleMask),_21=objj_msgSend(objj_msgSend(_20,"alloc"),"initWithFrame:styleMask:",CGRectMakeZero(),_styleMask);
objj_msgSend(_1d,"_setWindowView:",_21);
objj_msgSend(_1d,"setLevel:",CPBackgroundWindowLevel);
objj_msgSend(_1d,"setHasShadow:",NO);
objj_msgSend(_1d,"setAutoresizingMask:",CPWindowWidthSizable|CPWindowHeightSizable);
objj_msgSend(_1d,"setFrame:",objj_msgSend(_bridge,"visibleFrame"));
}else{
var _21=_fullBridgeSession.windowView;
objj_msgSend(_1d,"_setWindowView:",_21);
objj_msgSend(_1d,"setLevel:",_fullBridgeSession.level);
objj_msgSend(_1d,"setHasShadow:",_fullBridgeSession.hasShadow);
objj_msgSend(_1d,"setAutoresizingMask:",CPWindowNotSizable);
objj_msgSend(_1d,"setFrame:",objj_msgSend(_21,"frameRectForContentRect:",_fullBridgeSession.contentRect));
}
}
}),new objj_method(sel_getUid("isFullBridge"),function(_22,_23){
with(_22){
return _isFullBridge;
}
}),new objj_method(sel_getUid("styleMask"),function(_24,_25){
with(_24){
return _styleMask;
}
}),new objj_method(sel_getUid("contentRectForFrameRect:"),function(_26,_27,_28){
with(_26){
return objj_msgSend(_windowView,"contentRectForFrameRect:",_28);
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_29,_2a,_2b){
with(_29){
return objj_msgSend(_windowView,"frameRectForContentRect:",_2b);
}
}),new objj_method(sel_getUid("frame"),function(_2c,_2d){
with(_2c){
return {origin:{x:_frame.origin.x,y:_frame.origin.y},size:{width:_frame.size.width,height:_frame.size.height}};
}
}),new objj_method(sel_getUid("setFrame:display:animate:"),function(_2e,_2f,_30,_31,_32){
with(_2e){
if(_32){
var _33=objj_msgSend(objj_msgSend(_CPWindowFrameAnimation,"alloc"),"initWithWindow:targetFrame:",_2e,_30);
objj_msgSend(_33,"startAnimation");
}else{
objj_msgSend(_2e,"setFrameOrigin:",_30.origin);
objj_msgSend(_2e,"setFrameSize:",_30.size);
}
}
}),new objj_method(sel_getUid("setFrame:"),function(_34,_35,_36){
with(_34){
objj_msgSend(_34,"setFrame:display:animate:",_36,YES,NO);
}
}),new objj_method(sel_getUid("setFrameOrigin:"),function(_37,_38,_39){
with(_37){
var _3a=_frame.origin;
if((_3a.x==_39.x&&_3a.y==_39.y)){
return;
}
_3a.x=_39.x;
_3a.y=_39.y;
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _3b=_DOMElement.CPDOMDisplayContext[0];
if(!(_3b>=0)){
_3b=_DOMElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_3b]=0;
CPDOMDisplayServerInstructions[_3b+1]=_DOMElement;
CPDOMDisplayServerInstructions[_3b+2]=NULL;
CPDOMDisplayServerInstructions[_3b+3]=_3a.x;
CPDOMDisplayServerInstructions[_3b+4]=_3a.y;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidMoveNotification,_37);
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_3c,_3d,_3e){
with(_3c){
_3e={width:MIN(MAX(_3e.width,_minSize.width),_maxSize.width),height:MIN(MAX(_3e.height,_minSize.height),_maxSize.height)};
if((_frame.size.width==_3e.width&&_frame.size.height==_3e.height)){
return;
}
_frame.size=_3e;
objj_msgSend(_windowView,"setFrameSize:",_3e);
if(_hasShadow){
objj_msgSend(_shadowView,"setFrameSize:",{width:_1+_3e.width+_2,height:_4+_3e.height+_3+_5});
}
if(!_isAnimating&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResize:"))){
objj_msgSend(_delegate,"windowDidResize:",_3c);
}
}
}),new objj_method(sel_getUid("orderFront:"),function(_3f,_40,_41){
with(_3f){
objj_msgSend(_bridge,"order:window:relativeTo:",CPWindowAbove,_3f,nil);
}
}),new objj_method(sel_getUid("orderBack:"),function(_42,_43,_44){
with(_42){
}
}),new objj_method(sel_getUid("orderOut:"),function(_45,_46,_47){
with(_45){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowWillClose:"))){
objj_msgSend(_delegate,"windowWillClose:",_45);
}
objj_msgSend(_bridge,"order:window:relativeTo:",CPWindowOut,_45,nil);
if(objj_msgSend(CPApp,"keyWindow")==_45){
objj_msgSend(_45,"resignKeyWindow");
CPApp._keyWindow=nil;
}
}
}),new objj_method(sel_getUid("orderWindow:relativeTo:"),function(_48,_49,_4a,_4b){
with(_48){
objj_msgSend(_bridge,"order:window:relativeTo:",_4a,_48,CPApp._windows[_4b]);
}
}),new objj_method(sel_getUid("setLevel:"),function(_4c,_4d,_4e){
with(_4c){
_level=_4e;
}
}),new objj_method(sel_getUid("level"),function(_4f,_50){
with(_4f){
return _level;
}
}),new objj_method(sel_getUid("isVisible"),function(_51,_52){
with(_51){
return _isVisible;
}
}),new objj_method(sel_getUid("showsResizeIndicator"),function(_53,_54){
with(_53){
return objj_msgSend(_windowView,"showsResizeIndicator");
}
}),new objj_method(sel_getUid("setShowsResizeIndicator:"),function(_55,_56,_57){
with(_55){
objj_msgSend(_windowView,"setShowsResizeIndicator:",_57);
}
}),new objj_method(sel_getUid("resizeIndicatorOffset"),function(_58,_59){
with(_58){
return objj_msgSend(_windowView,"resizeIndicatorOffset");
}
}),new objj_method(sel_getUid("setResizeIndicatorOffset:"),function(_5a,_5b,_5c){
with(_5a){
objj_msgSend(_windowView,"setResizeIndicatorOffset:",_5c);
}
}),new objj_method(sel_getUid("setContentView:"),function(_5d,_5e,_5f){
with(_5d){
if(_contentView){
objj_msgSend(_contentView,"removeFromSuperview");
}
var _60=CGRectMake(0,0,CGRectGetWidth(_frame),CGRectGetHeight(_frame));
_contentView=_5f;
objj_msgSend(_contentView,"setFrame:",objj_msgSend(_5d,"contentRectForFrameRect:",_60));
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_windowView,"addSubview:",_contentView);
}
}),new objj_method(sel_getUid("contentView"),function(_61,_62){
with(_61){
return _contentView;
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_63,_64,_65){
with(_63){
objj_msgSend(_windowView,"setBackgroundColor:",_65);
}
}),new objj_method(sel_getUid("backgroundColor"),function(_66,_67){
with(_66){
return objj_msgSend(_windowView,"backgroundColor");
}
}),new objj_method(sel_getUid("setMinSize:"),function(_68,_69,_6a){
with(_68){
if(CGSizeEqualToSize(_minSize,_6a)){
return;
}
_minSize=CGSizeCreateCopy(_6a);
var _6b=CGSizeMakeCopy(objj_msgSend(_68,"frame").size),_6c=NO;
if(_6b.width<_minSize.width){
_6b.width=_minSize.width;
_6c=YES;
}
if(_6b.height<_minSize.height){
_6b.height=_minSize.height;
_6c=YES;
}
if(_6c){
objj_msgSend(_68,"setFrameSize:",_6b);
}
}
}),new objj_method(sel_getUid("minSize"),function(_6d,_6e){
with(_6d){
return _minSize;
}
}),new objj_method(sel_getUid("setMaxSize:"),function(_6f,_70,_71){
with(_6f){
if(CGSizeEqualToSize(_maxSize,_71)){
return;
}
_maxSize=CGSizeCreateCopy(_71);
var _72=CGSizeMakeCopy(objj_msgSend(_6f,"frame").size),_73=NO;
if(_72.width>_maxSize.width){
_72.width=_maxSize.width;
_73=YES;
}
if(_72.height>_maxSize.height){
_72.height=_maxSize.height;
_73=YES;
}
if(_73){
objj_msgSend(_6f,"setFrameSize:",_72);
}
}
}),new objj_method(sel_getUid("maxSize"),function(_74,_75){
with(_74){
return _maxSize;
}
}),new objj_method(sel_getUid("hasShadow"),function(_76,_77){
with(_76){
return _hasShadow;
}
}),new objj_method(sel_getUid("setHasShadow:"),function(_78,_79,_7a){
with(_78){
if(_hasShadow===_7a){
return;
}
_hasShadow=_7a;
if(_hasShadow){
var _7b=objj_msgSend(_windowView,"bounds");
_shadowView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(-_1,-_3+_5,_1+CGRectGetWidth(_7b)+_2,_3+CGRectGetHeight(_7b)+_4));
if(!_6){
var _7c=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_6=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7c,"pathForResource:","CPWindow/CPWindowShadow0.png"),CGSizeMake(20,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7c,"pathForResource:","CPWindow/CPWindowShadow1.png"),CGSizeMake(1,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7c,"pathForResource:","CPWindow/CPWindowShadow2.png"),CGSizeMake(19,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7c,"pathForResource:","CPWindow/CPWindowShadow3.png"),CGSizeMake(20,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7c,"pathForResource:","CPWindow/CPWindowShadow4.png"),CGSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7c,"pathForResource:","CPWindow/CPWindowShadow5.png"),CGSizeMake(19,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7c,"pathForResource:","CPWindow/CPWindowShadow6.png"),CGSizeMake(20,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7c,"pathForResource:","CPWindow/CPWindowShadow7.png"),CGSizeMake(1,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7c,"pathForResource:","CPWindow/CPWindowShadow8.png"),CGSizeMake(19,18))]));
}
objj_msgSend(_shadowView,"setBackgroundColor:",_6);
objj_msgSend(_shadowView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
if(_shadowView._DOMElement.CPDOMDisplayContext){
_shadowView._DOMElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=7;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_shadowView._DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_windowView._DOMElement;
}else{
if(_shadowView){
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=8;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_shadowView._DOMElement;
_shadowView=nil;
}
}
}
}),new objj_method(sel_getUid("setDelegate:"),function(_7d,_7e,_7f){
with(_7d){
_delegate=_7f;
_delegateRespondsToWindowWillReturnUndoManagerSelector=objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowWillReturnUndoManager:"));
var _80=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidBecomeMain:"))){
objj_msgSend(_80,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidBecomeMain:"),CPWindowDidBecomeMainNotification,_7d);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResignMain:"))){
objj_msgSend(_80,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidResignMain:"),CPWindowDidResignMainNotification,_7d);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidMove:"))){
objj_msgSend(_80,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidMove:"),CPWindowDidMoveNotification,_7d);
}
}
}),new objj_method(sel_getUid("delegate"),function(_81,_82){
with(_81){
return _delegate;
}
}),new objj_method(sel_getUid("setWindowController:"),function(_83,_84,_85){
with(_83){
_windowController=_85;
}
}),new objj_method(sel_getUid("windowController"),function(_86,_87){
with(_86){
return _windowController;
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_88,_89,_8a){
with(_88){
if(objj_msgSend(_delegate,"respondsToSelector:",_8a)){
objj_msgSend(_delegate,"performSelector:",_8a);
}else{
objj_msgSendSuper({receiver:_88,super_class:objj_getClass("CPResponder")},"doCommandBySelector:",_8a);
}
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(_8b,_8c){
with(_8b){
return YES;
}
}),new objj_method(sel_getUid("makeFirstResponder:"),function(_8d,_8e,_8f){
with(_8d){
if(_firstResponder==_8f){
return YES;
}
if(!objj_msgSend(_firstResponder,"resignFirstResponder")){
return NO;
}
if(!_8f||!objj_msgSend(_8f,"acceptsFirstResponder")||!objj_msgSend(_8f,"becomeFirstResponder")){
_firstResponder=_8d;
return NO;
}
_firstResponder=_8f;
return YES;
}
}),new objj_method(sel_getUid("firstResponder"),function(_90,_91){
with(_90){
return _firstResponder;
}
}),new objj_method(sel_getUid("acceptsMouseMovedEvents"),function(_92,_93){
with(_92){
return _acceptsMouseMovedEvents;
}
}),new objj_method(sel_getUid("setAcceptsMouseMovedEvents:"),function(_94,_95,_96){
with(_94){
_acceptsMouseMovedEvents=_96;
}
}),new objj_method(sel_getUid("ignoresMouseEvents"),function(_97,_98){
with(_97){
return _ignoresMouseEvents;
}
}),new objj_method(sel_getUid("setIgnoresMouseEvents:"),function(_99,_9a,_9b){
with(_99){
_ignoresMouseEvents=_9b;
}
}),new objj_method(sel_getUid("title"),function(_9c,_9d){
with(_9c){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_9e,_9f,_a0){
with(_9e){
_title=_a0;
objj_msgSend(_windowView,"setTitle:",_a0);
objj_msgSend(_9e,"_synchronizeMenuBarTitleWithWindowTitle");
}
}),new objj_method(sel_getUid("setTitleWithRepresentedFilename:"),function(_a1,_a2,_a3){
with(_a1){
objj_msgSend(_a1,"setRepresentedFilename:",_a3);
objj_msgSend(_a1,"setTitle:",objj_msgSend(_a3,"lastPathComponent"));
}
}),new objj_method(sel_getUid("setRepresentedFilename:"),function(_a4,_a5,_a6){
with(_a4){
objj_msgSend(_a4,"setRepresentedURL:",_a6);
}
}),new objj_method(sel_getUid("representedFilename"),function(_a7,_a8){
with(_a7){
return _representedURL;
}
}),new objj_method(sel_getUid("setRepresentedURL:"),function(_a9,_aa,_ab){
with(_a9){
_representedURL=_ab;
}
}),new objj_method(sel_getUid("representedURL"),function(_ac,_ad){
with(_ac){
return _representedURL;
}
}),new objj_method(sel_getUid("setMovableByWindowBackground:"),function(_ae,_af,_b0){
with(_ae){
_isMovableByWindowBackground=_b0;
}
}),new objj_method(sel_getUid("isMovableByWindowBackground"),function(_b1,_b2){
with(_b1){
return _isMovableByWindowBackground;
}
}),new objj_method(sel_getUid("center"),function(_b3,_b4){
with(_b3){
var _b5=objj_msgSend(_b3,"frame").size,_b6=objj_msgSend(_bridge,"contentBounds").size;
objj_msgSend(_b3,"setFrameOrigin:",CGPointMake((_b6.width-_b5.width)/2,(_b6.height-_b5.height)/2));
}
}),new objj_method(sel_getUid("sendEvent:"),function(_b7,_b8,_b9){
with(_b7){
var _ba=objj_msgSend(_b9,"type"),_bb=objj_msgSend(_b9,"locationInWindow");
switch(_ba){
case CPKeyUp:
return objj_msgSend(objj_msgSend(_b7,"firstResponder"),"keyUp:",_b9);
case CPKeyDown:
return objj_msgSend(objj_msgSend(_b7,"firstResponder"),"keyDown:",_b9);
case CPScrollWheel:
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_bb),"scrollWheel:",_b9);
case CPLeftMouseUp:
if(!_leftMouseDownView){
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_bb),"mouseUp:",_b9);
}
objj_msgSend(_leftMouseDownView,"mouseUp:",_b9);
_leftMouseDownView=nil;
return;
case CPLeftMouseDown:
_leftMouseDownView=objj_msgSend(_windowView,"hitTest:",_bb);
if(_leftMouseDownView!=_firstResponder&&objj_msgSend(_leftMouseDownView,"acceptsFirstResponder")){
objj_msgSend(_b7,"makeFirstResponder:",_leftMouseDownView);
}
var _bc=objj_msgSend(_b9,"window");
if(objj_msgSend(_bc,"isKeyWindow")||objj_msgSend(_bc,"becomesKeyOnlyIfNeeded")){
return objj_msgSend(_leftMouseDownView,"mouseDown:",_b9);
}else{
objj_msgSend(_b7,"makeKeyAndOrderFront:",_b7);
if(objj_msgSend(_leftMouseDownView,"acceptsFirstMouse:",_b9)){
return objj_msgSend(_leftMouseDownView,"mouseDown:",_b9);
}
}
break;
case CPLeftMouseDragged:
if(!_leftMouseDownView){
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_bb),"mouseDragged:",_b9);
}
return objj_msgSend(_leftMouseDownView,"mouseDragged:",_b9);
case CPRightMouseUp:
return objj_msgSend(_rightMouseDownView,"mouseUp:",_b9);
case CPRightMouseDown:
_rightMouseDownView=objj_msgSend(_windowView,"hitTest:",_bb);
return objj_msgSend(_rightMouseDownView,"mouseDown:",_b9);
case CPRightMouseDragged:
return objj_msgSend(_rightMouseDownView,"mouseDragged:",_b9);
case CPMouseMoved:
if(!_acceptsMouseMovedEvents){
return;
}
var _bd=objj_msgSend(_windowView,"hitTest:",_bb);
if(_bd!=_mouseOverView){
if(_mouseOverView){
objj_msgSend(_mouseOverView,"mouseExited:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPMouseExited,_bb,objj_msgSend(_b9,"modifierFlags"),objj_msgSend(_b9,"timestamp"),_windowNumber,nil,-1,1,0));
}
if(_bd){
objj_msgSend(_bd,"mouseEntered:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPMouseEntered,_bb,objj_msgSend(_b9,"modifierFlags"),objj_msgSend(_b9,"timestamp"),_windowNumber,nil,-1,1,0));
}
_mouseOverView=_bd;
}
objj_msgSend(_mouseOverView,"mouseMoved:",_b9);
}
}
}),new objj_method(sel_getUid("windowNumber"),function(_be,_bf){
with(_be){
return _windowNumber;
}
}),new objj_method(sel_getUid("becomeKeyWindow"),function(_c0,_c1){
with(_c0){
if(_firstResponder!=_c0&&objj_msgSend(_firstResponder,"respondsToSelector:",sel_getUid("becomeKeyWindow"))){
objj_msgSend(_firstResponder,"becomeKeyWindow");
}
}
}),new objj_method(sel_getUid("canBecomeKeyWindow"),function(_c2,_c3){
with(_c2){
return YES;
}
}),new objj_method(sel_getUid("isKeyWindow"),function(_c4,_c5){
with(_c4){
return objj_msgSend(CPApp,"keyWindow")==_c4;
}
}),new objj_method(sel_getUid("makeKeyAndOrderFront:"),function(_c6,_c7,_c8){
with(_c6){
objj_msgSend(_c6,"orderFront:",_c6);
objj_msgSend(_c6,"makeKeyWindow");
objj_msgSend(_c6,"makeMainWindow");
}
}),new objj_method(sel_getUid("makeKeyWindow"),function(_c9,_ca){
with(_c9){
if(!objj_msgSend(_c9,"canBecomeKeyWindow")){
return;
}
objj_msgSend(CPApp._keyWindow,"resignKeyWindow");
CPApp._keyWindow=_c9;
objj_msgSend(_c9,"becomeKeyWindow");
}
}),new objj_method(sel_getUid("resignKeyWindow"),function(_cb,_cc){
with(_cb){
if(_firstResponder!=_cb&&objj_msgSend(_firstResponder,"respondsToSelector:",sel_getUid("resignKeyWindow"))){
objj_msgSend(_firstResponder,"resignKeyWindow");
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResignKey:"))){
objj_msgSend(_delegate,"windowDidResignKey:",_cb);
}
}
}),new objj_method(sel_getUid("dragImage:at:offset:event:pasteboard:source:slideBack:"),function(_cd,_ce,_cf,_d0,_d1,_d2,_d3,_d4,_d5){
with(_cd){
objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"dragImage:fromWindow:at:offset:event:pasteboard:source:slideBack:",_cf,_cd,objj_msgSend(_cd,"convertBaseToBridge:",_d0),_d1,_d2,_d3,_d4,_d5);
}
}),new objj_method(sel_getUid("_noteRegisteredDraggedTypes:"),function(_d6,_d7,_d8){
with(_d6){
if(!_d8){
return;
}
if(!_inclusiveRegisteredDraggedTypes){
_inclusiveRegisteredDraggedTypes=objj_msgSend(CPCountedSet,"set");
}
objj_msgSend(_inclusiveRegisteredDraggedTypes,"unionSet:",_d8);
}
}),new objj_method(sel_getUid("_noteUnregisteredDraggedTypes:"),function(_d9,_da,_db){
with(_d9){
if(!_db){
return;
}
objj_msgSend(_inclusiveRegisteredDraggedTypes,"minusSet:",_db);
if(objj_msgSend(_inclusiveRegisteredDraggedTypes,"count")===0){
_inclusiveRegisteredDraggedTypes=nil;
}
}
}),new objj_method(sel_getUid("dragView:at:offset:event:pasteboard:source:slideBack:"),function(_dc,_dd,_de,_df,_e0,_e1,_e2,_e3,_e4){
with(_dc){
objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"dragView:fromWindow:at:offset:event:pasteboard:source:slideBack:",_de,_dc,objj_msgSend(_dc,"convertBaseToBridge:",_df),_e0,_e1,_e2,_e3,_e4);
}
}),new objj_method(sel_getUid("registerForDraggedTypes:"),function(_e5,_e6,_e7){
with(_e5){
if(!_e7){
return;
}
objj_msgSend(_e5,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
objj_msgSend(_registeredDraggedTypes,"addObjectsFromArray:",_e7);
objj_msgSend(_e5,"_noteRegisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypesArray=nil;
}
}),new objj_method(sel_getUid("registeredDraggedTypes"),function(_e8,_e9){
with(_e8){
if(!_registeredDraggedTypesArray){
_registeredDraggedTypesArray=objj_msgSend(_registeredDraggedTypes,"allObjects");
}
return _registeredDraggedTypesArray;
}
}),new objj_method(sel_getUid("unregisterDraggedTypes"),function(_ea,_eb){
with(_ea){
objj_msgSend(_ea,"_noteUnregisteredDraggedTypes:",_registeredDraggedTypes);
_registeredDraggedTypes=objj_msgSend(CPSet,"set");
_registeredDraggedTypesArray=[];
}
}),new objj_method(sel_getUid("setDocumentEdited:"),function(_ec,_ed,_ee){
with(_ec){
if(_isDocumentEdited==_ee){
return;
}
_isDocumentEdited=_ee;
objj_msgSend(CPMenu,"_setMenuBarIconImageAlphaValue:",_isDocumentEdited?0.5:1);
}
}),new objj_method(sel_getUid("isDocumentEdited"),function(_ef,_f0){
with(_ef){
return _isDocumentEdited;
}
}),new objj_method(sel_getUid("setDocumentSaving:"),function(_f1,_f2,_f3){
with(_f1){
if(_isDocumentSaving==_f3){
return;
}
_isDocumentSaving=_f3;
objj_msgSend(_f1,"_synchronizeSaveMenuWithDocumentSaving");
objj_msgSend(_windowView,"windowDidChangeDocumentSaving");
}
}),new objj_method(sel_getUid("isDocumentSaving"),function(_f4,_f5){
with(_f4){
return _isDocumentSaving;
}
}),new objj_method(sel_getUid("_synchronizeSaveMenuWithDocumentSaving"),function(_f6,_f7){
with(_f6){
if(!objj_msgSend(_f6,"isMainWindow")){
return;
}
var _f8=objj_msgSend(CPApp,"mainMenu"),_f9=objj_msgSend(_f8,"indexOfItemWithTitle:",_isDocumentSaving?"Save":"Saving...");
if(_f9==CPNotFound){
return;
}
var _fa=objj_msgSend(_f8,"itemAtIndex:",_f9);
if(_isDocumentSaving){
_7=objj_msgSend(_fa,"image");
objj_msgSend(_fa,"setTitle:","Saving...");
objj_msgSend(_fa,"setImage:",_8);
objj_msgSend(_fa,"setEnabled:",NO);
}else{
objj_msgSend(_fa,"setTitle:","Save");
objj_msgSend(_fa,"setImage:",_7);
objj_msgSend(_fa,"setEnabled:",YES);
}
}
}),new objj_method(sel_getUid("performClose:"),function(_fb,_fc,_fd){
with(_fb){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowShouldClose:"))){
if(!objj_msgSend(_delegate,"windowShouldClose:",_fb)){
return;
}
}else{
if(objj_msgSend(_fb,"respondsToSelector:",sel_getUid("windowShouldClose:"))&&!objj_msgSend(_fb,"windowShouldClose:",_fb)){
return;
}
}
objj_msgSend(_fb,"close");
}
}),new objj_method(sel_getUid("close"),function(_fe,_ff){
with(_fe){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowWillCloseNotification,_fe);
objj_msgSend(_fe,"orderOut:",nil);
}
}),new objj_method(sel_getUid("isMainWindow"),function(self,_cmd){
with(self){
return objj_msgSend(CPApp,"mainWindow")==self;
}
}),new objj_method(sel_getUid("canBecomeMainWindow"),function(self,_cmd){
with(self){
if(objj_msgSend(self,"isVisible")){
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("makeMainWindow"),function(self,_cmd){
with(self){
if(!objj_msgSend(self,"canBecomeMainWindow")){
return;
}
objj_msgSend(CPApp._mainWindow,"resignMainWindow");
CPApp._mainWindow=self;
objj_msgSend(self,"becomeMainWindow");
}
}),new objj_method(sel_getUid("becomeMainWindow"),function(self,_cmd){
with(self){
objj_msgSend(self,"_synchronizeMenuBarTitleWithWindowTitle");
objj_msgSend(self,"_synchronizeSaveMenuWithDocumentSaving");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidBecomeMainNotification,self);
}
}),new objj_method(sel_getUid("resignMainWindow"),function(self,_cmd){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidResignMainNotification,self);
}
}),new objj_method(sel_getUid("toolbar"),function(self,_cmd){
with(self){
return _toolbar;
}
}),new objj_method(sel_getUid("setToolbar:"),function(self,_cmd,_10e){
with(self){
if(_toolbar===_10e){
return;
}
objj_msgSend(objj_msgSend(_10e,"_window"),"setToolbar:",nil);
objj_msgSend(_toolbar,"_setWindow:",nil);
_toolbar=_10e;
objj_msgSend(_toolbar,"_setWindow:",self);
objj_msgSend(self,"_noteToolbarChanged");
}
}),new objj_method(sel_getUid("toggleToolbarShown:"),function(self,_cmd,_111){
with(self){
var _112=objj_msgSend(self,"toolbar");
objj_msgSend(_112,"setVisible:",!objj_msgSend(_112,"isVisible"));
}
}),new objj_method(sel_getUid("_noteToolbarChanged"),function(self,_cmd){
with(self){
var _115=CGRectMakeCopy(objj_msgSend(self,"frame")),_116;
objj_msgSend(_windowView,"noteToolbarChanged");
if(_isFullBridge){
_116=objj_msgSend(_bridge,"visibleFrame");
}else{
_116=CGRectMakeCopy(objj_msgSend(self,"frame"));
_116.origin=_115.origin;
}
objj_msgSend(self,"setFrame:",_116);
}
}),new objj_method(sel_getUid("_setAttachedSheetFrameOrigin"),function(self,_cmd){
with(self){
var _119=objj_msgSend(objj_msgSend(self,"contentView"),"frame"),_11a=CGRectMakeCopy(objj_msgSend(_attachedSheet,"frame"));
_11a.origin.y=CGRectGetMinY(_frame)+CGRectGetMinY(_119);
_11a.origin.x=CGRectGetMinX(_frame)+FLOOR((CGRectGetWidth(_frame)-CGRectGetWidth(_11a))/2);
objj_msgSend(_attachedSheet,"setFrameOrigin:",_11a.origin);
}
}),new objj_method(sel_getUid("_animateAttachedSheet"),function(self,_cmd){
with(self){
}
}),new objj_method(sel_getUid("_attachSheet:modalDelegate:didEndSelector:contextInfo:"),function(self,_cmd,_11f,_120,_121,_122){
with(self){
_attachedSheet=_11f;
_11f._isSheet=YES;
objj_msgSend(self,"_setAttachedSheetFrameOrigin");
objj_msgSend(_bridge,"order:window:relativeTo:",CPWindowAbove,_11f,self);
}
}),new objj_method(sel_getUid("attachedSheet"),function(self,_cmd){
with(self){
return _attachedSheet;
}
}),new objj_method(sel_getUid("isSheet"),function(self,_cmd){
with(self){
return _isSheet;
}
}),new objj_method(sel_getUid("becomesKeyOnlyIfNeeded"),function(self,_cmd){
with(self){
return NO;
}
}),new objj_method(sel_getUid("worksWhenModal"),function(self,_cmd){
with(self){
return NO;
}
}),new objj_method(sel_getUid("keyDown:"),function(self,_cmd,_12d){
with(self){
if(!objj_msgSend(self,"performKeyEquivalent:",_12d)){
objj_msgSend(self,"interpretKeyEvents:",[_12d]);
}
}
}),new objj_method(sel_getUid("insertNewline:"),function(self,_cmd,_130){
with(self){
if(_defaultButton&&_defaultButtonEnabled){
objj_msgSend(_defaultButton,"performClick:",nil);
}
}
}),new objj_method(sel_getUid("insertTab:"),function(self,_cmd,_133){
with(self){
objj_msgSend(self,"selectNextKeyView:",nil);
}
}),new objj_method(sel_getUid("_dirtyKeyViewLoop"),function(self,_cmd){
with(self){
if(_autorecalculatesKeyViewLoop){
_keyViewLoopIsDirty=YES;
}
}
}),new objj_method(sel_getUid("_hasKeyViewLoop"),function(self,_cmd){
with(self){
var _138=[];
objj_msgSend(self,"_appendSubviewsOf:toArray:",_contentView,_138);
for(var i=0,_13a=objj_msgSend(_138,"count");i<_13a;i++){
if(_138[i]._nextKeyView){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("recalculateKeyViewLoop"),function(self,_cmd){
with(self){
var _13d=[];
objj_msgSend(self,"_appendSubviewsOf:toArray:",_contentView,_13d);
var _13e=objj_msgSend(_13d,"sortedArrayUsingFunction:context:",_13f,_contentView),_140=objj_msgSend(_13e,"count");
for(var i=0;i<_140;i++){
objj_msgSend(_13e[i],"setNextKeyView:",_13e[(i+1)%_140]);
}
_keyViewLoopIsDirty=NO;
}
}),new objj_method(sel_getUid("_appendSubviewsOf:toArray:"),function(self,_cmd,_144,_145){
with(self){
var _146=objj_msgSend(_144,"subviews"),_147=objj_msgSend(_146,"count");
while(_147--){
objj_msgSend(self,"_appendSubviewsOf:toArray:",_146[_147],_145);
}
objj_msgSend(_145,"addObject:",_144);
}
}),new objj_method(sel_getUid("setAutorecalculatesKeyViewLoop:"),function(self,_cmd,_14a){
with(self){
if(_autorecalculatesKeyViewLoop===_14a){
return;
}
_autorecalculatesKeyViewLoop=_14a;
objj_msgSend(self,"_dirtyKeyViewLoop");
}
}),new objj_method(sel_getUid("autorecalculatesKeyViewLoop"),function(self,_cmd){
with(self){
return _autorecalculatesKeyViewLoop;
}
}),new objj_method(sel_getUid("selectNextKeyView:"),function(self,_cmd,_14f){
with(self){
if(objj_msgSend(_firstResponder,"isKindOfClass:",objj_msgSend(CPView,"class"))){
objj_msgSend(self,"selectKeyViewFollowingView:",_firstResponder);
}
}
}),new objj_method(sel_getUid("selectPreviousKeyView:"),function(self,_cmd,_152){
with(self){
if(objj_msgSend(_firstResponder,"isKindOfClass:",objj_msgSend(CPView,"class"))){
objj_msgSend(self,"selectKeyViewPrecedingView:",_firstResponder);
}
}
}),new objj_method(sel_getUid("selectKeyViewFollowingView:"),function(self,_cmd,_155){
with(self){
if(_keyViewLoopIsDirty){
objj_msgSend(self,"recalculateKeyViewLoop");
}
objj_msgSend(self,"makeFirstResponder:",objj_msgSend(_155,"nextValidKeyView"));
}
}),new objj_method(sel_getUid("selectKeyViewPrecedingView:"),function(self,_cmd,_158){
with(self){
if(_keyViewLoopIsDirty){
objj_msgSend(self,"recalculateKeyViewLoop");
}
objj_msgSend(self,"makeFirstResponder:",objj_msgSend(_158,"previousValidKeyView"));
}
}),new objj_method(sel_getUid("setDefaultButtonCell:"),function(self,_cmd,_15b){
with(self){
objj_msgSend(self,"setDefaultButton:",_15b);
}
}),new objj_method(sel_getUid("defaultButtonCell"),function(self,_cmd){
with(self){
return objj_msgSend(self,"defaultButton");
}
}),new objj_method(sel_getUid("setDefaultButton:"),function(self,_cmd,_160){
with(self){
objj_msgSend(_defaultButton,"setDefaultButton:",NO);
_defaultButton=_160;
objj_msgSend(_defaultButton,"setDefaultButton:",YES);
}
}),new objj_method(sel_getUid("defaultButton"),function(self,_cmd){
with(self){
return _defaultButton;
}
}),new objj_method(sel_getUid("enableKeyEquivalentForDefaultButton"),function(self,_cmd){
with(self){
_defaultButtonEnabled=YES;
}
}),new objj_method(sel_getUid("enableKeyEquivalentForDefaultButtonCell"),function(self,_cmd){
with(self){
objj_msgSend(self,"enableKeyEquivalentForDefaultButton");
}
}),new objj_method(sel_getUid("disableKeyEquivalentForDefaultButton"),function(self,_cmd){
with(self){
_defaultButtonEnabled=NO;
}
}),new objj_method(sel_getUid("disableKeyEquivalentForDefaultButtonCell"),function(self,_cmd){
with(self){
objj_msgSend(self,"disableKeyEquivalentForDefaultButton");
}
})]);
class_addMethods(_a,[new objj_method(sel_getUid("initialize"),function(self,_cmd){
with(self){
if(self!=objj_msgSend(CPWindow,"class")){
return;
}
var _16d=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_8=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_16d,"pathForResource:","CPProgressIndicator/CPProgressIndicatorSpinningStyleRegular.gif"),CGSizeMake(16,16));
}
}),new objj_method(sel_getUid("_windowViewClassForStyleMask:"),function(self,_cmd,_170){
with(self){
if(_170&CPHUDBackgroundWindowMask){
return _CPHUDWindowView;
}else{
if(_170===CPBorderlessWindowMask){
return _CPBorderlessWindowView;
}
}
return _CPStandardWindowView;
}
}),new objj_method(sel_getUid("_windowViewClassForFullBridgeStyleMask:"),function(self,_cmd,_173){
with(self){
return _CPBorderlessBridgeWindowView;
}
}),new objj_method(sel_getUid("frameRectForContentRect:styleMask:"),function(self,_cmd,_176,_177){
with(self){
return objj_msgSend(objj_msgSend(objj_msgSend(self,"class"),"_windowViewClassForStyleMask:",_styleMask),"frameRectForContentRect:",_176);
}
})]);
var _13f=function(a,b,_17a){
var _17b=objj_msgSend(a,"convertRect:toView:",objj_msgSend(a,"bounds"),nil),_17c=objj_msgSend(b,"convertRect:toView:",objj_msgSend(b,"bounds"),nil);
if(CGRectGetMinY(_17b)<CGRectGetMinY(_17c)){
return -1;
}else{
if(CGRectGetMinY(_17b)==CGRectGetMinY(_17c)&&CGRectGetMinX(_17b)<CGRectGetMinX(_17c)){
return -1;
}else{
if(CGRectGetMinX(_17b)==CGRectGetMinX(_17c)&&CGRectGetMinX(_17b)==CGRectGetMinX(_17c)){
return 0;
}else{
return 1;
}
}
}
};
var _9=objj_getClass("CPWindow");
if(!_9){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPWindow\""));
}
var _a=_9.isa;
class_addMethods(_9,[new objj_method(sel_getUid("_synchronizeMenuBarTitleWithWindowTitle"),function(self,_cmd){
with(self){
if(!objj_msgSend(_windowController,"document")||!objj_msgSend(self,"isMainWindow")){
return;
}
objj_msgSend(CPMenu,"setMenuBarTitle:",_title);
}
})]);
var _9=objj_getClass("CPWindow");
if(!_9){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPWindow\""));
}
var _a=_9.isa;
class_addMethods(_9,[new objj_method(sel_getUid("setBridge:"),function(self,_cmd,_181){
with(self){
if(_bridge==_181){
return;
}
if(_bridge){
objj_msgSend(self,"orderOut:",self);
}
_bridge=_181;
if(objj_msgSend(self,"isFullBridge")){
objj_msgSend(self,"setFrame:",objj_msgSend(_181,"contentBounds"));
}
}
}),new objj_method(sel_getUid("resizeWithOldBridgeSize:"),function(self,_cmd,_184){
with(self){
if(objj_msgSend(self,"isFullBridge")){
return objj_msgSend(self,"setFrame:",objj_msgSend(_bridge,"visibleFrame"));
}
if(_autoresizingMask==CPWindowNotSizable){
return;
}
var _185=objj_msgSend(_bridge,"contentBounds"),_186=CGRectMakeCopy(_frame),dX=(CGRectGetWidth(_185)-_184.width)/(((_autoresizingMask&CPWindowMinXMargin)?1:0)+(_autoresizingMask&CPWindowWidthSizable?1:0)+(_autoresizingMask&CPWindowMaxXMargin?1:0)),dY=(CGRectGetHeight(_185)-_184.height)/((_autoresizingMask&CPWindowMinYMargin?1:0)+(_autoresizingMask&CPWindowHeightSizable?1:0)+(_autoresizingMask&CPWindowMaxYMargin?1:0));
if(_autoresizingMask&CPWindowMinXMargin){
_186.origin.x+=dX;
}
if(_autoresizingMask&CPWindowWidthSizable){
_186.size.width+=dX;
}
if(_autoresizingMask&CPWindowMinYMargin){
_186.origin.y+=dY;
}
if(_autoresizingMask&CPWindowHeightSizable){
_186.size.height+=dY;
}
objj_msgSend(self,"setFrame:",_186);
}
}),new objj_method(sel_getUid("setAutoresizingMask:"),function(self,_cmd,_18b){
with(self){
_autoresizingMask=_18b;
}
}),new objj_method(sel_getUid("autoresizingMask"),function(self,_cmd){
with(self){
return _autoresizingMask;
}
}),new objj_method(sel_getUid("convertBaseToBridge:"),function(self,_cmd,_190){
with(self){
var _191=objj_msgSend(self,"frame").origin;
return CGPointMake(_190.x+_191.x,_190.y+_191.y);
}
}),new objj_method(sel_getUid("convertBridgeToBase:"),function(self,_cmd,_194){
with(self){
var _195=objj_msgSend(self,"frame").origin;
return CGPointMake(_194.x-_195.x,_194.y-_195.y);
}
}),new objj_method(sel_getUid("undoManager"),function(self,_cmd){
with(self){
if(_delegateRespondsToWindowWillReturnUndoManagerSelector){
return objj_msgSend(_delegate,"windowWillReturnUndoManager:",self);
}
if(!_undoManager){
_undoManager=objj_msgSend(objj_msgSend(CPUndoManager,"alloc"),"init");
}
return _undoManager;
}
}),new objj_method(sel_getUid("undo:"),function(self,_cmd,_19a){
with(self){
objj_msgSend(objj_msgSend(self,"undoManager"),"undo");
}
}),new objj_method(sel_getUid("redo:"),function(self,_cmd,_19d){
with(self){
objj_msgSend(objj_msgSend(self,"undoManager"),"redo");
}
}),new objj_method(sel_getUid("containsPoint:"),function(self,_cmd,_1a0){
with(self){
return CGRectContainsPoint(_frame,_1a0);
}
})]);
var _1a1=function(_1a2,_1a3,_1a4){
return _1a2+(_1a3-_1a2)*_1a4;
};
var _9=objj_allocateClassPair(CPAnimation,"_CPWindowFrameAnimation"),_a=_9.isa;
class_addIvars(_9,[new objj_ivar("_window"),new objj_ivar("_startFrame"),new objj_ivar("_targetFrame")]);
objj_registerClassPair(_9);
objj_addClassForBundle(_9,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_9,[new objj_method(sel_getUid("initWithWindow:targetFrame:"),function(self,_cmd,_1a7,_1a8){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPAnimation")},"initWithDuration:animationCurve:",0.2,CPAnimationLinear);
if(self){
_window=_1a7;
_targetFrame=CGRectMakeCopy(_1a8);
_startFrame=CGRectMakeCopy(objj_msgSend(_window,"frame"));
}
return self;
}
}),new objj_method(sel_getUid("startAnimation"),function(self,_cmd){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPAnimation")},"startAnimation");
_window._isAnimating=YES;
}
}),new objj_method(sel_getUid("setCurrentProgress:"),function(self,_cmd,_1ad){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPAnimation")},"setCurrentProgress:",_1ad);
var _1ae=objj_msgSend(self,"currentValue");
if(_1ae==1){
_window._isAnimating=NO;
}
objj_msgSend(_window,"setFrameOrigin:",CGPointMake(_1a1(CGRectGetMinX(_startFrame),CGRectGetMinX(_targetFrame),_1ae),_1a1(CGRectGetMinY(_startFrame),CGRectGetMinY(_targetFrame),_1ae)));
objj_msgSend(_window,"setFrameSize:",CGSizeMake(_1a1(CGRectGetWidth(_startFrame),CGRectGetWidth(_targetFrame),_1ae),_1a1(CGRectGetHeight(_startFrame),CGRectGetHeight(_targetFrame),_1ae)));
}
})]);
_CPWindowFullBridgeSessionMake=function(_1af,_1b0,_1b1,_1b2){
return {windowView:_1af,contentRect:_1b0,hasShadow:_1b1,level:_1b2};
};
i;15;_CPWindowView.ji;23;_CPStandardWindowView.ji;18;_CPHUDWindowView.ji;25;_CPBorderlessWindowView.ji;31;_CPBorderlessBridgeWindowView.ji;14;CPDragServer.ji;19;CPDOMWindowBridge.ji;8;CPView.jp;20;CPWindowController.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.ji;13;CPResponder.ji;10;CPWindow.ji;12;CPDocument.jc;4651;
var _1=objj_allocateClassPair(CPResponder,"CPWindowController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_owner"),new objj_ivar("_window"),new objj_ivar("_document"),new objj_ivar("_windowCibName")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithWindow:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPResponder")},"init");
if(_3){
objj_msgSend(_3,"setWindow:",_5);
objj_msgSend(_3,"setNextResponder:",CPApp);
}
return _3;
}
}),new objj_method(sel_getUid("initWithWindowCibName:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"initWithWindowCibName:owner:",_8,_6);
}
}),new objj_method(sel_getUid("initWithWindowCibName:owner:"),function(_9,_a,_b,_c){
with(_9){
_9=objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPResponder")},"init");
if(_9){
_owner=_c;
_windowCibName=_b;
objj_msgSend(_9,"setNextResponder:",CPApp);
}
return _9;
}
}),new objj_method(sel_getUid("loadWindow"),function(_d,_e){
with(_d){
objj_msgSend(_d,"windowWillLoad");
objj_msgSend(_d,"setWindow:",CPApp._keyWindow=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",CPRectMakeZero(),CPBorderlessBridgeWindowMask|CPTitledWindowMask|CPClosableWindowMask|CPResizableWindowMask));
objj_msgSend(_d,"windowDidLoad");
}
}),new objj_method(sel_getUid("showWindow:"),function(_f,_10,_11){
with(_f){
var _12=objj_msgSend(_f,"window");
if(objj_msgSend(_12,"respondsToSelector:",sel_getUid("becomesKeyOnlyIfNeeded"))&&objj_msgSend(_12,"becomesKeyOnlyIfNeeded")){
objj_msgSend(_12,"orderFront:",_11);
}else{
objj_msgSend(_12,"makeKeyAndOrderFront:",_11);
}
}
}),new objj_method(sel_getUid("isWindowLoaded"),function(_13,_14){
with(_13){
return _window;
}
}),new objj_method(sel_getUid("window"),function(_15,_16){
with(_15){
if(!_window){
objj_msgSend(_15,"loadWindow");
}
return _window;
}
}),new objj_method(sel_getUid("setWindow:"),function(_17,_18,_19){
with(_17){
_window=_19;
objj_msgSend(_window,"setWindowController:",_17);
objj_msgSend(_window,"setNextResponder:",_17);
}
}),new objj_method(sel_getUid("windowDidLoad"),function(_1a,_1b){
with(_1a){
objj_msgSend(_document,"windowControllerDidLoadNib:",_1a);
objj_msgSend(_1a,"synchronizeWindowTitleWithDocumentName");
}
}),new objj_method(sel_getUid("windowWillLoad"),function(_1c,_1d){
with(_1c){
objj_msgSend(_document,"windowControllerWillLoadNib:",_1c);
}
}),new objj_method(sel_getUid("setDocument:"),function(_1e,_1f,_20){
with(_1e){
if(_document==_20){
return;
}
var _21=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_document){
objj_msgSend(_21,"removeObserver:name:object:",_1e,CPDocumentWillSaveNotification,_document);
objj_msgSend(_21,"removeObserver:name:object:",_1e,CPDocumentDidSaveNotification,_document);
objj_msgSend(_21,"removeObserver:name:object:",_1e,CPDocumentDidFailToSaveNotification,_document);
}
_document=_20;
if(_document){
objj_msgSend(_21,"addObserver:selector:name:object:",_1e,sel_getUid("_documentWillSave:"),CPDocumentWillSaveNotification,_document);
objj_msgSend(_21,"addObserver:selector:name:object:",_1e,sel_getUid("_documentDidSave:"),CPDocumentDidSaveNotification,_document);
objj_msgSend(_21,"addObserver:selector:name:object:",_1e,sel_getUid("_documentDidFailToSave:"),CPDocumentDidFailToSaveNotification,_document);
objj_msgSend(_1e,"setDocumentEdited:",objj_msgSend(_document,"isDocumentEdited"));
}
objj_msgSend(_1e,"synchronizeWindowTitleWithDocumentName");
}
}),new objj_method(sel_getUid("_documentWillSave:"),function(_22,_23,_24){
with(_22){
objj_msgSend(objj_msgSend(_22,"window"),"setDocumentSaving:",YES);
}
}),new objj_method(sel_getUid("_documentDidSave:"),function(_25,_26,_27){
with(_25){
objj_msgSend(objj_msgSend(_25,"window"),"setDocumentSaving:",NO);
}
}),new objj_method(sel_getUid("_documentDidFailToSave:"),function(_28,_29,_2a){
with(_28){
objj_msgSend(objj_msgSend(_28,"window"),"setDocumentSaving:",NO);
}
}),new objj_method(sel_getUid("document"),function(_2b,_2c){
with(_2b){
return _document;
}
}),new objj_method(sel_getUid("setDocumentEdited:"),function(_2d,_2e,_2f){
with(_2d){
objj_msgSend(objj_msgSend(_2d,"window"),"setDocumentEdited:",_2f);
}
}),new objj_method(sel_getUid("synchronizeWindowTitleWithDocumentName"),function(_30,_31){
with(_30){
if(!_document||!_window){
return;
}
objj_msgSend(_window,"setTitle:",objj_msgSend(_30,"windowTitleForDocumentDisplayName:",objj_msgSend(_document,"displayName")));
}
}),new objj_method(sel_getUid("windowTitleForDocumentDisplayName:"),function(_32,_33,_34){
with(_32){
return _34;
}
})]);
