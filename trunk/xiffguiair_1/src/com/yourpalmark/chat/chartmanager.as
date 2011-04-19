package com.yourpalmark.chat
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	
	public class chartmanager
	{
		
		
		public var timer:Timer;
		public var timerecord:Array;
		public var users:Array;
		
		public function chartmanager()
		{
			
			var users:Array = [];
			
			for each( var rosterItem:RosterItemVO in chatManager. _roster.source )
			{
				var chatUser:ChatUser = new ChatUser( rosterItem.jid );
				chatUser.rosterItem = rosterItem;
				chatUser.loadVCard( _connection );
				users.push( chatUser );
				
			}
			
			_chatUserRoster.source = users;
			timer = new Timer(60000);
			timer.addEventListener(TimerEvent.TIMER,ontimeractivated)
			
		}
		
		private function ontimeractivated():void{
			timerecord.push(1)
			
		}
	}
}