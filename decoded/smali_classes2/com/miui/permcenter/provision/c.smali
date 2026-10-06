.class public final Lcom/miui/permcenter/provision/c;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# instance fields
.field private final a:Lkotlinx/coroutines/flow/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/r<",
            "Lcom/miui/permcenter/provision/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lkotlinx/coroutines/flow/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/w<",
            "Lcom/miui/permcenter/provision/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3, v2}, Lkotlinx/coroutines/flow/y;->b(IILnk/e;ILjava/lang/Object;)Lkotlinx/coroutines/flow/r;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/provision/c;->a:Lkotlinx/coroutines/flow/r;

    invoke-static {v0}, Lkotlinx/coroutines/flow/g;->a(Lkotlinx/coroutines/flow/r;)Lkotlinx/coroutines/flow/w;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/provision/c;->b:Lkotlinx/coroutines/flow/w;

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v3

    new-instance v6, Lcom/miui/permcenter/provision/c$a;

    invoke-direct {v6, p0, v2}, Lcom/miui/permcenter/provision/c$a;-><init>(Lcom/miui/permcenter/provision/c;Ltj/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public static final synthetic a(Lcom/miui/permcenter/provision/c;)Lkotlinx/coroutines/flow/r;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/provision/c;->a:Lkotlinx/coroutines/flow/r;

    return-object p0
.end method

.method private final d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lxb/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lxc/z;->c(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p2, ""

    invoke-static {p3, p2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/io/File;

    sget-object v0, Lqc/d;->a:Lqc/d;

    invoke-virtual {v0}, Lqc/d;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/miui/permcenter/provision/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const p2, 0x7f1214ad

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lqc/d;->a:Lqc/d;

    invoke-virtual {v1}, Lqc/d;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".html"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.miui.securitycenter.zman.fileProvider"

    invoke-static {p1, p2, v0}, Landroidx/core/content/FileProvider;->h(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.htmlviewer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/html"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ProvisionExtra"

    const-string v0, "startHtmlViewer"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final b(Lcom/miui/permcenter/provision/d;)V
    .locals 6
    .param p1    # Lcom/miui/permcenter/provision/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "action"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/miui/permcenter/provision/d$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/permcenter/provision/d$a;

    invoke-virtual {p1}, Lcom/miui/permcenter/provision/d$a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/permcenter/provision/d$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/permcenter/provision/d$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/permcenter/provision/c;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/permcenter/provision/d$b;->a:Lcom/miui/permcenter/provision/d$b;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/miui/permcenter/provision/c$b;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/miui/permcenter/provision/c$b;-><init>(Lcom/miui/permcenter/provision/c;Ltj/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()Lkotlinx/coroutines/flow/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/w<",
            "Lcom/miui/permcenter/provision/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/provision/c;->b:Lkotlinx/coroutines/flow/w;

    return-object v0
.end method
