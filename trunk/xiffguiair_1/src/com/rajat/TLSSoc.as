package com.rajat
{
	import com.hurlant.crypto.cert.*;
	import com.hurlant.crypto.tls.TLSConfig;
	import com.hurlant.crypto.tls.TLSEngine;
	import com.hurlant.crypto.tls.TLSEvent;
	import com.hurlant.crypto.tls.TLSSocketEvent;
	import com.proxies.Socket;
	
	import flash.events.*;
	import flash.net.ObjectEncoding;
	import flash.utils.*;
	
	import org.osmf.layout.AbsoluteLayoutFacet;
	
	public class TLSSoc extends Socket implements IDataInput, IDataOutput
	{
		private var _iStream:ByteArray;
		private var _iStream_cursor:uint;
		private var _config:TLSConfig;
		private var _engine:TLSEngine;
		private var _socket:Socket;
		private var _oStream:ByteArray;
		private var _ready:Boolean;
		private var _endian:String;
		private var _writeScheduler:uint;
		private var _objectEncoding:uint;
		
		public static const ACCEPT_PEER_CERT_PROMPT:String = "acceptPeerCertificatePrompt";
		
		public function TLSSoc(host:String = null, port:int = 0, config:TLSConfig = null)
		{
			_config = config;
			if (host != null)
			{
			}
			if (port != 0)
			{
				connect(host, port);
			}
			return;
		}// end function
		
		public function reinitialize(host:String, config:TLSConfig) : void
		{
			var host:* = host;
			var config:* = config;
			var ba:* = new ByteArray();
			if (_socket.bytesAvailable > 0)
			{
				_socket.readBytes(ba, 0, _socket.bytesAvailable);
			}
			_iStream = new ByteArray();
			_oStream = new ByteArray();
			_iStream_cursor = 0;
			objectEncoding = ObjectEncoding.DEFAULT;
			endian = Endian.BIG_ENDIAN;
			if (config == null)
			{
				config = new TLSConfig(TLSEngine.CLIENT);
			}
			_engine = new TLSEngine(config, _socket, _socket, host);
			_engine.addEventListener(TLSEvent.DATA, onTLSData);
			_engine.addEventListener(TLSEvent.READY, onTLSReady);
			_engine.addEventListener(Event.CLOSE, onTLSClose);
			_engine.addEventListener(ProgressEvent.SOCKET_DATA, function (e:*) : void
			{
				_socket.flush();
				return;
			}// end function
			);
			_socket.addEventListener(ProgressEvent.SOCKET_DATA, _engine.dataAvailable);
			_engine.addEventListener(TLSEvent.PROMPT_ACCEPT_CERT, onAcceptCert);
			_ready = false;
			_engine.start();
			return;
		}// end function
		
		override public function flush() : void
		{
			commitWrite();
			_socket.flush();
			return;
		}// end function
		
		override public function readDouble() : Number
		{
			return _iStream.readDouble();
		}// end function
		
		override public function get connected() : Boolean
		{
			return _socket.connected;
		}// end function
		
		private function init(socket:Socket, config:TLSConfig, host:String) : void
		{
			var socket:* = socket;
			var config:* = config;
			var host:* = host;
			_iStream = new ByteArray();
			_oStream = new ByteArray();
			_iStream_cursor = 0;
			objectEncoding = ObjectEncoding.DEFAULT;
			endian = Endian.BIG_ENDIAN;
			_socket = socket;
			_socket.addEventListener(Event.CONNECT, dispatchEvent);
			_socket.addEventListener(IOErrorEvent.IO_ERROR, dispatchEvent);
			_socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR, dispatchEvent);
			_socket.addEventListener(Event.CLOSE, dispatchEvent);
			if (config == null)
			{
				config = new TLSConfig(TLSEngine.CLIENT);
			}
			_engine = new TLSEngine(config, _socket, _socket, host);
			_engine.addEventListener(TLSEvent.DATA, onTLSData);
			_engine.addEventListener(TLSEvent.PROMPT_ACCEPT_CERT, onAcceptCert);
			_engine.addEventListener(TLSEvent.READY, onTLSReady);
			_engine.addEventListener(Event.CLOSE, onTLSClose);
			_engine.addEventListener(ProgressEvent.SOCKET_DATA, function (e:*) : void
			{
				if (connected)
				{
					_socket.flush();
				}
				return;
			}// end function
			);
			_socket.addEventListener(ProgressEvent.SOCKET_DATA, _engine.dataAvailable);
			_ready = false;
			return;
		}// end function
		
		override public function writeUTFBytes(value:String) : void
		{
			_oStream.writeUTFBytes(value);
			scheduleWrite();
			return;
		}// end function
		
		override public function readUTF() : String
		{
			return _iStream.readUTF();
		}// end function
		
		public function startTLS(socket:Socket, host:String, config:TLSConfig = null) : void
		{
			if (!socket.connected)
			{
				throw new Error("Cannot STARTTLS on a socket that isn\'t connected.");
			}
			init(socket, config, host);
			_engine.start();
			return;
		}// end function
		
		override public function set endian(value:String) : void
		{
			_endian = value;
			_iStream.endian = value;
			_oStream.endian = value;
			return;
		}// end function
		
		override public function readUnsignedInt() : uint
		{
			return _iStream.readUnsignedInt();
		}// end function
		
		override public function writeBoolean(value:Boolean) : void
		{
			_oStream.writeBoolean(value);
			scheduleWrite();
			return;
		}// end function
		
		public function rejectPeerCertificate(event:Event) : void
		{
			_engine.rejectPeerCertificate();
			return;
		}// end function
		
		override public function writeUTF(value:String) : void
		{
			_oStream.writeUTF(value);
			scheduleWrite();
			return;
		}// end function
		
		override public function readUnsignedByte() : uint
		{
			return _iStream.readUnsignedByte();
		}// end function
		
		public function releaseSocket() : void
		{
			_socket.removeEventListener(Event.CONNECT, dispatchEvent);
			_socket.removeEventListener(IOErrorEvent.IO_ERROR, dispatchEvent);
			_socket.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, dispatchEvent);
			_socket.removeEventListener(Event.CLOSE, dispatchEvent);
			_socket.removeEventListener(ProgressEvent.SOCKET_DATA, _engine.dataAvailable);
			_socket = null;
			return;
		}// end function
		
		private function onTLSData(event:TLSEvent) : void
		{
			if (_iStream.position == _iStream.length)
			{
				_iStream.position = 0;
				_iStream.length = 0;
				_iStream_cursor = 0;
			}
			var _loc_2:* = _iStream.position;
			_iStream.position = _iStream_cursor;
			_iStream.writeBytes(event.data);
			_iStream_cursor = _iStream.position;
			_iStream.position = _loc_2;
			dispatchEvent(new ProgressEvent(ProgressEvent.SOCKET_DATA, false, false, event.data.length));
			return;
		}// end function
		
		private function onTLSReady(event:TLSEvent) : void
		{
			_ready = true;
			scheduleWrite();
			return;
		}// end function
		
		override public function writeUnsignedInt(value:uint) : void
		{
			_oStream.writeUnsignedInt(value);
			scheduleWrite();
			return;
		}// end function
		
		override public function readFloat() : Number
		{
			return _iStream.readFloat();
		}// end function
		
		override public function set objectEncoding(value:uint) : void
		{
			_objectEncoding = value;
			_iStream.objectEncoding = value;
			_oStream.objectEncoding = value;
			return;
		}// end function
		
		override public function readObject():*
		{
			return _iStream.readObject();
		}// end function
		
		override public function readInt() : int
		{
			return _iStream.readInt();
		}// end function
		
		override public function readBytes(bytes:ByteArray, offset:uint = 0, length:uint = 0) : void
		{
			return _iStream.readBytes(bytes, offset, length);
		}// end function
		
		override public function readShort() : int
		{
			return _iStream.readShort();
		}// end function
		
		override public function writeByte(value:int) : void
		{
			_oStream.writeByte(value);
			scheduleWrite();
			return;
		}// end function
		
		private function scheduleWrite() : void
		{
			if (_writeScheduler != 0)
			{
				return;
			}
			_writeScheduler = setTimeout(commitWrite, 0);
			return;
		}// end function
		
		public function onAcceptCert(event:TLSEvent) : void
		{
			dispatchEvent(new TLSSocketEvent(_engine.peerCertificate));
			return;
		}// end function
		
		override public function writeInt(value:int) : void
		{
			_oStream.writeInt(value);
			scheduleWrite();
			return;
		}// end function
		
		override public function readUnsignedShort() : uint
		{
			return _iStream.readUnsignedShort();
		}// end function
		
		override public function get bytesAvailable() : uint
		{
			return _iStream.bytesAvailable;
		}// end function
		
		public function getPeerCertificate() : X509Certificate
		{
			return _engine.peerCertificate;
		}// end function
		
		override public function get endian() : String
		{
			return _endian;
		}// end function
		
		public function acceptPeerCertificate(event:Event) : void
		{
			_engine.acceptPeerCertificate();
			return;
		}// end function
		
		override public function writeDouble(value:Number) : void
		{
			_oStream.writeDouble(value);
			scheduleWrite();
			return;
		}// end function
		
		private function onTLSClose(event:Event) : void
		{
			dispatchEvent(event);
			close();
			return;
		}// end function
		
		override public function readByte() : int
		{
			return _iStream.readByte();
		}// end function
		
		override public function readBoolean() : Boolean
		{
			return _iStream.readBoolean();
		}// end function
		
		override public function writeFloat(value:Number) : void
		{
			_oStream.writeFloat(value);
			scheduleWrite();
			return;
		}// end function
		
		override public function writeBytes(bytes:ByteArray, offset:uint = 0, length:uint = 0) : void
		{
			_oStream.writeBytes(bytes, offset, length);
			scheduleWrite();
			return;
		}// end function
		
		override public function readUTFBytes(length:uint) : String
		{
			return _iStream.readUTFBytes(length);
		}// end function
		
		override public function get objectEncoding() : uint
		{
			return _objectEncoding;
		}// end function
		
		override public function writeMultiByte(value:String, charSet:String) : void
		{
			_oStream.writeMultiByte(value, charSet);
			scheduleWrite();
			return;
		}// end function
		
		public function setTLSConfig(config:TLSConfig) : void
		{
			_config = config;
			return;
		}// end function
		
		override public function writeShort(value:int) : void
		{
			_oStream.writeShort(value);
			scheduleWrite();
			return;
		}// end function
		
		private function commitWrite() : void
		{
			clearTimeout(_writeScheduler);
			_writeScheduler = 0;
			if (_ready)
			{
				_engine.sendApplicationData(_oStream);
				_oStream.length = 0;
			}
			return;
		}// end function
		
		override public function connect(host:String, port:int) : void
		{
			init(new Socket(), _config, host);
			_socket.connect(host, port);
			_engine.start();
			return;
		}// end function
		
		override public function readMultiByte(length:uint, charSet:String) : String
		{
			return _iStream.readMultiByte(length, charSet);
		}// end function
		
		override public function close() : void
		{
			_ready = false;
			_engine.close();
			if (_socket.connected)
			{
				_socket.flush();
				_socket.close();
			}
			return;
		}// end function
		
		override public function writeObject(object:*) : void
		{
			_oStream.writeObject(object);
			scheduleWrite();
			return;
		}// end function
		
	}
}
// ActionScript file