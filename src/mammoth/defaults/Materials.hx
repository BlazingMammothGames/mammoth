package mammoth.defaults;

import haxe.io.Bytes;
import haxe.Resource;
import kha.Blob;
import kha.Color;
import kha.graphics4.FragmentShader;
import kha.graphics4.VertexData;
import kha.graphics4.VertexShader;
import kha.graphics4.VertexStructure;
import kha.Shaders;
import mammoth.render.Material;
import mammoth.render.TUniform;

class Materials {
	public static function unlitColour(?colour:Color):Material {
		if(colour == null) colour = Color.White;

		var vertSource:Bytes = Resource.getBytes("unlitColoured.vert.glsl");
		var fragSource:Bytes = Resource.getBytes("unlitColoured.frag.glsl");

		var vert:VertexShader = new VertexShader(Blob.fromBytes(vertSource), "unlitColoured.vert.glsl");
		var frag:FragmentShader = new FragmentShader(Blob.fromBytes(fragSource), "unlitColoured.vert.glsl");

		var structure:VertexStructure = new VertexStructure();
		structure.add("pos", VertexData.Float3);

		var m:Material = new Material("unlitColoured", [structure], vert, frag);
		m.setUniform("colour", TUniform.Float3(colour.R, colour.G, colour.B));

		return m;
	}
}