.class public Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private mDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->removeLuckyMoney()V

    return-void
.end method

.method private removeLuckyMoney()V
    .locals 4

    const-string v0, "com.miui.luckymoney"

    invoke-static {p0, v0}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ltg/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0e0041

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120679

    new-instance v1, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;-><init>(Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120678

    new-instance v1, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$2;-><init>(Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
