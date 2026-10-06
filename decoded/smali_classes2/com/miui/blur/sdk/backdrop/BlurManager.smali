.class public Lcom/miui/blur/sdk/backdrop/BlurManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;
    }
.end annotation


# static fields
.field static final a:Z

.field static final b:Z

.field private static final c:Landroid/os/HandlerThread;

.field private static final d:Landroid/os/Handler;

.field private static e:Landroid/renderscript/RenderScript;

.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/ViewRootImpl;",
            "Lcom/miui/blur/sdk/backdrop/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/miui/blur/sdk/backdrop/BlurManager;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ro.miui.backdrop_sampling_enabled"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ro.miui.ui.version.code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sput-boolean v3, Lcom/miui/blur/sdk/backdrop/BlurManager;->a:Z

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->b:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "rs_blur"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->d:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->f:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public static b(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 2

    invoke-interface {p1}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    sget-object v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/blur/sdk/backdrop/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/miui/blur/sdk/backdrop/p;->f(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->a:Z

    return v0
.end method

.method private static d()Z
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.view.MiuiCompositionSamplingListener"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static e(Landroid/content/Context;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 5

    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->e:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->e:Landroid/renderscript/RenderScript;

    :cond_0
    invoke-interface {p1}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/miui/blur/sdk/backdrop/BlurManager;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v1, Lcom/miui/blur/sdk/backdrop/p;

    sget-object v3, Lcom/miui/blur/sdk/backdrop/BlurManager;->e:Landroid/renderscript/RenderScript;

    sget-object v4, Lcom/miui/blur/sdk/backdrop/BlurManager;->d:Landroid/os/Handler;

    invoke-direct {v1, p0, v0, v3, v4}, Lcom/miui/blur/sdk/backdrop/p;-><init>(Landroid/content/Context;Landroid/view/ViewRootImpl;Landroid/renderscript/RenderScript;Landroid/os/Handler;)V

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_1
    sget-object p0, Lcom/miui/blur/sdk/backdrop/BlurManager;->f:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/blur/sdk/backdrop/p;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/miui/blur/sdk/backdrop/p;->r(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/p;->t()V

    :cond_3
    return-void
.end method

.method public static f(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 3

    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    sget-object v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/blur/sdk/backdrop/p;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Lcom/miui/blur/sdk/backdrop/p;->u(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    invoke-virtual {v2}, Lcom/miui/blur/sdk/backdrop/p;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/miui/blur/sdk/backdrop/p;->e()V

    :cond_0
    return-void
.end method
