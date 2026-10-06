.class final Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.miui.antivirus.activity.MonitoredAppSettingsActivity$PreferenceFragment$onViewCreated$1$1"
    f = "MonitoredAppSettingsActivity.kt"
    i = {}
    l = {
        0x42
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
            "Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;->b:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

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

    new-instance p1, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;->b:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    invoke-direct {p1, v0, p2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;-><init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;->b:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->e0(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;)Lp2/b;

    move-result-object p1

    invoke-virtual {p1}, Lp2/b;->c()Lkotlinx/coroutines/flow/a0;

    move-result-object p1

    new-instance v1, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a$a;

    iget-object v3, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;->b:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    invoke-direct {v1, v3}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a$a;-><init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;)V

    iput v2, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;->a:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/w;->collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    new-instance p1, Loj/e;

    invoke-direct {p1}, Loj/e;-><init>()V

    throw p1
.end method
