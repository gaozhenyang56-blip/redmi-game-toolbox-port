.class public final enum Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

.field public static final enum c:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

.field public static final enum d:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

.field public static final enum e:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

.field public static final enum f:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

.field public static final enum g:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

.field public static final enum h:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

.field public static final enum i:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

.field private static final synthetic j:[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    const-string v1, "ERROR_NONE"

    const/4 v2, 0x0

    const-string v3, "successful"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;->b:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    new-instance v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    const-string v3, "ERROR_NOT_SUPPORT"

    const/4 v4, 0x1

    const-string v5, "no support account service"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;->c:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    new-instance v3, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    const-string v5, "ERROR_PRE_ANDROID_O"

    const/4 v6, 0x2

    const-string v7, "no support account service, and pre o version"

    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;->d:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    new-instance v5, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    const-string v7, "ERROR_NO_ACCOUNT"

    const/4 v8, 0x3

    const-string v9, "no account"

    invoke-direct {v5, v7, v8, v9}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;->e:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    new-instance v7, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    const-string v9, "ERROR_NO_PERMISSION"

    const/4 v10, 0x4

    const-string v11, "no access account service permission"

    invoke-direct {v7, v9, v10, v11}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;->f:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    new-instance v9, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    const-string v11, "ERROR_CANCELLED"

    const/4 v12, 0x5

    const-string v13, "task cancelled"

    invoke-direct {v9, v11, v12, v13}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;->g:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    new-instance v11, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    const-string v13, "ERROR_EXECUTION"

    const/4 v14, 0x6

    const-string v15, "execution error"

    invoke-direct {v11, v13, v14, v15}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;->h:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    new-instance v13, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    const-string v15, "ERROR_UNKNOWN"

    const/4 v14, 0x7

    const-string v12, "unknown"

    invoke-direct {v13, v15, v14, v12}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;->i:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;->j:[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

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

    iput-object p3, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;->j:[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    invoke-virtual {v0}, [Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$c;

    return-object v0
.end method
