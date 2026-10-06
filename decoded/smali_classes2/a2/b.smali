.class public La2/b;
.super La2/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/miui/ai/service/OperationListCollectService;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, La2/a;-><init>(Lcom/miui/ai/service/OperationListCollectService;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 6

    invoke-static {}, Lef/x;->z()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string p1, "type"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lu3/h;->g:J

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object p1

    invoke-virtual {p1}, Lu3/h;->W()V

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method
