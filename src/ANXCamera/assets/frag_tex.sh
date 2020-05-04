precision mediump float;
uniform sampler2D sTexture;
varying vec2 vTextureCoord;
varying vec4 vPosition;

void main() {
    vec4 finalColor = texture2D(sTexture, vTextureCoord);

    if (vPosition.x > 0.85 || vPosition.x < -0.85) {
        gl_FragColor = finalColor * (1.0 - ((abs(vPosition.x) - 0.85) * 5.3));
    } else {
        gl_FragColor = finalColor;
    }
}