.class public Lcom/miui/permcenter/root/RootApplyActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/CharSequence;

.field private f:I

.field private g:I

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->f:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->g:I

    new-instance v0, Lcom/miui/permcenter/root/RootApplyActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/root/RootApplyActivity$a;-><init>(Lcom/miui/permcenter/root/RootApplyActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->h:Landroid/os/Handler;

    return-void
.end method

.method private d0()V
    .locals 7

    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/permcenter/root/RootApplyActivity;->d:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-wide/16 v5, 0x200

    const/4 v3, 0x3

    invoke-virtual {v0, v5, v6, v3, v2}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JI[Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->e:Ljava/lang/CharSequence;

    aput-object v1, v0, v4

    const v1, 0x7f121a81

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/permcenter/root/RootApplyActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->g:I

    return p0
.end method

.method static synthetic f0(Lcom/miui/permcenter/root/RootApplyActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->g:I

    return v0
.end method

.method static synthetic g0(Lcom/miui/permcenter/root/RootApplyActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->f:I

    return p0
.end method

.method static synthetic h0(Lcom/miui/permcenter/root/RootApplyActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->c:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/permcenter/root/RootApplyActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->h:Landroid/os/Handler;

    return-object p0
.end method

.method private j0(ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p1, 0x7f1215ba

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const p1, 0x7f1215b9

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const p1, 0x7f1215b8

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const p1, 0x7f1215b7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const p1, 0x7f1215b6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private k0()V
    .locals 7

    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/permcenter/root/RootApplyActivity;->d:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-wide/16 v5, 0x200

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JI[Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->e:Ljava/lang/CharSequence;

    aput-object v1, v0, v4

    const v1, 0x7f121a82

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

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

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b001d

    const/16 v1, 0x64

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0971

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->h:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/root/RootApplyActivity;->k0()V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/permcenter/root/RootApplyActivity;->finish()V

    goto :goto_2

    :cond_1
    iget p1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->f:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->h:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/root/RootApplyActivity;->d0()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->f:I

    iput v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->g:I

    iget-object v3, p0, Lcom/miui/permcenter/root/RootApplyActivity;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/permcenter/root/RootApplyActivity;->e:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v4}, Lcom/miui/permcenter/root/RootApplyActivity;->j0(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->f:I

    const/4 v3, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->c:Landroid/widget/Button;

    const v0, 0x7f12046c

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/permcenter/root/RootApplyActivity;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->c:Landroid/widget/Button;

    const v0, 0x7f120479

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/permcenter/root/RootApplyActivity;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->c:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->h:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->h:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const v0, 0x7f0e0428

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-static {p0}, Lx4/y1;->h(Landroid/app/Activity;)V

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_pkgname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/permcenter/root/RootApplyActivity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->e:Ljava/lang/CharSequence;

    const v0, 0x7f0b0db5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0b0971

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->f:I

    iget-object v2, p0, Lcom/miui/permcenter/root/RootApplyActivity;->e:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/miui/permcenter/root/RootApplyActivity;->j0(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->c:Landroid/widget/Button;

    const v1, 0x7f120479

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/miui/permcenter/root/RootApplyActivity;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->h:Landroid/os/Handler;

    const/16 v0, 0x64

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    return-void
.end method
