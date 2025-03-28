//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_uv;          // Texture UV range
uniform float u_speed;       // Animation speed
uniform float u_time;        // Time variable for animation
uniform float u_brightness;  // Brightness control
uniform float u_mix;         // Mix between texture and effect

// Smooth noise function (Perlin-inspired)
float hash(vec2 p) {
    p = vec2(dot(p, vec2(127.1, 311.7)),
             dot(p, vec2(269.5, 183.3)));
    return fract(sin(p.x * p.y) * 43758.5453);
}

float noise(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);

    float a = hash(i);
    float b = hash(i + vec2(1.0, 0.0));
    float c = hash(i + vec2(0.0, 1.0));
    float d = hash(i + vec2(1.0, 1.0));

    vec2 u = f * f * (3.0 - 2.0 * f);

    return mix(a, b, u.x) + (c - a) * u.y * (1.0 - u.x) + (d - b) * u.x * u.y;
}

void main()
{
    float pos = (v_vTexcoord.x - u_uv[0]) / (u_uv[1] - u_uv[0]);
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);

    // UV distortion with noise
    vec2 uv = v_vTexcoord;
    
    // Add proper noise-driven distortion
    float n = noise(uv * 8.0 + u_time * 0.5) * 1.5;  
    uv += vec2(n, n);  

    // More noticeable icy noise effect
    float crackNoise = noise(uv * 6.0 + u_time * 0.2) * 0.3;

    // Ice color gradient with noise applied
    vec3 iceColor = mix(vec3(0.2, 0.5, 1.0),    // Light blue
                        vec3(1, 1, 1.0),    // White with blue tint
                        crackNoise);

        // Linearly interpolate over 2 seconds
    float t = clamp(u_time / 2.0, 0.0, 1.0);     // 0 → 1 over 2 seconds
    vec3 transitionColor = mix(texColor.rgb, iceColor, t);

    // Apply brightness and mix with the original texture
    vec3 finalColor = mix(texColor.rgb, transitionColor * u_brightness, u_mix);

    gl_FragColor = v_vColour * vec4(finalColor, texColor.a);
}
