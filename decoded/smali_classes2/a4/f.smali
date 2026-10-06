.class public final La4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/f$a;,
        La4/f$b;,
        La4/f$c;
    }
.end annotation


# static fields
.field public static final b:La4/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile a:La4/f$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La4/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La4/f$a;-><init>(Lbk/g;)V

    sput-object v0, La4/f;->b:La4/f$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, La4/f;-><init>()V

    return-void
.end method

.method public static final b()La4/f;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, La4/f;->b:La4/f$a;

    invoke-virtual {v0}, La4/f$a;->a()La4/f;

    move-result-object v0

    return-object v0
.end method

.method private final d()Z
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "com.xiaomi.mihomemanager"

    invoke-static {v0, v1}, Lw2/t;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final e()Z
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_security_by_mishow"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method


# virtual methods
.method public final a(Landroid/os/Handler;)V
    .locals 3
    .param p1    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mHandler"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La4/f;->a:La4/f$b;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-direct {p0}, La4/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, La4/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MiShowDeviceUtils"

    const-string v1, "this is mi show device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La4/f;->a:La4/f$b;

    if-nez v0, :cond_1

    sget-object v0, La4/f$b;->a:La4/f$b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, La4/f;->a:La4/f$b;

    :cond_1
    return-void
.end method
