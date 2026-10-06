.class public final Ld6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld6/d$b;
    }
.end annotation


# static fields
.field public static final l:Ld6/d$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final o:Lcom/miui/securitycenter/Application;

.field private static final p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final t:Loj/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Loj/f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Z

.field private i:Lak/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/a<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final j:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Landroid/database/ContentObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld6/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld6/d$b;-><init>(Lbk/g;)V

    sput-object v0, Ld6/d;->l:Ld6/d$b;

    const-string v0, "VTCameraUtils"

    sput-object v0, Ld6/d;->m:Ljava/lang/String;

    const-string v0, "VTCAMERA_CAMERA_STATUS"

    sput-object v0, Ld6/d;->n:Ljava/lang/String;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sput-object v0, Ld6/d;->o:Lcom/miui/securitycenter/Application;

    const-string v0, "content://com.milink.service.dist.camerainfoprovider"

    sput-object v0, Ld6/d;->p:Ljava/lang/String;

    const-string v0, "method_is_device_allowed"

    sput-object v0, Ld6/d;->q:Ljava/lang/String;

    const-string v0, "key_is_device_allowed"

    sput-object v0, Ld6/d;->r:Ljava/lang/String;

    const-string v0, "is_vt_camera_support_state"

    sput-object v0, Ld6/d;->s:Ljava/lang/String;

    sget-object v0, Ld6/d$a;->a:Ld6/d$a;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Ld6/d;->t:Loj/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "_applicationCtx"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_mainHandler"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld6/d;->a:Landroid/content/Context;

    iput-object p2, p0, Ld6/d;->b:Landroid/os/Handler;

    const/4 p1, 0x1

    iput p1, p0, Ld6/d;->c:I

    const/4 v0, 0x3

    iput v0, p0, Ld6/d;->e:I

    const/4 v1, 0x4

    iput v1, p0, Ld6/d;->f:I

    const/4 v2, -0x1

    iput v2, p0, Ld6/d;->g:I

    new-array v2, v0, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput v0, v2, p1

    const/4 p1, 0x2

    aput v1, v2, p1

    iput-object v2, p0, Ld6/d;->j:[I

    new-instance p1, Ld6/d$c;

    invoke-direct {p1, p0, p2}, Ld6/d$c;-><init>(Ld6/d;Landroid/os/Handler;)V

    iput-object p1, p0, Ld6/d;->k:Landroid/database/ContentObserver;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Ld6/d;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Ld6/d;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Ld6/d;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Ld6/d;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Ld6/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic f(Ld6/d;)I
    .locals 0

    invoke-direct {p0}, Ld6/d;->k()I

    move-result p0

    return p0
.end method

.method public static final synthetic g()Lcom/miui/securitycenter/Application;
    .locals 1

    sget-object v0, Ld6/d;->o:Lcom/miui/securitycenter/Application;

    return-object v0
.end method

.method public static final synthetic h(Ld6/d;)Lak/a;
    .locals 0

    iget-object p0, p0, Ld6/d;->i:Lak/a;

    return-object p0
.end method

.method public static final synthetic i()Loj/f;
    .locals 1

    sget-object v0, Ld6/d;->t:Loj/f;

    return-object v0
.end method

.method private final k()I
    .locals 3

    iget-object v0, p0, Ld6/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ld6/d;->n:Ljava/lang/String;

    iget v2, p0, Ld6/d;->g:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final j()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Ld6/d;->k()I

    move-result v0

    iget v1, p0, Ld6/d;->g:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ld6/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1205e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Ld6/d;->d:I

    const v2, 0x7f1205e4

    iget-object v0, p0, Ld6/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "when (getVTCameraState()\u2026camera_toast_case1)\n    }"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final l()Z
    .locals 2

    invoke-direct {p0}, Ld6/d;->k()I

    move-result v0

    iget v1, p0, Ld6/d;->e:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Ld6/d;->j:[I

    invoke-direct {p0}, Ld6/d;->k()I

    move-result v1

    invoke-static {v0, v1}, Lqj/f;->k([II)Z

    move-result v0

    return v0
.end method

.method public final n(Lak/a;)V
    .locals 3
    .param p1    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/a<",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ld6/d;->i:Lak/a;

    iget-boolean p1, p0, Ld6/d;->h:Z

    if-eqz p1, :cond_0

    sget-object p1, Ld6/d;->m:Ljava/lang/String;

    const-string v0, "already register !"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object p1, Ld6/d;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Ld6/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Ld6/d;->k:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld6/d;->h:Z

    sget-object p1, Ld6/d;->m:Ljava/lang/String;

    const-string v0, "register observer"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Ld6/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerObserver fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final o()V
    .locals 0

    invoke-virtual {p0}, Ld6/d;->q()V

    return-void
.end method

.method public final p()V
    .locals 4

    :try_start_0
    sget-object v0, Ld6/d;->m:Ljava/lang/String;

    const-string v1, "startEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.vtcamera.action.OPEN_CAMERA_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.milink.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Ld6/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ld6/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startEffect fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final q()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Ld6/d;->i:Lak/a;

    iget-boolean v0, p0, Ld6/d;->h:Z

    if-nez v0, :cond_0

    sget-object v0, Ld6/d;->m:Ljava/lang/String;

    const-string v1, "never register !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Ld6/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ld6/d;->k:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld6/d;->h:Z

    sget-object v0, Ld6/d;->m:Ljava/lang/String;

    const-string v1, "unRegisterObserver observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ld6/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterObserver fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
