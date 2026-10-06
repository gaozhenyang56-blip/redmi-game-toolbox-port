.class Lcom/miui/blur/sdk/backdrop/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/blur/sdk/backdrop/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/graphics/Bitmap;

.field private final d:Landroid/renderscript/Allocation;

.field private final e:Landroid/renderscript/Allocation;

.field private final f:Landroid/renderscript/ScriptIntrinsicBlur;

.field private final g:Landroid/graphics/BitmapShader;


# direct methods
.method constructor <init>(IILandroid/renderscript/RenderScript;Landroid/renderscript/ScriptIntrinsicBlur;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/blur/sdk/backdrop/p$a;->a:I

    iput p2, p0, Lcom/miui/blur/sdk/backdrop/p$a;->b:I

    iput-object p4, p0, Lcom/miui/blur/sdk/backdrop/p$a;->f:Landroid/renderscript/ScriptIntrinsicBlur;

    new-instance p4, Landroid/renderscript/Type$Builder;

    invoke-static {p3}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-direct {p4, p3, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {p4, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object p4

    const/16 v0, 0x23

    invoke-static {p3, p4, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/p$a;->d:Landroid/renderscript/Allocation;

    const/4 v0, 0x1

    invoke-static {p3, p4, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/blur/sdk/backdrop/p$a;->e:Landroid/renderscript/Allocation;

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/p$a;->c:Landroid/graphics/Bitmap;

    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object p3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, p3, p3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/p$a;->g:Landroid/graphics/BitmapShader;

    return-void
.end method

.method static synthetic a(Lcom/miui/blur/sdk/backdrop/p$a;)I
    .locals 0

    iget p0, p0, Lcom/miui/blur/sdk/backdrop/p$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/miui/blur/sdk/backdrop/p$a;)I
    .locals 0

    iget p0, p0, Lcom/miui/blur/sdk/backdrop/p$a;->b:I

    return p0
.end method

.method static synthetic c(Lcom/miui/blur/sdk/backdrop/p$a;)Landroid/graphics/BitmapShader;
    .locals 0

    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/p$a;->g:Landroid/graphics/BitmapShader;

    return-object p0
.end method


# virtual methods
.method d(Landroid/graphics/GraphicBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p$a;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/p$a;->d:Landroid/renderscript/Allocation;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->ioReceive()V

    return-void
.end method

.method e()V
    .locals 2

    const-string v0, "processBlur"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p$a;->f:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/p$a;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p$a;->f:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/p$a;->e:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p$a;->e:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/p$a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p$a;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p$a;->e:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p$a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
