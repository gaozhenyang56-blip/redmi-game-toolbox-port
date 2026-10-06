.class public final Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$onViewCreated$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$onViewCreated$1;->onStart$lambda$1$lambda$0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onStart$lambda$1$lambda$0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->access$getInfoLauncher$p(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)Landroidx/activity/result/b;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreate(Landroidx/lifecycle/v;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->a(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    return-void
.end method

.method public bridge synthetic onDestroy(Landroidx/lifecycle/v;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->b(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/v;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->c(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/v;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->d(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/v;)V
    .locals 3
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$onViewCreated$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    invoke-virtual {p1}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$onViewCreated$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$onViewCreated$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    const v2, 0x7f1207ab

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x7f080555

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Lcom/miui/earthquakewarning/ui/q0;

    invoke-direct {v2, v1}, Lcom/miui/earthquakewarning/ui/q0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onStop(Landroidx/lifecycle/v;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$onViewCreated$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    invoke-virtual {p1}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :goto_0
    return-void
.end method
