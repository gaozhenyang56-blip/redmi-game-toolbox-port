.class public Lcom/miui/antispam/policy/ReportedNumberPolicy;
.super Lcom/miui/antispam/policy/a;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportedNumberPolicy"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/antispam/policy/a;-><init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V

    const/4 p2, 0x1

    invoke-static {p1, p2}, Le2/b;->o(Landroid/content/Context;I)V

    invoke-static {p1, p2}, Le2/b;->n(Landroid/content/Context;I)V

    invoke-static {p1, p2}, Le2/b;->p(Landroid/content/Context;I)V

    const/4 p2, 0x2

    invoke-static {p1, p2}, Le2/b;->o(Landroid/content/Context;I)V

    invoke-static {p1, p2}, Le2/b;->n(Landroid/content/Context;I)V

    invoke-static {p1, p2}, Le2/b;->p(Landroid/content/Context;I)V

    return-void
.end method

.method private checkMarkedNumberIntercept(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 1

    sget-object p4, Lm2/a;->e:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x0

    const-string p4, "ReportedNumberPolicy"

    if-nez p2, :cond_0

    const-string p1, "the mark type of cid is not found ... allow"

    :goto_0
    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lm2/a;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "the switch of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not open ... allow"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "should intercept this marked call!"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isRelatedNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string p1, "type"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 p1, 0x2

    new-array v4, p1, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v4, v6

    const/4 v7, 0x1

    aput-object p2, v4, v7

    const-string v3, "number = ? OR normalized_number = ? "

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_2

    :cond_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return v7

    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "ReportedNumberPolicy"

    const-string v1, "Cursor exception in isRelatedNumber(): "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_2
    :goto_2
    return v6
.end method


# virtual methods
.method public dbQuery(Lh2/c;)Lcom/miui/antispam/policy/a$a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ReportedNumberPolicy"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleData(Lh2/c;)Lcom/miui/antispam/policy/a$a;
    .locals 7

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget v1, p1, Lh2/c;->e:I

    invoke-static {v0, v1}, Lm2/a;->l(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lh2/c;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lmiui/yellowpage/YellowPageUtils;->getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0

    const-string v2, "ReportedNumberPolicy"

    if-eqz v0, :cond_3

    iget-boolean v4, p1, Lh2/c;->j:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget v4, p1, Lh2/c;->e:I

    invoke-static {v4}, Le2/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get yellow page info success, allow repeat = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_2

    iget-object v2, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget p1, p1, Lh2/c;->e:I

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPagePhone;->getCid()I

    move-result v3

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPagePhone;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/miui/antispam/policy/ReportedNumberPolicy;->checkMarkedNumberIntercept(Landroid/content/Context;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPagePhone;->getCid()I

    move-result v0

    invoke-static {v0}, Lm2/a;->b(I)I

    move-result v0

    invoke-direct {p1, p0, v5, v0}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    const-string p1, "yellow page info is null, need to check later"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    const/4 v0, -0x1

    invoke-direct {p1, p0, v3, v0}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1
.end method
