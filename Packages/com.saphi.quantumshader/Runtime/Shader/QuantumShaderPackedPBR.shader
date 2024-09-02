// Made with Amplify Shader Editor v1.9.6.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Saphi/QuantumShaderPackedPBR"
{
	Properties
	{
		_MainTex("Main Tex", 2D) = "white" {}
		_Color("Color", Color) = (0,0,0,0)
		_EmissionMap("Emission Map", 2D) = "white" {}
		[HDR]_EmissionColor("Emission Color", Color) = (0,0,0,0)
		_BumpMap("NormalMap", 2D) = "bump" {}
		_BumpScale("Normal Scale", Float) = 1
		_PBRMap("Packed PBR Map", 2D) = "white" {}
		_Metallic("Metallic", Range( 0 , 1)) = 0
		_SpecularCorretive("Specular Corretive", Float) = 0.1
		_Specular("Specular", Range( 0 , 1)) = 0.5
		_Roughness("Roughness", Range( 0 , 1)) = 0.5
		_QGlowMap("GlowMap", 2D) = "black" {}
		_QDirection("Direction", 2D) = "black" {}
		[HDR]_QuantumGlowColor("QuantumGlowColor", Color) = (1,1,1,0)
		[ToggleUI]_QSmoothHistory("Q Smooth History", Float) = 1
		[HDR]_QGlowColorBand1("QGlowColorBand1", Color) = (1,1,1,0)
		[Toggle]_QUseColorRotation3("QUseColorRotation3", Float) = 0
		[Toggle]_QUseColorRotation1("QUseColorRotation1", Float) = 0
		[Toggle]_QInvertDirection1("QInvertDirection1", Float) = 0
		[Toggle]_QUseColorRotation2("QUseColorRotation2", Float) = 0
		[Toggle]_QUseColorRotation4("QUseColorRotation4", Float) = 0
		[Enum(whole color,0,whole color direction,1,gradient wave,2,gradient direction,3)]_QType1("QType1", Int) = 0
		[Enum(Overlay,0,Multiply,1)]_QBlendMode1("QBlendMode1", Int) = 0
		[Enum(Overlay,0,Multiply,1)]_QBlendMode4("QBlendMode1", Int) = 0
		[Enum(whole color,0,whole color direction,1,gradient wave,2,gradient direction,3)]_QType4("QType4", Int) = 0
		[Enum(Overlay,0,Multiply,1)]_QBlendMode3("QBlendMode1", Int) = 0
		[Enum(whole color,0,whole color direction,1,gradient wave,2,gradient direction,3)]_QType3("QType3", Int) = 0
		[Enum(Overlay,0,Multiply,1)]_QBlendMode2("QBlendMode1", Int) = 0
		[Enum(whole color,0,whole color direction,1,gradient wave,2,gradient direction,3)]_QType2("QType2", Int) = 0
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)]_QBand1("QBand1", Int) = 0
		_QColorOffset1("QColorOffset1", Range( 0 , 1)) = 0
		_QColorRotationSpeed2("QColorRotationSpeed2", Range( 0 , 1)) = 0
		_QEffectScale2("QEffectScale2", Range( 0 , 1)) = 1
		_QHistory1("QHistory1", Range( 0 , 128)) = 32
		[IntRange]_QColorRotationMode3("QColorRotationMode3", Range( 0 , 3)) = 0
		_QEffectScale1("QEffectScale1", Range( 0 , 1)) = 1
		_QColorRotationSpeed3("QColorRotationSpeed3", Range( 0 , 1)) = 0
		[IntRange]_QColorRotationMode2("QColorRotationMode2", Range( 0 , 3)) = 0
		[IntRange]_QColorRotationMode4("QColorRotationMode4", Range( 0 , 3)) = 0
		_QColorRotationSpeed1("QColorRotationSpeed1", Range( 0 , 1)) = 0
		_QColorRotationSpeed4("QColorRotationSpeed4", Range( 0 , 1)) = 0
		_QEffectScale4("QEffectScale4", Range( 0 , 1)) = 1
		_QEffectScale3("QEffectScale3", Range( 0 , 1)) = 1
		[IntRange]_QColorRotationMode1("QColorRotationMode1", Range( 0 , 3)) = 0
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)]_QBand2("QBand2", Int) = 1
		[HDR]_QGlowColorBand2("QGlowColorBand2", Color) = (1,1,1,0)
		[Toggle]_QBandEnable3("QBandEnable3", Float) = 0
		[Toggle]_QBandEnable2("QBandEnable2", Float) = 0
		[Toggle]_QBandEnable1("QBandEnable1", Float) = 0
		[Toggle]_QBandEnable4("QBandEnable4", Float) = 0
		[Toggle]_QEnableGlobal("QEnableGlobal", Float) = 0
		[Toggle]_QInvertDirection2("QInvertDirection2", Float) = 0
		_QColorOffset2("QColorOffset2", Range( 0 , 1)) = 0
		_QHistory2("QHistory2", Range( 0 , 128)) = 32
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)]_QBand3("QBand3", Int) = 2
		[HDR]_QGlowColorBand3("QGlowColorBand3", Color) = (1,1,1,0)
		[Toggle]_QInvertDirection3("QInvertDirection3", Float) = 0
		_QColorOffset3("QColorOffset3", Range( 0 , 1)) = 0
		_QHistory3("QHistory3", Range( 0 , 128)) = 32
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)]_QBand4("QBand4", Int) = 3
		[HDR]_QGlowColorBand4("QGlowColorBand4", Color) = (1,1,1,0)
		[Toggle]_QInvertDirection4("QInvertDirection4", Float) = 0
		_QuantumGlowMultiply3("QuantumGlowMultiply3", Float) = 1
		_QuantumGlowMultiply4("QuantumGlowMultiply4", Float) = 1
		_QColorOffset4("QColorOffset4", Range( 0 , 1)) = 0
		_QuantumGlowMultiply1("QuantumGlowMultiply1", Float) = 1
		_QuantumGlowMultiply2("QuantumGlowMultiply2", Float) = 1
		_QHistory4("QHistory4", Range( 0 , 128)) = 32
		_ShowQuantumBand3("ShowQuantumBand3", Float) = 0
		_ShowQuantumBand4("ShowQuantumBand4", Float) = 0
		_ShowQuantum("ShowQuantum", Float) = 0
		_ShowQuantumBand1("ShowQuantumBand1", Float) = 0
		_ShowQuantumBand2("ShowQuantumBand2", Float) = 0
		_QuantumGlowMultiplyGlobal("QuantumGlowMultiplyGlobal", Float) = 1
		[Toggle]_UseUVAsDirectionUV("UseUVAsDirectionUV", Float) = 0
		[Toggle]_UseUVAsDirection("UseUVAsDirection", Float) = 0
		_ShowMain("ShowMain", Float) = 0
		[Toggle]_EnableEmission("EnableEmission", Float) = 0
		_Emission("Emission", Float) = 1
		_ShowRendering("ShowRendering", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Back
		CGPROGRAM
		#include "UnityStandardUtils.cginc"
		#pragma target 4.0
		#include "Packages/com.llealloo.audiolink/Runtime/Shaders/AudioLink.cginc"
		#pragma surface surf StandardSpecular keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform float _ShowQuantumBand3;
		uniform float _ShowQuantumBand4;
		uniform float _ShowQuantumBand1;
		uniform float _ShowQuantumBand2;
		uniform float _ShowQuantum;
		uniform int _QBlendMode2;
		uniform float _ShowRendering;
		uniform float _ShowMain;
		uniform sampler2D _BumpMap;
		uniform float4 _BumpMap_ST;
		uniform float _BumpScale;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform float4 _Color;
		uniform sampler2D _PBRMap;
		uniform float4 _PBRMap_ST;
		uniform float _Metallic;
		uniform float _EnableEmission;
		uniform sampler2D _EmissionMap;
		uniform float4 _EmissionMap_ST;
		uniform float4 _EmissionColor;
		uniform float _Emission;
		uniform float _QEnableGlobal;
		uniform float4 _QuantumGlowColor;
		uniform float _QBandEnable1;
		uniform float4 _QGlowColorBand1;
		uniform sampler2D _QGlowMap;
		uniform float4 _QGlowMap_ST;
		uniform int _QBlendMode1;
		uniform int _QBand1;
		uniform float _QSmoothHistory;
		uniform float _QHistory1;
		uniform float _QInvertDirection1;
		uniform float _UseUVAsDirection;
		uniform sampler2D _QDirection;
		uniform float4 _QDirection_ST;
		uniform float _UseUVAsDirectionUV;
		uniform int _QType1;
		uniform float _QColorOffset1;
		uniform float _QColorRotationMode1;
		uniform float _QColorRotationSpeed1;
		uniform float _QUseColorRotation1;
		uniform float _QEffectScale1;
		uniform float _QuantumGlowMultiply1;
		uniform float _QBandEnable2;
		uniform float4 _QGlowColorBand2;
		uniform int _QBand2;
		uniform float _QHistory2;
		uniform float _QInvertDirection2;
		uniform int _QType2;
		uniform float _QColorOffset2;
		uniform float _QColorRotationMode2;
		uniform float _QColorRotationSpeed2;
		uniform float _QUseColorRotation2;
		uniform float _QEffectScale2;
		uniform float _QuantumGlowMultiply2;
		uniform float _QBandEnable3;
		uniform float4 _QGlowColorBand3;
		uniform int _QBlendMode3;
		uniform int _QBand3;
		uniform float _QHistory3;
		uniform float _QInvertDirection3;
		uniform int _QType3;
		uniform float _QColorOffset3;
		uniform float _QColorRotationMode3;
		uniform float _QColorRotationSpeed3;
		uniform float _QUseColorRotation3;
		uniform float _QEffectScale3;
		uniform float _QuantumGlowMultiply3;
		uniform float _QBandEnable4;
		uniform float4 _QGlowColorBand4;
		uniform int _QBlendMode4;
		uniform int _QBand4;
		uniform float _QHistory4;
		uniform float _QInvertDirection4;
		uniform int _QType4;
		uniform float _QColorOffset4;
		uniform float _QColorRotationMode4;
		uniform float _QColorRotationSpeed4;
		uniform float _QUseColorRotation4;
		uniform float _QEffectScale4;
		uniform float _QuantumGlowMultiply4;
		uniform float _QuantumGlowMultiplyGlobal;
		uniform float _SpecularCorretive;
		uniform float _Specular;
		uniform float _Roughness;


		inline float AudioLinkLerp3_g185( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g182( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g179( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g183( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g180( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g181( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g177( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g174( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g171( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g175( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g172( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g173( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g169( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g166( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g163( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g167( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g164( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g165( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g161( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g158( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g155( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g159( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g156( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g157( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float IfAudioLinkv2Exists1_g117(  )
		{
			int w = 0; 
			int h; 
			int res = 0;
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w, h); 
			#endif
			if (w == 128) res = 1;
			return res;
		}


		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST.xy + _BumpMap_ST.zw;
			float3 Normal64 = UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap ), _BumpScale );
			o.Normal = Normal64;
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float4 Albedo63 = ( tex2D( _MainTex, uv_MainTex ) * _Color );
			float2 uv_PBRMap = i.uv_texcoord * _PBRMap_ST.xy + _PBRMap_ST.zw;
			float4 tex2DNode18 = tex2D( _PBRMap, uv_PBRMap );
			float MetallicValue82 = tex2DNode18.r;
			float MetallicResult68 = ( MetallicValue82 * _Metallic );
			float4 lerpResult19 = lerp( Albedo63 , float4( 0,0,0,0 ) , MetallicResult68);
			float4 SpecularAlbedo72 = lerpResult19;
			o.Albedo = SpecularAlbedo72.rgb;
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
			float4 MainEmission88 = (( _EnableEmission )?( ( ( tex2D( _EmissionMap, uv_EmissionMap ) * _EmissionColor ) * _Emission ) ):( float4( 0,0,0,0 ) ));
			float2 uv_QGlowMap = i.uv_texcoord * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float4 GlowMap7_g116 = tex2D( _QGlowMap, uv_QGlowMap );
			float4 break12_g116 = GlowMap7_g116;
			float GlowMap130_g116 = break12_g116.r;
			int temp_output_106_0_g178 = _QBlendMode1;
			int temp_output_27_0_g178 = _QBand1;
			int Band3_g185 = temp_output_27_0_g178;
			float2 uv_QDirection = i.uv_texcoord * _QDirection_ST.xy + _QDirection_ST.zw;
			float4 DirectionMap5_g116 = tex2D( _QDirection, uv_QDirection );
			float Direction11_g116 = (( _UseUVAsDirection )?( (( _UseUVAsDirectionUV )?( i.uv_texcoord.y ):( i.uv_texcoord.x )) ):( DirectionMap5_g116.r ));
			float temp_output_1_0_g178 = (( _QInvertDirection1 )?( ( 1.0 - Direction11_g116 ) ):( Direction11_g116 ));
			float temp_output_5_0_g178 = ( _QHistory1 * temp_output_1_0_g178 );
			float Delay3_g185 = (( _QSmoothHistory )?( temp_output_5_0_g178 ):( floor( temp_output_5_0_g178 ) ));
			float localAudioLinkLerp3_g185 = AudioLinkLerp3_g185( Band3_g185 , Delay3_g185 );
			float temp_output_8_0_g178 = localAudioLinkLerp3_g185;
			float4 temp_cast_1 = (temp_output_8_0_g178).xxxx;
			float4 temp_output_1_0_g184 = temp_cast_1;
			float4 break5_g184 = temp_output_1_0_g184;
			int temp_output_52_0_g178 = _QType1;
			float temp_output_29_0_g178 = _QColorOffset1;
			int Band6_g182 = temp_output_27_0_g178;
			int Mode6_g182 = ( ( (int)_QColorRotationMode1 * 2 ) + (int)_QColorRotationSpeed1 );
			int localAudioLinkDecodeDataAsUInt6_g182 = AudioLinkDecodeDataAsUInt6_g182( Band6_g182 , Mode6_g182 );
			float temp_output_95_0_g178 = ( ( ( ( localAudioLinkDecodeDataAsUInt6_g182 % 628319 ) / 100000.0 ) / 6.28318548202515 ) * (int)(( _QUseColorRotation1 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g178 = _QEffectScale1;
			int Index1_g179 = (int)floor( ( frac( ( ( temp_output_29_0_g178 + temp_output_95_0_g178 ) * temp_output_103_0_g178 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g179 = AudioLinkData1_g179( Index1_g179 );
			float4 ifLocalVar49_g178 = 0;
			if( temp_output_52_0_g178 == 0.0 )
				ifLocalVar49_g178 = localAudioLinkData1_g179;
			int Index1_g183 = (int)floor( ( frac( ( ( temp_output_29_0_g178 + temp_output_95_0_g178 + temp_output_1_0_g178 ) * temp_output_103_0_g178 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g183 = AudioLinkData1_g183( Index1_g183 );
			float4 ifLocalVar79_g178 = 0;
			if( temp_output_52_0_g178 == 1.0 )
				ifLocalVar79_g178 = localAudioLinkData1_g183;
			float Position1_g180 = saturate( frac( ( ( temp_output_8_0_g178 + temp_output_29_0_g178 + temp_output_95_0_g178 ) * temp_output_103_0_g178 ) ) );
			float4 localAudioLinkLerp1_g180 = AudioLinkLerp1_g180( Position1_g180 );
			float4 ifLocalVar50_g178 = 0;
			if( temp_output_52_0_g178 == 2.0 )
				ifLocalVar50_g178 = localAudioLinkLerp1_g180;
			float Position1_g181 = saturate( frac( ( ( temp_output_29_0_g178 + temp_output_1_0_g178 + temp_output_95_0_g178 ) * temp_output_103_0_g178 ) ) );
			float4 localAudioLinkLerp1_g181 = AudioLinkLerp1_g181( Position1_g181 );
			float4 ifLocalVar51_g178 = 0;
			if( temp_output_52_0_g178 == 3.0 )
				ifLocalVar51_g178 = localAudioLinkLerp1_g181;
			float4 temp_output_53_0_g178 = ( ifLocalVar49_g178 + ifLocalVar79_g178 + ifLocalVar50_g178 + ifLocalVar51_g178 );
			float4 temp_output_2_0_g184 = temp_output_53_0_g178;
			float4 ifLocalVar107_g178 = 0;
			if( temp_output_106_0_g178 == 0.0 )
				ifLocalVar107_g178 = ( ( ( break5_g184.r * 0.2 ) + ( break5_g184.g * 0.7 ) + ( break5_g184.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g184 * temp_output_2_0_g184 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g184 ) * ( 1.0 - temp_output_2_0_g184 ) ) ) );
			float4 ifLocalVar108_g178 = 0;
			if( temp_output_106_0_g178 == 1.0 )
				ifLocalVar108_g178 = ( temp_output_8_0_g178 * temp_output_53_0_g178 );
			float GlowMap232_g116 = break12_g116.g;
			int temp_output_106_0_g170 = _QBlendMode2;
			int temp_output_27_0_g170 = _QBand2;
			int Band3_g177 = temp_output_27_0_g170;
			float temp_output_1_0_g170 = (( _QInvertDirection2 )?( ( 1.0 - Direction11_g116 ) ):( Direction11_g116 ));
			float temp_output_5_0_g170 = ( _QHistory2 * temp_output_1_0_g170 );
			float Delay3_g177 = (( _QSmoothHistory )?( temp_output_5_0_g170 ):( floor( temp_output_5_0_g170 ) ));
			float localAudioLinkLerp3_g177 = AudioLinkLerp3_g177( Band3_g177 , Delay3_g177 );
			float temp_output_8_0_g170 = localAudioLinkLerp3_g177;
			float4 temp_cast_9 = (temp_output_8_0_g170).xxxx;
			float4 temp_output_1_0_g176 = temp_cast_9;
			float4 break5_g176 = temp_output_1_0_g176;
			int temp_output_52_0_g170 = _QType2;
			float temp_output_29_0_g170 = _QColorOffset2;
			int Band6_g174 = temp_output_27_0_g170;
			int Mode6_g174 = ( ( (int)_QColorRotationMode2 * 2 ) + (int)_QColorRotationSpeed2 );
			int localAudioLinkDecodeDataAsUInt6_g174 = AudioLinkDecodeDataAsUInt6_g174( Band6_g174 , Mode6_g174 );
			float temp_output_95_0_g170 = ( ( ( ( localAudioLinkDecodeDataAsUInt6_g174 % 628319 ) / 100000.0 ) / 6.28318548202515 ) * (int)(( _QUseColorRotation2 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g170 = _QEffectScale2;
			int Index1_g171 = (int)floor( ( frac( ( ( temp_output_29_0_g170 + temp_output_95_0_g170 ) * temp_output_103_0_g170 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g171 = AudioLinkData1_g171( Index1_g171 );
			float4 ifLocalVar49_g170 = 0;
			if( temp_output_52_0_g170 == 0.0 )
				ifLocalVar49_g170 = localAudioLinkData1_g171;
			int Index1_g175 = (int)floor( ( frac( ( ( temp_output_29_0_g170 + temp_output_95_0_g170 + temp_output_1_0_g170 ) * temp_output_103_0_g170 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g175 = AudioLinkData1_g175( Index1_g175 );
			float4 ifLocalVar79_g170 = 0;
			if( temp_output_52_0_g170 == 1.0 )
				ifLocalVar79_g170 = localAudioLinkData1_g175;
			float Position1_g172 = saturate( frac( ( ( temp_output_8_0_g170 + temp_output_29_0_g170 + temp_output_95_0_g170 ) * temp_output_103_0_g170 ) ) );
			float4 localAudioLinkLerp1_g172 = AudioLinkLerp1_g172( Position1_g172 );
			float4 ifLocalVar50_g170 = 0;
			if( temp_output_52_0_g170 == 2.0 )
				ifLocalVar50_g170 = localAudioLinkLerp1_g172;
			float Position1_g173 = saturate( frac( ( ( temp_output_29_0_g170 + temp_output_1_0_g170 + temp_output_95_0_g170 ) * temp_output_103_0_g170 ) ) );
			float4 localAudioLinkLerp1_g173 = AudioLinkLerp1_g173( Position1_g173 );
			float4 ifLocalVar51_g170 = 0;
			if( temp_output_52_0_g170 == 3.0 )
				ifLocalVar51_g170 = localAudioLinkLerp1_g173;
			float4 temp_output_53_0_g170 = ( ifLocalVar49_g170 + ifLocalVar79_g170 + ifLocalVar50_g170 + ifLocalVar51_g170 );
			float4 temp_output_2_0_g176 = temp_output_53_0_g170;
			float4 ifLocalVar107_g170 = 0;
			if( temp_output_106_0_g170 == 0.0 )
				ifLocalVar107_g170 = ( ( ( break5_g176.r * 0.2 ) + ( break5_g176.g * 0.7 ) + ( break5_g176.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g176 * temp_output_2_0_g176 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g176 ) * ( 1.0 - temp_output_2_0_g176 ) ) ) );
			float4 ifLocalVar108_g170 = 0;
			if( temp_output_106_0_g170 == 1.0 )
				ifLocalVar108_g170 = ( temp_output_8_0_g170 * temp_output_53_0_g170 );
			float GlowMap331_g116 = break12_g116.b;
			int temp_output_106_0_g162 = _QBlendMode3;
			int temp_output_27_0_g162 = _QBand3;
			int Band3_g169 = temp_output_27_0_g162;
			float temp_output_1_0_g162 = (( _QInvertDirection3 )?( ( 1.0 - Direction11_g116 ) ):( Direction11_g116 ));
			float temp_output_5_0_g162 = ( _QHistory3 * temp_output_1_0_g162 );
			float Delay3_g169 = (( _QSmoothHistory )?( temp_output_5_0_g162 ):( floor( temp_output_5_0_g162 ) ));
			float localAudioLinkLerp3_g169 = AudioLinkLerp3_g169( Band3_g169 , Delay3_g169 );
			float temp_output_8_0_g162 = localAudioLinkLerp3_g169;
			float4 temp_cast_17 = (temp_output_8_0_g162).xxxx;
			float4 temp_output_1_0_g168 = temp_cast_17;
			float4 break5_g168 = temp_output_1_0_g168;
			int temp_output_52_0_g162 = _QType3;
			float temp_output_29_0_g162 = _QColorOffset3;
			int Band6_g166 = temp_output_27_0_g162;
			int Mode6_g166 = ( ( (int)_QColorRotationMode3 * 2 ) + (int)_QColorRotationSpeed3 );
			int localAudioLinkDecodeDataAsUInt6_g166 = AudioLinkDecodeDataAsUInt6_g166( Band6_g166 , Mode6_g166 );
			float temp_output_95_0_g162 = ( ( ( ( localAudioLinkDecodeDataAsUInt6_g166 % 628319 ) / 100000.0 ) / 6.28318548202515 ) * (int)(( _QUseColorRotation3 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g162 = _QEffectScale3;
			int Index1_g163 = (int)floor( ( frac( ( ( temp_output_29_0_g162 + temp_output_95_0_g162 ) * temp_output_103_0_g162 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g163 = AudioLinkData1_g163( Index1_g163 );
			float4 ifLocalVar49_g162 = 0;
			if( temp_output_52_0_g162 == 0.0 )
				ifLocalVar49_g162 = localAudioLinkData1_g163;
			int Index1_g167 = (int)floor( ( frac( ( ( temp_output_29_0_g162 + temp_output_95_0_g162 + temp_output_1_0_g162 ) * temp_output_103_0_g162 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g167 = AudioLinkData1_g167( Index1_g167 );
			float4 ifLocalVar79_g162 = 0;
			if( temp_output_52_0_g162 == 1.0 )
				ifLocalVar79_g162 = localAudioLinkData1_g167;
			float Position1_g164 = saturate( frac( ( ( temp_output_8_0_g162 + temp_output_29_0_g162 + temp_output_95_0_g162 ) * temp_output_103_0_g162 ) ) );
			float4 localAudioLinkLerp1_g164 = AudioLinkLerp1_g164( Position1_g164 );
			float4 ifLocalVar50_g162 = 0;
			if( temp_output_52_0_g162 == 2.0 )
				ifLocalVar50_g162 = localAudioLinkLerp1_g164;
			float Position1_g165 = saturate( frac( ( ( temp_output_29_0_g162 + temp_output_1_0_g162 + temp_output_95_0_g162 ) * temp_output_103_0_g162 ) ) );
			float4 localAudioLinkLerp1_g165 = AudioLinkLerp1_g165( Position1_g165 );
			float4 ifLocalVar51_g162 = 0;
			if( temp_output_52_0_g162 == 3.0 )
				ifLocalVar51_g162 = localAudioLinkLerp1_g165;
			float4 temp_output_53_0_g162 = ( ifLocalVar49_g162 + ifLocalVar79_g162 + ifLocalVar50_g162 + ifLocalVar51_g162 );
			float4 temp_output_2_0_g168 = temp_output_53_0_g162;
			float4 ifLocalVar107_g162 = 0;
			if( temp_output_106_0_g162 == 0.0 )
				ifLocalVar107_g162 = ( ( ( break5_g168.r * 0.2 ) + ( break5_g168.g * 0.7 ) + ( break5_g168.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g168 * temp_output_2_0_g168 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g168 ) * ( 1.0 - temp_output_2_0_g168 ) ) ) );
			float4 ifLocalVar108_g162 = 0;
			if( temp_output_106_0_g162 == 1.0 )
				ifLocalVar108_g162 = ( temp_output_8_0_g162 * temp_output_53_0_g162 );
			float GlowMap433_g116 = break12_g116.a;
			int temp_output_106_0_g154 = _QBlendMode4;
			int temp_output_27_0_g154 = _QBand4;
			int Band3_g161 = temp_output_27_0_g154;
			float temp_output_1_0_g154 = (( _QInvertDirection4 )?( ( 1.0 - Direction11_g116 ) ):( Direction11_g116 ));
			float temp_output_5_0_g154 = ( _QHistory4 * temp_output_1_0_g154 );
			float Delay3_g161 = (( _QSmoothHistory )?( temp_output_5_0_g154 ):( floor( temp_output_5_0_g154 ) ));
			float localAudioLinkLerp3_g161 = AudioLinkLerp3_g161( Band3_g161 , Delay3_g161 );
			float temp_output_8_0_g154 = localAudioLinkLerp3_g161;
			float4 temp_cast_25 = (temp_output_8_0_g154).xxxx;
			float4 temp_output_1_0_g160 = temp_cast_25;
			float4 break5_g160 = temp_output_1_0_g160;
			int temp_output_52_0_g154 = _QType4;
			float temp_output_29_0_g154 = _QColorOffset4;
			int Band6_g158 = temp_output_27_0_g154;
			int Mode6_g158 = ( ( (int)_QColorRotationMode4 * 2 ) + (int)_QColorRotationSpeed4 );
			int localAudioLinkDecodeDataAsUInt6_g158 = AudioLinkDecodeDataAsUInt6_g158( Band6_g158 , Mode6_g158 );
			float temp_output_95_0_g154 = ( ( ( ( localAudioLinkDecodeDataAsUInt6_g158 % 628319 ) / 100000.0 ) / 6.28318548202515 ) * (int)(( _QUseColorRotation4 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g154 = _QEffectScale4;
			int Index1_g155 = (int)floor( ( frac( ( ( temp_output_29_0_g154 + temp_output_95_0_g154 ) * temp_output_103_0_g154 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g155 = AudioLinkData1_g155( Index1_g155 );
			float4 ifLocalVar49_g154 = 0;
			if( temp_output_52_0_g154 == 0.0 )
				ifLocalVar49_g154 = localAudioLinkData1_g155;
			int Index1_g159 = (int)floor( ( frac( ( ( temp_output_29_0_g154 + temp_output_95_0_g154 + temp_output_1_0_g154 ) * temp_output_103_0_g154 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g159 = AudioLinkData1_g159( Index1_g159 );
			float4 ifLocalVar79_g154 = 0;
			if( temp_output_52_0_g154 == 1.0 )
				ifLocalVar79_g154 = localAudioLinkData1_g159;
			float Position1_g156 = saturate( frac( ( ( temp_output_8_0_g154 + temp_output_29_0_g154 + temp_output_95_0_g154 ) * temp_output_103_0_g154 ) ) );
			float4 localAudioLinkLerp1_g156 = AudioLinkLerp1_g156( Position1_g156 );
			float4 ifLocalVar50_g154 = 0;
			if( temp_output_52_0_g154 == 2.0 )
				ifLocalVar50_g154 = localAudioLinkLerp1_g156;
			float Position1_g157 = saturate( frac( ( ( temp_output_29_0_g154 + temp_output_1_0_g154 + temp_output_95_0_g154 ) * temp_output_103_0_g154 ) ) );
			float4 localAudioLinkLerp1_g157 = AudioLinkLerp1_g157( Position1_g157 );
			float4 ifLocalVar51_g154 = 0;
			if( temp_output_52_0_g154 == 3.0 )
				ifLocalVar51_g154 = localAudioLinkLerp1_g157;
			float4 temp_output_53_0_g154 = ( ifLocalVar49_g154 + ifLocalVar79_g154 + ifLocalVar50_g154 + ifLocalVar51_g154 );
			float4 temp_output_2_0_g160 = temp_output_53_0_g154;
			float4 ifLocalVar107_g154 = 0;
			if( temp_output_106_0_g154 == 0.0 )
				ifLocalVar107_g154 = ( ( ( break5_g160.r * 0.2 ) + ( break5_g160.g * 0.7 ) + ( break5_g160.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g160 * temp_output_2_0_g160 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g160 ) * ( 1.0 - temp_output_2_0_g160 ) ) ) );
			float4 ifLocalVar108_g154 = 0;
			if( temp_output_106_0_g154 == 1.0 )
				ifLocalVar108_g154 = ( temp_output_8_0_g154 * temp_output_53_0_g154 );
			float localIfAudioLinkv2Exists1_g117 = IfAudioLinkv2Exists1_g117();
			float4 lerpResult55_g116 = lerp( float4( 0,0,0,0 ) , ( _QuantumGlowColor * ( (( _QBandEnable1 )?( ( _QGlowColorBand1 * ( GlowMap130_g116 * ( ifLocalVar107_g178 + ifLocalVar108_g178 ) ) * _QuantumGlowMultiply1 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable2 )?( ( _QGlowColorBand2 * ( GlowMap232_g116 * ( ifLocalVar107_g170 + ifLocalVar108_g170 ) ) * _QuantumGlowMultiply2 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable3 )?( ( _QGlowColorBand3 * ( GlowMap331_g116 * ( ifLocalVar107_g162 + ifLocalVar108_g162 ) ) * _QuantumGlowMultiply3 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable4 )?( ( _QGlowColorBand4 * ( GlowMap433_g116 * ( ifLocalVar107_g154 + ifLocalVar108_g154 ) ) * _QuantumGlowMultiply4 ) ):( float4( 0,0,0,0 ) )) ) * _QuantumGlowMultiplyGlobal ) , localIfAudioLinkv2Exists1_g117);
			float4 Emission179 = ( MainEmission88 + (( _QEnableGlobal )?( lerpResult55_g116 ):( float4( 0,0,0,0 ) )) );
			o.Emission = Emission179.rgb;
			float SpecularValue83 = tex2DNode18.g;
			float SpecularResult78 = ( SpecularValue83 * _SpecularCorretive * _Specular );
			float4 temp_cast_34 = (SpecularResult78).xxxx;
			float4 lerpResult20 = lerp( temp_cast_34 , Albedo63 , MetallicResult68);
			float4 SpecularMap73 = lerpResult20;
			o.Specular = SpecularMap73.rgb;
			float RoghnessValue84 = tex2DNode18.b;
			float Smoothness76 = ( 1.0 - ( RoghnessValue84 * _Roughness ) );
			o.Smoothness = Smoothness76;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "QuantumShaderUI"
}
/*ASEBEGIN
Version=19603
Node;AmplifyShaderEditor.CommentaryNode;202;-1986,158;Inherit;False;1748;1835;Base Textures;25;16;4;18;5;55;83;82;11;9;52;53;10;56;84;63;15;12;14;64;195;88;200;201;199;203;;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;16;-1904,1024;Inherit;True;Property;_PBRMap;Packed PBR Map;6;0;Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;55;-1936,1552;Inherit;True;Property;_EmissionMap;Emission Map;2;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;4;-1920,208;Inherit;True;Property;_MainTex;Main Tex;0;0;Create;True;0;0;0;False;0;False;None;a16b3161c8c05f54ba87ec06bfdd6b82;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;18;-1392,1024;Inherit;True;Property;_TextureSample2;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;52;-1392,1760;Inherit;False;Property;_EmissionColor;Emission Color;3;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;53;-1424,1552;Inherit;True;Property;_TextureSample5;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CommentaryNode;98;-144,1280;Inherit;False;852;339;Specular Color;5;36;50;86;78;38;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;93;-160,960;Inherit;False;820;243;Metallic Map;4;34;35;85;68;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;5;-1616,208;Inherit;False;MainTexTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;83;-816,1168;Inherit;False;SpecularValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;82;-832,928;Inherit;False;MetallicValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;56;-1040,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;199;-1040,1680;Inherit;False;Property;_Emission;Emission;86;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;86;-96,1328;Inherit;False;83;SpecularValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;85;-112,1008;Inherit;False;82;MetallicValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;35;-112,1088;Inherit;False;Property;_Metallic;Metallic;7;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;50;-96,1504;Inherit;False;Property;_Specular;Specular;9;0;Create;False;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;36;-96,1424;Inherit;False;Property;_SpecularCorretive;Specular Corretive;8;0;Create;False;0;0;0;False;0;False;0.1;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;11;-1344,416;Inherit;False;Property;_Color;Color;1;0;Create;False;0;0;0;False;0;False;0,0,0,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;9;-1408,208;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;200;-848,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;95;-144,1712;Inherit;False;1044;259;Roughness;5;37;87;39;42;76;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;38;240,1328;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;34;192,1008;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10;-928,208;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;84;-816,1392;Inherit;False;RoghnessValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;201;-704,1552;Inherit;False;Property;_EnableEmission;EnableEmission;85;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;92;-160,496;Inherit;False;788;323;Specular Map (dielectric = grayscale | metallic = albedo);5;70;67;79;20;73;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;91;-160,160;Inherit;False;820;243;Specular albedo (metallic = black);4;66;69;19;72;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;68;416,1008;Inherit;False;MetallicResult;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;78;464,1328;Inherit;False;SpecularResult;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;87;-96,1760;Inherit;False;84;RoghnessValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;37;-96,1856;Inherit;False;Property;_Roughness;Roughness;10;0;Create;True;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;63;-736,208;Inherit;False;Albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;88;-480,1552;Inherit;False;MainEmission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;70;-112,704;Inherit;False;68;MetallicResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;67;-80,624;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;79;-112,544;Inherit;False;78;SpecularResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;66;-96,208;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;69;-112,288;Inherit;False;68;MetallicResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;39;256,1760;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;89;-64,2224;Inherit;False;88;MainEmission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;198;-32,2304;Inherit;False;QuatumGlow;11;;116;7730a8711ab108044bac907ea573069c;0;0;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;15;-1648,768;Inherit;False;Property;_BumpScale;Normal Scale;5;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;12;-1920,656;Inherit;True;Property;_BumpMap;NormalMap;4;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.LerpOp;20;192,544;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;19;160,208;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;42;448,1760;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;176;192,2224;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;14;-1408,656;Inherit;True;Property;_TextureSample1;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CommentaryNode;97;912,160;Inherit;False;660;675;Output;6;77;75;65;74;81;0;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;76;656,1760;Inherit;False;Smoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;72;416,208;Inherit;False;SpecularAlbedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;73;384,544;Inherit;False;SpecularMap;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;179;416,2224;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;64;-1008,656;Inherit;False;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;77;992,560;Inherit;False;76;Smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;75;992,464;Inherit;False;73;SpecularMap;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;74;960,208;Inherit;False;72;SpecularAlbedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;65;992,288;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;81;960,384;Inherit;False;179;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;203;-528,1856;Inherit;False;Property;_ShowRendering;ShowRendering;87;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;195;-528,1760;Inherit;False;Property;_ShowMain;ShowMain;84;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;1296,336;Float;False;True;-1;4;QuantumShaderUI;0;0;StandardSpecular;Saphi/QuantumShaderPackedPBR;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;0;False;;0;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;;-1;0;False;;1;Include;;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;18;0;16;0
WireConnection;53;0;55;0
WireConnection;5;0;4;0
WireConnection;83;0;18;2
WireConnection;82;0;18;1
WireConnection;56;0;53;0
WireConnection;56;1;52;0
WireConnection;9;0;5;0
WireConnection;200;0;56;0
WireConnection;200;1;199;0
WireConnection;38;0;86;0
WireConnection;38;1;36;0
WireConnection;38;2;50;0
WireConnection;34;0;85;0
WireConnection;34;1;35;0
WireConnection;10;0;9;0
WireConnection;10;1;11;0
WireConnection;84;0;18;3
WireConnection;201;1;200;0
WireConnection;68;0;34;0
WireConnection;78;0;38;0
WireConnection;63;0;10;0
WireConnection;88;0;201;0
WireConnection;39;0;87;0
WireConnection;39;1;37;0
WireConnection;20;0;79;0
WireConnection;20;1;67;0
WireConnection;20;2;70;0
WireConnection;19;0;66;0
WireConnection;19;2;69;0
WireConnection;42;0;39;0
WireConnection;176;0;89;0
WireConnection;176;1;198;0
WireConnection;14;0;12;0
WireConnection;14;5;15;0
WireConnection;76;0;42;0
WireConnection;72;0;19;0
WireConnection;73;0;20;0
WireConnection;179;0;176;0
WireConnection;64;0;14;0
WireConnection;0;0;74;0
WireConnection;0;1;65;0
WireConnection;0;2;81;0
WireConnection;0;3;75;0
WireConnection;0;4;77;0
ASEEND*/
//CHKSM=BF68B184B47BBFEFB4E8B862D37D27FC829E7C4A