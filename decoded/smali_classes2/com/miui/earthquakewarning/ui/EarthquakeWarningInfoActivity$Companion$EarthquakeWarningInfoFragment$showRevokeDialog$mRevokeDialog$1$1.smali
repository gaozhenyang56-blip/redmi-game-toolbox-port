.class final Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->showRevokeDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.miui.earthquakewarning.ui.EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1"
    f = "EarthquakeWarningInfoFragment.kt"
    i = {}
    l = {
        0xa0
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $policyName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ltj/d<",
            "-",
            "Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->$policyName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->$context:Landroidx/fragment/app/FragmentActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->invokeSuspend$lambda$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 3
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

    new-instance p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->$policyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->$context:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->$policyName:Ljava/lang/String;

    iput v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->access$revoke(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Ljava/lang/String;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->$policyName:Ljava/lang/String;

    const-string v0, "earthquake"

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->$context:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v1}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->clearEarthquakeWarningData(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->$context:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v1}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->closeEarthquakeWarning(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->access$getRevokeEq$p(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    :goto_2
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->$policyName:Ljava/lang/String;

    const-string v1, "earthquake_monitor"

    invoke-static {v1, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->$context:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_exit_volunteer"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "Intent(context, Earthqua\u2026ce.ACTION_EXIT_VOLUNTEER)"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->$context:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->openEarthquakeMonitor(Z)V

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->clearEarthquakeMonitorData()V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->access$getRevokeEqm$p(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :cond_6
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;->$context:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1214ba

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1214b9

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120ea4

    new-instance v1, Lcom/miui/earthquakewarning/ui/z;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/ui/z;-><init>()V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    :cond_7
    :goto_3
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
