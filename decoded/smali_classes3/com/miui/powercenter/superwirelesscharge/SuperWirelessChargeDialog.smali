.class public Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private a:[I

.field private b:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;->b:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method public e0(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;->b:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;->b:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    const v0, 0x7f0e03e6

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b087c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_1

    const-string v3, "zh_CN"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12127b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f060c20

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x2

    const/16 v5, 0x11

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f130023

    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f12127c

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12033a

    new-instance v2, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog$b;

    invoke-direct {v2, p0, p1}, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog$b;-><init>(Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121279

    new-instance v1, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog$a;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog$a;-><init>(Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;->b:Lmiuix/appcompat/app/AlertDialog;

    new-instance v0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog$c;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog$c;-><init>(Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public finish()V
    .locals 3

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    iget-object v0, p0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;->a:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b087c

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;->c:Ljava/lang/String;

    const-string v0, "onClick default case "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/powercenter/PowerSettings;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lkh/f;->b(Landroid/app/Activity;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;->a:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p0}, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;->e0(Landroid/content/Context;)V

    return-void
.end method
