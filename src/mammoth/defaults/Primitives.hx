package mammoth.defaults;

import kha.graphics4.Usage;
import kha.graphics4.VertexData;
import mammoth.render.Mesh;
import mammoth.render.VertexDataDescription;

class Primitives {
	public static function screen():Mesh {
		var m = new Mesh();
		m.vertexData.push(new VertexDataDescription("position", [
			-1.0, -1.0,
			 1.0, -1.0,
			 1.0,  1.0,
			-1.0,  1.0,
			])
			.addStructure("pos", VertexData.Float2)
			.setUsage(Usage.StaticUsage));
		m.indexData = [0, 1, 2, 0, 2, 3];
		m.buildBuffers();
		return m;
	}

	public static function cube(position:Bool=true, normal:Bool=true, uv:Bool=true):Mesh {
		var m = new Mesh();
		if(position) m.vertexData.push(
			new VertexDataDescription("position", [
				 0.5,  0.5, -0.5,
				 0.5, -0.5, -0.5,
				-0.5, -0.5, -0.5,
				-0.5,  0.5, -0.5,
				 0.5,  0.5,  0.5,
				-0.5,  0.5,  0.5,
				-0.5, -0.5,  0.5,
				 0.5, -0.5,  0.5,
				 0.5,  0.5, -0.5,
				 0.5,  0.5,  0.5,
				 0.5, -0.5,  0.5,
				 0.5, -0.5, -0.5,
				 0.5, -0.5, -0.5,
				 0.5, -0.5,  0.5,
				-0.5, -0.5,  0.5,
				-0.5, -0.5, -0.5,
				-0.5, -0.5, -0.5,
				-0.5, -0.5,  0.5,
				-0.5,  0.5,  0.5,
				-0.5,  0.5, -0.5,
				 0.5,  0.5,  0.5,
				 0.5,  0.5, -0.5,
				-0.5,  0.5, -0.5,
				-0.5,  0.5,  0.5
			])
			.addStructure("pos", VertexData.Float3)
			.setUsage(Usage.StaticUsage));
		if(normal) m.vertexData.push(
			new VertexDataDescription("normal", [
				 0.0,  0.0, -1.0,
				 0.0,  0.0, -1.0,
				 0.0,  0.0, -1.0,
				 0.0,  0.0, -1.0,
				 0.0,  0.0,  1.0,
				 0.0,  0.0,  1.0,
				 0.0,  0.0,  1.0,
				 0.0,  0.0,  1.0,
				 1.0,  0.0,  0.0,
				 1.0,  0.0,  0.0,
				 1.0,  0.0,  0.0,
				 1.0,  0.0,  0.0,
				 0.0, -1.0,  0.0,
				 0.0, -1.0,  0.0,
				 0.0, -1.0,  0.0,
				 0.0, -1.0,  0.0,
				-1.0,  0.0,  0.0,
				-1.0,  0.0,  0.0,
				-1.0,  0.0,  0.0,
				-1.0,  0.0,  0.0,
				 0.0,  1.0,  0.0,
				 0.0,  1.0,  0.0,
				 0.0,  1.0,  0.0,
				 0.0,  1.0,  0.0
			])
			.addStructure("norm", VertexData.Float3)
			.setUsage(Usage.StaticUsage));
		if(uv) m.vertexData.push(
			new VertexDataDescription("uv", [
				1.0, 1.0,
				1.0, 0.0,
				0.0, 0.0,
				0.0, 1.0,
				1.0, 1.0,
				0.0, 1.0,
				0.0, 0.0,
				1.0, 0.0,
				1.0, 0.0,
				1.0, 1.0,
				0.0, 1.0,
				0.0, 0.0,
				1.0, 0.0,
				1.0, 1.0,
				0.0, 1.0,
				0.0, 0.0,
				0.0, 0.0,
				0.0, 1.0,
				1.0, 1.0,
				1.0, 0.0,
				1.0, 1.0,
				1.0, 0.0,
				0.0, 0.0,
				0.0, 1.0
			])
			.addStructure("uv", VertexData.Float2)
			.setUsage(Usage.StaticUsage));
		m.indexData = [0, 1, 2, 0, 2, 3, 4, 5, 6, 4, 6, 7, 8, 9, 10, 8, 10, 11, 12, 13, 14, 12, 14, 15, 16, 17, 18, 16, 18, 19, 20, 21, 22, 20, 22, 23];
		m.buildBuffers();
		return m;
	}

	public static function plane(position:Bool=true, normal:Bool=true, uv:Bool=true):Mesh {
		var m = new Mesh();
		if(position) m.vertexData.push(
			new VertexDataDescription("position", [
				-0.5, -0.5, 0.0,
				 0.5, -0.5, 0.0,
				 0.5,  0.5, 0.0,
				-0.5,  0.5, 0.0
			])
			.addStructure("pos", VertexData.Float3)
			.setUsage(Usage.StaticUsage));
		if(normal) m.vertexData.push(
			new VertexDataDescription("normal", [
				 0.0, 0.0, 1.0,
				 0.0, 0.0, 1.0,
				 0.0, 0.0, 1.0,
				 0.0, 0.0, 1.0,
			])
			.addStructure("norm", VertexData.Float3)
			.setUsage(Usage.StaticUsage));
		if(uv) m.vertexData.push(
			new VertexDataDescription("uv", [
				0.0, 0.0,
				1.0, 0.0,
				1.0, 1.0,
				0.0, 1.0
			])
			.addStructure("uv", VertexData.Float2)
			.setUsage(Usage.StaticUsage));
		m.indexData = [0, 1, 2, 0, 2, 3];
		m.buildBuffers();
		return m;
	}
}