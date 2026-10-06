.class public final Lcom/miui/networkassistant/ui/revert/RevertResultActivity;
.super Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity<",
        "Lcom/miui/networkassistant/ui/view/IPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private final btnFinish$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ivImsageResult$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private result:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tvResult$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/revert/RevertResultActivity$btnFinish$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/revert/RevertResultActivity$btnFinish$2;-><init>(Lcom/miui/networkassistant/ui/revert/RevertResultActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->btnFinish$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/revert/RevertResultActivity$ivImsageResult$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/revert/RevertResultActivity$ivImsageResult$2;-><init>(Lcom/miui/networkassistant/ui/revert/RevertResultActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->ivImsageResult$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/revert/RevertResultActivity$tvResult$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/revert/RevertResultActivity$tvResult$2;-><init>(Lcom/miui/networkassistant/ui/revert/RevertResultActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->tvResult$delegate:Loj/f;

    return-void
.end method

.method public static synthetic c0(Lcom/miui/networkassistant/ui/revert/RevertResultActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->onCreate$lambda$0(Lcom/miui/networkassistant/ui/revert/RevertResultActivity;Landroid/view/View;)V

    return-void
.end method

.method private final getBtnFinish()Landroid/widget/Button;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->btnFinish$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-btnFinish>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private final getIvImsageResult()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->ivImsageResult$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivImsageResult>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getTvResult()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->tvResult$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvResult>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private static final onCreate$lambda$0(Lcom/miui/networkassistant/ui/revert/RevertResultActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public final getResult()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->result:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e00c6

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->getBtnFinish()Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/miui/networkassistant/ui/revert/a;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/revert/a;-><init>(Lcom/miui/networkassistant/ui/revert/RevertResultActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(IZ)V

    const-string v0, " "

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->result:Ljava/lang/String;

    const-string v0, "success"

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->getIvImsageResult()Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f081040

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->getTvResult()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120406

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->getIvImsageResult()Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f08047d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->getTvResult()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120407

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/view/BaseActivity;->onDestroy()V

    return-void
.end method

.method public final setResult(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;->result:Ljava/lang/String;

    return-void
.end method
