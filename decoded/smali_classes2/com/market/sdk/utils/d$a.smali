.class public final enum Lcom/market/sdk/utils/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/utils/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/market/sdk/utils/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/market/sdk/utils/d$a;

.field private static final synthetic d:[Lcom/market/sdk/utils/d$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/market/sdk/utils/d$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const-string v3, "com.xiaomi.market.sdk_pref"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/market/sdk/utils/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/market/sdk/utils/d$a;->c:Lcom/market/sdk/utils/d$a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/market/sdk/utils/d$a;

    aput-object v0, v1, v2

    sput-object v1, Lcom/market/sdk/utils/d$a;->d:[Lcom/market/sdk/utils/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/market/sdk/utils/d$a;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/market/sdk/utils/d$a;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market/sdk/utils/d$a;
    .locals 1

    const-class v0, Lcom/market/sdk/utils/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/market/sdk/utils/d$a;

    return-object p0
.end method

.method public static values()[Lcom/market/sdk/utils/d$a;
    .locals 1

    sget-object v0, Lcom/market/sdk/utils/d$a;->d:[Lcom/market/sdk/utils/d$a;

    invoke-virtual {v0}, [Lcom/market/sdk/utils/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market/sdk/utils/d$a;

    return-object v0
.end method
