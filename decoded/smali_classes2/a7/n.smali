.class public final La7/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La7/n$a;,
        La7/n$b;
    }
.end annotation


# static fields
.field public static final e:La7/n$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/miui/gamebooster/service/w;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La7/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La7/n$a;-><init>(Lbk/g;)V

    sput-object v0, La7/n;->e:La7/n$a;

    const-string v0, "com.tencent.tmgp.sgame"

    const-string v1, "com.tencent.tmgp.sgamece"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, La7/n;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gamebooster/service/w;)V
    .locals 1
    .param p1    # Lcom/miui/gamebooster/service/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La7/n;->a:Lcom/miui/gamebooster/service/w;

    new-instance p1, La7/n$d;

    invoke-direct {p1, p0}, La7/n$d;-><init>(La7/n;)V

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, La7/n;->b:Loj/f;

    new-instance p1, La7/n$c;

    invoke-direct {p1, p0}, La7/n$c;-><init>(La7/n;)V

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, La7/n;->c:Loj/f;

    new-instance p1, La7/n$e;

    invoke-direct {p1, p0}, La7/n$e;-><init>(La7/n;)V

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, La7/n;->d:Loj/f;

    return-void
.end method

.method public static final synthetic a(La7/n;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, La7/n;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(La7/n;)Lcom/miui/gamebooster/service/w;
    .locals 0

    iget-object p0, p0, La7/n;->a:Lcom/miui/gamebooster/service/w;

    return-object p0
.end method

.method public static final synthetic c()[Ljava/lang/String;
    .locals 1

    sget-object v0, La7/n;->f:[Ljava/lang/String;

    return-object v0
.end method

.method private final d()La7/n$b;
    .locals 1

    iget-object v0, p0, La7/n;->c:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La7/n$b;

    return-object v0
.end method

.method private final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La7/n;->b:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final f()Lcom/xiaomi/joyose/IJoyoseInterface;
    .locals 5

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getService"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "xiaomi.joyose"

    aput-object v2, v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.IBinder"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IJoyoseInterface;

    move-result-object v0

    return-object v0
.end method

.method private final h()Z
    .locals 1

    iget-object v0, p0, La7/n;->d:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TencentP2PUpgradeHelper"

    if-eqz p2, :cond_0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic j(La7/n;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, La7/n;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final k()V
    .locals 4

    const-string v0, "registerJoyoseCallback"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, La7/n;->j(La7/n;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, La7/n;->a:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->K()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v0, "the game is cold start, turn wifi optimization off"

    invoke-static {p0, v0, v1, v2, v1}, La7/n;->j(La7/n;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, La7/n;->e:La7/n$a;

    invoke-direct {p0}, La7/n;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, La7/n$a;->b(La7/n$a;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, La7/n;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cached in battle is true, start wifi optimization"

    invoke-static {p0, v0, v1, v2, v1}, La7/n;->j(La7/n;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, La7/n;->e:La7/n$a;

    invoke-direct {p0}, La7/n;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, La7/n$a;->b(La7/n$a;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    invoke-direct {p0}, La7/n;->f()Lcom/xiaomi/joyose/IJoyoseInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    const-string v2, "com.miui.securitycenter"

    invoke-direct {p0}, La7/n;->d()La7/n$b;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaomi/joyose/IJoyoseInterface;->registerCallbackInner(ILjava/lang/String;Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "registerJoyoseCallback failed"

    invoke-direct {p0, v1, v0}, La7/n;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 4

    invoke-direct {p0}, La7/n;->h()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptWifiOptimize isSupportP2PUpgrade = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, La7/n;->j(La7/n;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, La7/n;->k()V

    :cond_0
    return v0
.end method

.method public final l()V
    .locals 3

    const-string v0, "release"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, La7/n;->j(La7/n;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, La7/n;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, La7/n;->f()Lcom/xiaomi/joyose/IJoyoseInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.miui.securitycenter"

    invoke-direct {p0}, La7/n;->d()La7/n$b;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/joyose/IJoyoseInterface;->unRegisterCallbackInner(Ljava/lang/String;Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "unRegisterCallbackInner failed"

    invoke-direct {p0, v1, v0}, La7/n;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
