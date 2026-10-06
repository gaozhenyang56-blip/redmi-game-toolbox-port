.class public Lcom/miui/securityscan/shortcut/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V
    .locals 4

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->b(Lcom/miui/securityscan/shortcut/d$b;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->j(Lcom/miui/securityscan/shortcut/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->i(Lcom/miui/securityscan/shortcut/d$b;)I

    move-result v2

    sget-object v3, Lcom/miui/securityscan/shortcut/d$b;->o:Lcom/miui/securityscan/shortcut/d$b;

    if-ne p1, v3, :cond_0

    const-string p1, "shortcut_com_miui_gamebooster"

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-static {p0, v0, p1, v1, v2}, Lcom/miui/securityscan/shortcut/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat$b;

    invoke-direct {v0, p0, p2}, Landroidx/core/content/pm/ShortcutInfoCompat$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, p4}, Landroidx/core/graphics/drawable/IconCompat;->l(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/core/content/pm/ShortcutInfoCompat$b;->b(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/core/content/pm/ShortcutInfoCompat$b;->e(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$b;->c(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat$b;->a()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroidx/core/content/pm/ShortcutManagerCompat;->g(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SecurityShortcutCompat"

    const-string p2, "createShortcut error "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/b;->d(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "shortcut"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->j(Lcom/miui/securityscan/shortcut/d$b;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/shortcut/d$b;->o:Lcom/miui/securityscan/shortcut/d$b;

    if-ne p1, v2, :cond_1

    const-string v1, "shortcut_com_miui_gamebooster"

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "SecurityShortcutCompat"

    const-string v1, "isShortcutPinned error "

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return v0
.end method

.method public static e(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "SecurityShortcutCompat"

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    const-string p0, "UpdateCleanerShortcut: version lower than 26"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->b(Lcom/miui/securityscan/shortcut/d$b;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->j(Lcom/miui/securityscan/shortcut/d$b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->i(Lcom/miui/securityscan/shortcut/d$b;)I

    move-result p1

    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroidx/core/content/pm/ShortcutInfoCompat$b;

    invoke-direct {v3, p0, v2}, Landroidx/core/content/pm/ShortcutInfoCompat$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->l(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$b;->b(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$b;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/content/pm/ShortcutInfoCompat$b;->e(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$b;->c(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat$b;->a()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->h(Landroid/content/Context;Ljava/util/List;)Z

    const-string p0, "UpdateCleanerShortcut: execute"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p0, "UpdateCleanerShortcut: skip"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "UpdateCleanerShortcut error:"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static f(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->b(Lcom/miui/securityscan/shortcut/d$b;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    invoke-static {p1}, Lcom/miui/securityscan/shortcut/d;->j(Lcom/miui/securityscan/shortcut/d$b;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Landroidx/core/content/pm/ShortcutInfoCompat$b;

    invoke-direct {p3, p0, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/core/graphics/drawable/IconCompat;->i(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/core/content/pm/ShortcutInfoCompat$b;->b(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$b;->e(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$b;->c(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat$b;->a()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->h(Landroid/content/Context;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SecurityShortcutCompat"

    const-string p2, "updateShortcut error "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
