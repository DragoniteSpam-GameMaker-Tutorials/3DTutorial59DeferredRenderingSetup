varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying vec3 v_VSNormal;
varying float v_VSDepth;

vec3 ToNormalColor(vec3 normal) {
    return normal * 0.5 + 0.5;
}

void main() {
    gl_FragData[0] = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragData[1] = vec4(ToNormalColor(v_VSNormal), 1);
}
