.class public final enum Lzi/y4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzi/y4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lzi/y4;

.field public static final enum c:Lzi/y4;

.field public static final enum d:Lzi/y4;

.field public static final enum e:Lzi/y4;

.field public static final enum f:Lzi/y4;

.field public static final enum g:Lzi/y4;

.field public static final enum h:Lzi/y4;

.field public static final enum i:Lzi/y4;

.field public static final enum j:Lzi/y4;

.field public static final enum k:Lzi/y4;

.field private static final synthetic l:[Lzi/y4;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lzi/y4;

    const-string v1, "COMMAND_REGISTER"

    const/4 v2, 0x0

    const-string v3, "register"

    invoke-direct {v0, v1, v2, v3}, Lzi/y4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lzi/y4;->b:Lzi/y4;

    new-instance v1, Lzi/y4;

    const-string v3, "COMMAND_UNREGISTER"

    const/4 v4, 0x1

    const-string v5, "unregister"

    invoke-direct {v1, v3, v4, v5}, Lzi/y4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lzi/y4;->c:Lzi/y4;

    new-instance v3, Lzi/y4;

    const-string v5, "COMMAND_SET_ALIAS"

    const/4 v6, 0x2

    const-string v7, "set-alias"

    invoke-direct {v3, v5, v6, v7}, Lzi/y4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lzi/y4;->d:Lzi/y4;

    new-instance v5, Lzi/y4;

    const-string v7, "COMMAND_UNSET_ALIAS"

    const/4 v8, 0x3

    const-string v9, "unset-alias"

    invoke-direct {v5, v7, v8, v9}, Lzi/y4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lzi/y4;->e:Lzi/y4;

    new-instance v7, Lzi/y4;

    const-string v9, "COMMAND_SET_ACCOUNT"

    const/4 v10, 0x4

    const-string v11, "set-account"

    invoke-direct {v7, v9, v10, v11}, Lzi/y4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lzi/y4;->f:Lzi/y4;

    new-instance v9, Lzi/y4;

    const-string v11, "COMMAND_UNSET_ACCOUNT"

    const/4 v12, 0x5

    const-string v13, "unset-account"

    invoke-direct {v9, v11, v12, v13}, Lzi/y4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lzi/y4;->g:Lzi/y4;

    new-instance v11, Lzi/y4;

    const-string v13, "COMMAND_SUBSCRIBE_TOPIC"

    const/4 v14, 0x6

    const-string v15, "subscribe-topic"

    invoke-direct {v11, v13, v14, v15}, Lzi/y4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lzi/y4;->h:Lzi/y4;

    new-instance v13, Lzi/y4;

    const-string v15, "COMMAND_UNSUBSCRIBE_TOPIC"

    const/4 v14, 0x7

    const-string v12, "unsubscibe-topic"

    invoke-direct {v13, v15, v14, v12}, Lzi/y4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lzi/y4;->i:Lzi/y4;

    new-instance v12, Lzi/y4;

    const-string v15, "COMMAND_SET_ACCEPT_TIME"

    const/16 v14, 0x8

    const-string v10, "accept-time"

    invoke-direct {v12, v15, v14, v10}, Lzi/y4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lzi/y4;->j:Lzi/y4;

    new-instance v10, Lzi/y4;

    const-string v15, "COMMAND_CHK_VDEVID"

    const/16 v14, 0x9

    const-string v8, "check-vdeviceid"

    invoke-direct {v10, v15, v14, v8}, Lzi/y4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lzi/y4;->k:Lzi/y4;

    const/16 v8, 0xa

    new-array v8, v8, [Lzi/y4;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    sput-object v8, Lzi/y4;->l:[Lzi/y4;

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

    iput-object p3, p0, Lzi/y4;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lzi/y4;->values()[Lzi/y4;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v5, v4, Lzi/y4;->a:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lzi/p4;->b(Ljava/lang/Enum;)I

    move-result v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lzi/y4;
    .locals 1

    const-class v0, Lzi/y4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzi/y4;

    return-object p0
.end method

.method public static values()[Lzi/y4;
    .locals 1

    sget-object v0, Lzi/y4;->l:[Lzi/y4;

    invoke-virtual {v0}, [Lzi/y4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzi/y4;

    return-object v0
.end method
