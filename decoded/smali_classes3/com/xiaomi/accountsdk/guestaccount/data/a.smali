.class public final enum Lcom/xiaomi/accountsdk/guestaccount/data/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/guestaccount/data/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/xiaomi/accountsdk/guestaccount/data/a;

.field public static final enum c:Lcom/xiaomi/accountsdk/guestaccount/data/a;

.field private static final synthetic d:[Lcom/xiaomi/accountsdk/guestaccount/data/a;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/guestaccount/data/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/a;->b:Lcom/xiaomi/accountsdk/guestaccount/data/a;

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/data/a;

    const-string v4, "FID"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Lcom/xiaomi/accountsdk/guestaccount/data/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/a;->c:Lcom/xiaomi/accountsdk/guestaccount/data/a;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/xiaomi/accountsdk/guestaccount/data/a;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/xiaomi/accountsdk/guestaccount/data/a;->d:[Lcom/xiaomi/accountsdk/guestaccount/data/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/accountsdk/guestaccount/data/a;->a:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/accountsdk/guestaccount/data/a;
    .locals 5

    invoke-static {}, Lcom/xiaomi/accountsdk/guestaccount/data/a;->values()[Lcom/xiaomi/accountsdk/guestaccount/data/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/xiaomi/accountsdk/guestaccount/data/a;->a:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/a;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/guestaccount/data/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/guestaccount/data/a;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/guestaccount/data/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/a;->d:[Lcom/xiaomi/accountsdk/guestaccount/data/a;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/guestaccount/data/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/guestaccount/data/a;

    return-object v0
.end method
