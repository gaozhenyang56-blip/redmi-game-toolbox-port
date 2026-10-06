.class public Lcom/miui/permcenter/install/AdbInputApplyActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:I

.field private e:I

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->d:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->e:I

    new-instance v0, Lcom/miui/permcenter/install/AdbInputApplyActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/install/AdbInputApplyActivity$a;-><init>(Lcom/miui/permcenter/install/AdbInputApplyActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic c0(Lcom/miui/permcenter/install/AdbInputApplyActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->e:I

    return p0
.end method

.method static synthetic d0(Lcom/miui/permcenter/install/AdbInputApplyActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->e:I

    return v0
.end method

.method static synthetic e0(Lcom/miui/permcenter/install/AdbInputApplyActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->d:I

    return p0
.end method

.method static synthetic f0(Lcom/miui/permcenter/install/AdbInputApplyActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->c:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/permcenter/install/AdbInputApplyActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private h0(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p1, 0x7f121b1c

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const p1, 0x7f121b1b

    goto :goto_0

    :cond_2
    const p1, 0x7f121b1a

    goto :goto_0
.end method

.method private i0()V
    .locals 7

    const/high16 v0, -0x80000000

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x300

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setNavigationBarColor"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static j0(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v0, "persist.security.adbinput"

    invoke-static {v0, p0}, Lcom/miui/permcenter/compact/SystemPropertiesCompat;->set(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b001d

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0971

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->f:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {v1}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->j0(Z)V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->finish()V

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->d:I

    const/4 v0, 0x3

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->f:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_input"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    add-int/2addr p1, v3

    iput p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->d:I

    const/4 v4, 0x5

    iput v4, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->e:I

    iget-object v4, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->a:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->h0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->d:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->c:Landroid/widget/Button;

    const v0, 0x7f12046c

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->c:Landroid/widget/Button;

    const v0, 0x7f120479

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->c:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->f:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->f:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lxb/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "houji"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ro.miui.build.region"

    const-string v1, "CN"

    invoke-static {p1, v1}, Lcom/miui/permcenter/compact/SystemPropertiesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "eea"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0e0428

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->i0()V

    const p1, 0x7f0b0db5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->a:Landroid/widget/TextView;

    const p1, 0x7f0b0971

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->b:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b001d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->c:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->d:I

    invoke-direct {p0, v1}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->h0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->c:Landroid/widget/Button;

    const v1, 0x7f120479

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->c:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->f:Landroid/os/Handler;

    const/16 v0, 0x64

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {p0}, Lx4/y1;->h(Landroid/app/Activity;)V

    return-void

    :cond_2
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_input"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->f:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lxb/a;->a(Landroid/view/Window;I)V

    :cond_0
    return-void
.end method
