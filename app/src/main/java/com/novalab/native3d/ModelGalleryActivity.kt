package com.novalab.native3d

import android.app.Activity
import android.graphics.Color
import android.graphics.Typeface
import android.graphics.drawable.GradientDrawable
import android.os.Bundle
import android.view.Choreographer
import android.view.Gravity
import android.view.SurfaceView
import android.widget.HorizontalScrollView
import android.widget.LinearLayout
import android.widget.TextView
import com.google.android.filament.utils.ModelViewer
import java.nio.ByteBuffer

/** Native GLB browser. One CC0 kit keeps the visual style and PBR materials consistent. */
class ModelGalleryActivity : Activity(), Choreographer.FrameCallback {
    private data class Model(val name: String, val file: String, val group: String, val note: String)

    private val allModels = listOf(
        Model("烧杯", "beaker.glb", "化学器材", "透明玻璃、刻度与液体材质"),
        Model("锥形瓶", "erlenmeyer-flask.glb", "化学器材", "锥形瓶身、瓶颈与刻度"),
        Model("量筒", "graduated-cylinder.glb", "化学器材", "带刻度的透明量筒"),
        Model("漏斗", "lab-funnel.glb", "化学器材", "玻璃漏斗与滤纸"),
        Model("圆底烧瓶", "round-bottom-flask.glb", "化学器材", "球形玻璃器皿"),
        Model("滴管组", "pipette.glb", "化学器材", "多支移液管与收纳架"),
        Model("培养皿", "petri-dish.glb", "化学器材", "培养皿与透明盖"),
        Model("铁架台", "retort-stand.glb", "化学器材", "底座、立杆和夹具"),
        Model("实验台", "lab-bench.glb", "实验环境", "完整实验台与收纳架"),
        Model("单摆", "pendulum.glb", "物理器材", "摆球、摆线与量角刻度"),
        Model("护目镜", "safety-goggles.glb", "实验辅助", "透明镜片与柔性镜框"),
        Model("光学棱镜", "glass-prism.glb", "物理器材", "透明棱镜与折射演示模型")
    )

    private var models: List<Model> = emptyList()
    private var viewer: ModelViewer? = null
    private lateinit var surface: SurfaceView
    private lateinit var nameLabel: TextView
    private lateinit var detailLabel: TextView
    private lateinit var picker: LinearLayout
    private val modelButtons = mutableListOf<TextView>()
    private var selected = 0
    private var frameActive = false

    private val bg = Color.rgb(8, 15, 32)
    private val card = Color.rgb(18, 31, 52)
    private val card2 = Color.rgb(27, 42, 67)
    private val edge = Color.rgb(48, 65, 94)
    private val white = Color.rgb(237, 245, 255)
    private val muted = Color.rgb(159, 179, 204)
    private val mint = Color.rgb(105, 230, 199)

    private fun dp(value: Int): Int =
        (resources.displayMetrics.density * value + 0.5f).toInt()

    private fun rounded(fill: Int, stroke: Int = 0): GradientDrawable =
        GradientDrawable().apply {
            setColor(fill)
            cornerRadius = dp(12).toFloat()
            if (stroke != 0) setStroke(dp(1), stroke)
        }

    private fun label(text: String, size: Float, color: Int, bold: Boolean = false): TextView =
        TextView(this).apply {
            this.text = text
            textSize = size
            setTextColor(color)
            gravity = Gravity.CENTER_VERTICAL
            if (bold) setTypeface(typeface, Typeface.BOLD)
        }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        window.statusBarColor = bg
        window.navigationBarColor = bg

        val available = assets.list("models")?.toSet() ?: emptySet()
        models = allModels.filter { it.file in available }

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(bg)
            setPadding(dp(12), dp(8), dp(12), dp(10))
        }

        val header = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
        }
        val back = label("‹", 32f, white, true).apply {
            gravity = Gravity.CENTER
            background = rounded(card, edge)
            setOnClickListener { finish() }
        }
        header.addView(back, LinearLayout.LayoutParams(dp(42), dp(42)))
        val heading = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(10), 0, 0, 0)
        }
        heading.addView(label("高精度三维模型库", 18f, white, true))
        heading.addView(label("NOVA LAB  /  GLB · PBR · FILAMENT", 10f, mint, true))
        header.addView(heading, LinearLayout.LayoutParams(0, -2, 1f))
        root.addView(header, LinearLayout.LayoutParams(-1, dp(48)))

        val surfaceFrame = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            background = rounded(0xFF111E32.toInt(), edge)
            setPadding(dp(5), dp(5), dp(5), dp(5))
        }
        surface = SurfaceView(this).apply {
            setBackgroundColor(0xFF101A2B.toInt())
            setZOrderOnTop(false)
        }
        surfaceFrame.addView(surface, LinearLayout.LayoutParams(-1, -1))
        val surfaceParams = LinearLayout.LayoutParams(-1, 0, 1f)
        surfaceParams.topMargin = dp(9)
        surfaceParams.bottomMargin = dp(8)
        root.addView(surfaceFrame, surfaceParams)

        nameLabel = label("正在准备模型…", 16f, white, true)
        root.addView(nameLabel, LinearLayout.LayoutParams(-1, dp(28)))
        detailLabel = label("单指旋转 · 双指平移 · 捏合缩放", 11f, muted)
        root.addView(detailLabel, LinearLayout.LayoutParams(-1, dp(24)))

        val scroll = HorizontalScrollView(this).apply {
            isHorizontalScrollBarEnabled = false
            clipToPadding = false
        }
        picker = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
        }
        scroll.addView(picker)
        val pickerParams = LinearLayout.LayoutParams(-1, dp(48))
        pickerParams.topMargin = dp(5)
        root.addView(scroll, pickerParams)

        if (models.isEmpty()) {
            nameLabel.text = "模型资源尚未打包"
            detailLabel.text = "请检查模型下载步骤后重新构建"
        } else {
            models.forEachIndexed { index, model ->
                val button = label(model.name, 12f, white, true).apply {
                    gravity = Gravity.CENTER
                    setPadding(dp(13), 0, dp(13), 0)
                    background = rounded(card2, edge)
                    setOnClickListener { loadModel(index) }
                }
                val params = LinearLayout.LayoutParams(-2, dp(36))
                params.marginEnd = dp(6)
                picker.addView(button, params)
                modelButtons.add(button)
            }
        }

        val footer = label("同一套 Cozy Science Lab Kit · 原始 PBR 材质 · CC0 模型资源", 10f, muted)
        footer.gravity = Gravity.CENTER
        root.addView(footer, LinearLayout.LayoutParams(-1, dp(22)))
        setContentView(root)

        surface.setOnTouchListener { _, event ->
            viewer?.onTouchEvent(event)
            true
        }

        surface.post {
            if (isFinishing || models.isEmpty()) return@post
            try {
                viewer = ModelViewer(surface)
                loadModel(0)
            } catch (error: Exception) {
                nameLabel.text = "三维引擎初始化失败"
                detailLabel.text = error.message ?: "请检查设备图形驱动"
            }
        }
    }

    private fun loadModel(index: Int) {
        if (index !in models.indices) return
        val model = models[index]
        try {
            val bytes = assets.open("models/" + model.file).use { it.readBytes() }
            val current = viewer ?: return
            current.destroyModel()
            current.loadModelGlb(ByteBuffer.wrap(bytes))
            current.resetToDefaultState()
            selected = index
            nameLabel.text = model.name
            detailLabel.text = model.group + " · " + model.note + " · 单指旋转 / 双指平移 / 捏合缩放"
            updateButtons()
        } catch (error: Exception) {
            nameLabel.text = "模型加载失败：" + model.name
            detailLabel.text = error.message ?: "请重试其他模型"
        }
    }

    private fun updateButtons() {
        modelButtons.forEachIndexed { index, button ->
            val active = index == selected
            button.setTextColor(if (active) bg else white)
            button.background = rounded(if (active) mint else card2, if (active) 0 else edge)
        }
    }

    override fun onResume() {
        super.onResume()
        frameActive = true
        Choreographer.getInstance().postFrameCallback(this)
    }

    override fun onPause() {
        frameActive = false
        Choreographer.getInstance().removeFrameCallback(this)
        super.onPause()
    }

    override fun doFrame(frameTimeNanos: Long) {
        if (!frameActive) return
        viewer?.render(frameTimeNanos)
        Choreographer.getInstance().postFrameCallback(this)
    }
}
