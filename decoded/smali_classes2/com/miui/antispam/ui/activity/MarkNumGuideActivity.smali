.class public Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "MarkNumGuideActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private d0()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setNavigationBarColor"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;->a:Ljava/lang/String;

    const-string v2, "set virtual keys exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;->d0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "mark_guide_yellowpage_cid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "mark_guide_type"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0}, Lm2/a;->r(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lm2/a;->x(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    const/4 p1, 0x2

    if-ne v0, v3, :cond_0

    const v0, 0x7f120d5a

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    const v0, 0x7f120d59

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const v0, 0x7f120d5d

    goto :goto_0

    :cond_2
    const v0, 0x7f120d5b

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f120d60

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    aput-object v0, p1, v3

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120d62

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120d61

    new-instance v1, Lcom/miui/antispam/ui/activity/MarkNumGuideActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/MarkNumGuideActivity$b;-><init>(Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/antispam/ui/activity/MarkNumGuideActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/MarkNumGuideActivity$a;-><init>(Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_1

    :cond_3
    const p1, 0x7f120d5e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f120d5f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class p1, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity;

    invoke-direct {v3, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x1

    const/16 v5, 0x31f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lm2/f;->K(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZILjava/lang/String;)V

    const-string p1, "antispam_notification"

    const-string v0, "guide_report_numbers"

    const-string v1, "show"

    invoke-static {p1, v0, v1}, Lc2/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_1
    return-void
.end method
