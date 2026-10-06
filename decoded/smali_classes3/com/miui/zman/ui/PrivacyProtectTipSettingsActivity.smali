.class public Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity$c;,
        Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity$b;
    }
.end annotation


# instance fields
.field a:Lmiuix/slidingwidget/widget/SlidingButton;

.field b:Lmiuix/slidingwidget/widget/SlidingButton;

.field private c:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private c0()V
    .locals 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity$b;

    invoke-direct {v1, p0, v2}, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity$b;-><init>(Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity$a;)V

    new-instance v3, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity$c;

    invoke-direct {v3, p0, v2}, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity$c;-><init>(Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity$a;)V

    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1208be

    invoke-virtual {v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f1219b3

    invoke-virtual {v2, v4, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const v1, 0x7f0b05c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v1, p0, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;->a:Lmiuix/slidingwidget/widget/SlidingButton;

    const v1, 0x7f0b05ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v1, p0, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;->b:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;->a:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lih/a;->d(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;->b:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lih/a;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;->a:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;->b:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f0b05c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b05aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const v1, 0x7f0b08f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;->a:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lih/a;->i(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;->b:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lih/a;->g(Landroid/content/Context;I)V

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

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lih/a;->f(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lih/a;->g(Landroid/content/Context;I)V

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
    iget-object p1, p0, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;->a:Lmiuix/slidingwidget/widget/SlidingButton;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;->b:Lmiuix/slidingwidget/widget/SlidingButton;

    :goto_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0}, Lkh/e;->f(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "first_settings_show"

    invoke-static {p1, v1, v0}, Lkh/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;->c0()V

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

    const-string v3, "PrivacyProtectTipSettingsActivity"

    const-string v4, "windowDismissed"

    invoke-static {v3, v0, v4, v2, v1}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;->c:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
