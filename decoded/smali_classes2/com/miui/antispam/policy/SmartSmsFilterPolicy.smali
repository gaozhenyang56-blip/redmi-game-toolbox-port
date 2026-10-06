.class public Lcom/miui/antispam/policy/SmartSmsFilterPolicy;
.super Lcom/miui/antispam/policy/a;
.source "SourceFile"


# static fields
.field private static CONTACT_INFO_PTN:Ljava/util/regex/Pattern;


# instance fields
.field private mProxy:Lh2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\[(.+?)\\]((.|\n)*?);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->CONTACT_INFO_PTN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/antispam/policy/a;-><init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V

    new-instance p2, Lh2/a;

    invoke-direct {p2, p1}, Lh2/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->mProxy:Lh2/a;

    return-void
.end method

.method public static isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    const-string p0, "number"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "number LIKE \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4

    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "106"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_2
    const/4 p1, 0x1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :cond_3
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_4
    :goto_2
    return v1
.end method

.method private static isMiuiPattern(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f030019

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->CONTACT_INFO_PTN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    move p1, v1

    move v2, p1

    :goto_1
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/2addr p1, v4

    if-eq v3, p1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 p1, 0x2

    if-ne v2, p1, :cond_3

    return v4

    :cond_2
    move v2, v1

    :cond_3
    move p1, v5

    goto :goto_1

    :cond_4
    return v1
.end method


# virtual methods
.method public dbQuery(Lh2/c;)Lcom/miui/antispam/policy/a$a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SmartSmsFilterPolicy"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleData(Lh2/c;)Lcom/miui/antispam/policy/a$a;
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Lh2/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lmiui/provider/ExtraTelephony;->isServiceNumber(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget v2, p1, Lh2/c;->e:I

    const-string v3, "service_sms_mode"

    invoke-static {v0, v3, v2, v1}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Lh2/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lmiui/provider/ExtraTelephony;->isServiceNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget v2, p1, Lh2/c;->e:I

    const-string v3, "stranger_sms_mode"

    invoke-static {v0, v3, v2, v1}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lh2/c;->b:Ljava/lang/String;

    iget-object p1, p1, Lh2/c;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, p1}, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->shouldFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/miui/antispam/policy/a$a;

    if-ne p1, v1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    :goto_0
    invoke-direct {v0, p0, v1, p1}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public initSmsEngine(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->mProxy:Lh2/a;

    invoke-virtual {v0, p1}, Lh2/a;->k(Z)V

    return-void
.end method

.method public shouldFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1, p3}, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->isMiuiPattern(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1, p2}, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "start sms engine check"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->mProxy:Lh2/a;

    invoke-virtual {p1, p2, p3}, Lh2/a;->h(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
