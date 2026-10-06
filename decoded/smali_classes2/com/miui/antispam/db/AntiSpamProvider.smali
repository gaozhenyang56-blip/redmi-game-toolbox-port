.class public Lcom/miui/antispam/db/AntiSpamProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final c:Landroid/content/UriMatcher;


# instance fields
.field private a:Z

.field private b:Lb2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/antispam/db/AntiSpamProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "antispam"

    const-string v2, "sms_judge"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "call_judge"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "url_judge"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "service_num_judge"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "call_transfer_intercept_judge"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "phone_list"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "phone_list/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "log"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "log/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "log_sms"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "logconversation"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "keyword"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "keyword/*"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "mode"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "mode/*"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "sim"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "sim/*"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "unsynced_count"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "synced_count"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "allow_repeat"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "account"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "account/*"

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "markednumber"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "markednumber/*"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "cloudantispam"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "cloudantispam/*"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "category"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "category/*"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "report_sms"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "report_sms_pending"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antispam/db/AntiSpamProvider;->a:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "substr(number, -7, 7)"

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "=\'"

    const/4 v3, 0x7

    if-ge v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' AND PHONE_NUMBERS_EQUAL(number, \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', 0)"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b([Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    aget-object v2, p1, v0

    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lm2/f;->b(I)I

    move-result v3

    const/4 v0, 0x2

    aget-object v0, p1, v0

    const-string v1, "is_forward_call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v0, 0x3

    aget-object v0, p1, v0

    const-string v1, "is_repeated_normal_call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v0, 0x4

    aget-object p1, p1, v0

    const-string v0, "is_repeated_blocked_call"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    new-instance p1, Lh2/c;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lh2/c;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallBlockType callingIdentity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AntiSpamProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkCoutrycode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getNetworkCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "areaNum="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lh2/c;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    invoke-virtual {v2, p1}, Lb2/b;->b(Lh2/c;)I

    move-result p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1
.end method

.method private c([Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    aget-object v2, p1, v0

    const/4 v0, 0x1

    aget-object v5, p1, v0

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lm2/f;->s(Landroid/content/Context;I)I

    move-result v3

    new-instance p1, Lh2/c;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lh2/c;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSMSBlockType callingIdentity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AntiSpamProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    invoke-virtual {v2, p1}, Lb2/b;->e(Lh2/c;)I

    move-result p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    const-string v0, "number"

    const-string v10, "reason"

    const-string v11, "data1"

    filled-new-array {v0, v10, v11}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSmsLogCursor callingIdentity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntiSpamProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$MmsSms;->BLOCKED_CONVERSATION_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string v3, "type = 2"

    if-eqz v8, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_0

    array-length v4, v9

    if-lez v4, :cond_0

    aget-object v4, v9, v2

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    move-object v15, v3

    const/4 v3, 0x1

    if-eqz v8, :cond_1

    new-array v5, v3, [Ljava/lang/String;

    aput-object v4, v5, v2

    move-object/from16 v16, v5

    goto :goto_1

    :cond_1
    move-object/from16 v16, v0

    :goto_1
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide v5, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p1

    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v1, :cond_e

    if-nez v12, :cond_2

    goto/16 :goto_f

    :cond_2
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    :goto_2
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v14, Ljava/util/AbstractMap$SimpleEntry;

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v15, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :goto_5
    array-length v12, v7

    if-ge v3, v12, :cond_4

    aget-object v12, v7, v3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/database/MatrixCursor;

    new-array v7, v2, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_5
    :goto_6
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v9, :cond_6

    array-length v0, v9

    const/4 v7, 0x1

    if-le v0, v7, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    aget-object v10, v9, v7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sub-int/2addr v10, v7

    if-le v0, v10, :cond_7

    goto :goto_b

    :cond_6
    const/4 v7, 0x1

    :cond_7
    const-string v0, "address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm2/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v10, 0x4

    if-nez v0, :cond_8

    if-eqz v8, :cond_8

    if-eqz v4, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_5

    :cond_8
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v11

    move v12, v2

    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v14

    if-ge v12, v14, :cond_9

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_9
    const-string v12, ""

    if-eqz v0, :cond_b

    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_8

    :cond_a
    move-object v12, v0

    :goto_8
    invoke-virtual {v11, v12}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_9

    :cond_b
    invoke-virtual {v11, v12}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_9
    if-nez v14, :cond_c

    goto :goto_a

    :cond_c
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :cond_d
    :goto_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_b

    :goto_c
    return-object v3

    :goto_d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_e
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_e
    :goto_f
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    invoke-static {v12}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v0
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/net/Uri;
    .locals 6

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2, v0}, Lm2/a;->t(Landroid/content/Context;IZ)V

    :cond_0
    if-nez p5, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sim_id"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "data = ? AND type = ? AND sim_id = ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v4, 0x2

    if-nez p5, :cond_3

    move v5, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    const-string v5, "keyword"

    invoke-virtual {v4, p1, v5, v1, v2}, Lb2/b;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p1, v5, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_4
    invoke-virtual {p1, v5, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    invoke-virtual {v1, p3, p4, v0}, Lb2/b;->h(Ljava/lang/String;II)V

    sget-object p4, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p4, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p4, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    move-object v2, p1

    :cond_6
    sget-boolean p1, Lb2/a;->a:Z

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insert URI_KEYWORD : data = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AntiSpamProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v2
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;IILjava/lang/Integer;)Landroid/net/Uri;
    .locals 7

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2, v0}, Lm2/a;->t(Landroid/content/Context;IZ)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p6, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    invoke-static {v1, p3, p4, p5, v2}, Lm2/f;->z(Landroid/content/Context;Ljava/lang/String;III)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    if-nez p6, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "sim_id"

    invoke-virtual {p2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "phone_list"

    invoke-virtual {p1, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    if-nez p6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    invoke-virtual {p1, p3, p4, p5, v0}, Lb2/b;->k(Ljava/lang/String;III)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p4, "record_id"

    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p4, "antispam"

    invoke-static {p1, p4, p2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    sget-object p1, Lm2/a$d;->a:Landroid/net/Uri;

    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p4, p1, v2, p5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    move-object v2, p2

    :cond_5
    sget-boolean p1, Lb2/a;->a:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insert URI_PHONELIST : number = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AntiSpamProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v2
.end method

.method private g()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntiSpamProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const-string v1, "com.android.mms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antispam/db/AntiSpamProvider;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lx4/a0;->C()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antispam/db/AntiSpamProvider;->a:Z

    return v0
.end method

.method private i(Landroid/net/Uri;)Z
    .locals 2

    const-string v0, "flag"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "1"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_0

    invoke-static {}, Lef/x;->z()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le2/c;->a(Landroid/content/Context;)Le2/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :goto_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return-object p1

    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "getBlockKeyword"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le2/c;->a(Landroid/content/Context;)Le2/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v0, "fwlog"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v0, "data1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "number = ? AND type = 2"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "blockKeyword"

    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    const-string v0, "setMmsBlockType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "getMmsBlockType"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "initSmsEngine"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    sget-object v2, Lh2/e;->u:Lh2/e;

    invoke-virtual {v0, v2}, Lb2/b;->a(Lh2/e;)Lcom/miui/antispam/policy/a;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->initSmsEngine(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    const-string v2, "simId"

    invoke-virtual {p3, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "mms_mode"

    const-string v4, "blockType"

    if-eqz v0, :cond_5

    invoke-virtual {p3, v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v2, v0}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_4
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x2

    invoke-static {p2, v3, v2, p3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p2

    invoke-virtual {p1, v4, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le2/c;->a(Landroid/content/Context;)Le2/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/miui/antispam/db/AntiSpamProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "phone_list"

    const-string v4, "AntiSpamProvider"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eq v1, v6, :cond_e

    const-string v9, "_id = ? "

    if-eq v1, v5, :cond_b

    const-string v3, "fwlog"

    if-eq v1, v2, :cond_a

    const/4 v10, 0x4

    if-eq v1, v10, :cond_9

    const/4 v3, 0x7

    const-string v10, "keyword"

    if-eq v1, v3, :cond_6

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    const/16 v2, 0xf

    const-string v3, "mode"

    if-eq v1, v2, :cond_3

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/16 v2, 0x12

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    const-string p1, "reportSmsPending"

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_11

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lb2/a$b;->b:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p2, p3, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_4

    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot delete that URL: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-array p2, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v8

    const-string p1, "sim"

    invoke-virtual {v0, p1, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_11

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lmiui/provider/ExtraTelephony$AntiSpamSim;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    new-array p2, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v8

    invoke-virtual {v0, v3, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_11

    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lmiui/provider/ExtraTelephony$AntiSpamMode;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_11

    goto :goto_1

    :cond_4
    sget-boolean p2, Lb2/a;->a:Z

    if-eqz p2, :cond_5

    const-string p2, "delete URI_KEYWORD_ID "

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p2, p0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    new-array p3, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v8

    invoke-virtual {p2, v0, v10, v9, p3}, Lb2/b;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array p2, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v8

    invoke-virtual {v0, v10, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_11

    :goto_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_6
    sget-boolean p1, Lb2/a;->a:Z

    if-eqz p1, :cond_7

    const-string p1, "delete URI_KEYWORD "

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct {p0}, Lcom/miui/antispam/db/AntiSpamProvider;->g()Z

    move-result p1

    if-eqz p1, :cond_8

    array-length p1, p3

    if-ne p1, v2, :cond_8

    new-array p1, v5, [Ljava/lang/String;

    aget-object p2, p3, v8

    aput-object p2, p1, v8

    aget-object p2, p3, v5

    aput-object p2, p1, v6

    const-string p2, "data = ? AND type = ?"

    move-object p3, p1

    :cond_8
    iget-object p1, p0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    invoke-virtual {p1, v0, v10, p2, p3}, Lb2/b;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0, v10, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_11

    goto :goto_2

    :cond_9
    new-array p2, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v8

    invoke-virtual {v0, v3, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_11

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lm2/a$c;->a:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_11

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lm2/a$c;->a:Landroid/net/Uri;

    invoke-virtual {p2, p3, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lm2/a$c;->b:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_b
    sget-boolean p2, Lb2/a;->a:Z

    if-eqz p2, :cond_c

    const-string p2, "delete URI_PHONELIST_ID "

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object p2, p0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    new-array p3, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v8

    invoke-virtual {p2, v0, v3, v9, p3}, Lb2/b;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array p2, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v8

    invoke-virtual {v0, v3, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_11

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_d

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "antispam"

    invoke-static {p2, v0, p3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_d
    :goto_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lm2/a$d;->a:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_e
    sget-boolean p1, Lb2/a;->a:Z

    if-eqz p1, :cond_f

    const-string p1, "delete URI_PHONELIST "

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-direct {p0}, Lcom/miui/antispam/db/AntiSpamProvider;->g()Z

    move-result p1

    if-eqz p1, :cond_10

    array-length p1, p3

    if-ne p1, v2, :cond_10

    new-array p1, v5, [Ljava/lang/String;

    aget-object p2, p3, v8

    aput-object p2, p1, v8

    aget-object p2, p3, v5

    aput-object p2, p1, v6

    const-string p2, "number = ? AND type = ?"

    move-object p3, p1

    :cond_10
    iget-object p1, p0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    invoke-virtual {p1, v0, v3, p2, p3}, Lb2/b;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_11

    goto :goto_3

    :cond_11
    :goto_4
    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/miui/antispam/db/AntiSpamProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p1, "*/*"

    return-object p1

    :cond_0
    const-string p1, "vnd.android.cursor.item/antispam-mode"

    return-object p1

    :cond_1
    const-string p1, "vnd.android.cursor.dir/antispam-mode"

    return-object p1

    :cond_2
    const-string p1, "vnd.android.cursor.item/antispam-keyword"

    return-object p1

    :cond_3
    const-string p1, "vnd.android.cursor.dir/antispam-keyword"

    return-object p1

    :cond_4
    const-string p1, "vnd.android.cursor.item/antispam-log"

    return-object p1

    :cond_5
    const-string p1, "vnd.android.cursor.dir/antispam-log"

    return-object p1

    :cond_6
    const-string p1, "vnd.android.cursor.item/antispam-phone_list"

    return-object p1

    :cond_7
    const-string p1, "vnd.android.cursor.dir/antispam-phone_list"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le2/c;->a(Landroid/content/Context;)Le2/a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    sget-object v1, Lcom/miui/antispam/db/AntiSpamProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/miui/antispam/db/AntiSpamProvider;->g()Z

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert callingIdentity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AntiSpamProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    const-string v3, "sim_id"

    const-string v4, "type"

    const-string v5, "content://antispam/phone_list?cta=false"

    const/4 v6, 0x1

    const-string v10, "number"

    const/4 v11, 0x0

    if-eq v1, v6, :cond_8

    const/4 v12, 0x3

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    if-eq v1, v12, :cond_7

    const/4 v10, 0x7

    if-eq v1, v10, :cond_4

    const/16 v2, 0xf

    if-eq v1, v2, :cond_3

    const/16 v2, 0x11

    if-eq v1, v2, :cond_2

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    const-string v0, "reportSmsPending"

    invoke-virtual {v8, v0, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v2, v0, v13

    if-lez v2, :cond_d

    sget-object v2, Lb2/a$b;->b:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot insert that URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "reportSms"

    invoke-virtual {v8, v0, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v2, v0, v13

    if-lez v2, :cond_d

    sget-object v2, Lb2/a$a;->b:Landroid/net/Uri;

    :goto_0
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    const-string v0, "sim"

    invoke-virtual {v8, v0, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v2, v0, v13

    if-lez v2, :cond_d

    sget-object v2, Lmiui/provider/ExtraTelephony$AntiSpamSim;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$AntiSpamSim;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_3
    const-string v0, "mode"

    invoke-virtual {v8, v0, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v2, v0, v13

    if-lez v2, :cond_d

    sget-object v2, Lmiui/provider/ExtraTelephony$AntiSpamMode;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$AntiSpamMode;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/miui/antispam/db/AntiSpamProvider;->i(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v0, "data"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v2, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    move-object v3, v10

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/miui/antispam/db/AntiSpamProvider;->e(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/miui/antispam/db/AntiSpamProvider;->e(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/net/Uri;

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    move-object v3, v10

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/miui/antispam/db/AntiSpamProvider;->e(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v11

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fwlog"

    invoke-virtual {v8, v0, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v2, v0, v13

    if-lez v2, :cond_d

    sget-object v2, Lm2/a$c;->a:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v11, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lm2/a$c;->b:Landroid/net/Uri;

    :goto_1
    invoke-virtual {v1, v2, v11, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    move-object v11, v0

    goto/16 :goto_3

    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/miui/antispam/db/AntiSpamProvider;->i(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm2/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    return-object v11

    :cond_a
    invoke-static {}, Lx4/t;->f()Ljava/lang/String;

    move-result-object v5

    const-string v12, "lm_cr"

    invoke-static {v5, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v0}, Lm2/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_2

    :cond_b
    move-object v12, v1

    :goto_2
    invoke-virtual {v7, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "display_number"

    invoke-virtual {v7, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v2, :cond_c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    move-object v3, v12

    invoke-direct/range {v0 .. v6}, Lcom/miui/antispam/db/AntiSpamProvider;->f(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;IILjava/lang/Integer;)Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/miui/antispam/db/AntiSpamProvider;->f(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;IILjava/lang/Integer;)Landroid/net/Uri;

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    move-object v3, v12

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/miui/antispam/db/AntiSpamProvider;->f(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;IILjava/lang/Integer;)Landroid/net/Uri;

    move-result-object v11

    :cond_d
    :goto_3
    return-object v11
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb2/b;->c(Landroid/content/Context;)Lb2/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le2/c;->a(Landroid/content/Context;)Le2/a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    sget-object v1, Lcom/miui/antispam/db/AntiSpamProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v4, 0x5

    const/4 v6, 0x3

    if-eq v1, v6, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v10, 0x6

    if-eq v1, v10, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/provider/SystemSettings$Secure;->checkPrivacyAndReturnCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    return-object v10

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/antispam/db/AntiSpamProvider;->h()Z

    move-result v10

    const-string v11, "AntiSpamProvider"

    const/4 v12, 0x0

    if-nez v10, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update fail, uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", turn on privacy no agree"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_2
    const-string v10, "sim"

    const-string v13, "mode"

    const-string v14, "\'"

    const-string v15, "_id=\'"

    const-string v2, "keyword"

    const-string v12, "fwlog"

    const-string v6, "phone_list"

    const/4 v4, 0x1

    const/16 v16, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown query URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    aget-object v0, v5, v16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "allow_repeat"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v0}, Le2/b;->k(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v16

    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2

    :pswitch_2
    const-string v2, "reportSmsPending"

    goto :goto_0

    :pswitch_3
    const-string v2, "reportSms"

    :goto_0
    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_5
    invoke-virtual {v8, v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v8, v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_7
    if-eqz v3, :cond_3

    array-length v2, v3

    const/4 v6, 0x5

    if-ne v2, v6, :cond_3

    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "callBlockType"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/Integer;

    invoke-direct {v7, v3}, Lcom/miui/antispam/db/AntiSpamProvider;->b([Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    :pswitch_8
    invoke-static {}, Lx4/a0;->y()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lm2/f;->E(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    array-length v2, v3

    const/4 v6, 0x3

    if-ne v2, v6, :cond_3

    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "smsBlockType"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/Integer;

    invoke-direct {v7, v3}, Lcom/miui/antispam/db/AntiSpamProvider;->c([Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    :pswitch_9
    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :pswitch_a
    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v6, 0x3

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v2, v10, v16

    const-string v2, "data"

    aput-object v2, v10, v4

    const-string v2, "sim_id"

    const/4 v6, 0x2

    aput-object v2, v10, v6

    const-string v2, "_id IN (SELECT _id FROM %s GROUP BY `%s`, %s)"

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :pswitch_b
    const-string v2, "(select * from fwlog order by date ASC)"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v2, "number"

    move-object v13, v2

    const/4 v2, 0x5

    goto :goto_5

    :pswitch_c
    invoke-virtual {v8, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_d
    invoke-virtual {v8, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_e
    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/miui/antispam/db/AntiSpamProvider;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_4

    :pswitch_f
    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :cond_3
    :goto_4
    const/4 v2, 0x5

    const/4 v13, 0x0

    :goto_5
    if-ne v1, v2, :cond_5

    invoke-static {}, Lx4/a0;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v8

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/antispam/db/AntiSpamProvider;->d(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lm2/a$e;->b:Landroid/net/Uri;

    goto :goto_7

    :cond_5
    const/16 v2, 0xb

    const-string v6, "count(*)"

    if-ne v1, v2, :cond_6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x4

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v16

    const-string v1, "1"

    aput-object v1, v12, v4

    const-string v1, "2"

    const/4 v2, 0x2

    aput-object v1, v12, v2

    const-string v1, "3"

    aput-object v1, v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v11, "sync_dirty <> ? AND type IN (?,?,?)"

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lm2/a$e;->a:Landroid/net/Uri;

    :goto_7
    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_9

    :cond_6
    const/16 v2, 0xc

    if-ne v1, v2, :cond_7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v10

    new-array v12, v4, [Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v16

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v11, "sync_dirty = ?"

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_6

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/miui/antispam/db/AntiSpamProvider;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    if-ne v1, v4, :cond_8

    array-length v1, v5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    aget-object v6, v5, v16

    aput-object v6, v2, v16

    aget-object v1, v5, v1

    aput-object v1, v2, v4

    const-string v1, "number = ? AND type = ?"

    move-object v11, v1

    move-object v12, v2

    goto :goto_8

    :cond_8
    move-object/from16 v11, p3

    move-object v12, v5

    :goto_8
    const/4 v14, 0x0

    move-object/from16 v10, p2

    move-object/from16 v15, p5

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v0, v1

    :goto_9
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_f
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {p0 .. p0}, Lcom/miui/antispam/db/AntiSpamProvider;->h()Z

    move-result v5

    const-string v6, "AntiSpamProvider"

    const/4 v7, 0x0

    if-nez v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update fail, uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", turn on privacy no agree"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Le2/c;->a(Landroid/content/Context;)Le2/a;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v8, Lcom/miui/antispam/db/AntiSpamProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v8, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const-string v9, "_id = ? AND sync_dirty <> ? "

    const/4 v10, 0x2

    const-string v11, "phone_list"

    const/4 v13, 0x1

    if-eq v8, v13, :cond_13

    const-string v14, " with a where clause"

    const-string v15, "Cannot update URL "

    const-string v12, "_id = ? "

    if-eq v8, v10, :cond_e

    const-string v9, "fwlog"

    const/4 v11, 0x3

    if-eq v8, v11, :cond_c

    const/4 v10, 0x4

    if-eq v8, v10, :cond_a

    const/16 v9, 0xd

    if-eq v8, v9, :cond_9

    const/16 v9, 0xe

    if-eq v8, v9, :cond_8

    const/16 v9, 0x10

    if-eq v8, v9, :cond_6

    const/16 v9, 0x11

    if-eq v8, v9, :cond_5

    const/16 v9, 0x15

    if-eq v8, v9, :cond_4

    const-string v9, "keyword"

    packed-switch v8, :pswitch_data_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update that URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    if-eqz v4, :cond_16

    array-length v1, v4

    const/4 v2, 0x5

    if-ne v1, v2, :cond_16

    invoke-direct {v0, v4}, Lcom/miui/antispam/db/AntiSpamProvider;->b([Ljava/lang/String;)I

    move-result v1

    return v1

    :pswitch_1
    invoke-static {}, Lx4/a0;->y()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lm2/f;->E(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v4, :cond_16

    array-length v1, v4

    if-ne v1, v11, :cond_16

    invoke-direct {v0, v4}, Lcom/miui/antispam/db/AntiSpamProvider;->c([Ljava/lang/String;)I

    move-result v1

    return v1

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    sget-boolean v10, Lb2/a;->a:Z

    if-eqz v10, :cond_1

    const-string v10, "update URI_KEYWORD_ID "

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    iget-object v1, v0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    new-array v3, v13, [Ljava/lang/String;

    aput-object v8, v3, v7

    invoke-virtual {v1, v5, v9, v12, v3}, Lb2/b;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v1, v11, [Ljava/lang/String;

    aput-object v8, v1, v7

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v13

    const-string v3, "sim_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const-string v3, "DELETE FROM keyword WHERE _id != ? AND data = ? AND sim_id = ?"

    invoke-virtual {v5, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v13, [Ljava/lang/String;

    aput-object v8, v1, v7

    invoke-virtual {v5, v9, v2, v12, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d

    iget-object v2, v0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    new-array v3, v13, [Ljava/lang/String;

    aput-object v8, v3, v7

    invoke-virtual {v2, v5, v9, v12, v3}, Lb2/b;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_3
    sget-boolean v1, Lb2/a;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "update URI_KEYWORD "

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, v0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    invoke-virtual {v1, v5, v9, v3, v4}, Lb2/b;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v9, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_15

    iget-object v3, v0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v9, v1, v4}, Lb2/b;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_3

    :cond_4
    if-eqz v4, :cond_16

    array-length v1, v4

    if-ne v1, v13, :cond_16

    aget-object v1, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v13

    invoke-static {v1}, Lm2/f;->b(I)I

    move-result v1

    invoke-static {v1}, Le2/b;->g(I)Z

    move-result v1

    return v1

    :cond_5
    const-string v1, "sim"

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$AntiSpamSim;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_6
    if-nez v3, :cond_7

    if-nez v4, :cond_7

    new-array v3, v13, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    const-string v1, "mode"

    invoke-virtual {v5, v1, v2, v12, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$AntiSpamMode;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_7
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    if-eqz v4, :cond_16

    array-length v1, v4

    if-ne v1, v13, :cond_16

    aget-object v1, v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lm2/i;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_9
    if-eqz v4, :cond_16

    array-length v1, v4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    aget-object v1, v4, v7

    aget-object v2, v4, v13

    iget-object v3, v0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    invoke-virtual {v3, v1, v2}, Lb2/b;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_a
    if-nez v3, :cond_b

    if-nez v4, :cond_b

    new-array v3, v13, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {v5, v9, v2, v12, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d

    goto :goto_1

    :cond_b
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-virtual {v5, v9, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lm2/a$c;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lm2/a$c;->b:Landroid/net/Uri;

    :goto_2
    invoke-virtual {v2, v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_d
    move v7, v1

    goto/16 :goto_4

    :cond_e
    sget-boolean v8, Lb2/a;->a:Z

    if-eqz v8, :cond_f

    const-string v8, "update URI_PHONELIST_ID "

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    if-nez v3, :cond_12

    if-nez v4, :cond_12

    iget-object v3, v0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    new-array v4, v13, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual {v3, v5, v11, v12, v4}, Lb2/b;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v3, v13, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v5, v11, v2, v12, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_11

    iget-object v4, v0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v13

    invoke-virtual {v4, v5, v11, v9, v6}, Lb2/b;->l(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v4, "e_tag"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "antispam"

    invoke-static {v1, v4, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lm2/a$d;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_11
    move v7, v3

    goto :goto_4

    :cond_12
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    sget-boolean v1, Lb2/a;->a:Z

    if-eqz v1, :cond_14

    const-string v1, "update URI_PHONELIST "

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v1, v0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    invoke-virtual {v1, v5, v11, v3, v4}, Lb2/b;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v11, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_15

    iget-object v3, v0, Lcom/miui/antispam/db/AntiSpamProvider;->b:Lb2/b;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v13

    invoke-virtual {v3, v5, v11, v9, v4}, Lb2/b;->l(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lm2/a$d;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v1, v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_15
    move v7, v2

    :cond_16
    :goto_4
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
