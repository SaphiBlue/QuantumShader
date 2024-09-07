// Made with Amplify Shader Editor v1.9.6.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Saphi/QuantumShaderPackedPBRCutout"
{
	Properties
	{
		_MainTex("Main Tex", 2D) = "white" {}
		_Color("Color", Color) = (0,0,0,0)
		_EmissionMap("Emission Map", 2D) = "white" {}
		_EmissionMap2("Emission Map 2", 2D) = "black" {}
		_AlphaMap("AlphaMap", 2D) = "white" {}
		[HDR]_EmissionColor2("Emission Color2", Color) = (0,0,0,0)
		[HDR]_EmissionColor("Emission Color", Color) = (0,0,0,0)
		_BumpMap("NormalMap", 2D) = "bump" {}
		_DetailNormalMap("Detail Normal Map", 2D) = "bump" {}
		_BumpScale("Normal Scale", Range( 0 , 1)) = 1
		_Cutoff("Cutoff", Range( 0 , 1)) = 0.5
		_DetailNormalMapScale("Detail Normal Map Scale", Range( 0 , 1)) = 0
		_PBRMap("Packed PBR Map", 2D) = "white" {}
		_Metallic("Metallic", Range( 0 , 1)) = 0
		_SpecularCorretive("Specular Corretive", Float) = 0.1
		_Specular("Specular", Range( 0 , 1)) = 0.5
		[Enum(UnityEngine.Rendering.CullMode)]_Culling("Culling", Float) = 2
		_Roughness("Roughness", Range( 0 , 1)) = 0.5
		_QGlowMap("GlowMap", 2D) = "black" {}
		_QDirection("Direction", 2D) = "black" {}
		[HDR]_QuantumGlowColor("QuantumGlowColor", Color) = (1,1,1,0)
		[ToggleUI]_QSmoothHistory("Q Smooth History", Float) = 1
		[HDR]_QGlowColorBand1("QGlowColorBand1", Color) = (1,1,1,0)
		[Toggle]_QUseColorRotation1("QUseColorRotation1", Float) = 0
		[Toggle]_QUseColorRotation2("QUseColorRotation2", Float) = 0
		[Toggle]_QUseColorRotation3("QUseColorRotation3", Float) = 0
		[Toggle]_QInvertDirection1("QInvertDirection1", Float) = 0
		[Toggle]_QUseColorRotation4("QUseColorRotation4", Float) = 0
		[Enum(Whole Color,0,Whole Color Direction,1,Gradient Wave,2,Gradient Direction,3,Static Color,4,Hue Rotation,5)]_QType1("QType1", Int) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)]_QBlendMode4("QBlendMode1", Int) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)]_QBlendMode1("QBlendMode1", Int) = 0
		[Enum(Band 1,0,Band 2,1,Band 3,2,Band 4,3)]_QBand1("QBand1", Int) = 0
		[Enum(Whole color,0,Whole color direction,1,Gradient wave,2,Gradient direction,3,Static Color,4,Hue Rotation,5)]_QType2("QType2", Int) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)]_QBlendMode2("QBlendMode1", Int) = 0
		[Enum(Whole Color,0,Whole Color Direction,1,Gradient Wave,2,Gradient Direction,3,Static Color,4,Hue Rotation,5)]_QType4("QType4", Int) = 0
		[Enum(Whole Color,0,Whole Color Direction,1,Gradient Wave,2,Gradient Direction,3,Static Color,4,Hue Rotation,5)]_QType3("QType3", Int) = 0
		[Enum(Overlay,0,Multiply,1,Direct no wave,2)]_QBlendMode3("QBlendMode1", Int) = 0
		_QColorOffset1("QColorOffset1", Range( 0 , 1)) = 0
		_QEffectScale1("QEffectScale1", Range( 0 , 1)) = 1
		[IntRange]_QColorRotationMode4("QColorRotationMode4", Range( 0 , 3)) = 0
		_QColorRotationSpeed4("QColorRotationSpeed4", Range( 0 , 1)) = 0
		_QEffectScale2("QEffectScale2", Range( 0 , 1)) = 1
		_QEffectScale4("QEffectScale4", Range( 0 , 1)) = 1
		[IntRange]_QColorRotationMode1("QColorRotationMode1", Range( 0 , 3)) = 0
		[IntRange]_QColorRotationMode2("QColorRotationMode2", Range( 0 , 3)) = 0
		_QEffectScale3("QEffectScale3", Range( 0 , 1)) = 1
		_QColorRotationSpeed3("QColorRotationSpeed3", Range( 0 , 1)) = 0
		[IntRange]_QColorRotationMode3("QColorRotationMode3", Range( 0 , 3)) = 0
		_QHistory1("QHistory1", Range( 0 , 128)) = 32
		_QColorRotationSpeed2("QColorRotationSpeed2", Range( 0 , 1)) = 0
		_QColorRotationSpeed1("QColorRotationSpeed1", Range( 0 , 1)) = 0
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
		[Toggle]_EnableEmission2("EnableEmission2", Float) = 0
		_ShowRendering("ShowRendering", Float) = 0
		_Emission2("Emission2", Float) = 1
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "AlphaTest+0" "IsEmissive" = "true"  }
		Cull [_Culling]
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
		uniform float _Culling;
		uniform sampler2D _BumpMap;
		uniform float4 _BumpMap_ST;
		uniform float _BumpScale;
		uniform sampler2D _DetailNormalMap;
		uniform float4 _DetailNormalMap_ST;
		uniform float _DetailNormalMapScale;
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
		uniform float _EnableEmission2;
		uniform sampler2D _EmissionMap2;
		uniform float4 _EmissionMap2_ST;
		uniform float4 _EmissionColor2;
		uniform float _Emission2;
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
		uniform sampler2D _AlphaMap;
		uniform float4 _AlphaMap_ST;
		uniform float _Cutoff;


		inline float AudioLinkLerp3_g243( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g240( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g237( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g241( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g238( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g239( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		inline float AudioLinkLerp3_g251( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g248( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g245( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g249( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g246( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g247( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g235( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g232( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g229( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g233( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g230( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g231( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float AudioLinkLerp3_g227( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g224( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float4 AudioLinkData1_g221( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkData1_g225( int Index )
		{
			return AudioLinkData( ALPASS_CCLIGHTS + uint2( Index, 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g222( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float4 AudioLinkLerp1_g223( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		float IfAudioLinkv2Exists1_g219(  )
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
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST.xy + _DetailNormalMap_ST.zw;
			float3 Normal64 = BlendNormals( UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap ), _BumpScale ) , UnpackScaleNormal( tex2D( _DetailNormalMap, uv_DetailNormalMap ), _DetailNormalMapScale ) );
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
			float2 uv_EmissionMap2 = i.uv_texcoord * _EmissionMap2_ST.xy + _EmissionMap2_ST.zw;
			float4 MainEmission2222 = (( _EnableEmission2 )?( ( ( tex2D( _EmissionMap2, uv_EmissionMap2 ) * _EmissionColor2 ) * _Emission2 ) ):( float4( 0,0,0,0 ) ));
			float2 uv_QGlowMap = i.uv_texcoord * _QGlowMap_ST.xy + _QGlowMap_ST.zw;
			float4 GlowMap7_g218 = tex2D( _QGlowMap, uv_QGlowMap );
			float4 break12_g218 = GlowMap7_g218;
			float GlowMap130_g218 = break12_g218.r;
			int temp_output_106_0_g236 = _QBlendMode1;
			int temp_output_27_0_g236 = _QBand1;
			int Band3_g243 = temp_output_27_0_g236;
			float2 uv_QDirection = i.uv_texcoord * _QDirection_ST.xy + _QDirection_ST.zw;
			float4 DirectionMap5_g218 = tex2D( _QDirection, uv_QDirection );
			float Direction11_g218 = (( _UseUVAsDirection )?( (( _UseUVAsDirectionUV )?( i.uv_texcoord.y ):( i.uv_texcoord.x )) ):( DirectionMap5_g218.r ));
			float temp_output_1_0_g236 = (( _QInvertDirection1 )?( ( 1.0 - Direction11_g218 ) ):( Direction11_g218 ));
			float temp_output_5_0_g236 = ( _QHistory1 * temp_output_1_0_g236 );
			float Delay3_g243 = (( _QSmoothHistory )?( temp_output_5_0_g236 ):( floor( temp_output_5_0_g236 ) ));
			float localAudioLinkLerp3_g243 = AudioLinkLerp3_g243( Band3_g243 , Delay3_g243 );
			float temp_output_8_0_g236 = localAudioLinkLerp3_g243;
			float4 temp_cast_1 = (temp_output_8_0_g236).xxxx;
			float4 temp_output_1_0_g242 = temp_cast_1;
			float4 break5_g242 = temp_output_1_0_g242;
			int temp_output_52_0_g236 = _QType1;
			float temp_output_29_0_g236 = _QColorOffset1;
			int Band6_g240 = temp_output_27_0_g236;
			int Mode6_g240 = ( ( (int)_QColorRotationMode1 * 2 ) + (int)_QColorRotationSpeed1 );
			int localAudioLinkDecodeDataAsUInt6_g240 = AudioLinkDecodeDataAsUInt6_g240( Band6_g240 , Mode6_g240 );
			float temp_output_55_0_g236 = ( ( ( localAudioLinkDecodeDataAsUInt6_g240 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g236 = ( temp_output_55_0_g236 * (int)(( _QUseColorRotation1 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g236 = _QEffectScale1;
			int Index1_g237 = (int)floor( ( frac( ( ( temp_output_29_0_g236 + temp_output_95_0_g236 ) * temp_output_103_0_g236 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g237 = AudioLinkData1_g237( Index1_g237 );
			float4 ifLocalVar49_g236 = 0;
			if( temp_output_52_0_g236 == 0.0 )
				ifLocalVar49_g236 = localAudioLinkData1_g237;
			int Index1_g241 = (int)floor( ( frac( ( ( temp_output_29_0_g236 + temp_output_95_0_g236 + temp_output_1_0_g236 ) * temp_output_103_0_g236 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g241 = AudioLinkData1_g241( Index1_g241 );
			float4 ifLocalVar79_g236 = 0;
			if( temp_output_52_0_g236 == 1.0 )
				ifLocalVar79_g236 = localAudioLinkData1_g241;
			float Position1_g238 = saturate( frac( ( ( temp_output_8_0_g236 + temp_output_29_0_g236 + temp_output_95_0_g236 ) * temp_output_103_0_g236 ) ) );
			float4 localAudioLinkLerp1_g238 = AudioLinkLerp1_g238( Position1_g238 );
			float4 ifLocalVar50_g236 = 0;
			if( temp_output_52_0_g236 == 2.0 )
				ifLocalVar50_g236 = localAudioLinkLerp1_g238;
			float Position1_g239 = saturate( frac( ( ( temp_output_29_0_g236 + temp_output_1_0_g236 + temp_output_95_0_g236 ) * temp_output_103_0_g236 ) ) );
			float4 localAudioLinkLerp1_g239 = AudioLinkLerp1_g239( Position1_g239 );
			float4 ifLocalVar51_g236 = 0;
			if( temp_output_52_0_g236 == 3.0 )
				ifLocalVar51_g236 = localAudioLinkLerp1_g239;
			float4 color111_g236 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g236 = 0;
			if( temp_output_52_0_g236 == 4.0 )
				ifLocalVar110_g236 = color111_g236;
			float3 hsvTorgb116_g236 = HSVToRGB( float3(temp_output_55_0_g236,1.0,1.0) );
			float3 ifLocalVar117_g236 = 0;
			if( temp_output_52_0_g236 == 5.0 )
				ifLocalVar117_g236 = hsvTorgb116_g236;
			float4 temp_output_53_0_g236 = ( ifLocalVar49_g236 + ifLocalVar79_g236 + ifLocalVar50_g236 + ifLocalVar51_g236 + ifLocalVar110_g236 + float4( ifLocalVar117_g236 , 0.0 ) );
			float4 temp_output_2_0_g242 = temp_output_53_0_g236;
			float4 ifLocalVar107_g236 = 0;
			if( temp_output_106_0_g236 == 0.0 )
				ifLocalVar107_g236 = ( ( ( break5_g242.r * 0.2 ) + ( break5_g242.g * 0.7 ) + ( break5_g242.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g242 * temp_output_2_0_g242 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g242 ) * ( 1.0 - temp_output_2_0_g242 ) ) ) );
			float4 ifLocalVar108_g236 = 0;
			if( temp_output_106_0_g236 == 1.0 )
				ifLocalVar108_g236 = ( temp_output_8_0_g236 * temp_output_53_0_g236 );
			float4 ifLocalVar112_g236 = 0;
			if( temp_output_106_0_g236 == 2.0 )
				ifLocalVar112_g236 = temp_output_53_0_g236;
			float GlowMap232_g218 = break12_g218.g;
			int temp_output_106_0_g244 = _QBlendMode2;
			int temp_output_27_0_g244 = _QBand2;
			int Band3_g251 = temp_output_27_0_g244;
			float temp_output_1_0_g244 = (( _QInvertDirection2 )?( ( 1.0 - Direction11_g218 ) ):( Direction11_g218 ));
			float temp_output_5_0_g244 = ( _QHistory2 * temp_output_1_0_g244 );
			float Delay3_g251 = (( _QSmoothHistory )?( temp_output_5_0_g244 ):( floor( temp_output_5_0_g244 ) ));
			float localAudioLinkLerp3_g251 = AudioLinkLerp3_g251( Band3_g251 , Delay3_g251 );
			float temp_output_8_0_g244 = localAudioLinkLerp3_g251;
			float4 temp_cast_16 = (temp_output_8_0_g244).xxxx;
			float4 temp_output_1_0_g250 = temp_cast_16;
			float4 break5_g250 = temp_output_1_0_g250;
			int temp_output_52_0_g244 = _QType2;
			float temp_output_29_0_g244 = _QColorOffset2;
			int Band6_g248 = temp_output_27_0_g244;
			int Mode6_g248 = ( ( (int)_QColorRotationMode2 * 2 ) + (int)_QColorRotationSpeed2 );
			int localAudioLinkDecodeDataAsUInt6_g248 = AudioLinkDecodeDataAsUInt6_g248( Band6_g248 , Mode6_g248 );
			float temp_output_55_0_g244 = ( ( ( localAudioLinkDecodeDataAsUInt6_g248 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g244 = ( temp_output_55_0_g244 * (int)(( _QUseColorRotation2 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g244 = _QEffectScale2;
			int Index1_g245 = (int)floor( ( frac( ( ( temp_output_29_0_g244 + temp_output_95_0_g244 ) * temp_output_103_0_g244 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g245 = AudioLinkData1_g245( Index1_g245 );
			float4 ifLocalVar49_g244 = 0;
			if( temp_output_52_0_g244 == 0.0 )
				ifLocalVar49_g244 = localAudioLinkData1_g245;
			int Index1_g249 = (int)floor( ( frac( ( ( temp_output_29_0_g244 + temp_output_95_0_g244 + temp_output_1_0_g244 ) * temp_output_103_0_g244 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g249 = AudioLinkData1_g249( Index1_g249 );
			float4 ifLocalVar79_g244 = 0;
			if( temp_output_52_0_g244 == 1.0 )
				ifLocalVar79_g244 = localAudioLinkData1_g249;
			float Position1_g246 = saturate( frac( ( ( temp_output_8_0_g244 + temp_output_29_0_g244 + temp_output_95_0_g244 ) * temp_output_103_0_g244 ) ) );
			float4 localAudioLinkLerp1_g246 = AudioLinkLerp1_g246( Position1_g246 );
			float4 ifLocalVar50_g244 = 0;
			if( temp_output_52_0_g244 == 2.0 )
				ifLocalVar50_g244 = localAudioLinkLerp1_g246;
			float Position1_g247 = saturate( frac( ( ( temp_output_29_0_g244 + temp_output_1_0_g244 + temp_output_95_0_g244 ) * temp_output_103_0_g244 ) ) );
			float4 localAudioLinkLerp1_g247 = AudioLinkLerp1_g247( Position1_g247 );
			float4 ifLocalVar51_g244 = 0;
			if( temp_output_52_0_g244 == 3.0 )
				ifLocalVar51_g244 = localAudioLinkLerp1_g247;
			float4 color111_g244 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g244 = 0;
			if( temp_output_52_0_g244 == 4.0 )
				ifLocalVar110_g244 = color111_g244;
			float3 hsvTorgb116_g244 = HSVToRGB( float3(temp_output_55_0_g244,1.0,1.0) );
			float3 ifLocalVar117_g244 = 0;
			if( temp_output_52_0_g244 == 5.0 )
				ifLocalVar117_g244 = hsvTorgb116_g244;
			float4 temp_output_53_0_g244 = ( ifLocalVar49_g244 + ifLocalVar79_g244 + ifLocalVar50_g244 + ifLocalVar51_g244 + ifLocalVar110_g244 + float4( ifLocalVar117_g244 , 0.0 ) );
			float4 temp_output_2_0_g250 = temp_output_53_0_g244;
			float4 ifLocalVar107_g244 = 0;
			if( temp_output_106_0_g244 == 0.0 )
				ifLocalVar107_g244 = ( ( ( break5_g250.r * 0.2 ) + ( break5_g250.g * 0.7 ) + ( break5_g250.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g250 * temp_output_2_0_g250 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g250 ) * ( 1.0 - temp_output_2_0_g250 ) ) ) );
			float4 ifLocalVar108_g244 = 0;
			if( temp_output_106_0_g244 == 1.0 )
				ifLocalVar108_g244 = ( temp_output_8_0_g244 * temp_output_53_0_g244 );
			float4 ifLocalVar112_g244 = 0;
			if( temp_output_106_0_g244 == 2.0 )
				ifLocalVar112_g244 = temp_output_53_0_g244;
			float GlowMap331_g218 = break12_g218.b;
			int temp_output_106_0_g228 = _QBlendMode3;
			int temp_output_27_0_g228 = _QBand3;
			int Band3_g235 = temp_output_27_0_g228;
			float temp_output_1_0_g228 = (( _QInvertDirection3 )?( ( 1.0 - Direction11_g218 ) ):( Direction11_g218 ));
			float temp_output_5_0_g228 = ( _QHistory3 * temp_output_1_0_g228 );
			float Delay3_g235 = (( _QSmoothHistory )?( temp_output_5_0_g228 ):( floor( temp_output_5_0_g228 ) ));
			float localAudioLinkLerp3_g235 = AudioLinkLerp3_g235( Band3_g235 , Delay3_g235 );
			float temp_output_8_0_g228 = localAudioLinkLerp3_g235;
			float4 temp_cast_31 = (temp_output_8_0_g228).xxxx;
			float4 temp_output_1_0_g234 = temp_cast_31;
			float4 break5_g234 = temp_output_1_0_g234;
			int temp_output_52_0_g228 = _QType3;
			float temp_output_29_0_g228 = _QColorOffset3;
			int Band6_g232 = temp_output_27_0_g228;
			int Mode6_g232 = ( ( (int)_QColorRotationMode3 * 2 ) + (int)_QColorRotationSpeed3 );
			int localAudioLinkDecodeDataAsUInt6_g232 = AudioLinkDecodeDataAsUInt6_g232( Band6_g232 , Mode6_g232 );
			float temp_output_55_0_g228 = ( ( ( localAudioLinkDecodeDataAsUInt6_g232 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g228 = ( temp_output_55_0_g228 * (int)(( _QUseColorRotation3 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g228 = _QEffectScale3;
			int Index1_g229 = (int)floor( ( frac( ( ( temp_output_29_0_g228 + temp_output_95_0_g228 ) * temp_output_103_0_g228 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g229 = AudioLinkData1_g229( Index1_g229 );
			float4 ifLocalVar49_g228 = 0;
			if( temp_output_52_0_g228 == 0.0 )
				ifLocalVar49_g228 = localAudioLinkData1_g229;
			int Index1_g233 = (int)floor( ( frac( ( ( temp_output_29_0_g228 + temp_output_95_0_g228 + temp_output_1_0_g228 ) * temp_output_103_0_g228 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g233 = AudioLinkData1_g233( Index1_g233 );
			float4 ifLocalVar79_g228 = 0;
			if( temp_output_52_0_g228 == 1.0 )
				ifLocalVar79_g228 = localAudioLinkData1_g233;
			float Position1_g230 = saturate( frac( ( ( temp_output_8_0_g228 + temp_output_29_0_g228 + temp_output_95_0_g228 ) * temp_output_103_0_g228 ) ) );
			float4 localAudioLinkLerp1_g230 = AudioLinkLerp1_g230( Position1_g230 );
			float4 ifLocalVar50_g228 = 0;
			if( temp_output_52_0_g228 == 2.0 )
				ifLocalVar50_g228 = localAudioLinkLerp1_g230;
			float Position1_g231 = saturate( frac( ( ( temp_output_29_0_g228 + temp_output_1_0_g228 + temp_output_95_0_g228 ) * temp_output_103_0_g228 ) ) );
			float4 localAudioLinkLerp1_g231 = AudioLinkLerp1_g231( Position1_g231 );
			float4 ifLocalVar51_g228 = 0;
			if( temp_output_52_0_g228 == 3.0 )
				ifLocalVar51_g228 = localAudioLinkLerp1_g231;
			float4 color111_g228 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g228 = 0;
			if( temp_output_52_0_g228 == 4.0 )
				ifLocalVar110_g228 = color111_g228;
			float3 hsvTorgb116_g228 = HSVToRGB( float3(temp_output_55_0_g228,1.0,1.0) );
			float3 ifLocalVar117_g228 = 0;
			if( temp_output_52_0_g228 == 5.0 )
				ifLocalVar117_g228 = hsvTorgb116_g228;
			float4 temp_output_53_0_g228 = ( ifLocalVar49_g228 + ifLocalVar79_g228 + ifLocalVar50_g228 + ifLocalVar51_g228 + ifLocalVar110_g228 + float4( ifLocalVar117_g228 , 0.0 ) );
			float4 temp_output_2_0_g234 = temp_output_53_0_g228;
			float4 ifLocalVar107_g228 = 0;
			if( temp_output_106_0_g228 == 0.0 )
				ifLocalVar107_g228 = ( ( ( break5_g234.r * 0.2 ) + ( break5_g234.g * 0.7 ) + ( break5_g234.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g234 * temp_output_2_0_g234 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g234 ) * ( 1.0 - temp_output_2_0_g234 ) ) ) );
			float4 ifLocalVar108_g228 = 0;
			if( temp_output_106_0_g228 == 1.0 )
				ifLocalVar108_g228 = ( temp_output_8_0_g228 * temp_output_53_0_g228 );
			float4 ifLocalVar112_g228 = 0;
			if( temp_output_106_0_g228 == 2.0 )
				ifLocalVar112_g228 = temp_output_53_0_g228;
			float GlowMap433_g218 = break12_g218.a;
			int temp_output_106_0_g220 = _QBlendMode4;
			int temp_output_27_0_g220 = _QBand4;
			int Band3_g227 = temp_output_27_0_g220;
			float temp_output_1_0_g220 = (( _QInvertDirection4 )?( ( 1.0 - Direction11_g218 ) ):( Direction11_g218 ));
			float temp_output_5_0_g220 = ( _QHistory4 * temp_output_1_0_g220 );
			float Delay3_g227 = (( _QSmoothHistory )?( temp_output_5_0_g220 ):( floor( temp_output_5_0_g220 ) ));
			float localAudioLinkLerp3_g227 = AudioLinkLerp3_g227( Band3_g227 , Delay3_g227 );
			float temp_output_8_0_g220 = localAudioLinkLerp3_g227;
			float4 temp_cast_46 = (temp_output_8_0_g220).xxxx;
			float4 temp_output_1_0_g226 = temp_cast_46;
			float4 break5_g226 = temp_output_1_0_g226;
			int temp_output_52_0_g220 = _QType4;
			float temp_output_29_0_g220 = _QColorOffset4;
			int Band6_g224 = temp_output_27_0_g220;
			int Mode6_g224 = ( ( (int)_QColorRotationMode4 * 2 ) + (int)_QColorRotationSpeed4 );
			int localAudioLinkDecodeDataAsUInt6_g224 = AudioLinkDecodeDataAsUInt6_g224( Band6_g224 , Mode6_g224 );
			float temp_output_55_0_g220 = ( ( ( localAudioLinkDecodeDataAsUInt6_g224 % 628319 ) / 100000.0 ) / 6.28318548202515 );
			float temp_output_95_0_g220 = ( temp_output_55_0_g220 * (int)(( _QUseColorRotation4 )?( 1.0 ):( 0.0 )) );
			float temp_output_103_0_g220 = _QEffectScale4;
			int Index1_g221 = (int)floor( ( frac( ( ( temp_output_29_0_g220 + temp_output_95_0_g220 ) * temp_output_103_0_g220 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g221 = AudioLinkData1_g221( Index1_g221 );
			float4 ifLocalVar49_g220 = 0;
			if( temp_output_52_0_g220 == 0.0 )
				ifLocalVar49_g220 = localAudioLinkData1_g221;
			int Index1_g225 = (int)floor( ( frac( ( ( temp_output_29_0_g220 + temp_output_95_0_g220 + temp_output_1_0_g220 ) * temp_output_103_0_g220 ) ) * 127.0 ) );
			float4 localAudioLinkData1_g225 = AudioLinkData1_g225( Index1_g225 );
			float4 ifLocalVar79_g220 = 0;
			if( temp_output_52_0_g220 == 1.0 )
				ifLocalVar79_g220 = localAudioLinkData1_g225;
			float Position1_g222 = saturate( frac( ( ( temp_output_8_0_g220 + temp_output_29_0_g220 + temp_output_95_0_g220 ) * temp_output_103_0_g220 ) ) );
			float4 localAudioLinkLerp1_g222 = AudioLinkLerp1_g222( Position1_g222 );
			float4 ifLocalVar50_g220 = 0;
			if( temp_output_52_0_g220 == 2.0 )
				ifLocalVar50_g220 = localAudioLinkLerp1_g222;
			float Position1_g223 = saturate( frac( ( ( temp_output_29_0_g220 + temp_output_1_0_g220 + temp_output_95_0_g220 ) * temp_output_103_0_g220 ) ) );
			float4 localAudioLinkLerp1_g223 = AudioLinkLerp1_g223( Position1_g223 );
			float4 ifLocalVar51_g220 = 0;
			if( temp_output_52_0_g220 == 3.0 )
				ifLocalVar51_g220 = localAudioLinkLerp1_g223;
			float4 color111_g220 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
			float4 ifLocalVar110_g220 = 0;
			if( temp_output_52_0_g220 == 4.0 )
				ifLocalVar110_g220 = color111_g220;
			float3 hsvTorgb116_g220 = HSVToRGB( float3(temp_output_55_0_g220,1.0,1.0) );
			float3 ifLocalVar117_g220 = 0;
			if( temp_output_52_0_g220 == 5.0 )
				ifLocalVar117_g220 = hsvTorgb116_g220;
			float4 temp_output_53_0_g220 = ( ifLocalVar49_g220 + ifLocalVar79_g220 + ifLocalVar50_g220 + ifLocalVar51_g220 + ifLocalVar110_g220 + float4( ifLocalVar117_g220 , 0.0 ) );
			float4 temp_output_2_0_g226 = temp_output_53_0_g220;
			float4 ifLocalVar107_g220 = 0;
			if( temp_output_106_0_g220 == 0.0 )
				ifLocalVar107_g220 = ( ( ( break5_g226.r * 0.2 ) + ( break5_g226.g * 0.7 ) + ( break5_g226.b * 0.1 ) ) < 0.5 ? ( 2.0 * temp_output_1_0_g226 * temp_output_2_0_g226 ) : ( 1.0 - ( 2.0 * ( 1.0 - temp_output_1_0_g226 ) * ( 1.0 - temp_output_2_0_g226 ) ) ) );
			float4 ifLocalVar108_g220 = 0;
			if( temp_output_106_0_g220 == 1.0 )
				ifLocalVar108_g220 = ( temp_output_8_0_g220 * temp_output_53_0_g220 );
			float4 ifLocalVar112_g220 = 0;
			if( temp_output_106_0_g220 == 2.0 )
				ifLocalVar112_g220 = temp_output_53_0_g220;
			float localIfAudioLinkv2Exists1_g219 = IfAudioLinkv2Exists1_g219();
			float4 lerpResult55_g218 = lerp( float4( 0,0,0,0 ) , ( _QuantumGlowColor * ( (( _QBandEnable1 )?( ( _QGlowColorBand1 * ( GlowMap130_g218 * ( ifLocalVar107_g236 + ifLocalVar108_g236 + ifLocalVar112_g236 ) ) * _QuantumGlowMultiply1 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable2 )?( ( _QGlowColorBand2 * ( GlowMap232_g218 * ( ifLocalVar107_g244 + ifLocalVar108_g244 + ifLocalVar112_g244 ) ) * _QuantumGlowMultiply2 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable3 )?( ( _QGlowColorBand3 * ( GlowMap331_g218 * ( ifLocalVar107_g228 + ifLocalVar108_g228 + ifLocalVar112_g228 ) ) * _QuantumGlowMultiply3 ) ):( float4( 0,0,0,0 ) )) + (( _QBandEnable4 )?( ( _QGlowColorBand4 * ( GlowMap433_g218 * ( ifLocalVar107_g220 + ifLocalVar108_g220 + ifLocalVar112_g220 ) ) * _QuantumGlowMultiply4 ) ):( float4( 0,0,0,0 ) )) ) * _QuantumGlowMultiplyGlobal ) , localIfAudioLinkv2Exists1_g219);
			float4 Emission179 = ( MainEmission88 + MainEmission2222 + (( _QEnableGlobal )?( lerpResult55_g218 ):( float4( 0,0,0,0 ) )) );
			o.Emission = Emission179.rgb;
			float SpecularValue83 = tex2DNode18.g;
			float SpecularResult78 = ( SpecularValue83 * _SpecularCorretive * _Specular );
			float4 temp_cast_62 = (SpecularResult78).xxxx;
			float4 lerpResult20 = lerp( temp_cast_62 , Albedo63 , MetallicResult68);
			float4 SpecularMap73 = lerpResult20;
			o.Specular = SpecularMap73.rgb;
			float RoghnessValue84 = tex2DNode18.b;
			float Smoothness76 = ( 1.0 - ( RoghnessValue84 * _Roughness ) );
			o.Smoothness = Smoothness76;
			o.Alpha = 1;
			float2 uv_AlphaMap = i.uv_texcoord * _AlphaMap_ST.xy + _AlphaMap_ST.zw;
			float AlphaMap210 = tex2D( _AlphaMap, uv_AlphaMap ).r;
			clip( AlphaMap210 - _Cutoff );
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "Saphi.QuantumShader.QuantumShaderUI"
}
/*ASEBEGIN
Version=19603
Node;AmplifyShaderEditor.CommentaryNode;202;-3118.295,158;Inherit;False;2872.75;2538.139;Base Textures;35;209;204;195;203;210;64;211;208;212;207;14;15;205;206;12;88;63;201;84;10;200;9;11;82;83;199;56;5;18;53;52;4;16;55;215;;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;55;-1936,1552;Inherit;True;Property;_EmissionMap;Emission Map;2;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;16;-1936,1296;Inherit;True;Property;_PBRMap;Packed PBR Map;12;0;Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;215;-1968,1984;Inherit;True;Property;_EmissionMap2;Emission Map 2;3;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;4;-1920,208;Inherit;True;Property;_MainTex;Main Tex;0;0;Create;True;0;0;0;False;0;False;None;a16b3161c8c05f54ba87ec06bfdd6b82;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ColorNode;52;-1392,1760;Inherit;False;Property;_EmissionColor;Emission Color;6;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;53;-1424,1552;Inherit;True;Property;_TextureSample5;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;18;-1424,1296;Inherit;True;Property;_TextureSample2;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;216;-1456,1984;Inherit;True;Property;_TextureSample10;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;217;-1424,2192;Inherit;False;Property;_EmissionColor2;Emission Color2;5;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;4,4,4,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CommentaryNode;98;-144,1280;Inherit;False;852;339;Specular Color;5;36;50;86;78;38;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;93;-160,960;Inherit;False;820;243;Metallic Map;4;34;35;85;68;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;5;-1616,208;Inherit;False;MainTexTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;56;-1040,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;199;-1040,1680;Inherit;False;Property;_Emission;Emission;93;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;83;-816,1312;Inherit;False;SpecularValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;82;-816,1232;Inherit;False;MetallicValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;218;-1168,1984;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;219;-1168,2096;Inherit;False;Property;_Emission2;Emission2;96;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;86;-96,1328;Inherit;False;83;SpecularValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;85;-112,1008;Inherit;False;82;MetallicValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;50;-96,1504;Inherit;False;Property;_Specular;Specular;15;0;Create;False;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;36;-96,1424;Inherit;False;Property;_SpecularCorretive;Specular Corretive;14;0;Create;False;0;0;0;False;0;False;0.1;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;11;-1344,416;Inherit;False;Property;_Color;Color;1;0;Create;False;0;0;0;False;0;False;0,0,0,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;9;-1408,208;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;200;-848,1552;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;35;-112,1088;Inherit;False;Property;_Metallic;Metallic;13;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;220;-1008,1984;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;95;-144,1712;Inherit;False;1044;259;Roughness;5;37;87;39;42;76;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;38;240,1328;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;34;192,1008;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10;-928,208;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;84;-816,1392;Inherit;False;RoghnessValue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;201;-704,1552;Inherit;False;Property;_EnableEmission;EnableEmission;92;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;221;-864,1984;Inherit;False;Property;_EnableEmission2;EnableEmission2;94;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;92;-160,496;Inherit;False;788;323;Specular Map (dielectric = grayscale | metallic = albedo);5;70;67;79;20;73;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;91;-160,160;Inherit;False;820;243;Specular albedo (metallic = black);4;66;69;19;72;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;68;416,1008;Inherit;False;MetallicResult;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;78;464,1328;Inherit;False;SpecularResult;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;87;-96,1760;Inherit;False;84;RoghnessValue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;37;-96,1856;Inherit;False;Property;_Roughness;Roughness;17;0;Create;True;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;63;-736,208;Inherit;False;Albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;88;-480,1552;Inherit;False;MainEmission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;12;-1920,656;Inherit;True;Property;_BumpMap;NormalMap;7;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;206;-1920,896;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;8;0;Create;False;0;0;0;False;0;False;None;aef25913bc0271f498e5006238d33577;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;205;-1680,1008;Inherit;False;Property;_DetailNormalMapScale;Detail Normal Map Scale;11;0;Create;False;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;15;-1696,768;Inherit;False;Property;_BumpScale;Normal Scale;9;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;222;-656,1984;Inherit;False;MainEmission2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;70;-112,704;Inherit;False;68;MetallicResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;67;-80,624;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;79;-112,544;Inherit;False;78;SpecularResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;66;-96,208;Inherit;False;63;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;69;-112,288;Inherit;False;68;MetallicResult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;39;256,1760;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;14;-1408,656;Inherit;True;Property;_TextureSample1;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;207;-1408,896;Inherit;True;Property;_TextureSample8;Texture Sample 1;3;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode;89;-64,2224;Inherit;False;88;MainEmission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;212;-1936,2448;Inherit;True;Property;_AlphaMap;AlphaMap;4;0;Create;True;0;0;0;False;0;False;None;c48f49805bc6dcb448988519f2f10bcc;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode;223;-64,2304;Inherit;False;222;MainEmission2;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;214;-32,2384;Inherit;False;QuatumGlow;18;;218;7730a8711ab108044bac907ea573069c;0;0;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;20;192,544;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;19;160,208;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;42;448,1760;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;208;-1024,656;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;176;192,2224;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;211;-1424,2448;Inherit;True;Property;_TextureSample9;Texture Sample 2;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CommentaryNode;97;912,160;Inherit;False;660;675;Output;7;77;75;65;74;81;0;213;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;76;656,1760;Inherit;False;Smoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;72;416,208;Inherit;False;SpecularAlbedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;73;384,544;Inherit;False;SpecularMap;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;64;-768,656;Inherit;False;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;179;416,2224;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;210;-848,2496;Inherit;False;AlphaMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;77;992,560;Inherit;False;76;Smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;75;992,464;Inherit;False;73;SpecularMap;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;74;960,208;Inherit;False;72;SpecularAlbedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;65;992,288;Inherit;False;64;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;81;960,384;Inherit;False;179;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;213;992,688;Inherit;False;210;AlphaMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;203;-2672,336;Inherit;False;Property;_ShowRendering;ShowRendering;95;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;195;-2672,240;Inherit;False;Property;_ShowMain;ShowMain;91;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;204;-2848,336;Inherit;False;Property;_Culling;Culling;16;1;[Enum];Create;False;0;1;Option1;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;209;-3024,240;Inherit;False;Property;_Cutoff;Cutoff;10;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;1296,336;Float;False;True;-1;4;Saphi.QuantumShader.QuantumShaderUI;0;0;StandardSpecular;Saphi/QuantumShaderPackedPBRCutout;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Masked;0.5;True;True;0;False;TransparentCutout;;AlphaTest;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;0;False;;0;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;True;_Culling;-1;0;True;_Cutoff;1;Include;;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;53;0;55;0
WireConnection;18;0;16;0
WireConnection;216;0;215;0
WireConnection;5;0;4;0
WireConnection;56;0;53;0
WireConnection;56;1;52;0
WireConnection;83;0;18;2
WireConnection;82;0;18;1
WireConnection;218;0;216;0
WireConnection;218;1;217;0
WireConnection;9;0;5;0
WireConnection;200;0;56;0
WireConnection;200;1;199;0
WireConnection;220;0;218;0
WireConnection;220;1;219;0
WireConnection;38;0;86;0
WireConnection;38;1;36;0
WireConnection;38;2;50;0
WireConnection;34;0;85;0
WireConnection;34;1;35;0
WireConnection;10;0;9;0
WireConnection;10;1;11;0
WireConnection;84;0;18;3
WireConnection;201;1;200;0
WireConnection;221;1;220;0
WireConnection;68;0;34;0
WireConnection;78;0;38;0
WireConnection;63;0;10;0
WireConnection;88;0;201;0
WireConnection;222;0;221;0
WireConnection;39;0;87;0
WireConnection;39;1;37;0
WireConnection;14;0;12;0
WireConnection;14;5;15;0
WireConnection;207;0;206;0
WireConnection;207;5;205;0
WireConnection;20;0;79;0
WireConnection;20;1;67;0
WireConnection;20;2;70;0
WireConnection;19;0;66;0
WireConnection;19;2;69;0
WireConnection;42;0;39;0
WireConnection;208;0;14;0
WireConnection;208;1;207;0
WireConnection;176;0;89;0
WireConnection;176;1;223;0
WireConnection;176;2;214;0
WireConnection;211;0;212;0
WireConnection;76;0;42;0
WireConnection;72;0;19;0
WireConnection;73;0;20;0
WireConnection;64;0;208;0
WireConnection;179;0;176;0
WireConnection;210;0;211;1
WireConnection;0;0;74;0
WireConnection;0;1;65;0
WireConnection;0;2;81;0
WireConnection;0;3;75;0
WireConnection;0;4;77;0
WireConnection;0;10;213;0
ASEEND*/
//CHKSM=C471630B459DDEDEA62F8953ECC475BE7C15E8E7