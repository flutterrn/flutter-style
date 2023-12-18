import 'package:rnlikestyles/main.dart';
import 'package:flutter/material.dart';

enum FL_DISPLAY_ENUM { flex, list, no }

enum FL_TextDecoration_ENUM {	none, overlin, underline, linethrough}
enum FL_TextOverflow_ENUM {	clip, ellipsis, string}
enum FL_TextAlign_ENUM {	start, left, center, right, justify }
enum FL_Position_ENUM {
  relative,
  absolute,
  grid
}
enum FL_BorderStyle {
  solid, none
}

class StyleBuild{
  Map mStyles = {};

  // display
  StyleBuild display({FL_DISPLAY_ENUM display = FL_DISPLAY_ENUM.flex}){
    mStyles[CssRule.display] = display.name;
    return this;
  }

  // box
  StyleBuild boxSizing(FL_BOX_SIZING_ENUM boxSizing){
    mStyles[CssRule.boxSizing] = boxSizing;
    return this;
  }

  // no_flex
  StyleBuild flexNo(){
    mStyles[CssRule.flexNo] = true;
    return this;
  }

  // row
  StyleBuild flexRow(){
    mStyles[CssRule.flexDirection] = 'row';
    return this;
  }
  StyleBuild flexRowReverse(){
    mStyles[CssRule.flexDirection] = 'row-reverse';
    return this;
  }

  // column
  StyleBuild flexColumn(){
    mStyles[CssRule.flexDirection] = 'column';
    return this;
  }
  StyleBuild flexColumnReverse(){
    mStyles[CssRule.flexDirection] = 'column-reverse';
    return this;
  }

  // wrap
  StyleBuild flexWrap(){
    mStyles[CssRule.flexWrap] = 'wrap';
    return this;
  }
  StyleBuild flexNoWrap(){
    mStyles[CssRule.flexWrap] = 'nowrap';
    return this;
  }

  // Justify
  StyleBuild justifyStart(){
    mStyles[CssRule.justifyContent] = 'flex-start';
    return this;
  }
  StyleBuild justifyCenter(){
    mStyles[CssRule.justifyContent] = 'center';
    return this;
  }
  StyleBuild justifyEnd(){
    mStyles[CssRule.justifyContent] = 'flex-end';
    return this;
  }
  StyleBuild justifyBetween(){
    mStyles[CssRule.justifyContent] = 'space-between';
    return this;
  }
  StyleBuild justifyAround(){
    mStyles[CssRule.justifyContent] = 'space-around';
    return this;
  }
  StyleBuild justifyEvery(){
    mStyles[CssRule.justifyContent] = 'space-evenly';
    return this;
  }

  // align
  StyleBuild itemStart(){
    mStyles[CssRule.alignItems] = 'flex-start';
    return this;
  }
  StyleBuild itemCenter(){
    mStyles[CssRule.alignItems] = 'center';
    return this;
  }
  StyleBuild itemEnd(){
    mStyles[CssRule.alignItems] = 'flex-end';
    return this;
  }
  StyleBuild itemStretch(){
    mStyles[CssRule.alignItems] = 'stretch';
    return this;
  }

  // padding
  StyleBuild padding({dynamic size}){
    mStyles[CssRule.padding] = size;
    return this;
  }
  StyleBuild paddingLeft({dynamic size}){
    mStyles[CssRule.paddingLeft] = size;
    return this;
  }
  StyleBuild paddingRight({dynamic size}){
    mStyles[CssRule.paddingRight] = size;
    return this;
  }
  StyleBuild paddingTop({dynamic size}){
    mStyles[CssRule.paddingTop] = size;
    return this;
  }
  StyleBuild paddingBottom({dynamic size}){
    mStyles[CssRule.paddingBottom] = size;
    return this;
  }

  // margin
  StyleBuild margin({dynamic size}){
    mStyles[CssRule.margin] = size;
    return this;
  }
  StyleBuild marginLeft({dynamic size}){
    mStyles[CssRule.marginLeft] = size;
    return this;
  }
  StyleBuild marginRight({dynamic size}){
    mStyles[CssRule.marginRight] = size;
    return this;
  }
  StyleBuild marginTop({dynamic size}){
    mStyles[CssRule.marginTop] = size;
    return this;
  }
  StyleBuild marginBottom({dynamic size}){
    mStyles[CssRule.marginBottom] = size;
    return this;
  }
  // width
  StyleBuild width({dynamic size}){
    mStyles[CssRule.width] = size;
    return this;
  }
  StyleBuild widthFull(){
    mStyles[CssRule.width] = '100%';
    return this;
  }
  // height
  StyleBuild height({dynamic size}){
    mStyles[CssRule.height] = size;
    return this;
  }
  StyleBuild heightFull(){
    mStyles[CssRule.height] = '100%';
    return this;
  }

  /**
   * 100,200,300,400,500,600,700,800,900,bold
   */
  StyleBuild fontWeight({dynamic size}){
    mStyles[CssRule.fontWeight] = size;
    return this;
  }

  /**
   * 	String	fontFamily:'微软雅黑'
   */
  StyleBuild fontFamily(String family){
    mStyles[CssRule.fontFamily] = family;
    return this;
  }

  // fontSize
  StyleBuild fontSize({dynamic size}){
    mStyles[CssRule.fontSize] = size;
    return this;
  }

  /**
   * Colors.white,Color(0xFFFFFF),rgba(255,255,255,1),rgb(255,255,255),white
   */
  StyleBuild fontColor({dynamic color}){
    mStyles[CssRule.color] = color;
    return this;
  }
  // 是否开启圆角裁剪
  StyleBuild clipRadius({bool state = false}){
    mStyles[CssRule.clipRadius] = state;
    return this;
  }

  // radius
  StyleBuild borderRadius({dynamic size}){
    mStyles[CssRule.borderRadius] = size;
    return this;
  }
  StyleBuild borderBottomLeftRadius({dynamic size}){
    mStyles[CssRule.borderBottomLeftRadius] = size;
    return this;
  }
  StyleBuild borderBottomRightRadius({dynamic size}){
    mStyles[CssRule.borderBottomRightRadius] = size;
    return this;
  }
  StyleBuild borderTopLeftRadius({dynamic size}){
    mStyles[CssRule.borderTopLeftRadius] = size;
    return this;
  }
  StyleBuild borderTopRightRadius({dynamic size}){
    mStyles[CssRule.borderTopRightRadius] = size;
    return this;
  }

  StyleBuild border({dynamic size, dynamic color}){
    mStyles[CssRule.borderWidth] = size;
    mStyles[CssRule.borderColor] = size;
    mStyles[CssRule.borderStyle] = 'solid';
    return this;
  }

  StyleBuild borderBottom({
    dynamic size,
    dynamic color,
  }){
    mStyles[CssRule.borderBottomWidth] = size;
    mStyles[CssRule.borderBottomColor] = color;
    mStyles[CssRule.borderBottomStyle] = 'solid';
    return this;
  }

  StyleBuild borderTop({
    dynamic size,
    dynamic color,
  }){
    mStyles[CssRule.borderTopWidth] = size;
    mStyles[CssRule.borderTopColor] = color;
    mStyles[CssRule.borderTopStyle] = 'solid';
    return this;
  }

  StyleBuild borderLeft({
    dynamic size,
    dynamic color,
  }){
    mStyles[CssRule.borderLeftWidth] = size;
    mStyles[CssRule.borderLeftColor] = color;
    mStyles[CssRule.borderLeftStyle] = 'solid';
    return this;
  }

  StyleBuild borderRight({
    dynamic size,
    dynamic color,
  }){
    mStyles[CssRule.borderRightWidth] = size;
    mStyles[CssRule.borderRightColor] = color;
    mStyles[CssRule.borderRightStyle] = 'solid';
    return this;
  }

  StyleBuild borderColor({dynamic color}){
    mStyles[CssRule.borderColor] = color;
    return this;
  }

  StyleBuild borderStyle({FL_BorderStyle borderStyle = FL_BorderStyle.solid}){
    mStyles[CssRule.borderStyle] = borderStyle.name;
    return this;
  }

  /**
   * dynamic | linear-gradient(rgba,rgb,white),Colors.white,Color(0xFFFFFF),rgba(255,255,
   * 255,1),rgb(255,255,255),white
   */
  StyleBuild backgroundColor({dynamic color}){
    mStyles[CssRule.backgroundColor] = color;
    return this;
  }

  StyleBuild absolute(){
    mStyles[CssRule.position] = FL_Position_ENUM.absolute.name;
    return this;
  }
  StyleBuild relative(){
    mStyles[CssRule.position] = FL_Position_ENUM.relative.name;
    return this;
  }
  StyleBuild position(FL_Position_ENUM value){
    mStyles[CssRule.position] = value.name;
    return this;
  }

  StyleBuild zIndex(dynamic index){
    mStyles[CssRule.zIndex] = index;
    return this;
  }

  StyleBuild overScrollY(){
    mStyles[CssRule.overflowY] = 'scroll';
    return this;
  }
  StyleBuild overflowX(){
    mStyles[CssRule.overflowX] = 'scroll';
    return this;
  }

  StyleBuild flex({dynamic size}){
    mStyles[CssRule.flex] = size;
    return this;
  }

  StyleBuild minWidth({dynamic size}){
    mStyles[CssRule.minWidth] = size;
    return this;
  }
  StyleBuild minHeight({dynamic size}){
    mStyles[CssRule.minHeight] = size;
    return this;
  }
  StyleBuild maxWidth({dynamic size}){
    mStyles[CssRule.maxWidth] = size;
    return this;
  }
  StyleBuild maxHeight({dynamic size}){
    mStyles[CssRule.maxHeight] = size;
    return this;
  }

  // abs
  StyleBuild top({dynamic size}){
    mStyles[CssRule.top] = size;
    return this;
  }
  StyleBuild left({dynamic size}){
    mStyles[CssRule.left] = size;
    return this;
  }
  StyleBuild right({dynamic size}){
    mStyles[CssRule.right] = size;
    return this;
  }
  StyleBuild bottom({dynamic size}){
    mStyles[CssRule.bottom] = size;
    return this;
  }
  // opacity
  StyleBuild opacity({dynamic size}){
    mStyles[CssRule.opacity] = size;
    return this;
  }

  // scrollBar
  StyleBuild scrollBar({dynamic state}){
    mStyles[CssRule.scrollBar] = state;
    return this;
  }

  /**
   * backgroundImage | string | linear-gradient(rgba,rgb,white)
   */
  StyleBuild backgroundImage(dynamic size){
    mStyles[CssRule.backgroundImage] = size;
    return this;
  }

  // backgroungSize
  StyleBuild backgroundSize(BoxFit fixValue){
    mStyles[CssRule.backgroundSize] = fixValue;
    return this;
  }

  StyleBuild transform({dynamic matrix4}){
    mStyles[CssRule.transform] = matrix4;
    return this;
  }

  StyleBuild textDecoration(FL_TextDecoration_ENUM decoration){
    mStyles[CssRule.textDecoration] = decoration != FL_TextDecoration_ENUM.linethrough ? decoration.name: 'line-through';
    return this;
  }

  StyleBuild textOverflow(FL_TextOverflow_ENUM value){
    mStyles[CssRule.textOverflow] = value.name;
    return this;
  }

  StyleBuild textAlign(FL_TextAlign_ENUM value){
    mStyles[CssRule.textAlign] = value.name;
    return this;
  }

  StyleBuild grid({double? childAspectRatio,
      int? count,
      double? mainAxisSpacing,
      double? crossAxisSpacing}){
    //子元素比例
    if(childAspectRatio != null){
      mStyles[CssRule.gridChildAspectRatio] = childAspectRatio;
    }
    if(count != null){
      mStyles[CssRule.gridCount] = count;
    }

    if(mainAxisSpacing != null){
      mStyles[CssRule.gridMainAxisSpacing] = mainAxisSpacing;
    }
    if(crossAxisSpacing != null){
      mStyles[CssRule.gridCrossAxisSpacing] = crossAxisSpacing;
    }
    return this;
  }

  buildStyle(){
    return this.mStyles;
  }

}
