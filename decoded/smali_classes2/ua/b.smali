.class public Lua/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lua/b;->b(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic b(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    const-string p4, "#Intent;component=com.android.settings/.deviceinfo.StorageWizardFormatProgress;end"

    const/4 p5, 0x0

    invoke-static {p4, p5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p4

    const-string p5, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p4, p5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "format_forget_uuid"

    invoke-virtual {p4, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "format_private"

    invoke-virtual {p4, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p3, p4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static c(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    invoke-static {p0}, Lab/f;->d(Landroid/content/Context;)Lab/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lab/f;->a(Ljava/lang/String;)Lab/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lab/b;->b()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lab/b;->a()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const v4, 0x7f121892

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/CharSequence;

    aput-object v3, v7, v6

    invoke-static {v4, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v4, 0x7f121891

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lab/b;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    aput-object v3, v7, v5

    const/4 v0, 0x2

    aput-object v3, v7, v0

    invoke-static {v4, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f121890

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/CharSequence;

    aput-object v3, v1, v6

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lua/a;

    invoke-direct {v1, p1, p2, p3, p0}, Lua/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V

    invoke-virtual {v2, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static d(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lua/b;->c(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
