.class final Lp2/b$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp2/b;->f(Lcom/miui/antivirus/model/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/p<",
        "Llk/i0;",
        "Ltj/d<",
        "-",
        "Loj/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.antivirus.activity.MonitoredAppSettingsFragmentViewModel$updateMonitoredApp$1"
    f = "MonitoredAppSettingsFragmentViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMonitoredAppSettingsFragmentViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MonitoredAppSettingsFragmentViewModel.kt\ncom/miui/antivirus/activity/MonitoredAppSettingsFragmentViewModel$updateMonitoredApp$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n766#2:106\n857#2,2:107\n1549#2:109\n1620#2,3:110\n*S KotlinDebug\n*F\n+ 1 MonitoredAppSettingsFragmentViewModel.kt\ncom/miui/antivirus/activity/MonitoredAppSettingsFragmentViewModel$updateMonitoredApp$1\n*L\n92#1:106\n92#1:107,2\n92#1:109\n92#1:110,3\n*E\n"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lp2/b;

.field final synthetic c:Lcom/miui/antivirus/model/e;


# direct methods
.method constructor <init>(Lp2/b;Lcom/miui/antivirus/model/e;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp2/b;",
            "Lcom/miui/antivirus/model/e;",
            "Ltj/d<",
            "-",
            "Lp2/b$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp2/b$d;->b:Lp2/b;

    iput-object p2, p0, Lp2/b$d;->c:Lcom/miui/antivirus/model/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ltj/d<",
            "*>;)",
            "Ltj/d<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lp2/b$d;

    iget-object v0, p0, Lp2/b$d;->b:Lp2/b;

    iget-object v1, p0, Lp2/b$d;->c:Lcom/miui/antivirus/model/e;

    invoke-direct {p1, v0, v1, p2}, Lp2/b$d;-><init>(Lp2/b;Lcom/miui/antivirus/model/e;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lp2/b$d;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Llk/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/i0;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lp2/b$d;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lp2/b$d;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lp2/b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, p0, Lp2/b$d;->a:I

    if-nez v0, :cond_8

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lp2/b$d;->b:Lp2/b;

    invoke-virtual {p1}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lw2/t;->w(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lp2/b$d;->b:Lp2/b;

    invoke-virtual {v1}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lo2/h;->j(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lp2/b$d;->c:Lcom/miui/antivirus/model/e;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp2/b$d;->c:Lcom/miui/antivirus/model/e;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lp2/b$d;->c:Lcom/miui/antivirus/model/e;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/e;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-static {v0}, Lo2/h;->L(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lp2/b$d;->b:Lp2/b;

    invoke-virtual {v0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lo2/h;->k(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lp2/b$d;->c:Lcom/miui/antivirus/model/e;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/e;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lp2/b$d;->c:Lcom/miui/antivirus/model/e;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lp2/b$d;->c:Lcom/miui/antivirus/model/e;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_2
    iget-object v0, p0, Lp2/b$d;->b:Lp2/b;

    invoke-virtual {v0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object v0

    iget-object v1, p0, Lp2/b$d;->b:Lp2/b;

    invoke-static {v1}, Lp2/b;->b(Lp2/b;)Lkotlinx/coroutines/flow/s;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/s;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miui/antivirus/model/e;

    invoke-virtual {v4}, Lcom/miui/antivirus/model/e;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lqj/l;->o(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/antivirus/model/e;

    invoke-virtual {v3}, Lcom/miui/antivirus/model/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v1}, Lo2/g;->o0(Ljava/util/List;)V

    invoke-static {p1}, Lo2/h;->M(Ljava/util/ArrayList;)V

    invoke-static {}, Lo2/h;->r()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lp2/b$d;->b:Lp2/b;

    invoke-virtual {v0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action_register_foreground_notification"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lp2/b$d;->b:Lp2/b;

    invoke-virtual {v0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_7
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
