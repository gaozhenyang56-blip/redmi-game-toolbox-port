.class public Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$d;,
        Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$b;,
        Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$d;

.field e:Z

.field f:Z

.field private g:Lmiuix/slidingwidget/widget/SlidingButton;

.field private h:Lmiuix/slidingwidget/widget/SlidingButton;

.field private i:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->b:Z

    iput-boolean v1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->c:Z

    new-instance v1, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$d;

    invoke-direct {v1, p0}, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$d;-><init>(Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;)V

    iput-object v1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->d:Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$d;

    iput-boolean v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->e:Z

    iput-boolean v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->f:Z

    return-void
.end method

.method public static synthetic c0(Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->f0(Ljava/io/File;)V

    return-void
.end method

.method static synthetic d0(Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->g:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->h:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method private synthetic f0(Ljava/io/File;)V
    .locals 3

    invoke-static {p1}, Lkh/e;->c(Ljava/io/File;)Z

    move-result v0

    invoke-static {p1}, Lkh/e;->b(Ljava/io/File;)Z

    move-result p1

    iget-object v1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->d:Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$d;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->d:Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$d;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private g0(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->b:Z

    const-string v1, "have_location"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->b:Z

    iget-boolean v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->c:Z

    const-string v1, "have_camera"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->c:Z

    iget-boolean v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->a:Z

    const-string v1, "multi_image"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->a:Z

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/io/File;

    const-string v1, "image_path"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljh/a;

    invoke-direct {v1, p0, p1}, Ljh/a;-><init>(Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private h0(Landroid/os/Bundle;)V
    .locals 8

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0046

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$c;

    invoke-direct {v1, p0, v2}, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$c;-><init>(Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$a;)V

    new-instance v3, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$b;

    invoke-direct {v3, p0, v2}, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$b;-><init>(Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$a;)V

    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120f6e

    invoke-virtual {v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1219b3

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->i:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const v1, 0x7f0b05c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/miui/networkassistant/utils/FolmeHelper;->onDefaultViewPress(Landroid/view/View;)V

    iget-boolean v3, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->b:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    const v2, 0x7f0b05aa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-static {v3}, Lcom/miui/networkassistant/utils/FolmeHelper;->onDefaultViewPress(Landroid/view/View;)V

    iget-boolean v4, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->c:Z

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    const v3, 0x7f0b05c4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v3, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->g:Lmiuix/slidingwidget/widget/SlidingButton;

    const v3, 0x7f0b05ab

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v3, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->h:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v3, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->g:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-boolean v4, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->b:Z

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->h:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-boolean v4, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->c:Z

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    const v3, 0x7f0b05c6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v5, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->b:Z

    const v6, 0x7f060dd6

    const v7, 0x7f060dd5

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0b05ad

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v5, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->c:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->g:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lih/a;->c(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {p1, v3}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->h:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lih/a;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {p1, v3}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    goto :goto_2

    :cond_2
    const-string v3, "zman_share_hide_location"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "zman_share_hide_camera"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v4, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->g:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v4, v3}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->h:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v4, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lih/a;->c(Landroid/content/Context;)Z

    move-result v4

    if-eq v4, v3, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lih/a;->h(Landroid/content/Context;I)V

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lih/a;->a(Landroid/content/Context;)Z

    move-result v3

    if-eq v3, p1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lih/a;->f(Landroid/content/Context;I)V

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->g:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->h:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0b05c5

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->b:Z

    if-eqz v3, :cond_5

    const v3, 0x7f1208b9

    goto :goto_3

    :cond_5
    const v3, 0x7f121631

    :goto_3
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0b05ac

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->c:Z

    if-eqz v3, :cond_6

    const v3, 0x7f121630

    goto :goto_4

    :cond_6
    const v3, 0x7f12162c

    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_7
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ja"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    const-string v1, "JP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    const p1, 0x7f0b08f5

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    invoke-static {p0}, Lx4/y1;->i(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lkh/e;->f(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkh/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b05ab

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b05c4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lih/a;->h(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lih/a;->i(Landroid/content/Context;I)V

    iget-boolean p1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->e:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->e:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lih/a;->f(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lih/a;->g(Landroid/content/Context;I)V

    iget-boolean p1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->f:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->f:Z

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b05aa

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b05c3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->g:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->g:Lmiuix/slidingwidget/widget/SlidingButton;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->h:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->h:Lmiuix/slidingwidget/widget/SlidingButton;

    :goto_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->g0(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lkh/e;->f(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "once_settings_show"

    invoke-static {v0, v2, v1}, Lkh/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->h0(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 5

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "PrivacyProtectSettingsActivity"

    const-string v4, "windowDismissed"

    invoke-static {v3, v0, v4, v2, v1}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->d:Lcom/miui/zman/ui/PrivacyProtectSettingsActivity$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->g:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const-string v1, "zman_share_hide_location"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->h:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const-string v1, "zman_share_hide_camera"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->i:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
