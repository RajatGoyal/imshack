/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Results.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.events.PropertyChangeEvent;
import valueObjects.Geo;
import valueObjects.Metadata;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Results extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
    }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
        valueObjects.Geo.initRemoteClassAliasSingleChild();
        valueObjects.Metadata.initRemoteClassAliasSingleChild();
    }

	model_internal var _dminternal_model : _ResultsEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_id : Number = 0;
	private var _internal_to_user_id : Object;
	private var _internal_from_user_id : int;
	private var _internal_text : String;
	private var _internal_geo : valueObjects.Geo;
	private var _internal_source : String;
	private var _internal_iso_language_code : String;
	private var _internal_from_user : String;
	private var _internal_created_at : String;
	private var _internal_profile_image_url : String;
	private var _internal_metadata : valueObjects.Metadata;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_Results() 
	{	
		_model = new _ResultsEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get id() : Number    
    {
            return _internal_id;
    }    
	[Bindable(event="propertyChange")] 
    public function get to_user_id() : Object    
    {
            return _internal_to_user_id;
    }    
	[Bindable(event="propertyChange")] 
    public function get from_user_id() : int    
    {
            return _internal_from_user_id;
    }    
	[Bindable(event="propertyChange")] 
    public function get text() : String    
    {
            return _internal_text;
    }    
	[Bindable(event="propertyChange")] 
    public function get geo() : valueObjects.Geo    
    {
            return _internal_geo;
    }    
	[Bindable(event="propertyChange")] 
    public function get source() : String    
    {
            return _internal_source;
    }    
	[Bindable(event="propertyChange")] 
    public function get iso_language_code() : String    
    {
            return _internal_iso_language_code;
    }    
	[Bindable(event="propertyChange")] 
    public function get from_user() : String    
    {
            return _internal_from_user;
    }    
	[Bindable(event="propertyChange")] 
    public function get created_at() : String    
    {
            return _internal_created_at;
    }    
	[Bindable(event="propertyChange")] 
    public function get profile_image_url() : String    
    {
            return _internal_profile_image_url;
    }    
	[Bindable(event="propertyChange")] 
    public function get metadata() : valueObjects.Metadata    
    {
            return _internal_metadata;
    }    

    /**
     * data property setters
     */      
    public function set id(value:Number) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:Number = _internal_id;               
        if (oldValue !== value)
        {
            _internal_id = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set to_user_id(value:Object) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_to_user_id == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:Object = _internal_to_user_id;               
        if (oldValue !== value)
        {
            _internal_to_user_id = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "to_user_id", oldValue, _internal_to_user_id));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set from_user_id(value:int) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:int = _internal_from_user_id;               
        if (oldValue !== value)
        {
            _internal_from_user_id = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "from_user_id", oldValue, _internal_from_user_id));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set text(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_text == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_text;               
        if (oldValue !== value)
        {
            _internal_text = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "text", oldValue, _internal_text));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set geo(value:valueObjects.Geo) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_geo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:valueObjects.Geo = _internal_geo;               
        if (oldValue !== value)
        {
            _internal_geo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "geo", oldValue, _internal_geo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set source(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_source == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_source;               
        if (oldValue !== value)
        {
            _internal_source = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "source", oldValue, _internal_source));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set iso_language_code(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_iso_language_code == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_iso_language_code;               
        if (oldValue !== value)
        {
            _internal_iso_language_code = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "iso_language_code", oldValue, _internal_iso_language_code));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set from_user(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_from_user == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_from_user;               
        if (oldValue !== value)
        {
            _internal_from_user = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "from_user", oldValue, _internal_from_user));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set created_at(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_created_at == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_created_at;               
        if (oldValue !== value)
        {
            _internal_created_at = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created_at", oldValue, _internal_created_at));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set profile_image_url(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_profile_image_url == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_profile_image_url;               
        if (oldValue !== value)
        {
            _internal_profile_image_url = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "profile_image_url", oldValue, _internal_profile_image_url));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set metadata(value:valueObjects.Metadata) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_metadata == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:valueObjects.Metadata = _internal_metadata;               
        if (oldValue !== value)
        {
            _internal_metadata = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "metadata", oldValue, _internal_metadata));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    

    /**
     * data property setter listeners
     */   

   model_internal function setterListenerAnyConstraint(value:flash.events.Event):void
   {
        if (model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }        
   }   

    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();    
        var validationFailureMessages:Array = new Array();    

		if (_model.isTo_user_idAvailable && _internal_to_user_id == null)
		{
			violatedConsts.push("to_user_idIsRequired");
			validationFailureMessages.push("to_user_id is required");
		}
		if (_model.isTextAvailable && _internal_text == null)
		{
			violatedConsts.push("textIsRequired");
			validationFailureMessages.push("text is required");
		}
		if (_model.isGeoAvailable && _internal_geo == null)
		{
			violatedConsts.push("geoIsRequired");
			validationFailureMessages.push("geo is required");
		}
		if (_model.isSourceAvailable && _internal_source == null)
		{
			violatedConsts.push("sourceIsRequired");
			validationFailureMessages.push("source is required");
		}
		if (_model.isIso_language_codeAvailable && _internal_iso_language_code == null)
		{
			violatedConsts.push("iso_language_codeIsRequired");
			validationFailureMessages.push("iso_language_code is required");
		}
		if (_model.isFrom_userAvailable && _internal_from_user == null)
		{
			violatedConsts.push("from_userIsRequired");
			validationFailureMessages.push("from_user is required");
		}
		if (_model.isCreated_atAvailable && _internal_created_at == null)
		{
			violatedConsts.push("created_atIsRequired");
			validationFailureMessages.push("created_at is required");
		}
		if (_model.isProfile_image_urlAvailable && _internal_profile_image_url == null)
		{
			violatedConsts.push("profile_image_urlIsRequired");
			validationFailureMessages.push("profile_image_url is required");
		}
		if (_model.isMetadataAvailable && _internal_metadata == null)
		{
			violatedConsts.push("metadataIsRequired");
			validationFailureMessages.push("metadata is required");
		}

		var styleValidity:Boolean = true;
	
	
	
	
	
	
	
	
	
	
	
    
        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && styleValidity;
    }  

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
       	var oldValue:Boolean = model_internal::_isValid;               
        if (oldValue !== value)
        {
        	model_internal::_isValid = value;
        	_model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }        
    }

    /**
     * derived property getters
     */

    [Transient] 
	[Bindable(event="propertyChange")] 
    public function get _model() : _ResultsEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _ResultsEntityMetadata) : void       
    {
    	var oldValue : _ResultsEntityMetadata = model_internal::_dminternal_model;               
        if (oldValue !== value)
        {
        	model_internal::_dminternal_model = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }     
    }      

    /**
     * methods
     */  


    /**
     *  services
     */                  
     private var _managingService:com.adobe.fiber.services.IFiberManagingService;
    
     public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
     {
         _managingService = managingService;
     }                      
     
    model_internal function set invalidConstraints_der(value:Array) : void
    {  
     	var oldValue:Array = model_internal::_invalidConstraints;
     	// avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;   
			_model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);   
        }     	             
    }             
    
     model_internal function set validationFailureMessages_der(value:Array) : void
    {  
     	var oldValue:Array = model_internal::_validationFailureMessages;
     	// avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;   
			_model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);   
        }     	             
    }        
     
     // Individual isAvailable functions     
	// fields, getters, and setters for primitive representations of complex id properties

}

}
