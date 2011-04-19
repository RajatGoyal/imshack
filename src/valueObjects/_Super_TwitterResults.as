/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - TwitterResults.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.Results;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_TwitterResults extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
    }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
        valueObjects.Results.initRemoteClassAliasSingleChild();
        valueObjects.Geo.initRemoteClassAliasSingleChild();
        valueObjects.Metadata.initRemoteClassAliasSingleChild();
    }

	model_internal var _dminternal_model : _TwitterResultsEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_since_id : int;
	private var _internal_max_id : Number = 0;
	private var _internal_results : ArrayCollection;
	model_internal var _internal_results_leaf:valueObjects.Results;
	private var _internal_page : int;
	private var _internal_query : String;
	private var _internal_refresh_url : String;
	private var _internal_results_per_page : int;
	private var _internal_next_page : String;
	private var _internal_completed_in : Number = 0;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_TwitterResults() 
	{	
		_model = new _TwitterResultsEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get since_id() : int    
    {
            return _internal_since_id;
    }    
	[Bindable(event="propertyChange")] 
    public function get max_id() : Number    
    {
            return _internal_max_id;
    }    
	[Bindable(event="propertyChange")] 
    public function get results() : ArrayCollection    
    {
            return _internal_results;
    }    
	[Bindable(event="propertyChange")] 
    public function get page() : int    
    {
            return _internal_page;
    }    
	[Bindable(event="propertyChange")] 
    public function get query() : String    
    {
            return _internal_query;
    }    
	[Bindable(event="propertyChange")] 
    public function get refresh_url() : String    
    {
            return _internal_refresh_url;
    }    
	[Bindable(event="propertyChange")] 
    public function get results_per_page() : int    
    {
            return _internal_results_per_page;
    }    
	[Bindable(event="propertyChange")] 
    public function get next_page() : String    
    {
            return _internal_next_page;
    }    
	[Bindable(event="propertyChange")] 
    public function get completed_in() : Number    
    {
            return _internal_completed_in;
    }    

    /**
     * data property setters
     */      
    public function set since_id(value:int) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:int = _internal_since_id;               
        if (oldValue !== value)
        {
            _internal_since_id = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "since_id", oldValue, _internal_since_id));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set max_id(value:Number) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:Number = _internal_max_id;               
        if (oldValue !== value)
        {
            _internal_max_id = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "max_id", oldValue, _internal_max_id));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set results(value:*) : void
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_results == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:ArrayCollection = _internal_results;               
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_results = value;
            }
            else if (value is Array)
            {
                _internal_results = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of results must be a collection");
            }
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "results", oldValue, _internal_results));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set page(value:int) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:int = _internal_page;               
        if (oldValue !== value)
        {
            _internal_page = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "page", oldValue, _internal_page));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set query(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_query == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_query;               
        if (oldValue !== value)
        {
            _internal_query = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "query", oldValue, _internal_query));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set refresh_url(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_refresh_url == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_refresh_url;               
        if (oldValue !== value)
        {
            _internal_refresh_url = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "refresh_url", oldValue, _internal_refresh_url));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set results_per_page(value:int) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:int = _internal_results_per_page;               
        if (oldValue !== value)
        {
            _internal_results_per_page = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "results_per_page", oldValue, _internal_results_per_page));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set next_page(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_next_page == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_next_page;               
        if (oldValue !== value)
        {
            _internal_next_page = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "next_page", oldValue, _internal_next_page));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set completed_in(value:Number) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:Number = _internal_completed_in;               
        if (oldValue !== value)
        {
            _internal_completed_in = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "completed_in", oldValue, _internal_completed_in));
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

		if (_model.isResultsAvailable && _internal_results == null)
		{
			violatedConsts.push("resultsIsRequired");
			validationFailureMessages.push("results is required");
		}
		if (_model.isQueryAvailable && _internal_query == null)
		{
			violatedConsts.push("queryIsRequired");
			validationFailureMessages.push("query is required");
		}
		if (_model.isRefresh_urlAvailable && _internal_refresh_url == null)
		{
			violatedConsts.push("refresh_urlIsRequired");
			validationFailureMessages.push("refresh_url is required");
		}
		if (_model.isNext_pageAvailable && _internal_next_page == null)
		{
			violatedConsts.push("next_pageIsRequired");
			validationFailureMessages.push("next_page is required");
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
    public function get _model() : _TwitterResultsEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _TwitterResultsEntityMetadata) : void       
    {
    	var oldValue : _TwitterResultsEntityMetadata = model_internal::_dminternal_model;               
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
