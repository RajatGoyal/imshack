package com.yourpalmark.chat.data
{
	import flash.utils.Timer;
	
	import org.igniterealtime.xiff.core.UnescapedJID;
	import org.igniterealtime.xiff.core.XMPPConnection;
	import org.igniterealtime.xiff.data.im.RosterItemVO;
	import org.igniterealtime.xiff.events.VCardEvent;
	import org.igniterealtime.xiff.vcard.VCard;
	import org.igniterealtime.xiff.vcard.VCardName;
	import org.igniterealtime.xiff.vcard.VCardPhoto;
	
	public class ChatUser
	{
		private var _jid:UnescapedJID;
		private var _rosterItem:RosterItemVO;
		private var _vCard:VCard;
		private var _vCardRequested:Boolean;
		private var _displayName:String;
		
				
		public function ChatUser( jid:UnescapedJID )
		{
			this.jid = jid;
			_vCard = new VCard();
					
		}
	
		
		public function get jid():UnescapedJID { return _jid; }
		public function set jid( value:UnescapedJID ):void
		{
			_jid = value;
			
			if( _rosterItem ) _rosterItem.jid = value;
		}
		
		public function get rosterItem():RosterItemVO { return _rosterItem; }
		public function set rosterItem( value:RosterItemVO ):void
		{
			_rosterItem =  value;
			
			if( !_rosterItem ) return;
			
			if( jid ) _rosterItem.jid = jid;
			jid = jid ? jid : rosterItem.jid;
			displayName = displayName ? displayName : rosterItem.displayName;
		}
		
		public function get vCard():VCard { return _vCard; }
		
		public function get vCardRequested():Boolean { return _vCardRequested; }
		
		public function get displayName():String { return _vCard && _vCard.nickname ? _vCard.nickname : _displayName ? _displayName : _jid ? _jid.node : null; }
		public function set displayName( value:String ):void
		{
			_displayName = value;
		}
		
		public function get online():Boolean { return _rosterItem ? _rosterItem.online : false; }
		
		public function get show():String { return _rosterItem ? _rosterItem.show : null; }
		
		public function get status():String { return _rosterItem ? _rosterItem.status : null; }
		
		public function get name():VCardName { return vCard ? vCard.name : null; }
		
		public function get photo():VCardPhoto { return vCard ? vCard.photo : null; }
		
		public function equals( other:ChatUser ):Boolean
		{
			if( !jid || !other.jid ) return false;
			return jid.equals( other.jid, false );
		}
		
		public function loadVCard( connection:XMPPConnection ):void
		{
			if( !_vCardRequested )
			{
				_vCard.removeEventListener( VCardEvent.LOADED, onVCardLoaded );
				_vCard = VCard.getVCard( connection, jid );
				_vCard.addEventListener( VCardEvent.LOADED, onVCardLoaded );
				_vCardRequested = true;
			}
		}
		
		
		private function onVCardLoaded( event:VCardEvent ):void
		{
		}
		
	}
}