.class final Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    c = "com.miui.antivirus.activity.MonitoredAppSettingsActivity$PreferenceFragment$onViewCreated$1"
    f = "MonitoredAppSettingsActivity.kt"
    i = {}
    l = {
        0x3f,
        0x41
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;",
            "Ltj/d<",
            "-",
            "Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;->b:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 1
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

    new-instance p1, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;->b:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    invoke-direct {p1, v0, p2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;-><init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;->b:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->e0(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;)Lp2/b;

    move-result-object p1

    iput v3, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;->a:I

    invoke-virtual {p1, p0}, Lp2/b;->d(Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;->b:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    invoke-static {v1, p1}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->b0(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;->b:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object p1

    const-string v1, "viewLifecycleOwner"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroidx/lifecycle/l$b;->d:Landroidx/lifecycle/l$b;

    new-instance v3, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;

    iget-object v4, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;->b:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;-><init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;Ltj/d;)V

    iput v2, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;->a:I

    invoke-static {p1, v1, v3, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->b(Landroidx/lifecycle/v;Landroidx/lifecycle/l$b;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
