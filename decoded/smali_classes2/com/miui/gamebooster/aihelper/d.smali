.class public final Lcom/miui/gamebooster/aihelper/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/aihelper/d$a;,
        Lcom/miui/gamebooster/aihelper/d$b;
    }
.end annotation


# static fields
.field public static final g:Lcom/miui/gamebooster/aihelper/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lkotlinx/coroutines/flow/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/s<",
            "Lcom/miui/gamebooster/aihelper/d$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lcom/miui/gamebooster/aihelper/d$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private final f:Lkotlinx/coroutines/flow/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/a0<",
            "Lcom/miui/gamebooster/aihelper/d$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/aihelper/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/aihelper/d$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/gamebooster/aihelper/d;->g:Lcom/miui/gamebooster/aihelper/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "application"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/d;->a:Landroid/content/Context;

    sget-object p1, Lcom/miui/gamebooster/aihelper/d$b$f;->a:Lcom/miui/gamebooster/aihelper/d$b$f;

    invoke-static {p1}, Lkotlinx/coroutines/flow/c0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/s;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/d;->b:Lkotlinx/coroutines/flow/s;

    new-instance v0, Lcom/miui/gamebooster/aihelper/d$g;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/aihelper/d$g;-><init>(Lcom/miui/gamebooster/aihelper/d;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/aihelper/d;->c:Loj/f;

    new-instance v0, Lcom/miui/gamebooster/aihelper/d$d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/aihelper/d$d;-><init>(Lcom/miui/gamebooster/aihelper/d;)V

    iput-object v0, p0, Lcom/miui/gamebooster/aihelper/d;->d:Lcom/miui/gamebooster/aihelper/d$d;

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/d;->f:Lkotlinx/coroutines/flow/a0;

    return-void
.end method

.method public static final synthetic a(Lcom/miui/gamebooster/aihelper/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/aihelper/d;->g()V

    return-void
.end method

.method public static final synthetic b(Lcom/miui/gamebooster/aihelper/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/aihelper/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c(Lcom/miui/gamebooster/aihelper/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/aihelper/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic d(Lcom/miui/gamebooster/aihelper/d;)Lcom/miui/gamebooster/aihelper/e;
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/aihelper/d;->i()Lcom/miui/gamebooster/aihelper/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/miui/gamebooster/aihelper/d;)Lkotlinx/coroutines/flow/s;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/aihelper/d;->b:Lkotlinx/coroutines/flow/s;

    return-object p0
.end method

.method private final g()V
    .locals 6

    invoke-static {}, Llk/j0;->b()Llk/i0;

    move-result-object v0

    new-instance v3, Lcom/miui/gamebooster/aihelper/d$e;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/miui/gamebooster/aihelper/d$e;-><init>(Lcom/miui/gamebooster/aihelper/d;Ltj/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method private final i()Lcom/miui/gamebooster/aihelper/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/d;->c:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/aihelper/e;

    return-object v0
.end method


# virtual methods
.method public final f(Ljava/lang/String;I)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Llk/j0;->b()Llk/i0;

    move-result-object v1

    new-instance v4, Lcom/miui/gamebooster/aihelper/d$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/miui/gamebooster/aihelper/d$c;-><init>(Lcom/miui/gamebooster/aihelper/d;Ljava/lang/String;ILtj/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public final h()Lkotlinx/coroutines/flow/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/a0<",
            "Lcom/miui/gamebooster/aihelper/d$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/d;->f:Lkotlinx/coroutines/flow/a0;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/d;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/d;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.gamecenter.userinfo.LoginStatusService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/d;->d:Lcom/miui/gamebooster/aihelper/d$d;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Llk/j0;->b()Llk/i0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/miui/gamebooster/aihelper/d$f;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/gamebooster/aihelper/d$f;-><init>(Lcom/miui/gamebooster/aihelper/d;Ltj/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start bind game center service, result is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AIHelperViewModel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/miui/gamebooster/aihelper/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " released"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIHelperViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
