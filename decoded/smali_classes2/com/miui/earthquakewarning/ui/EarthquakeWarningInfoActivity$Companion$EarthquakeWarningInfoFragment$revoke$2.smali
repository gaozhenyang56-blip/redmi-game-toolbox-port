.class final Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->revoke(Ljava/lang/String;Ltj/d;)Ljava/lang/Object;
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
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.earthquakewarning.ui.EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2"
    f = "EarthquakeWarningInfoFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $policyName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Ljava/lang/String;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;",
            "Ljava/lang/String;",
            "Ltj/d<",
            "-",
            "Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;->$policyName:Ljava/lang/String;

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

    new-instance p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;->$policyName:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Ljava/lang/String;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->closeEarthquakeWarning()V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/Utils;->setEarthquakeWarningOpen(Z)V

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/Utils;->setLowEarthquakeWarningOpen(Z)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/Utils;->setContactName(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/Utils;->setContact(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->deleteAllInfo()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;->$policyName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lue/e;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
