.class public final Landroidx/lifecycle/u0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/u0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/u0$a$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/u0$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/y0;)Landroidx/lifecycle/u0$b;
    .locals 1
    .param p1    # Landroidx/lifecycle/y0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/lifecycle/k;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/lifecycle/k;

    invoke-interface {p1}, Landroidx/lifecycle/k;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/u0$b;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/u0$c;->a:Landroidx/lifecycle/u0$c$a;

    invoke-virtual {p1}, Landroidx/lifecycle/u0$c$a;->a()Landroidx/lifecycle/u0$c;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final b(Landroid/app/Application;)Landroidx/lifecycle/u0$a;
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "application"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/lifecycle/u0$a;->c()Landroidx/lifecycle/u0$a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/u0$a;

    invoke-direct {v0, p1}, Landroidx/lifecycle/u0$a;-><init>(Landroid/app/Application;)V

    invoke-static {v0}, Landroidx/lifecycle/u0$a;->d(Landroidx/lifecycle/u0$a;)V

    :cond_0
    invoke-static {}, Landroidx/lifecycle/u0$a;->c()Landroidx/lifecycle/u0$a;

    move-result-object p1

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    return-object p1
.end method
