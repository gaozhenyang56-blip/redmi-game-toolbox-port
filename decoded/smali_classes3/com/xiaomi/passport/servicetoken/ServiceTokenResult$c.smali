.class public final enum Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

.field public static final enum b:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

.field public static final enum c:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

.field public static final enum d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

.field public static final enum e:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

.field public static final enum f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

.field public static final enum g:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

.field public static final enum h:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

.field public static final enum i:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

.field public static final enum j:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

.field public static final enum k:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

.field private static final synthetic l:[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    const-string v1, "ERROR_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    new-instance v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    const-string v3, "ERROR_NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;->b:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    new-instance v3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    const-string v5, "ERROR_NO_ACCOUNT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;->c:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    new-instance v5, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    const-string v7, "ERROR_APP_PERMISSION_FORBIDDEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    new-instance v7, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    const-string v9, "ERROR_IOERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;->e:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    new-instance v9, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    const-string v11, "ERROR_OLD_MIUI_ACCOUNT_MANAGER_PERMISSION_ISSUE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;->f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    new-instance v11, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    const-string v13, "ERROR_CANCELLED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;->g:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    new-instance v13, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    const-string v15, "ERROR_AUTHENTICATOR_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;->h:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    new-instance v15, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    const-string v14, "ERROR_TIME_OUT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;->i:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    new-instance v14, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    const-string v12, "ERROR_REMOTE_EXCEPTION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;->j:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    new-instance v12, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    const-string v10, "ERROR_USER_INTERACTION_NEEDED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;->k:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;->l:[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;->l:[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    invoke-virtual {v0}, [Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$c;

    return-object v0
.end method
