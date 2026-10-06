.class public Lcom/miui/antispam/policy/BlackAddressPolicy;
.super Lcom/miui/antispam/policy/BaseBlackListPolicy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/policy/BlackAddressPolicy$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/antispam/policy/BaseBlackListPolicy;-><init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V

    return-void
.end method

.method private isAddressInBlack(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 9

    invoke-static {p1, p2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm2/f;->B(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-static {v0}, Lcom/miui/antispam/policy/BlackAddressPolicy$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v0}, Lcom/miui/antispam/policy/BlackAddressPolicy$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 p1, 0x4

    new-array v7, p1, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "***"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v2

    const-string p1, "1"

    const/4 p2, 0x1

    aput-object p1, v7, p2

    const/4 p1, 0x2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v7, p1

    const/4 p1, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v7, p1

    const/4 v8, 0x0

    const-string v6, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_5

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_4

    const-string p4, "state"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_3

    if-ne p4, p3, :cond_4

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2

    :cond_4
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string p3, "BlackAddressPolicy"

    const-string p4, "Cursor exception in isAddressInBlack(): "

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_5
    :goto_2
    return v2
.end method


# virtual methods
.method getCallBlockType()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "BlackAddressPolicy"

    return-object v0
.end method

.method getSmsBlockType()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public getType()I
    .locals 1

    sget v0, Lb2/a$c;->a:I

    return v0
.end method

.method isInCache(Ljava/lang/String;II)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mJudge:Lh2/b;

    invoke-virtual {p0}, Lcom/miui/antispam/policy/BlackAddressPolicy;->getType()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lh2/b;->o(Ljava/lang/String;III)Z

    move-result p1

    return p1
.end method

.method isInDB(Ljava/lang/String;II)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/antispam/policy/BlackAddressPolicy;->isAddressInBlack(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method protected needCheckRawNumber()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
