.class public final enum Lcom/market/sdk/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/market/sdk/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/market/sdk/h;

.field public static final enum e:Lcom/market/sdk/h;

.field public static final enum f:Lcom/market/sdk/h;

.field public static final enum g:Lcom/market/sdk/h;

.field private static final synthetic h:[Lcom/market/sdk/h;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/market/sdk/h;

    const-string v1, "MARKET_PHONE"

    const/4 v2, 0x0

    const-string v3, "com.xiaomi.market"

    invoke-direct {v0, v1, v2, v3}, Lcom/market/sdk/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/market/sdk/h;->d:Lcom/market/sdk/h;

    new-instance v1, Lcom/market/sdk/h;

    const-string v4, "MARKET_PAD"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/market/sdk/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/market/sdk/h;->e:Lcom/market/sdk/h;

    new-instance v3, Lcom/market/sdk/h;

    const-string v4, "MIPICKS"

    const/4 v6, 0x2

    const-string v7, "com.xiaomi.mipicks"

    invoke-direct {v3, v4, v6, v7}, Lcom/market/sdk/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/market/sdk/h;->f:Lcom/market/sdk/h;

    new-instance v4, Lcom/market/sdk/h;

    const-string v7, "DISCOVER"

    const/4 v8, 0x3

    const-string v9, "com.xiaomi.discover"

    invoke-direct {v4, v7, v8, v9}, Lcom/market/sdk/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/market/sdk/h;->g:Lcom/market/sdk/h;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/market/sdk/h;

    aput-object v0, v7, v2

    aput-object v1, v7, v5

    aput-object v3, v7, v6

    aput-object v4, v7, v8

    sput-object v7, Lcom/market/sdk/h;->h:[Lcom/market/sdk/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/market/sdk/h;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/market/sdk/h;->c:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/market/sdk/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market/sdk/h;
    .locals 1

    const-class v0, Lcom/market/sdk/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/market/sdk/h;

    return-object p0
.end method

.method public static values()[Lcom/market/sdk/h;
    .locals 1

    sget-object v0, Lcom/market/sdk/h;->h:[Lcom/market/sdk/h;

    invoke-virtual {v0}, [Lcom/market/sdk/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market/sdk/h;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    iget v0, p0, Lcom/market/sdk/h;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/market/sdk/utils/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/market/sdk/h;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/market/sdk/h;->b:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/market/sdk/h;->b:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/market/sdk/h;->b:I

    return v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/market/sdk/h;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/market/sdk/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/market/sdk/utils/c;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/h;->c:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/market/sdk/h;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
