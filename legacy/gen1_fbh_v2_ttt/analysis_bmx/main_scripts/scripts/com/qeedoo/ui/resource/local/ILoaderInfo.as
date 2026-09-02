package com.qeedoo.ui.resource.local
{
   public interface ILoaderInfo
   {
      
      function get bytesLoaded() : int;
      
      function get bytesTotal() : int;
      
      function get isLoaded() : Boolean;
   }
}

