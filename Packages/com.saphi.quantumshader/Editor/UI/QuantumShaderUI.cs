#if UNITY_EDITOR

using UnityEngine;
using UnityEditor;
using System;

namespace Saphi.QuantumShader
{


    public class QuantumShaderUI : ShaderGUI
    {
        private Texture2D logo;
        Material target;
        MaterialEditor editor;
        MaterialProperty[] properties;

        Shader shaderBasicPBR = Shader.Find("Saphi/QuantumShaderBasicPBR");
        Shader shaderPackedPBR = Shader.Find("Saphi/QuantumShaderPackedPBR");
        Shader shaderSpecular = Shader.Find("Saphi/QuantumShaderSpecular");
        Shader shaderMetallic = Shader.Find("Saphi/QuantumShaderMetallic");

        public override void OnGUI(MaterialEditor editor, MaterialProperty[] properties)
        {
            this.editor = editor;
            this.properties = properties;
            this.target = editor.target as Material;


            setlogo();

            GUILayout.Space(10);

            MainProps();
            QuantumGlow();
            Rendering();
        }

        MaterialProperty getProperty(string name)
        {
            return FindProperty(name, properties);
        }

        void setlogo()
        {

            logo = AssetDatabase.LoadAssetAtPath<Texture2D>("Packages/com.saphi.quantumshader/Editor/Assets/Logo.png");

            // Center the image in a horizontal and vertical layout group
            GUILayout.BeginHorizontal();
            GUILayout.FlexibleSpace();
            GUILayout.BeginVertical();
            GUILayout.FlexibleSpace();
            GUILayout.Label(logo, GUILayout.MaxHeight(100));
            GUILayout.FlexibleSpace();
            GUILayout.EndVertical();
            GUILayout.FlexibleSpace();
            GUILayout.EndHorizontal();
        }

        //static GUIContent staticLabel = new GUIContent();
        static GUIContent buildLabel(string text, string tooltip = null)
        {
            GUIContent label = new GUIContent();
            label.text = text;
            label.tooltip = tooltip;
            return label;
        }

        void buildTextureInputs(string name, string tooltip, string nameTex, string nameProp2 = "")
        {
            MaterialProperty texture = getProperty(nameTex);
            if (nameProp2 != string.Empty)
            {
                MaterialProperty prop2 = getProperty(nameProp2);
                editor.TexturePropertySingleLine(buildLabel(name, tooltip), texture, prop2);
            }
            else
            {
                editor.TexturePropertySingleLine(buildLabel(name, tooltip), texture);
            }

            EditorGUI.indentLevel += 2;
            editor.TextureScaleOffsetProperty(texture);
            EditorGUI.indentLevel -= 2;
        }

        void buildNormalInputs(string name, string tooltip, string nameTex, string nameScale)
        {
            MaterialProperty texture = getProperty(nameTex);
            MaterialProperty scale = getProperty(nameScale);
            editor.TexturePropertySingleLine(buildLabel(name, tooltip), texture, scale);

            EditorGUI.indentLevel += 2;
            editor.TextureScaleOffsetProperty(texture);
            EditorGUI.indentLevel -= 2;
        }

        void buildPBRMaps()
        {
            if (target.shader == shaderBasicPBR)
            {
                buildTextureInputs("Metallic Map", "Metallic", "_MetallicMap");
                buildTextureInputs("Specular Map", "Reflectivity of the Material", "_SpecularMap");
                buildTextureInputs("Roughness Map", "Roughness of the Material", "_RoughnessMap");
            }

            if (target.shader == shaderPackedPBR)
            {
                buildTextureInputs("PBR Data", "RGB; R = Metallic, G = Specular, B = Roughness", "_PBRMap");
            }

            if (target.shader == shaderSpecular)
            {
                buildTextureInputs("Specular", "Specular (RGBA) RGB = Specular, A = Smoothness", "_SpecularTextureChannel");
            }

            if (target.shader == shaderMetallic)
            {
                buildTextureInputs("Metallic", "Metallic (RGBA) R = Metallic, A = Smoothness", "_MetallicGlossMap");
            }
        }

        void MainProps()
        {
            bool showMain;
            string toggle = "_ShowMain";

            if (target.GetFloat(toggle) == 1)
            {
                showMain = true;
            }
            else
            {
                showMain = false;
            }

            showMain = EditorGUILayout.Foldout(showMain, "Main", true, EditorStyles.foldoutHeader);
            if (showMain)
            {
                target.SetFloat(toggle, 1);

                GUILayout.BeginVertical("box");
                EditorGUI.indentLevel += 2;
                buildTextureInputs("Main Texture", "Main Color/Albedo", "_MainTex", "_Color");
                GUILayout.Space(10);
                editor.ShaderProperty(getProperty("_EnableEmission"), "Enable Emission", 0);
                editor.ShaderProperty(getProperty("_Emission"), "Emission Multiplier", 0);
                buildTextureInputs("Main Emission", "Emission with Color", "_EmissionMap", "_EmissionColor");
                GUILayout.Space(10);
                buildNormalInputs("Normal Map", "Normal Map", "_BumpMap", "_BumpScale");
                GUILayout.Space(10);
                buildNormalInputs("Detail Normal Map", "Detail Normal Map", "_DetailNormalMap", "_DetailNormalMapScale");
                GUILayout.Space(10);

                buildPBRMaps();

                GUILayout.Space(10);
                EditorGUI.indentLevel -= 2;
                GUILayout.EndVertical();

                if (target.shader == shaderBasicPBR || target.shader == shaderPackedPBR)
                {
                    editor.ShaderProperty(getProperty("_SpecularCorretive"), "Specular Corrective", 2);
                    editor.ShaderProperty(getProperty("_Metallic"), "Metallic", 2);
                    editor.ShaderProperty(getProperty("_Specular"), "Specular", 2);
                    editor.ShaderProperty(getProperty("_Roughness"), "Roughness", 2);
                }

            }
            else
            {
                target.SetFloat(toggle, 0);
            }
        }

        void QuantumGlow()
        {
            bool showQuantum;
            string toggle = "_ShowQuantum";

            if (target.GetFloat(toggle) == 1)
            {
                showQuantum = true;
            }
            else
            {
                showQuantum = false;
            }

            showQuantum = EditorGUILayout.Foldout(showQuantum, "Quantum", true, EditorStyles.foldoutHeader);
            if (showQuantum)
            {
                target.SetFloat(toggle, 1);

                GUILayout.BeginVertical("box");

                EditorGUI.indentLevel += 2;

                buildTextureInputs("Glow Map", "Uses RGBA for Directional Glow", "_QGlowMap");
                buildTextureInputs("Direction", "Direction of the glow band", "_QDirection");


                editor.ShaderProperty(getProperty("_UseUVAsDirection"), "Use UV Map as direction map", 2);
                editor.ShaderProperty(getProperty("_UseUVAsDirectionUV"), "UV Map as direction U or V", 2);

                EditorGUI.indentLevel -= 2;

                GUILayout.EndVertical();

                editor.ShaderProperty(getProperty("_QEnableGlobal"), "Enable Glow", 2);
                editor.ShaderProperty(getProperty("_QSmoothHistory"), "Smooth History", 2);
                editor.ShaderProperty(getProperty("_QuantumGlowColor"), "Glow Color", 2);
                editor.ShaderProperty(getProperty("_QuantumGlowMultiplyGlobal"), "Multiplier", 2);

                QuantumBand(1, "Quantum Band 1 (R)");
                QuantumBand(2, "Quantum Band 2 (G)");
                QuantumBand(3, "Quantum Band 3 (B)");
                QuantumBand(4, "Quantum Band 4 (A)");

            }
            else
            {
                target.SetFloat(toggle, 0);
            }
        }


        void QuantumBand(int band, string title)
        {
            bool element;
            string toggle = "_ShowQuantumBand" + band;

            if (target.GetFloat(toggle) == 1)
            {
                element = true;
            }
            else
            {
                element = false;
            }

            element = EditorGUILayout.Foldout(element, title, true, EditorStyles.foldoutHeader);
            if (element)
            {
                target.SetFloat(toggle, 1);
                editor.ShaderProperty(getProperty("_QBandEnable" + band), "Enable Band", 2);
                editor.ShaderProperty(getProperty("_QInvertDirection" + band), "Invert Dircection", 2);


                editor.ShaderProperty(getProperty("_QuantumGlowMultiply" + band), "Multiplier", 2);
                editor.ShaderProperty(getProperty("_QGlowColorBand" + band), "Color", 2);
                editor.ShaderProperty(getProperty("_QBlendMode" + band), "Blend Mode", 2);
                editor.ShaderProperty(getProperty("_QBand" + band), "Band", 2);
                editor.ShaderProperty(getProperty("_QType" + band), "Type", 2);

                editor.ShaderProperty(getProperty("_QHistory" + band), "History", 2);
                editor.ShaderProperty(getProperty("_QColorOffset" + band), "Color Offset", 2);

                editor.ShaderProperty(getProperty("_QEffectScale" + band), "Effect Scale", 2);

                editor.ShaderProperty(getProperty("_QUseColorRotation" + band), "Use Color Rotation", 2);
                editor.ShaderProperty(getProperty("_QColorRotationSpeed" + band), "Color Rotation Speed", 2);
                editor.ShaderProperty(getProperty("_QColorRotationMode" + band), "Color Rotation Mode", 2);

            }
            else
            {
                target.SetFloat(toggle, 0);
            }
        }

        void Rendering()
        {
            bool showRendering;
            string toggle = "_ShowRendering";

            if (target.GetFloat(toggle) == 1)
            {
                showRendering = true;
            }
            else
            {
                showRendering = false;
            }

            showRendering = EditorGUILayout.Foldout(showRendering, "Rendering", true, EditorStyles.foldoutHeader);
            if (showRendering)
            {
                target.SetFloat(toggle, 1);

                EditorGUI.indentLevel += 2;
                editor.ShaderProperty(getProperty("_Culling"), "Culling", 0);
                editor.RenderQueueField();
                editor.EnableInstancingField();
                editor.DoubleSidedGIField();
                editor.LightmapEmissionProperty();
                EditorGUI.indentLevel -= 2;
            }
            else
            {
                target.SetFloat(toggle, 0);
            }
        }
    }

}

#endif