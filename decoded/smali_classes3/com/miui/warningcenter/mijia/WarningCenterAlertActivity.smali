.class public final Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWarningCenterAlertActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WarningCenterAlertActivity.kt\ncom/miui/warningcenter/mijia/WarningCenterAlertActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,177:1\n41#2,7:178\n*S KotlinDebug\n*F\n+ 1 WarningCenterAlertActivity.kt\ncom/miui/warningcenter/mijia/WarningCenterAlertActivity\n*L\n42#1:178,7\n*E\n"
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE_WINDOW:Ljava/lang/String; = "com.miui.securitycenter.warningcenter_mijia_close_window"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DATASOURCE:Ljava/lang/String; = "WarningCenterAlertActivity.datasource"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MijiaAlertActivity"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final helper:Lcom/miui/warningcenter/AlertWindowHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mTinyScreen:Z

.field private final receiver:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$receiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$Companion;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->Companion:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/warningcenter/AlertWindowHelper;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/AlertWindowHelper;-><init>(Landroidx/activity/ComponentActivity;)V

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->helper:Lcom/miui/warningcenter/AlertWindowHelper;

    new-instance v0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/t0;

    const-class v2, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    invoke-static {v2}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v2

    new-instance v3, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0}, Landroidx/lifecycle/t0;-><init>(Lhk/b;Lak/a;Lak/a;)V

    iput-object v1, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->viewModel$delegate:Loj/f;

    new-instance v0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$receiver$1;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$receiver$1;-><init>(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;)V

    iput-object v0, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->receiver:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$receiver$1;

    return-void
.end method

.method public static final synthetic access$closeWindow(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->closeWindow()V

    return-void
.end method

.method public static final synthetic access$getMTinyScreen$p(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->mTinyScreen:Z

    return p0
.end method

.method public static final synthetic access$getViewModel(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;)Lcom/miui/warningcenter/mijia/AlertWindowViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->getViewModel()Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final closeWindow()V
    .locals 1

    const-string v0, "mijia_alert_close"

    invoke-static {v0}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackMijiaModuleClick(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->onCreate$lambda$1(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;IILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->onCreate$lambda$3(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;IILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->onCreate$lambda$2(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;Landroid/view/View;)V

    return-void
.end method

.method private final getViewModel()Lcom/miui/warningcenter/mijia/AlertWindowViewModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->viewModel$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    return-object v0
.end method

.method private final notifyClose()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->getViewModel()Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->notifyServer()V

    return-void
.end method

.method private static final onCreate$lambda$1(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->closeWindow()V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->getViewModel()Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->getLatest()Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const-string p1, "mijia_alert_jump_mijia"

    invoke-static {p1}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackMijiaModuleClick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct {p0}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->closeWindow()V

    invoke-static {}, Lef/x;->z()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->notifyClose()V

    goto :goto_1

    :cond_1
    const-string p0, "MijiaAlertActivity"

    const-string p1, "Network is forbidden"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private static final onCreate$lambda$3(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;IILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowInsets"

    invoke-static {p4, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    invoke-static {p4, v0}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p4

    const-string v0, "windowInsets.getInsets(W\u2026ets.Type.displayCutout())"

    invoke-static {p4, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, v0}, Ldb/e;->c(Landroid/content/Context;I)I

    move-result p0

    iget v0, p4, Landroid/graphics/Insets;->left:I

    add-int/2addr v0, p1

    iget p1, p4, Landroid/graphics/Insets;->right:I

    add-int/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p3, v0, p0, p1, p2}, Landroid/view/View;->setPadding(IIII)V

    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method

.method private final updateDatasource(Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v3, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$updateDatasource$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$updateDatasource$1;-><init>(Ljava/lang/String;Ltj/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

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

.method public bridge synthetic getRatioUiBaseWidthDp()I
    .locals 1

    invoke-static {p0}, Lmiuix/autodensity/i;->a(Lmiuix/autodensity/j;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onActivityCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/common/base/b;->a(Lcom/miui/common/base/c;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onActivityDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->b(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityPause()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->c(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityResume()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->d(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStart()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->e(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStop()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->f(Lcom/miui/common/base/c;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->helper:Lcom/miui/warningcenter/AlertWindowHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/AlertWindowHelper;->delegate(Z)V

    invoke-static {p0}, Lx4/g;->g(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->mTinyScreen:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e055a

    goto :goto_0

    :cond_0
    const v0, 0x7f0e0559

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "WarningCenterAlertActivity.datasource"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->updateDatasource(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->getViewModel()Lcom/miui/warningcenter/mijia/AlertWindowViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/warningcenter/mijia/AlertWindowViewModel;->playSound()V

    iget-object p1, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->receiver:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$receiver$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.securitycenter.warningcenter_mijia_close_window"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Loj/t;->a:Loj/t;

    const/4 v2, 0x4

    invoke-static {p0, p1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const p1, 0x7f0b009e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f121bd9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f121c54

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/miui/warningcenter/mijia/AlertWindowAdapter;

    invoke-direct {p1}, Lcom/miui/warningcenter/mijia/AlertWindowAdapter;-><init>()V

    const v0, 0x7f0b06d4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    const v1, 0x7f0b0db4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/miui/warningcenter/mijia/a;

    invoke-direct {v2, p0}, Lcom/miui/warningcenter/mijia/a;-><init>(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->mTinyScreen:Z

    if-nez v1, :cond_4

    const v1, 0x7f0b0a31

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/miui/warningcenter/mijia/b;

    invoke-direct {v2, p0}, Lcom/miui/warningcenter/mijia/b;-><init>(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_4
    const v1, 0x7f0b02aa

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    new-instance v4, Lcom/miui/warningcenter/mijia/c;

    invoke-direct {v4, p0, v2, v3}, Lcom/miui/warningcenter/mijia/c;-><init>(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :goto_3
    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5;

    const/4 v1, 0x0

    invoke-direct {v8, p0, p1, v0, v1}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$onCreate$5;-><init>(Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;Lcom/miui/warningcenter/mijia/AlertWindowAdapter;Landroidx/recyclerview/widget/RecyclerView;Ltj/d;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    const-string p1, "mijia_alert_receive"

    invoke-static {p1}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackMijiaModuleClick(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->receiver:Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity$receiver$1;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "WarningCenterAlertActivity.datasource"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;->updateDatasource(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
