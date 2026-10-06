.class final La4/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final a:La4/f$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La4/f$b;

    invoke-direct {v0}, La4/f$b;-><init>()V

    sput-object v0, La4/f$b;->a:La4/f$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->c()Lcom/gzy/redmiport/compat/process/ForegroundInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const-string v1, "com.xiaomi.mihomemanager"

    invoke-static {v1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MiShowDeviceUtils"

    const-string v1, "mi show app is not in foreground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    new-instance v1, La4/f$b$a;

    invoke-direct {v1}, La4/f$b$a;-><init>()V

    invoke-virtual {v0, v1}, Lu3/c;->e0(Lvf/b;)V

    return-void
.end method
