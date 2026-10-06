.class public Lcom/miui/luckymoney/provider/LuckyMoneyProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.miui.luckymoney.provider"

.field private static final LUCKY_MONEY_ENABLE:I = 0x1

.field private static final LUCKY_MONEY_FAST_OPEN:I = 0x2

.field private static final LUCKY_MONEY_HB_INFO:I = 0x3

.field private static final TABLE_COLUMN:Ljava/lang/String; = "enable"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/luckymoney/provider/LuckyMoneyProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.luckymoney.provider"

    const-string v2, "lmEnable"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "lmFastOpen"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "lmInfo"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private sendConfigChangedBroadcast(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.config_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "config_changed_flag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private updateLuckyMoneyEnable(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "enable"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/luckymoney/provider/LuckyMoneyProvider;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {p2, p1}, Lcom/miui/luckymoney/config/CommonConfig;->setXiaomiLuckyMoneyEnable(Z)V

    const-string p1, "lucky_open"

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/provider/LuckyMoneyProvider;->sendConfigChangedBroadcast(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateLuckyMoneyFastOpen(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "enable"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/luckymoney/provider/LuckyMoneyProvider;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {p2, p1}, Lcom/miui/luckymoney/config/CommonConfig;->setFastOpenEnable(Z)V

    const-string p1, "fast_open"

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/provider/LuckyMoneyProvider;->sendConfigChangedBroadcast(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/provider/LuckyMoneyProvider;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    sget-object p2, Lcom/miui/luckymoney/provider/LuckyMoneyProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const-string p2, "enable"

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eq p1, p4, :cond_2

    const/4 p5, 0x2

    if-eq p1, p5, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Landroid/database/MatrixCursor;

    const-string p2, "num_total"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array p2, p4, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/miui/luckymoney/provider/LuckyMoneyProvider;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {p4}, Lcom/miui/luckymoney/config/CommonConfig;->getWarningLuckyMoneyCount()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/database/MatrixCursor;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array p2, p4, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/miui/luckymoney/provider/LuckyMoneyProvider;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {p4}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/database/MatrixCursor;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array p2, p4, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/miui/luckymoney/provider/LuckyMoneyProvider;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {p4}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    sget-object p3, Lcom/miui/luckymoney/provider/LuckyMoneyProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/4 p4, 0x1

    if-eq p3, p4, :cond_1

    const/4 p4, 0x2

    if-eq p3, p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/luckymoney/provider/LuckyMoneyProvider;->updateLuckyMoneyFastOpen(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/luckymoney/provider/LuckyMoneyProvider;->updateLuckyMoneyEnable(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result p1

    :goto_0
    return p1
.end method
