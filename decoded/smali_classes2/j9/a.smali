.class public Lj9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/n0;->a(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f120b5d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/core/app/m0;->a(Landroid/app/NotificationManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "globalsatisfaction_GSNotificationManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static b(Lcom/miui/globalsatisfaction/bean/Questionnaire;Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lj9/a;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "globalsatisfaction_GSNotificationManager"

    const-string p1, "sendGsNotification: url is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ll9/e;->b(Ljava/lang/String;)V

    new-instance p0, Lw4/b$b;

    invoke-direct {p0, p1}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v1, 0x1348b83

    invoke-virtual {p0, v1}, Lw4/b$b;->r(I)Lw4/b$b;

    const v2, 0x7f120b5c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.globalsatisfaction_new"

    invoke-virtual {p0, v3, v2}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    const v2, 0x7f120b5b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    const v2, 0x7f120b5f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    const v2, 0x7f120b5d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lw4/b$b;->l(I)Lw4/b$b;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lw4/b$b;->t(Z)Lw4/b$b;

    invoke-virtual {p0, v2}, Lw4/b$b;->i(Z)Lw4/b$b;

    invoke-virtual {p0, v2}, Lw4/b$b;->j(Z)Lw4/b$b;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lw4/b$b;->w(ZI)Lw4/b$b;

    invoke-static {v0, p1}, Ll9/b;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0xc000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    invoke-virtual {p0}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method
